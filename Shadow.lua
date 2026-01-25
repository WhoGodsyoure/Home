local library = {}

function play(id)
    for _, v in next, workspace:GetChildren() do
        if v.Name == "GUISound" then
            v:Destroy()
        end
    end
    local Sound = Instance.new("Sound", workspace)
    Sound.Name = "GUISound"
    Sound.Volume = 6
    Sound.SoundId = id
    Sound:Play()
end

function library:CreateWindow(name, theme)
    local theme1 = Color3.fromRGB(32,32,32)
    local theme2 = Color3.fromRGB(26,26,26)
    local theme3 = Color3.fromRGB(176, 148, 255)
    local toolight = false

    for i,v in pairs(game.CoreGui:GetChildren()) do
        if v.Name == "By Shaddow" then
            v:Destroy()
        end
    end

    if theme == "Normal" then
        theme1 = Color3.fromRGB(32,32,32)
        theme2 = Color3.fromRGB(26,26,26)
        theme3 = Color3.fromRGB(176, 148, 255)
    elseif theme == "Reverse" then
        theme1 = Color3.fromRGB(26,26,26)
        theme2 = Color3.fromRGB(32,32,32)
        theme3 = Color3.fromRGB(176, 148, 255)
    elseif theme == "Blood" then
        theme3 = Color3.fromRGB(138, 3, 3)
    elseif theme == "Gainsboro" then
        theme3 = Color3.fromRGB(220, 220, 221)
        toolight = true
    elseif theme == "Canary" then
        theme3 = Color3.fromRGB(255, 253, 130)
    elseif theme == "Emerald" then
        theme3 = Color3.fromRGB(68, 207, 108)
    elseif theme == "Crimson" then
        theme3 = Color3.fromRGB(214, 40, 57)
    elseif theme == "Deep Sea" then
        theme3 = Color3.fromRGB(40, 81, 214)
    elseif theme == "Rainbow" then
        theme1 = Color3.fromRGB(30,30,35)
        theme2 = Color3.fromRGB(20,20,25)
        theme3 = Color3.fromHSV(tick() % 5 / 5, 0.85, 0.92)
    end

    local Screen = Instance.new("ScreenGui")
    local Top = Instance.new("ImageLabel")
    local Toggle = Instance.new("ImageButton")
    local Main = Instance.new("ImageLabel")
    local Tabs = Instance.new("ImageLabel")
    local UIGridLayout = Instance.new("UIGridLayout")
    local TabContainer = Instance.new("Folder")
    local Items = Instance.new("ImageLabel")
    local TextLabel = Instance.new("TextLabel")

    Screen.Name = "By Shaddow"
    Screen.Parent = game:WaitForChild("CoreGui")
    Screen.Enabled = true

    Top.Name = "Top"
    Top.Parent = Screen
    Top.AnchorPoint = Vector2.new(0.5, 0.5)
    Top.BackgroundTransparency = 1
    Top.Active = true
    Top.Position = UDim2.new(0.5, 0, 0.3, 0)
    Top.Size = UDim2.new(0, 400, 0, 32)
    Top.Image = "rbxassetid://3570695787"
    Top.ImageColor3 = theme1
    Top.ScaleType = Enum.ScaleType.Slice
    Top.SliceCenter = Rect.new(100, 100, 100, 100)
    Top.SliceScale = 0.030
    Top.Draggable = true

    TextLabel.Parent = Top
    TextLabel.BackgroundTransparency = 1
    TextLabel.Position = UDim2.new(0.035, 0, 0, 0)
    TextLabel.Size = UDim2.new(0, 360, 0, 28)
    TextLabel.Font = Enum.Font.SourceSansSemibold
    TextLabel.Text = name
    TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
    TextLabel.TextSize = 16
    TextLabel.TextTruncate = Enum.TextTruncate.SplitWord

    Toggle.Name = "Toggle"
    Toggle.Parent = Top
    Toggle.BackgroundTransparency = 1
    Toggle.Position = UDim2.new(0.012, 0, 0.12, 0)
    Toggle.Rotation = 90
    Toggle.Size = UDim2.new(0, 18, 0, 19)
    Toggle.ImageColor3 = Color3.fromRGB(255, 255, 255)
    Toggle.Image = "https://www.roblox.com/Thumbs/Asset.ashx?width=420&height=420&assetId=4731371541"

    Main.Name = "Main"
    Main.Parent = Top
    Main.AnchorPoint = Vector2.new(0.5, 0)
    Main.BackgroundTransparency = 1
    Main.Position = UDim2.new(0.5, 0, 1, 3)
    Main.Size = UDim2.new(0, 400, 0, 400)
    Main.Image = "rbxassetid://3570695787"
    Main.ImageColor3 = theme2
    Main.ScaleType = Enum.ScaleType.Slice
    Main.SliceCenter = Rect.new(100, 100, 100, 100)
    Main.SliceScale = 0.030

    Tabs.Name = "Tabs"
    Tabs.Parent = TabContainer
    Tabs.BackgroundTransparency = 1
    Tabs.Position = UDim2.new(0.015, 0, 0.02, 0)
    Tabs.Size = UDim2.new(0, 110, 0, 380)
    Tabs.Image = "rbxassetid://3570695787"
    Tabs.ImageColor3 = theme1
    Tabs.ScaleType = Enum.ScaleType.Slice
    Tabs.SliceCenter = Rect.new(100, 100, 100, 100)
    Tabs.SliceScale = 0.020

    UIGridLayout.Parent = Tabs
    UIGridLayout.SortOrder = Enum.SortOrder.LayoutOrder
    UIGridLayout.CellSize = UDim2.new(0, 110, 0, 34)
    UIGridLayout.CellPadding = UDim2.new(0, 6, 0, 6)

    TabContainer.Name = "TabContainer"
    TabContainer.Parent = Main

    Items.Name = "Items"
    Items.Parent = Main
    Items.BackgroundTransparency = 1
    Items.Position = UDim2.new(0.29, 0, 0.02, 0)
    Items.Size = UDim2.new(0, 280, 0, 380)
    Items.Image = "rbxassetid://3570695787"
    Items.ImageColor3 = theme1
    Items.ScaleType = Enum.ScaleType.Slice
    Items.SliceCenter = Rect.new(100, 100, 100, 100)
    Items.SliceScale = 0.020

    local opened = true
    Toggle.MouseButton1Click:Connect(function()
        if opened then
            Main.Visible = false
            Toggle.Rotation = 0
            opened = false
        else
            Main.Visible = true
            Toggle.Rotation = 90
            opened = true
        end
    end)

    local InsideLibrary = {}

    function InsideLibrary:CreateTab(text)
        local TextButton1 = Instance.new("TextButton")
        local Frame = Instance.new("ScrollingFrame")
        local UIGridLayout_2 = Instance.new("UIGridLayout")
        local UICorner = Instance.new("UICorner")

        TextButton1.Name = text.." Button"
        TextButton1.Parent = Tabs
        TextButton1.BackgroundTransparency = 1
        TextButton1.Size = UDim2.new(0, 100, 0, 30)
        TextButton1.Font = Enum.Font.SourceSansSemibold
        TextButton1.Text = text
        TextButton1.TextColor3 = Color3.fromRGB(255, 255, 255)
        TextButton1.TextSize = 15
        TextButton1.TextWrapped = true

        Frame.Parent = Items
        Frame.Active = true
        Frame.BackgroundTransparency = 1
        Frame.BorderSizePixel = 0
        Frame.Position = UDim2.new(0.015, 0, 0.015, 0)
        Frame.Size = UDim2.new(1, -12, 1, -12)
        Frame.CanvasSize = UDim2.new(0, 0, 0, 0)
        Frame.ScrollBarImageColor3 = theme2
        Frame.ScrollBarThickness = 6

        UICorner.Parent = Frame

        UIGridLayout_2.Parent = Frame
        UIGridLayout_2.FillDirection = Enum.FillDirection.Vertical
        UIGridLayout_2.SortOrder = Enum.SortOrder.LayoutOrder
        UIGridLayout_2.CellSize = UDim2.new(0, 250, 0, 40)
        UIGridLayout_2.CellPadding = UDim2.new(0, 10, 0, 8)
        UIGridLayout_2.StartCorner = Enum.StartCorner.TopLeft

        Frame.ChildAdded:Connect(function(child)
            if child:IsA("GuiObject") then
                local count = 0
                for _, obj in ipairs(Frame:GetChildren()) do
                    if obj:IsA("GuiObject") and obj ~= UIGridLayout_2 then
                        count = count + 1
                    end
                end
                Frame.CanvasSize = UDim2.new(0, 0, 0, count * 48 + 30)
            end
        end)

        TextButton1.MouseButton1Click:Connect(function()
            for _, v in next, Items:GetChildren() do
                if v:IsA("ScrollingFrame") then
                    v.Visible = false
                end
            end
            for _, t in next, Tabs:GetChildren() do
                if t:IsA("TextButton") then
                    t.TextColor3 = Color3.fromRGB(255, 255, 255)
                end
            end
            TextButton1.TextColor3 = theme3
            Frame.Visible = true
            play("rbxassetid://1412830636")
        end)

        local InsideTab = {}

        function InsideTab:CreateDropdown(text, list, callback)
            local BodyYSize = 0
            local IsDropped = false
            callback = callback or function() end
            list = list or {}
            text = text or "Dropdown"

            local Dropdown = Instance.new("TextLabel")
            local ArrowButton = Instance.new("TextButton")
            local Roundify = Instance.new("ImageLabel")
            local DropdownContainer = Instance.new("ImageLabel")
            local UIListLayout_2 = Instance.new("UIListLayout")

            Dropdown.Name = "Dropdown"
            Dropdown.Parent = Frame
            Dropdown.BackgroundTransparency = 1
            Dropdown.Size = UDim2.new(1, 0, 0, 40)
            Dropdown.Font = Enum.Font.SourceSansSemibold
            Dropdown.Text = text
            Dropdown.TextColor3 = Color3.fromRGB(255, 255, 255)
            Dropdown.TextSize = 15
            Dropdown.TextXAlignment = Enum.TextXAlignment.Left

            ArrowButton.Parent = Dropdown
            ArrowButton.BackgroundTransparency = 1
            ArrowButton.Position = UDim2.new(1, -45, 0, 5)
            ArrowButton.Size = UDim2.new(0, 35, 0, 30)
            ArrowButton.ZIndex = 2
            ArrowButton.Font = Enum.Font.SourceSansBold
            ArrowButton.Text = "+"
            ArrowButton.TextColor3 = Color3.fromRGB(255, 255, 255)
            ArrowButton.TextSize = 18

            Roundify.Name = "Roundify"
            Roundify.Parent = ArrowButton
            Roundify.Active = true
            Roundify.AnchorPoint = Vector2.new(0.5, 0.5)
            Roundify.BackgroundTransparency = 1
            Roundify.Position = UDim2.new(0.5, 0, 0.5, 0)
            Roundify.Size = UDim2.new(1, 0, 1, 0)
            Roundify.Image = "rbxassetid://3570695787"
            Roundify.ImageColor3 = theme2
            Roundify.ScaleType = Enum.ScaleType.Slice
            Roundify.SliceCenter = Rect.new(100, 100, 100, 100)
            Roundify.SliceScale = 0.020

            ArrowButton.MouseButton1Click:Connect(function()
                play("rbxassetid://178104975")
                if not IsDropped then
                    IsDropped = true
                    ArrowButton.TextColor3 = theme3
                    DropdownContainer.Visible = true
                else
                    IsDropped = false
                    ArrowButton.TextColor3 = Color3.fromRGB(255, 255, 255)
                    DropdownContainer.Visible = false
                end
            end)

            for _, v in pairs(list) do
                BodyYSize = BodyYSize + 38
                local Option = Instance.new("TextButton")
                Option.Parent = DropdownContainer
                Option.BackgroundTransparency = 1
                Option.Size = UDim2.new(1, -12, 0, 36)
                Option.Font = Enum.Font.SourceSansSemibold
                Option.TextColor3 = Color3.fromRGB(255, 255, 255)
                Option.Text = v
                Option.TextSize = 15
                Option.ZIndex = 4

                Option.MouseButton1Click:Connect(function()
                    Dropdown.Text = v
                    callback(v)
                    IsDropped = false
                    DropdownContainer.Visible = false
                end)
            end

            DropdownContainer.Name = "DropdownContainer"
            DropdownContainer.Parent = ArrowButton
            DropdownContainer.BackgroundTransparency = 1
            DropdownContainer.Position = UDim2.new(0, -8, 1, 6)
            DropdownContainer.Size = UDim2.new(0, 260, 0, BodyYSize)
            DropdownContainer.Image = "rbxassetid://3570695787"
            DropdownContainer.ImageColor3 = theme2
            DropdownContainer.Visible = false
            DropdownContainer.ScaleType = Enum.ScaleType.Slice
            DropdownContainer.SliceCenter = Rect.new(100, 100, 100, 100)
            DropdownContainer.SliceScale = 0.020
            DropdownContainer.ZIndex = 3

            UIListLayout_2.Parent = DropdownContainer
            UIListLayout_2.SortOrder = Enum.SortOrder.LayoutOrder
            UIListLayout_2.Padding = UDim.new(0, 3)
        end

        function InsideTab:CreateSlider(text, minvalue, maxvalue, callback)
            text = text or "Slider"
            minvalue = minvalue or 0
            maxvalue = maxvalue or 100
            callback = callback or function() end

            local mouse = game.Players.LocalPlayer:GetMouse()
            local uis = game:GetService("UserInputService")
            local Value

            local Slider = Instance.new("TextLabel")
            local Frame_3 = Instance.new("ImageLabel")
            local SliderButton = Instance.new("TextButton")
            local TextButton_Roundify = Instance.new("ImageLabel")
            local SliderInner = Instance.new("ImageLabel")
            local TextLabel_2 = Instance.new("TextLabel")

            Slider.Name = "Slider"
            Slider.Parent = Frame
            Slider.BackgroundTransparency = 1
            Slider.Size = UDim2.new(1, 0, 0, 48)
            Slider.Font = Enum.Font.SourceSansSemibold
            Slider.Text = text
            Slider.TextColor3 = Color3.fromRGB(255, 255, 255)
            Slider.TextSize = 15
            Slider.TextXAlignment = Enum.TextXAlignment.Left

            Frame_3.Name = "Frame"
            Frame_3.Parent = Slider
            Frame_3.BackgroundTransparency = 1
            Frame_3.Position = UDim2.new(0, 0, 0.6, 0)
            Frame_3.Size = UDim2.new(1, 0, 0, 10)
            Frame_3.Image = "rbxassetid://3570695787"
            Frame_3.ImageColor3 = theme2
            Frame_3.ScaleType = Enum.ScaleType.Slice
            Frame_3.SliceCenter = Rect.new(100, 100, 100, 100)
            Frame_3.SliceScale = 0.020

            SliderButton.Name = "SliderButton"
            SliderButton.Parent = Slider
            SliderButton.BackgroundTransparency = 1
            SliderButton.Position = UDim2.new(0, 0, 0.6, 0)
            SliderButton.Size = UDim2.new(1, 0, 0, 10)
            SliderButton.Text = ""

            TextButton_Roundify.Name = "Roundify"
            TextButton_Roundify.Parent = SliderButton
            TextButton_Roundify.Active = true
            TextButton_Roundify.AnchorPoint = Vector2.new(0.5, 0.5)
            TextButton_Roundify.BackgroundTransparency = 1
            TextButton_Roundify.Position = UDim2.new(0.5, 0, 0.5, 0)
            TextButton_Roundify.Size = UDim2.new(1, 0, 1, 0)
            TextButton_Roundify.Image = "rbxassetid://3570695787"
            TextButton_Roundify.ImageColor3 = theme2
            TextButton_Roundify.ScaleType = Enum.ScaleType.Slice
            TextButton_Roundify.SliceCenter = Rect.new(100, 100, 100, 100)
            TextButton_Roundify.SliceScale = 0.020

            SliderInner.Name = "SliderInner"
            SliderInner.Parent = SliderButton
            SliderInner.BackgroundTransparency = 1
            SliderInner.Size = UDim2.new(0, 0, 0, 10)
            SliderInner.Image = "rbxassetid://3570695787"
            SliderInner.ImageColor3 = theme3
            SliderInner.ScaleType = Enum.ScaleType.Slice
            SliderInner.SliceCenter = Rect.new(100, 100, 100, 100)
            SliderInner.SliceScale = 0.020

            TextLabel_2.Parent = Slider
            TextLabel_2.BackgroundTransparency = 1
            TextLabel_2.Position = UDim2.new(1, -50, 0.6, -3)
            TextLabel_2.Size = UDim2.new(0, 45, 0, 18)
            TextLabel_2.Font = Enum.Font.SourceSansBold
            TextLabel_2.Text = tostring(minvalue)
            TextLabel_2.TextColor3 = theme3
            TextLabel_2.TextSize = 14

            SliderButton.MouseButton1Down:Connect(function()
                Value = math.floor((((tonumber(maxvalue) - tonumber(minvalue)) / SliderButton.AbsoluteSize.X) * SliderInner.AbsoluteSize.X) + tonumber(minvalue)) or minvalue
                pcall(callback, Value)
                TextLabel_2.Text = Value
                SliderInner.Size = UDim2.new(0, math.clamp(mouse.X - SliderInner.AbsolutePosition.X, 0, SliderButton.AbsoluteSize.X), 0, 10)

                local move = mouse.Move:Connect(function()
                    Value = math.floor((((tonumber(maxvalue) - tonumber(minvalue)) / SliderButton.AbsoluteSize.X) * SliderInner.AbsoluteSize.X) + tonumber(minvalue))
                    pcall(callback, Value)
                    TextLabel_2.Text = Value
                    SliderInner.Size = UDim2.new(0, math.clamp(mouse.X - SliderInner.AbsolutePosition.X, 0, SliderButton.AbsoluteSize.X), 0, 10)
                end)

                local release
                release = uis.InputEnded:Connect(function(input)
                    if input.UserInputType == Enum.UserInputType.MouseButton1 then
                        move:Disconnect()
                        release:Disconnect()
                    end
                end)
            end)
        end

        function InsideTab:CreateToggle(text, callback)
            text = text or "Toggle"
            callback = callback or function() end

            local Toggle_2 = Instance.new("TextLabel")
            local Frame_t = Instance.new("ImageLabel")
            local Frame_2 = Instance.new("ImageLabel")
            local ToggleButton = Instance.new("TextButton")

            Toggle_2.Name = "Toggle"
            Toggle_2.Parent = Frame
            Toggle_2.BackgroundTransparency = 1
            Toggle_2.Size = UDim2.new(1, 0, 0, 40)
            Toggle_2.Font = Enum.Font.SourceSansSemibold
            Toggle_2.Text = text
            Toggle_2.TextColor3 = Color3.fromRGB(255, 255, 255)
            Toggle_2.TextSize = 15
            Toggle_2.TextXAlignment = Enum.TextXAlignment.Left

            Frame_t.Name = "Frame"
            Frame_t.Parent = Toggle_2
            Frame_t.BackgroundTransparency = 1
            Frame_t.Position = UDim2.new(1, -50, 0.5, -8)
            Frame_t.Size = UDim2.new(0, 35, 0, 18)
            Frame_t.Image = "rbxassetid://3570695787"
            Frame_t.ImageColor3 = theme2
            Frame_t.ScaleType = Enum.ScaleType.Slice
            Frame_t.SliceCenter = Rect.new(100, 100, 100, 100)
            Frame_t.SliceScale = 0.250

            Frame_2.Name = "Frame_2"
            Frame_2.Parent = Frame_t
            Frame_2.BackgroundTransparency = 1
            Frame_2.Position = UDim2.new(0, 4, 0.12, 0)
            Frame_2.Size = UDim2.new(0, 12, 0, 12)
            Frame_2.Image = "rbxassetid://3570695787"
            Frame_2.ScaleType = Enum.ScaleType.Slice
            Frame_2.SliceCenter = Rect.new(100, 100, 100, 100)
            Frame_2.SliceScale = 0.250

            ToggleButton.Name = "ToggleButton"
            ToggleButton.Parent = Toggle_2
            ToggleButton.BackgroundTransparency = 1
            ToggleButton.Position = UDim2.new(1, -50, 0.5, -9)
            ToggleButton.Size = UDim2.new(0, 35, 0, 20)
            ToggleButton.Text = ""

            local enabled = false
            local function trigger()
                enabled = not enabled
                pcall(callback, enabled)
                play("rbxassetid://6309164078")
                if enabled then
                    Frame_t.ImageColor3 = theme3
                    if toolight then Frame_2.ImageColor3 = Color3.fromRGB(26,26,26) end
                    Frame_2.Position = UDim2.new(0.6, 0, 0.12, 0)
                else
                    Frame_t.ImageColor3 = theme2
                    if toolight then Frame_2.ImageColor3 = theme3 end
                    Frame_2.Position = UDim2.new(0, 4, 0.12, 0)
                end
            end

            ToggleButton.MouseButton1Click:Connect(trigger)

            local switchactions = {}
            function switchactions:Set(state)
                enabled = state
                if enabled then
                    Frame_t.ImageColor3 = theme3
                    if toolight then Frame_2.ImageColor3 = Color3.fromRGB(26,26,26) end
                    Frame_2.Position = UDim2.new(0.6, 0, 0.12, 0)
                else
                    Frame_t.ImageColor3 = theme2
                    if toolight then Frame_2.ImageColor3 = theme3 end
                    Frame_2.Position = UDim2.new(0, 4, 0.12, 0)
                end
                pcall(callback, enabled)
            end
            return switchactions
        end

        function InsideTab:CreateCheckbox(text, callback)
            local Cheat = Instance.new("TextLabel")
            local MainCheatFrame = Instance.new("ImageLabel")
            local InsideCheatFrame = Instance.new("ImageLabel")
            local CheatButton = Instance.new("TextButton")

            Cheat.Name = "Checkbox"
            Cheat.Parent = Frame
            Cheat.BackgroundTransparency = 1
            Cheat.Size = UDim2.new(1, 0, 0, 40)
            Cheat.Font = Enum.Font.SourceSansSemibold
            Cheat.Text = text
            Cheat.TextColor3 = Color3.fromRGB(255, 255, 255)
            Cheat.TextSize = 15
            Cheat.TextXAlignment = Enum.TextXAlignment.Left

            MainCheatFrame.Name = "MainCheatFrame"
            MainCheatFrame.Parent = Cheat
            MainCheatFrame.BackgroundTransparency = 1
            MainCheatFrame.Position = UDim2.new(1, -38, 0.5, -10)
            MainCheatFrame.Size = UDim2.new(0, 24, 0, 24)
            MainCheatFrame.Image = "rbxassetid://3570695787"
            MainCheatFrame.ImageColor3 = theme2
            MainCheatFrame.ScaleType = Enum.ScaleType.Slice
            MainCheatFrame.SliceCenter = Rect.new(100, 100, 100, 100)
            MainCheatFrame.SliceScale = 0.020

            InsideCheatFrame.Name = "Inside"
            InsideCheatFrame.Parent = MainCheatFrame
            InsideCheatFrame.AnchorPoint = Vector2.new(0.5, 0.5)
            InsideCheatFrame.BackgroundTransparency = 1
            InsideCheatFrame.Position = UDim2.new(0.5, 0, 0.5, 0)
            InsideCheatFrame.Size = UDim2.new(0, 20, 0, 20)
            InsideCheatFrame.Image = "rbxassetid://3570695787"
            InsideCheatFrame.ImageColor3 = theme2
            InsideCheatFrame.ScaleType = Enum.ScaleType.Slice
            InsideCheatFrame.SliceCenter = Rect.new(100, 100, 100, 100)
            InsideCheatFrame.SliceScale = 0.020

            CheatButton.Parent = MainCheatFrame
            CheatButton.BackgroundTransparency = 1
            CheatButton.Size = UDim2.new(1, 0, 1, 0)
            CheatButton.Text = ""

            local enabled = false
            local function trigger()
                enabled = not enabled
                pcall(callback, enabled)
                play("rbxassetid://6309164078")
                InsideCheatFrame.ImageColor3 = enabled and theme3 or theme2
            end

            CheatButton.MouseButton1Click:Connect(trigger)
        end

        function InsideTab:CreateButton(text, callback)
            text = text or "Button"
            callback = callback or function() end

            local Button = Instance.new("TextButton")
            local Roundify = Instance.new("ImageLabel")

            Button.Name = "Btn"
            Button.Parent = Frame
            Button.BackgroundTransparency = 1
            Button.Size = UDim2.new(1, 0, 0, 40)
            Button.Font = Enum.Font.SourceSansSemibold
            Button.Text = text
            Button.TextColor3 = Color3.fromRGB(255, 255, 255)
            Button.TextSize = 15

            Roundify.Name = "Roundify"
            Roundify.Parent = Button
            Roundify.Active = true
            Roundify.AnchorPoint = Vector2.new(0.5, 0.5)
            Roundify.BackgroundTransparency = 1
            Roundify.Position = UDim2.new(0.5, 0, 0.5, 0)
            Roundify.Size = UDim2.new(1, 0, 1, 0)
            Roundify.Image = "rbxassetid://3570695787"
            Roundify.ImageColor3 = theme2
            Roundify.ScaleType = Enum.ScaleType.Slice
            Roundify.SliceCenter = Rect.new(100, 100, 100, 100)
            Roundify.SliceScale = 0.030

            Button.MouseButton1Click:Connect(function()
                pcall(callback)
                play("rbxassetid://178104975")
            end)
        end

        function InsideTab:Show()
            for _, v in next, Items:GetChildren() do
                if v:IsA("ScrollingFrame") then
                    v.Visible = false
                end
            end
            Frame.Visible = true
            TextButton1.TextColor3 = theme3
        end

        return InsideTab
    end

    return InsideLibrary
end

return library
