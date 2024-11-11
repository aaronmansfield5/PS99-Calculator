
if not game.Players.LocalPlayer.PlayerGui:FindFirstChild("Cosmic") then
    local G2L = {}

    -- StarterGui.Cosmic
    G2L["1"] = Instance.new("ScreenGui", game:GetService("Players").LocalPlayer:WaitForChild("PlayerGui"))
    G2L["1"]["IgnoreGuiInset"] = true
    G2L["1"]["ScreenInsets"] = Enum.ScreenInsets.DeviceSafeInsets
    G2L["1"]["Name"] = [[Cosmic]]
    G2L["1"]["ResetOnSpawn"] = false
    G2L["1"]["Enabled"] = false

    -- StarterGui.Cosmic.Frame
    G2L["2"] = Instance.new("Frame", G2L["1"])
    G2L["2"]["BorderSizePixel"] = 0
    G2L["2"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255)
    G2L["2"]["AnchorPoint"] = Vector2.new(0.5, 0.5)
    G2L["2"]["Size"] = UDim2.new(1, 0, 0.4, 120)
    G2L["2"]["Position"] = UDim2.new(0.5, 0, 0.5, 0)

    -- StarterGui.Cosmic.Frame.UIAspectRatioConstraint
    G2L["3"] = Instance.new("UIAspectRatioConstraint", G2L["2"])
    G2L["3"]["AspectRatio"] = 1.25

    -- StarterGui.Cosmic.Frame.background
    G2L["4"] = Instance.new("ImageLabel", G2L["2"])
    G2L["4"]["ZIndex"] = 2
    G2L["4"]["BorderSizePixel"] = 0
    G2L["4"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255)
    G2L["4"]["ScaleType"] = Enum.ScaleType.Tile
    G2L["4"]["ImageTransparency"] = 0.95
    G2L["4"]["ImageColor3"] = Color3.fromRGB(21, 59, 68)
    G2L["4"]["AnchorPoint"] = Vector2.new(0, 1)
    G2L["4"]["Image"] = [[rbxassetid://13581793331]]
    G2L["4"]["TileSize"] = UDim2.new(0, 171, 0, 135)
    G2L["4"]["Size"] = UDim2.new(1, 0, 1, 0)
    G2L["4"]["BackgroundTransparency"] = 1
    G2L["4"]["Name"] = [[background]]
    G2L["4"]["Position"] = UDim2.new(0, 0, 1, 0)

    -- StarterGui.Cosmic.Frame.background.UICorner
    G2L["5"] = Instance.new("UICorner", G2L["4"])
    G2L["5"]["CornerRadius"] = UDim.new(0.05, 0)

    -- StarterGui.Cosmic.Frame.background.UIGradient
    G2L["6"] = Instance.new("UIGradient", G2L["4"])
    G2L["6"]["Rotation"] = -90
    G2L["6"]["Transparency"] =
        NumberSequence.new {
        NumberSequenceKeypoint.new(0.000, 0),
        NumberSequenceKeypoint.new(0.310, 0.39375),
        NumberSequenceKeypoint.new(0.496, 0.59375),
        NumberSequenceKeypoint.new(0.738, 0.825),
        NumberSequenceKeypoint.new(1.000, 1)
    }

    -- StarterGui.Cosmic.Frame.ItemsFrame
    G2L["7"] = Instance.new("Frame", G2L["2"])
    G2L["7"]["BorderSizePixel"] = 0
    G2L["7"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255)
    G2L["7"]["Size"] = UDim2.new(1, 11, 1, 0)
    G2L["7"]["Name"] = [[ItemsFrame]]
    G2L["7"]["BackgroundTransparency"] = 1

    -- StarterGui.Cosmic.Frame.ItemsFrame.Items
    G2L["8"] = Instance.new("ScrollingFrame", G2L["7"])
    G2L["8"]["Active"] = true
    G2L["8"]["ScrollingDirection"] = Enum.ScrollingDirection.Y
    G2L["8"]["BorderSizePixel"] = 0
    G2L["8"]["CanvasSize"] = UDim2.new(0, 0, 1.2, 0)
    G2L["8"]["ElasticBehavior"] = Enum.ElasticBehavior.Always
    G2L["8"]["TopImage"] = [[rbxassetid://5722188468]]
    G2L["8"]["MidImage"] = [[rbxassetid://5722187782]]
    G2L["8"]["VerticalScrollBarInset"] = Enum.ScrollBarInset.Always
    G2L["8"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255)
    G2L["8"]["Name"] = [[Items]]
    G2L["8"]["BottomImage"] = [[rbxassetid://5722186442]]
    G2L["8"]["Size"] = UDim2.new(1, 0, 1, 0)
    G2L["8"]["ScrollBarImageColor3"] = Color3.fromRGB(43, 44, 50)
    G2L["8"]["ScrollBarThickness"] = 15
    G2L["8"]["BackgroundTransparency"] = 1
    -- Attributes
    G2L["8"]:SetAttribute([[InitialSelection]], [[true]])

    -- StarterGui.Cosmic.Frame.ItemsFrame.Items.UIPadding
    G2L["9"] = Instance.new("UIPadding", G2L["8"])
    G2L["9"]["PaddingTop"] = UDim.new(0, 15)
    G2L["9"]["PaddingRight"] = UDim.new(0, 20)
    G2L["9"]["PaddingLeft"] = UDim.new(0, 20)
    G2L["9"]["PaddingBottom"] = UDim.new(0, 15)

    -- StarterGui.Cosmic.Frame.ItemsFrame.Items.UIListLayout
    G2L["a"] = Instance.new("UIListLayout", G2L["8"])
    G2L["a"]["Padding"] = UDim.new(0, 20)
    G2L["a"]["SortOrder"] = Enum.SortOrder.LayoutOrder

    -- StarterGui.Cosmic.Frame.ItemsFrame.Items.TradeCalculator
    G2L["b"] = Instance.new("Frame", G2L["8"])
    G2L["b"]["BorderSizePixel"] = 0
    G2L["b"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255)
    G2L["b"]["Size"] = UDim2.new(1, 0, 1, 0)
    G2L["b"]["Name"] = [[TradeCalculator]]
    G2L["b"]["LayoutOrder"] = 1
    G2L["b"]["BackgroundTransparency"] = 1

    -- StarterGui.Cosmic.Frame.ItemsFrame.Items.TradeCalculator.SettingName
    G2L["c"] = Instance.new("TextLabel", G2L["b"])
    G2L["c"]["TextWrapped"] = true
    G2L["c"]["TextTruncate"] = Enum.TextTruncate.AtEnd
    G2L["c"]["ZIndex"] = 7
    G2L["c"]["BorderSizePixel"] = 0
    G2L["c"]["TextStrokeColor3"] = Color3.fromRGB(18, 59, 73)
    G2L["c"]["TextXAlignment"] = Enum.TextXAlignment.Left
    G2L["c"]["TextScaled"] = true
    G2L["c"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255)
    G2L["c"]["TextSize"] = 14
    G2L["c"]["FontFace"] =
        Font.new([[rbxasset://fonts/families/FredokaOne.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal)
    G2L["c"]["TextColor3"] = Color3.fromRGB(43, 44, 50)
    G2L["c"]["BackgroundTransparency"] = 1
    G2L["c"]["AnchorPoint"] = Vector2.new(0, 0.5)
    G2L["c"]["Size"] = UDim2.new(0.6, 0, 0.5, 0)
    G2L["c"]["Text"] = [[Trade Calculator]]
    G2L["c"]["Name"] = [[SettingName]]
    G2L["c"]["Position"] = UDim2.new(0, 0, 0.5, 0)

    -- StarterGui.Cosmic.Frame.ItemsFrame.Items.TradeCalculator.SettingName.UITextSizeConstraint
    G2L["d"] = Instance.new("UITextSizeConstraint", G2L["c"])
    G2L["d"]["MaxTextSize"] = 60
    G2L["d"]["MinTextSize"] = 10

    -- StarterGui.Cosmic.Frame.ItemsFrame.Items.TradeCalculator.Toggle
    G2L["e"] = Instance.new("Frame", G2L["b"])
    G2L["e"]["BorderSizePixel"] = 0
    G2L["e"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255)
    G2L["e"]["AnchorPoint"] = Vector2.new(1, 0.5)
    G2L["e"]["Size"] = UDim2.new(0.4, 0, 1, 0)
    G2L["e"]["Position"] = UDim2.new(1, 0, 0.5, 0)
    G2L["e"]["Name"] = [[Toggle]]

    -- StarterGui.Cosmic.Frame.ItemsFrame.Items.TradeCalculator.Toggle.Button
    G2L["f"] = Instance.new("ImageButton", G2L["e"])
    G2L["f"]["BorderSizePixel"] = 0
    G2L["f"]["SliceCenter"] = Rect.new(20, 20, 80, 80)
    G2L["f"]["ScaleType"] = Enum.ScaleType.Slice
    G2L["f"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255)
    G2L["f"]["ZIndex"] = 2
    G2L["f"]["AnchorPoint"] = Vector2.new(0.5, 0.5)
    G2L["f"]["Image"] = [[rbxassetid://14423621163]]
    G2L["f"]["Size"] = UDim2.new(0.6, 0, 1, 0)
    G2L["f"]["BackgroundTransparency"] = 1
    G2L["f"]["Name"] = [[Button]]
    G2L["f"]["PressedImage"] = [[rbxassetid://14423621349]]
    G2L["f"]["Position"] = UDim2.new(0.7, 0, 0.5, 0)

    -- StarterGui.Cosmic.Frame.ItemsFrame.Items.TradeCalculator.Toggle.Button.TextLabel
    G2L["10"] = Instance.new("TextLabel", G2L["f"])
    G2L["10"]["TextWrapped"] = true
    G2L["10"]["ZIndex"] = 6
    G2L["10"]["BorderSizePixel"] = 0
    G2L["10"]["TextScaled"] = true
    G2L["10"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255)
    G2L["10"]["TextSize"] = 18
    G2L["10"]["FontFace"] =
        Font.new([[rbxasset://fonts/families/FredokaOne.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal)
    G2L["10"]["TextColor3"] = Color3.fromRGB(255, 255, 255)
    G2L["10"]["BackgroundTransparency"] = 1
    G2L["10"]["AnchorPoint"] = Vector2.new(0.5, 0.5)
    G2L["10"]["Size"] = UDim2.new(0.9, 0, 0.6, 0)
    G2L["10"]["Text"] = [[On]]
    G2L["10"]["Position"] = UDim2.new(0.5, 0, 0.5, 0)

    -- StarterGui.Cosmic.Frame.ItemsFrame.Items.TradeCalculator.Toggle.Button.TextLabel.UIStroke
    G2L["11"] = Instance.new("UIStroke", G2L["10"])
    G2L["11"]["LineJoinMode"] = Enum.LineJoinMode.Bevel
    G2L["11"]["Thickness"] = 3

    -- StarterGui.Cosmic.Frame.ItemsFrame.Items.TradeCalculator.Toggle.Button.Gradient
    G2L["12"] = Instance.new("UIGradient", G2L["f"])
    G2L["12"]["Rotation"] = -90
    G2L["12"]["Name"] = [[Gradient]]
    G2L["12"]["Color"] =
        ColorSequence.new {
        ColorSequenceKeypoint.new(0.000, Color3.fromRGB(93, 240, 0)),
        ColorSequenceKeypoint.new(1.000, Color3.fromRGB(164, 254, 29))
    }

    -- StarterGui.Cosmic.Frame.ItemsFrame.Items.TradeCalculator.Toggle.Bar
    G2L["13"] = Instance.new("Frame", G2L["e"])
    G2L["13"]["BorderSizePixel"] = 0
    G2L["13"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255)
    G2L["13"]["AnchorPoint"] = Vector2.new(0.5, 0.5)
    G2L["13"]["Size"] = UDim2.new(1, -18, 1, -24)
    G2L["13"]["Position"] = UDim2.new(0.5, 0, 0.5, 2)
    G2L["13"]["Name"] = [[Bar]]

    -- StarterGui.Cosmic.Frame.ItemsFrame.Items.TradeCalculator.Toggle.Bar.Tier Gradient
    G2L["14"] = Instance.new("UIGradient", G2L["13"])
    G2L["14"]["Rotation"] = 90
    G2L["14"]["Name"] = [[Tier Gradient]]
    G2L["14"]["Color"] =
        ColorSequence.new {
        ColorSequenceKeypoint.new(0.000, Color3.fromRGB(195, 193, 221)),
        ColorSequenceKeypoint.new(1.000, Color3.fromRGB(149, 146, 168))
    }

    -- StarterGui.Cosmic.Frame.ItemsFrame.Items.TradeCalculator.Toggle.Bar.UIStroke
    G2L["15"] = Instance.new("UIStroke", G2L["13"])
    G2L["15"]["Thickness"] = 4
    G2L["15"]["Color"] = Color3.fromRGB(64, 63, 72)

    -- StarterGui.Cosmic.Frame.ItemsFrame.Items.TradeCalculator.Toggle.Bar.UICorner
    G2L["16"] = Instance.new("UICorner", G2L["13"])
    G2L["16"]["CornerRadius"] = UDim.new(0.125, 0)

    -- StarterGui.Cosmic.Frame.ItemsFrame.Items.TradeCalculator.UIAspectRatioConstraint
    G2L["17"] = Instance.new("UIAspectRatioConstraint", G2L["b"])
    G2L["17"]["AspectRatio"] = 6

    -- StarterGui.Cosmic.Frame.ItemsFrame.Items.Title
    G2L["18"] = Instance.new("TextLabel", G2L["8"])
    G2L["18"]["TextWrapped"] = true
    G2L["18"]["ZIndex"] = 5
    G2L["18"]["BorderSizePixel"] = 0
    G2L["18"]["TextScaled"] = true
    G2L["18"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255)
    G2L["18"]["TextSize"] = 18
    G2L["18"]["FontFace"] =
        Font.new([[rbxasset://fonts/families/FredokaOne.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal)
    G2L["18"]["TextColor3"] = Color3.fromRGB(60, 178, 253)
    G2L["18"]["BackgroundTransparency"] = 1
    G2L["18"]["Size"] = UDim2.new(1, 0, 0, 50)
    G2L["18"]["Visible"] = false
    G2L["18"]["Text"] = [[Title Lorem Ipsum]]
    G2L["18"]["LayoutOrder"] = 1
    G2L["18"]["Name"] = [[Title]]
    G2L["18"]["Position"] = UDim2.new(-0.00133, 0, 0.71553, 0)

    -- StarterGui.Cosmic.Frame.ItemsFrame.Items.Title.UIGradient
    G2L["19"] = Instance.new("UIGradient", G2L["18"])
    G2L["19"]["Rotation"] = -90
    G2L["19"]["Color"] =
        ColorSequence.new {
        ColorSequenceKeypoint.new(0.000, Color3.fromRGB(56, 196, 255)),
        ColorSequenceKeypoint.new(1.000, Color3.fromRGB(95, 240, 255))
    }

    -- StarterGui.Cosmic.Frame.ItemsFrame.Items.Discord
    G2L["1a"] = Instance.new("Frame", G2L["8"])
    G2L["1a"]["BorderSizePixel"] = 0
    G2L["1a"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255)
    G2L["1a"]["Size"] = UDim2.new(1, 0, 1, 0)
    G2L["1a"]["Name"] = [[Discord]]
    G2L["1a"]["LayoutOrder"] = 3
    G2L["1a"]["BackgroundTransparency"] = 1

    -- StarterGui.Cosmic.Frame.ItemsFrame.Items.Discord.SettingName
    G2L["1b"] = Instance.new("TextLabel", G2L["1a"])
    G2L["1b"]["TextWrapped"] = true
    G2L["1b"]["TextTruncate"] = Enum.TextTruncate.AtEnd
    G2L["1b"]["ZIndex"] = 7
    G2L["1b"]["BorderSizePixel"] = 0
    G2L["1b"]["TextStrokeColor3"] = Color3.fromRGB(18, 59, 73)
    G2L["1b"]["TextXAlignment"] = Enum.TextXAlignment.Left
    G2L["1b"]["TextScaled"] = true
    G2L["1b"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255)
    G2L["1b"]["TextSize"] = 14
    G2L["1b"]["FontFace"] =
        Font.new([[rbxasset://fonts/families/FredokaOne.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal)
    G2L["1b"]["TextColor3"] = Color3.fromRGB(43, 44, 50)
    G2L["1b"]["BackgroundTransparency"] = 1
    G2L["1b"]["AnchorPoint"] = Vector2.new(0, 0.5)
    G2L["1b"]["Size"] = UDim2.new(0.6, 0, 0.5, 0)
    G2L["1b"]["Text"] = [[Discord]]
    G2L["1b"]["Name"] = [[SettingName]]
    G2L["1b"]["Position"] = UDim2.new(0, 0, 0.5, 0)

    -- StarterGui.Cosmic.Frame.ItemsFrame.Items.Discord.SettingName.UITextSizeConstraint
    G2L["1c"] = Instance.new("UITextSizeConstraint", G2L["1b"])
    G2L["1c"]["MaxTextSize"] = 60
    G2L["1c"]["MinTextSize"] = 10

    -- StarterGui.Cosmic.Frame.ItemsFrame.Items.Discord.Toggle
    G2L["1d"] = Instance.new("Frame", G2L["1a"])
    G2L["1d"]["BorderSizePixel"] = 0
    G2L["1d"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255)
    G2L["1d"]["AnchorPoint"] = Vector2.new(1, 0.5)
    G2L["1d"]["Size"] = UDim2.new(0.4, 0, 1, 0)
    G2L["1d"]["Position"] = UDim2.new(1, 0, 0.5, 0)
    G2L["1d"]["Name"] = [[Toggle]]

    -- StarterGui.Cosmic.Frame.ItemsFrame.Items.Discord.Toggle.Button
    G2L["1e"] = Instance.new("ImageButton", G2L["1d"])
    G2L["1e"]["BorderSizePixel"] = 0
    G2L["1e"]["SliceCenter"] = Rect.new(20, 20, 80, 80)
    G2L["1e"]["ScaleType"] = Enum.ScaleType.Slice
    G2L["1e"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255)
    G2L["1e"]["ZIndex"] = 2
    G2L["1e"]["AnchorPoint"] = Vector2.new(0.5, 0.5)
    G2L["1e"]["Image"] = [[rbxassetid://14423621163]]
    G2L["1e"]["Size"] = UDim2.new(1, 0, 1, 0)
    G2L["1e"]["BackgroundTransparency"] = 1
    G2L["1e"]["Name"] = [[Button]]
    G2L["1e"]["PressedImage"] = [[rbxassetid://14423621349]]
    G2L["1e"]["Position"] = UDim2.new(0.5, 0, 0.5, 2)

    -- StarterGui.Cosmic.Frame.ItemsFrame.Items.Discord.Toggle.Button.Green Gradient
    G2L["1f"] = Instance.new("UIGradient", G2L["1e"])
    G2L["1f"]["Rotation"] = -90
    G2L["1f"]["Name"] = [[Green Gradient]]
    G2L["1f"]["Color"] =
        ColorSequence.new {
        ColorSequenceKeypoint.new(0.000, Color3.fromRGB(93, 240, 0)),
        ColorSequenceKeypoint.new(1.000, Color3.fromRGB(164, 254, 29))
    }

    -- StarterGui.Cosmic.Frame.ItemsFrame.Items.Discord.Toggle.Button.TextLabel
    G2L["20"] = Instance.new("TextLabel", G2L["1e"])
    G2L["20"]["TextWrapped"] = true
    G2L["20"]["ZIndex"] = 6
    G2L["20"]["BorderSizePixel"] = 0
    G2L["20"]["TextScaled"] = true
    G2L["20"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255)
    G2L["20"]["TextSize"] = 18
    G2L["20"]["FontFace"] =
        Font.new([[rbxasset://fonts/families/FredokaOne.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal)
    G2L["20"]["TextColor3"] = Color3.fromRGB(255, 255, 255)
    G2L["20"]["BackgroundTransparency"] = 1
    G2L["20"]["AnchorPoint"] = Vector2.new(0.5, 0.5)
    G2L["20"]["Size"] = UDim2.new(0.9, 0, 0.6, 0)
    G2L["20"]["Text"] = [[Join]]
    G2L["20"]["Position"] = UDim2.new(0.5, 0, 0.5, 0)

    -- StarterGui.Cosmic.Frame.ItemsFrame.Items.Discord.Toggle.Button.TextLabel.UIStroke
    G2L["21"] = Instance.new("UIStroke", G2L["20"])
    G2L["21"]["LineJoinMode"] = Enum.LineJoinMode.Bevel
    G2L["21"]["Thickness"] = 3

    -- StarterGui.Cosmic.Frame.ItemsFrame.Items.Discord.UIAspectRatioConstraint
    G2L["22"] = Instance.new("UIAspectRatioConstraint", G2L["1a"])
    G2L["22"]["AspectRatio"] = 6

    -- StarterGui.Cosmic.Frame.ItemsFrame.Items.Donate
    G2L["23"] = Instance.new("Frame", G2L["8"])
    G2L["23"]["BorderSizePixel"] = 0
    G2L["23"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255)
    G2L["23"]["Size"] = UDim2.new(1, 0, 1, 0)
    G2L["23"]["Name"] = [[Donate]]
    G2L["23"]["LayoutOrder"] = 4
    G2L["23"]["BackgroundTransparency"] = 1

    -- StarterGui.Cosmic.Frame.ItemsFrame.Items.Donate.SettingName
    G2L["24"] = Instance.new("TextLabel", G2L["23"])
    G2L["24"]["TextWrapped"] = true
    G2L["24"]["TextTruncate"] = Enum.TextTruncate.AtEnd
    G2L["24"]["ZIndex"] = 7
    G2L["24"]["BorderSizePixel"] = 0
    G2L["24"]["TextStrokeColor3"] = Color3.fromRGB(18, 59, 73)
    G2L["24"]["TextXAlignment"] = Enum.TextXAlignment.Left
    G2L["24"]["TextScaled"] = true
    G2L["24"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255)
    G2L["24"]["TextSize"] = 14
    G2L["24"]["FontFace"] =
        Font.new([[rbxasset://fonts/families/FredokaOne.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal)
    G2L["24"]["TextColor3"] = Color3.fromRGB(43, 44, 50)
    G2L["24"]["BackgroundTransparency"] = 1
    G2L["24"]["AnchorPoint"] = Vector2.new(0, 0.5)
    G2L["24"]["Size"] = UDim2.new(0.6, 0, 0.5, 0)
    G2L["24"]["Text"] = [[Donate]]
    G2L["24"]["Name"] = [[SettingName]]
    G2L["24"]["Position"] = UDim2.new(0, 0, 0.5, 0)

    -- StarterGui.Cosmic.Frame.ItemsFrame.Items.Donate.SettingName.UITextSizeConstraint
    G2L["25"] = Instance.new("UITextSizeConstraint", G2L["24"])
    G2L["25"]["MaxTextSize"] = 60
    G2L["25"]["MinTextSize"] = 10

    -- StarterGui.Cosmic.Frame.ItemsFrame.Items.Donate.Toggle
    G2L["26"] = Instance.new("Frame", G2L["23"])
    G2L["26"]["BorderSizePixel"] = 0
    G2L["26"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255)
    G2L["26"]["AnchorPoint"] = Vector2.new(1, 0.5)
    G2L["26"]["Size"] = UDim2.new(0.4, 0, 1, 0)
    G2L["26"]["Position"] = UDim2.new(1, 0, 0.5, 0)
    G2L["26"]["Name"] = [[Toggle]]

    -- StarterGui.Cosmic.Frame.ItemsFrame.Items.Donate.Toggle.Button
    G2L["27"] = Instance.new("ImageButton", G2L["26"])
    G2L["27"]["BorderSizePixel"] = 0
    G2L["27"]["SliceCenter"] = Rect.new(20, 20, 80, 80)
    G2L["27"]["ScaleType"] = Enum.ScaleType.Slice
    G2L["27"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255)
    G2L["27"]["ZIndex"] = 2
    G2L["27"]["AnchorPoint"] = Vector2.new(0.5, 0.5)
    G2L["27"]["Image"] = [[rbxassetid://14423621163]]
    G2L["27"]["Size"] = UDim2.new(1, 0, 1, 0)
    G2L["27"]["BackgroundTransparency"] = 1
    G2L["27"]["Name"] = [[Button]]
    G2L["27"]["PressedImage"] = [[rbxassetid://14423621349]]
    G2L["27"]["Position"] = UDim2.new(0.5, 0, 0.5, 2)

    -- StarterGui.Cosmic.Frame.ItemsFrame.Items.Donate.Toggle.Button.Green Gradient
    G2L["28"] = Instance.new("UIGradient", G2L["27"])
    G2L["28"]["Rotation"] = -90
    G2L["28"]["Name"] = [[Green Gradient]]
    G2L["28"]["Color"] =
        ColorSequence.new {
        ColorSequenceKeypoint.new(0.000, Color3.fromRGB(93, 240, 0)),
        ColorSequenceKeypoint.new(1.000, Color3.fromRGB(164, 254, 29))
    }

    -- StarterGui.Cosmic.Frame.ItemsFrame.Items.Donate.Toggle.Button.TextLabel
    G2L["29"] = Instance.new("TextLabel", G2L["27"])
    G2L["29"]["TextWrapped"] = true
    G2L["29"]["ZIndex"] = 6
    G2L["29"]["BorderSizePixel"] = 0
    G2L["29"]["TextScaled"] = true
    G2L["29"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255)
    G2L["29"]["TextSize"] = 18
    G2L["29"]["FontFace"] =
        Font.new([[rbxasset://fonts/families/FredokaOne.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal)
    G2L["29"]["TextColor3"] = Color3.fromRGB(255, 255, 255)
    G2L["29"]["BackgroundTransparency"] = 1
    G2L["29"]["AnchorPoint"] = Vector2.new(0.5, 0.5)
    G2L["29"]["Size"] = UDim2.new(0.9, 0, 0.6, 0)
    G2L["29"]["Text"] = [[1M]]
    G2L["29"]["Position"] = UDim2.new(0.5, 0, 0.5, 0)

    -- StarterGui.Cosmic.Frame.ItemsFrame.Items.Donate.Toggle.Button.TextLabel.UIStroke
    G2L["2a"] = Instance.new("UIStroke", G2L["29"])
    G2L["2a"]["LineJoinMode"] = Enum.LineJoinMode.Bevel
    G2L["2a"]["Thickness"] = 3

    -- StarterGui.Cosmic.Frame.ItemsFrame.Items.Donate.UIAspectRatioConstraint
    G2L["2b"] = Instance.new("UIAspectRatioConstraint", G2L["23"])
    G2L["2b"]["AspectRatio"] = 6

    -- StarterGui.Cosmic.Frame.ItemsFrame.Items.TradeProvider
    G2L["2c"] = Instance.new("Frame", G2L["8"])
    G2L["2c"]["BorderSizePixel"] = 0
    G2L["2c"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255)
    G2L["2c"]["Size"] = UDim2.new(1, 0, 1, 0)
    G2L["2c"]["Name"] = [[TradeProvider]]
    G2L["2c"]["LayoutOrder"] = 2
    G2L["2c"]["BackgroundTransparency"] = 1

    -- StarterGui.Cosmic.Frame.ItemsFrame.Items.TradeProvider.SettingName
    G2L["2d"] = Instance.new("TextLabel", G2L["2c"])
    G2L["2d"]["TextWrapped"] = true
    G2L["2d"]["TextTruncate"] = Enum.TextTruncate.AtEnd
    G2L["2d"]["ZIndex"] = 7
    G2L["2d"]["BorderSizePixel"] = 0
    G2L["2d"]["TextStrokeColor3"] = Color3.fromRGB(18, 59, 73)
    G2L["2d"]["TextXAlignment"] = Enum.TextXAlignment.Left
    G2L["2d"]["TextScaled"] = true
    G2L["2d"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255)
    G2L["2d"]["TextSize"] = 14
    G2L["2d"]["FontFace"] =
        Font.new([[rbxasset://fonts/families/FredokaOne.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal)
    G2L["2d"]["TextColor3"] = Color3.fromRGB(43, 44, 50)
    G2L["2d"]["BackgroundTransparency"] = 1
    G2L["2d"]["AnchorPoint"] = Vector2.new(0, 0.5)
    G2L["2d"]["Size"] = UDim2.new(0.6, 0, 0.5, 0)
    G2L["2d"]["Text"] = [[RAP Source]]
    G2L["2d"]["Name"] = [[SettingName]]
    G2L["2d"]["Position"] = UDim2.new(0, 0, 0.5, 0)

    -- StarterGui.Cosmic.Frame.ItemsFrame.Items.TradeProvider.SettingName.UITextSizeConstraint
    G2L["2e"] = Instance.new("UITextSizeConstraint", G2L["2d"])
    G2L["2e"]["MaxTextSize"] = 60
    G2L["2e"]["MinTextSize"] = 10

    -- StarterGui.Cosmic.Frame.ItemsFrame.Items.TradeProvider.Toggle
    G2L["2f"] = Instance.new("Frame", G2L["2c"])
    G2L["2f"]["BorderSizePixel"] = 0
    G2L["2f"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255)
    G2L["2f"]["AnchorPoint"] = Vector2.new(1, 0.5)
    G2L["2f"]["Size"] = UDim2.new(0.4, 0, 1, 0)
    G2L["2f"]["Position"] = UDim2.new(1, 0, 0.5, 0)
    G2L["2f"]["Name"] = [[Toggle]]

    -- StarterGui.Cosmic.Frame.ItemsFrame.Items.TradeProvider.Toggle.Button
    G2L["30"] = Instance.new("ImageButton", G2L["2f"])
    G2L["30"]["BorderSizePixel"] = 0
    G2L["30"]["SliceCenter"] = Rect.new(20, 20, 80, 80)
    G2L["30"]["ScaleType"] = Enum.ScaleType.Slice
    G2L["30"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255)
    G2L["30"]["ZIndex"] = 2
    G2L["30"]["AnchorPoint"] = Vector2.new(0.5, 0.5)
    G2L["30"]["Image"] = [[rbxassetid://14423621163]]
    G2L["30"]["Size"] = UDim2.new(0.6, 0, 1, 0)
    G2L["30"]["BackgroundTransparency"] = 1
    G2L["30"]["Name"] = [[Button]]
    G2L["30"]["PressedImage"] = [[rbxassetid://14423621349]]
    G2L["30"]["Position"] = UDim2.new(0.3, 0, 0.5, 0)

    -- StarterGui.Cosmic.Frame.ItemsFrame.Items.TradeProvider.Toggle.Button.TextLabel
    G2L["31"] = Instance.new("TextLabel", G2L["30"])
    G2L["31"]["TextWrapped"] = true
    G2L["31"]["ZIndex"] = 6
    G2L["31"]["BorderSizePixel"] = 0
    G2L["31"]["TextScaled"] = true
    G2L["31"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255)
    G2L["31"]["TextSize"] = 18
    G2L["31"]["FontFace"] =
        Font.new([[rbxasset://fonts/families/FredokaOne.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal)
    G2L["31"]["TextColor3"] = Color3.fromRGB(255, 255, 255)
    G2L["31"]["BackgroundTransparency"] = 1
    G2L["31"]["AnchorPoint"] = Vector2.new(0.5, 0.5)
    G2L["31"]["Size"] = UDim2.new(0.9, 0, 0.6, 0)
    G2L["31"]["Text"] = [[Cosmic]]
    G2L["31"]["Position"] = UDim2.new(0.5, 0, 0.5, 0)

    -- StarterGui.Cosmic.Frame.ItemsFrame.Items.TradeProvider.Toggle.Button.TextLabel.UIStroke
    G2L["32"] = Instance.new("UIStroke", G2L["31"])
    G2L["32"]["LineJoinMode"] = Enum.LineJoinMode.Bevel
    G2L["32"]["Thickness"] = 3

    -- StarterGui.Cosmic.Frame.ItemsFrame.Items.TradeProvider.Toggle.Button.Gradient
    G2L["33"] = Instance.new("UIGradient", G2L["30"])
    G2L["33"]["Rotation"] = -90
    G2L["33"]["Name"] = [[Gradient]]
    G2L["33"]["Color"] =
        ColorSequence.new {
    ColorSequenceKeypoint.new(0.000, Color3.fromRGB(58, 49, 89)),
    ColorSequenceKeypoint.new(1.000, Color3.fromRGB(105, 96, 140))
}


    -- StarterGui.Cosmic.Frame.ItemsFrame.Items.TradeProvider.Toggle.Bar
    G2L["34"] = Instance.new("Frame", G2L["2f"])
    G2L["34"]["BorderSizePixel"] = 0
    G2L["34"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255)
    G2L["34"]["AnchorPoint"] = Vector2.new(0.5, 0.5)
    G2L["34"]["Size"] = UDim2.new(1, -18, 1, -24)
    G2L["34"]["Position"] = UDim2.new(0.5, 0, 0.5, 2)
    G2L["34"]["Name"] = [[Bar]]

    -- StarterGui.Cosmic.Frame.ItemsFrame.Items.TradeProvider.Toggle.Bar.Tier Gradient
    G2L["35"] = Instance.new("UIGradient", G2L["34"])
    G2L["35"]["Rotation"] = 90
    G2L["35"]["Name"] = [[Tier Gradient]]
    G2L["35"]["Color"] =
        ColorSequence.new {
        ColorSequenceKeypoint.new(0.000, Color3.fromRGB(195, 193, 221)),
        ColorSequenceKeypoint.new(1.000, Color3.fromRGB(149, 146, 168))
    }

    -- StarterGui.Cosmic.Frame.ItemsFrame.Items.TradeProvider.Toggle.Bar.UIStroke
    G2L["36"] = Instance.new("UIStroke", G2L["34"])
    G2L["36"]["Thickness"] = 4
    G2L["36"]["Color"] = Color3.fromRGB(64, 63, 72)

    -- StarterGui.Cosmic.Frame.ItemsFrame.Items.TradeProvider.Toggle.Bar.UICorner
    G2L["37"] = Instance.new("UICorner", G2L["34"])
    G2L["37"]["CornerRadius"] = UDim.new(0.125, 0)

    -- StarterGui.Cosmic.Frame.ItemsFrame.Items.TradeProvider.UIAspectRatioConstraint
    G2L["38"] = Instance.new("UIAspectRatioConstraint", G2L["2c"])
    G2L["38"]["AspectRatio"] = 6

    -- StarterGui.Cosmic.Frame.UICorner
    G2L["39"] = Instance.new("UICorner", G2L["2"])
    G2L["39"]["CornerRadius"] = UDim.new(0.035, 0)

    -- StarterGui.Cosmic.Frame.shadow
    G2L["3a"] = Instance.new("ImageLabel", G2L["2"])
    G2L["3a"]["ZIndex"] = -1
    G2L["3a"]["BorderSizePixel"] = 0
    G2L["3a"]["SliceCenter"] = Rect.new(50, 50, 150, 150)
    G2L["3a"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255)
    G2L["3a"]["ScaleType"] = Enum.ScaleType.Slice
    G2L["3a"]["ImageTransparency"] = 0.75
    G2L["3a"]["ImageColor3"] = Color3.fromRGB(0, 0, 0)
    G2L["3a"]["AnchorPoint"] = Vector2.new(0.5, 0.5)
    G2L["3a"]["Image"] = [[rbxassetid://14001321443]]
    G2L["3a"]["Size"] = UDim2.new(1, 35, 1, 35)
    G2L["3a"]["BorderColor3"] = Color3.fromRGB(0, 0, 0)
    G2L["3a"]["BackgroundTransparency"] = 1
    G2L["3a"]["Name"] = [[shadow]]
    G2L["3a"]["Position"] = UDim2.new(0.5, 0, 0.5, 0)

    -- StarterGui.Cosmic.Frame.UIStroke
    G2L["3b"] = Instance.new("UIStroke", G2L["2"])
    G2L["3b"]["Thickness"] = 7
    G2L["3b"]["Color"] = Color3.fromRGB(43, 44, 50)

    -- StarterGui.Cosmic.Frame.Close
    G2L["3c"] = Instance.new("ImageButton", G2L["2"])
    G2L["3c"]["BorderSizePixel"] = 0
    G2L["3c"]["SliceCenter"] = Rect.new(20, 20, 80, 80)
    G2L["3c"]["ScaleType"] = Enum.ScaleType.Slice
    G2L["3c"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255)
    G2L["3c"]["Selectable"] = false
    G2L["3c"]["ZIndex"] = 50
    G2L["3c"]["AnchorPoint"] = Vector2.new(0.5, 0.5)
    G2L["3c"]["Image"] = [[rbxassetid://14423621163]]
    G2L["3c"]["Size"] = UDim2.new(1, 0, 0.06, 45)
    G2L["3c"]["BackgroundTransparency"] = 1
    G2L["3c"]["Name"] = [[Close]]
    G2L["3c"]["PressedImage"] = [[rbxassetid://14423621349]]
    G2L["3c"]["Position"] = UDim2.new(0.991, 0, 0, 0)

    -- StarterGui.Cosmic.Frame.Close.UIAspectRatioConstraint
    G2L["3d"] = Instance.new("UIAspectRatioConstraint", G2L["3c"])
    G2L["3d"]["AspectRatio"] = 1.05

    -- StarterGui.Cosmic.Frame.Close.red gradient
    G2L["3e"] = Instance.new("UIGradient", G2L["3c"])
    G2L["3e"]["Rotation"] = -90
    G2L["3e"]["Name"] = [[red gradient]]
    G2L["3e"]["Color"] =
        ColorSequence.new {
        ColorSequenceKeypoint.new(0.000, Color3.fromRGB(255, 3, 62)),
        ColorSequenceKeypoint.new(1.000, Color3.fromRGB(255, 40, 126))
    }

    -- StarterGui.Cosmic.Frame.Close.TextLabel
    G2L["3f"] = Instance.new("TextLabel", G2L["3c"])
    G2L["3f"]["TextWrapped"] = true
    G2L["3f"]["ZIndex"] = 50
    G2L["3f"]["BorderSizePixel"] = 0
    G2L["3f"]["TextScaled"] = true
    G2L["3f"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255)
    G2L["3f"]["TextSize"] = 18
    G2L["3f"]["FontFace"] =
        Font.new([[rbxasset://fonts/families/FredokaOne.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal)
    G2L["3f"]["TextColor3"] = Color3.fromRGB(255, 255, 255)
    G2L["3f"]["BackgroundTransparency"] = 1
    G2L["3f"]["AnchorPoint"] = Vector2.new(0.5, 0.5)
    G2L["3f"]["Size"] = UDim2.new(0.9, 0, 0.6, 0)
    G2L["3f"]["Text"] = [[X]]
    G2L["3f"]["Position"] = UDim2.new(0.5, 0, 0.5, 0)

    -- StarterGui.Cosmic.Frame.Close.TextLabel.UIStroke
    G2L["40"] = Instance.new("UIStroke", G2L["3f"])
    G2L["40"]["LineJoinMode"] = Enum.LineJoinMode.Bevel
    G2L["40"]["Thickness"] = 3

    -- StarterGui.Cosmic.Frame.Close.shadow
    G2L["41"] = Instance.new("ImageLabel", G2L["3c"])
    G2L["41"]["ZIndex"] = 49
    G2L["41"]["BorderSizePixel"] = 0
    G2L["41"]["SliceCenter"] = Rect.new(50, 50, 150, 150)
    G2L["41"]["SliceScale"] = 0.75
    G2L["41"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255)
    G2L["41"]["ScaleType"] = Enum.ScaleType.Slice
    G2L["41"]["ImageTransparency"] = 0.75
    G2L["41"]["ImageColor3"] = Color3.fromRGB(0, 0, 0)
    G2L["41"]["AnchorPoint"] = Vector2.new(0.5, 0.5)
    G2L["41"]["Image"] = [[rbxassetid://14001321443]]
    G2L["41"]["Size"] = UDim2.new(1, 0, 1.1, 0)
    G2L["41"]["BorderColor3"] = Color3.fromRGB(0, 0, 0)
    G2L["41"]["BackgroundTransparency"] = 1
    G2L["41"]["Name"] = [[shadow]]
    G2L["41"]["Position"] = UDim2.new(0.5, 0, 0.6, 0)

    -- StarterGui.Cosmic.Frame.Title
    G2L["42"] = Instance.new("TextLabel", G2L["2"])
    G2L["42"]["TextWrapped"] = true
    G2L["42"]["ZIndex"] = 50
    G2L["42"]["BorderSizePixel"] = 0
    G2L["42"]["TextXAlignment"] = Enum.TextXAlignment.Left
    G2L["42"]["TextScaled"] = true
    G2L["42"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255)
    G2L["42"]["TextSize"] = 18
    G2L["42"]["FontFace"] =
        Font.new([[rbxasset://fonts/families/FredokaOne.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal)
    G2L["42"]["TextColor3"] = Color3.fromRGB(255, 255, 255)
    G2L["42"]["BackgroundTransparency"] = 1
    G2L["42"]["AnchorPoint"] = Vector2.new(0.5, 0.75)
    G2L["42"]["Size"] = UDim2.new(0.60763, 0, 0.11639, 0)
    G2L["42"]["Text"] = [[Calculator Settings!]]
    G2L["42"]["Name"] = [[Title]]
    G2L["42"]["Position"] = UDim2.new(0.37113, 0, 0.01163, 0)

    -- StarterGui.Cosmic.Frame.Title.UIStroke
    G2L["43"] = Instance.new("UIStroke", G2L["42"])
    G2L["43"]["LineJoinMode"] = Enum.LineJoinMode.Bevel
    G2L["43"]["Thickness"] = 5
    G2L["43"]["Color"] = Color3.fromRGB(43, 44, 50)

    -- StarterGui.Cosmic.Frame.SideIcon
    G2L["44"] = Instance.new("ImageLabel", G2L["2"])
    G2L["44"]["ZIndex"] = 49
    G2L["44"]["BorderSizePixel"] = 0
    G2L["44"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255)
    G2L["44"]["ScaleType"] = Enum.ScaleType.Fit
    G2L["44"]["AnchorPoint"] = Vector2.new(0.5, 0.5)
    G2L["44"]["Image"] = [[rbxassetid://15402995645]]
    G2L["44"]["Size"] = UDim2.new(0.14538, 8, 0.18935, 8)
    G2L["44"]["BorderColor3"] = Color3.fromRGB(0, 0, 0)
    G2L["44"]["BackgroundTransparency"] = 1
    G2L["44"]["Name"] = [[SideIcon]]
    G2L["44"]["Position"] = UDim2.new(0.00986, 0, -0.01707, 0)

    -- StarterGui.Cosmic.UIPadding
    G2L["45"] = Instance.new("UIPadding", G2L["1"])
    G2L["45"]["PaddingTop"] = UDim.new(0, -12)

    return G2L["1"], require
end
