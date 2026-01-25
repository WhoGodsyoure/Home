local library = {}

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
        theme1 = Color3.fromRGB(40,20,20)
        theme2 = Color3.fromRGB(30,15,15)
        theme3 = Color3.fromRGB(138, 3, 3)
    elseif theme == "Gainsboro" then
        theme1 = Color3.fromRGB(45,45,45)
        theme2 = Color3.fromRGB(35,35,35)
        theme3 = Color3.fromRGB(220, 220, 221)
        toolight = true
    elseif theme == "Canary" then
        theme1 = Color3.fromRGB(40,40,30)
        theme2 = Color3.fromRGB(30,30,20)
        theme3 = Color3.fromRGB(255, 253, 130)
    elseif theme == "Emerald" then
        theme1 = Color3.fromRGB(25,40,30)
        theme2 = Color3.fromRGB(20,35,25)
        theme3 = Color3.fromRGB(68, 207, 108)
    elseif theme == "Crimson" then
        theme1 = Color3.fromRGB(45,25,25)
        theme2 = Color3.fromRGB(35,20,20)
        theme3 = Color3.fromRGB(214, 40, 57)
    elseif theme == "Deep Sea" then
        theme1 = Color3.fromRGB(20,30,45)
        theme2 = Color3.fromRGB(15,25,40)
        theme3 = Color3.fromRGB(40, 81, 214)
    elseif theme == "Rainbow" then
        theme1 = Color3.fromRGB(30,30,35)
        theme2 = Color3.fromRGB(20,20,25)
    elseif theme == "Lavender" then
        theme1 = Color3.fromRGB(50,40,60)
        theme2 = Color3.fromRGB(40,30,50)
        theme3 = Color3.fromRGB(200, 162, 200)
    elseif theme == "Neon Cyan" then
        theme1 = Color3.fromRGB(10,35,40)
        theme2 = Color3.fromRGB(5,25,30)
        theme3 = Color3.fromRGB(0, 255, 255)
    elseif theme == "Electric Purple" then
        theme1 = Color3.fromRGB(35,20,45)
        theme2 = Color3.fromRGB(25,15,35)
        theme3 = Color3.fromRGB(191, 0, 255)
    elseif theme == "Hot Pink" then
        theme1 = Color3.fromRGB(45,25,35)
        theme2 = Color3.fromRGB(35,20,25)
        theme3 = Color3.fromRGB(255, 105, 180)
    elseif theme == "Lime Glow" then
        theme1 = Color3.fromRGB(30,45,30)
        theme2 = Color3.fromRGB(25,35,25)
        theme3 = Color3.fromRGB(50, 205, 50)
    elseif theme == "Sunset Orange" then
        theme1 = Color3.fromRGB(50,35,25)
        theme2 = Color3.fromRGB(40,30,20)
        theme3 = Color3.fromRGB(255, 140, 0)
    elseif theme == "Ice Blue" then
        theme1 = Color3.fromRGB(30,40,50)
        theme2 = Color3.fromRGB(25,35,45)
        theme3 = Color3.fromRGB(173, 216, 230)
    elseif theme == "Gold" then
        theme1 = Color3.fromRGB(50,45,30)
        theme2 = Color3.fromRGB(40,35,25)
        theme3 = Color3.fromRGB(255, 215, 0)
    elseif theme == "Midnight" then
        theme1 = Color3.fromRGB(15,10,25)
        theme2 = Color3.fromRGB(10,5,20)
        theme3 = Color3.fromRGB(75, 0, 130)
    end

    local Screen = Instance.new("ScreenGui")
    Screen.Name = "By Shaddow"
    Screen.Parent = game:WaitForChild("CoreGui")
    Screen.Enabled = true

    local Top = Instance.new("ImageLabel")
    Top.Name = "Top"
    Top.Parent = Screen
    Top.AnchorPoint = Vector2.new(0.5, 0.5)
    Top.BackgroundTransparency = 1
    Top.Active = true
    Top.Position = UDim2.new(0.5, 0, 0.240482569, 0)
    Top.Size = UDim2.new(0, 558, 0, 25)
    Top.Image = "rbxassetid://3570695787"
    Top.ImageColor3 = theme1
    Top.ScaleType = Enum.ScaleType.Slice
    Top.SliceCenter = Rect.new(100, 100, 100, 100)
    Top.SliceScale = 0.030
    Top.Draggable = true

    local TextLabel = Instance.new("TextLabel")
    TextLabel.Parent = Top
    TextLabel.BackgroundTransparency = 1
    TextLabel.Position = UDim2.new(0.0358817279, 0, 0, 0)
    TextLabel.Size = UDim2.new(0, 515, 0, 20)
    TextLabel.Font = Enum.Font.SourceSansSemibold
    TextLabel.Text = name
    TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
    TextLabel.TextSize = 14

    local Toggle = Instance.new("ImageButton")
    Toggle.Name = "Toggle"
    Toggle.Parent = Top
    Toggle.BackgroundTransparency = 1
    Toggle.Position = UDim2.new(0.00900000613, 0, 0.142857149, 0)
    Toggle.Rotation = 90
    Toggle.Size = UDim2.new(0, 15, 0, 16)
    Toggle.ImageColor3 = Color3.fromRGB(255, 255, 255)
    Toggle.Image = "https://www.roblox.com/Thumbs/Asset.ashx?width=420&height=420&assetId=4731371541"

    local Main = Instance.new("ImageLabel")
    Main.Name = "Main"
    Main.Parent = Top
    Main.AnchorPoint = Vector2.new(0.5, 0.5)
    Main.BackgroundTransparency = 1
    Main.Position = UDim2.new(0.5, 0, 6.75571394, 0)
    Main.Size = UDim2.new(0, 558, 0, 298)
    Main.Image = "rbxassetid://3570695787"
    Main.ImageColor3 = theme2
    Main.ScaleType = Enum.ScaleType.Slice
    Main.SliceCenter = Rect.new(100, 100, 100, 100)
    Main.SliceScale = 0.030

    local Tabs = Instance.new("ImageLabel")
    Tabs.Name = "Tabs"
    Tabs.Parent = Instance.new("Folder", Main)
    Tabs.BackgroundTransparency = 1
    Tabs.Position = UDim2.new(0.0129999956, 0, 0.0300000086, 0)
    Tabs.Size = UDim2.new(0, 119, 0, 282)
    Tabs.Image = "rbxassetid://3570695787"
    Tabs.ImageColor3 = theme1
    Tabs.ScaleType = Enum.ScaleType.Slice
    Tabs.SliceCenter = Rect.new(100, 100, 100, 100)
    Tabs.SliceScale = 0.020

    local UIGridLayout = Instance.new("UIGridLayout", Tabs)
    UIGridLayout.SortOrder = Enum.SortOrder.LayoutOrder
    UIGridLayout.CellSize = UDim2.new(0, 119, 0, 26)

    local Items = Instance.new("ImageLabel")
    Items.Name = "Items"
    Items.Parent = Main
    Items.BackgroundTransparency = 1
    Items.Position = UDim2.new(0.245519713, 0, 0.030201342, 0)
    Items.Size = UDim2.new(0, 414, 0, 282)
    Items.Image = "rbxassetid://3570695787"
    Items.ImageColor3 = theme1
    Items.ScaleType = Enum.ScaleType.Slice
    Items.SliceCenter = Rect.new(100, 100, 100, 100)
    Items.SliceScale = 0.020

    local rainbowElements = {}
    if theme == "Rainbow" then
        table.insert(rainbowElements, Top)
        table.insert(rainbowElements, Main)
        table.insert(rainbowElements, Tabs)
        table.insert(rainbowElements, Items)
    end

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

    if theme == "Rainbow" then
        spawn(function()
            while true do
                local hue = (tick() % 5) / 5
                local rainbowColor = Color3.fromHSV(hue, 0.85, 0.92)
                for _, elem in ipairs(rainbowElements) do
                    elem.ImageColor3 = rainbowColor
                end
                wait(0.12)
            end
        end)
    end

    local InsideLibrary = {}

    function InsideLibrary:CreateTab(text)
        local TextButton1 = Instance.new("TextButton")
        local Frame = Instance.new("ScrollingFrame")
        local UIGridLayout_2 = Instance.new("UIGridLayout")
        local UICorner = Instance.new("UICorner")

        TextButton1.Name = text.." Button"
        TextButton1.Parent = Tabs
        TextButton1.BackgroundTransparency = 1
        TextButton1.Size = UDim2.new(0, 70, 0, 21)
        TextButton1.Font = Enum.Font.SourceSansSemibold
        TextButton1.Text = text
        TextButton1.TextColor3 = Color3.fromRGB(255, 255, 255)
        TextButton1.TextSize = 14

        Frame.Parent = Items
        Frame.Active = true
        Frame.BackgroundTransparency = 1
        Frame.BorderSizePixel = 0
        Frame.Position = UDim2.new(0.0170000009, 0, 0.0359999985, 0)
        Frame.Size = UDim2.new(0, 399, 0, 264)
        Frame.CanvasSize = UDim2.new(0, 0, 1.1,0)
        Frame.ScrollBarImageColor3 = theme2
        Frame.ScrollBarThickness = 7

        UICorner.Parent = Frame

        UIGridLayout_2.Parent = Frame
        UIGridLayout_2.FillDirection = Enum.FillDirection.Vertical
        UIGridLayout_2.SortOrder = Enum.SortOrder.LayoutOrder
        UIGridLayout_2.CellSize = UDim2.new(0, 70, 0, 23)
        UIGridLayout_2.StartCorner = Enum.StartCorner.TopRight

        Frame.ChildAdded:Connect(function()
            if #Frame:GetChildren() > 13 then
                Frame.CanvasSize = UDim2.new(0, 0,Frame.CanvasSize.Y.Scale + 0.10,0)
            end
        end)

        TextButton1.MouseButton1Click:Connect(function()
            for i,v in next,Items:GetChildren() do
                v.Visible = false
            end
            for i,t in next, Tabs:GetChildren() do
                if t.ClassName ~= "UIGridLayout" then
                    t.TextColor3 = Color3.fromRGB(255, 255, 255)
                end
            end
            TextButton1.TextColor3 = theme3
            Frame.Visible = true
        end)

        local InsideTab = {}

        function InsideTab:CreateDropdown(text, list, callback)
            local BodyYSize = 0
            local IsDropped = false
            callback = callback or function() end
            list = list or {}
            text = text or "Dropdown"

            local Dropdown = Instance.new("TextLabel")
            local TextButton = Instance.new("TextButton")
            local TextButton_Roundify_2px_2 = Instance.new("ImageLabel")
            local DropdownContainer = Instance.new("ImageLabel")
            local UIListLayout_2 = Instance.new("UIListLayout")

            Dropdown.Name = "Dropdown"
            Dropdown.Parent = Frame
            Dropdown.BackgroundTransparency = 1
            Dropdown.Size = UDim2.new(0, 200, 0, 50)
            Dropdown.Font = Enum.Font.SourceSansSemibold
            Dropdown.Text = text
            Dropdown.TextColor3 = Color3.fromRGB(255, 255, 255)
            Dropdown.TextSize = 14

            TextButton.Parent = Dropdown
            TextButton.BackgroundTransparency = 1
            TextButton.BorderColor3 = Color3.fromRGB(27, 42, 53)
            TextButton.BorderSizePixel = 0
            TextButton.Position = UDim2.new(1, 0, 0, 0)
            TextButton.Size = UDim2.new(0, 31, 0, 27)
            TextButton.ZIndex = 2
            TextButton.Font = Enum.Font.SourceSansBold
            TextButton.Text = "+"
            TextButton.TextColor3 = Color3.fromRGB(255, 255, 255)
            TextButton.TextSize = 14

            TextButton_Roundify_2px_2.Name = "TextButton_Roundify_2px"
            TextButton_Roundify_2px_2.Parent = TextButton
            TextButton_Roundify_2px_2.Active = true
            TextButton_Roundify_2px_2.AnchorPoint = Vector2.new(0.5, 0.5)
            TextButton_Roundify_2px_2.BackgroundTransparency = 1
            TextButton_Roundify_2px_2.Position = UDim2.new(0.5, 0, 0.5, 0)
            TextButton_Roundify_2px_2.Size = UDim2.new(1, 0, 1, 0)
            TextButton_Roundify_2px_2.Image = "rbxassetid://3570695787"
            TextButton_Roundify_2px_2.ImageColor3 = theme2
            TextButton_Roundify_2px_2.ScaleType = Enum.ScaleType.Slice
            TextButton_Roundify_2px_2.SliceCenter = Rect.new(100, 100, 100, 100)
            TextButton_Roundify_2px_2.SliceScale = 0.020

            TextButton.MouseButton1Click:Connect(function()
                if not IsDropped then
                    IsDropped = true
                    TextButton.TextColor3 = theme3
                    DropdownContainer.Visible = true
                else
                    IsDropped = false
                    TextButton.TextColor3 = Color3.fromRGB(255, 255, 255)
                    DropdownContainer.Visible = false
                end
            end)

            for i,v in pairs(list) do
                BodyYSize = BodyYSize + 27
                local TextButton_2 = Instance.new("TextButton")
                TextButton_2.Parent = DropdownContainer
                TextButton_2.BackgroundTransparency = 1
                TextButton_2.Size = UDim2.new(0, 197, 0, 27)
                TextButton_2.Font = Enum.Font.SourceSansSemibold
                TextButton_2.TextColor3 = Color3.fromRGB(255, 255, 255)
                TextButton_2.Text = v
                TextButton_2.TextSize = 14
                TextButton_2.ZIndex = 4

                TextButton_2.MouseButton1Click:Connect(function()
                    Dropdown.Text = v
                    callback(v)
                    IsDropped = false
                    DropdownContainer.Visible = false
                end)
            end

            DropdownContainer.Name = "DropdownContainer"
            DropdownContainer.Parent = TextButton
            DropdownContainer.BackgroundTransparency = 1
            DropdownContainer.Position = UDim2.new(1.46359456, 0, 0, 0)
            DropdownContainer.Size = UDim2.new(0, 197, 0, BodyYSize)
            DropdownContainer.Image = "rbxassetid://3570695787"
            DropdownContainer.ImageColor3 = theme2
            DropdownContainer.Visible = false
            DropdownContainer.ScaleType = Enum.ScaleType.Slice
            DropdownContainer.SliceCenter = Rect.new(100, 100, 100, 100)
            DropdownContainer.SliceScale = 0.020
            DropdownContainer.ZIndex = 3

            UIListLayout_2.Parent = DropdownContainer
            UIListLayout_2.SortOrder = Enum.SortOrder.LayoutOrder
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
            local TextButton_Roundify_2px = Instance.new("ImageLabel")
            local SliderInner = Instance.new("ImageLabel")
            local TextLabel_2 = Instance.new("TextLabel")

            Slider.Name = "Slider"
            Slider.Parent = Frame
            Slider.BackgroundTransparency = 1
            Slider.Size = UDim2.new(0, 200, 0, 50)
            Slider.Font = Enum.Font.SourceSansSemibold
            Slider.Text = text
            Slider.TextColor3 = Color3.fromRGB(255, 255, 255)
            Slider.TextSize = 14

            Frame_3.Name = "Frame"
            Frame_3.Parent = Slider
            Frame_3.BackgroundTransparency = 1
            Frame_3.Position = UDim2.new(1, 0, 0.395000011, 0)
            Frame_3.Size = UDim2.new(0, 148, 0, 8)
            Frame_3.Image = "rbxassetid://3570695787"
            Frame_3.ImageColor3 = theme2
            Frame_3.ScaleType = Enum.ScaleType.Slice
            Frame_3.SliceCenter = Rect.new(100, 100, 100, 100)
            Frame_3.SliceScale = 0.020

            SliderButton.Name = "SliderButton"
            SliderButton.Parent = Slider
            SliderButton.BackgroundTransparency = 1
            SliderButton.Position = UDim2.new(1, 0, 0.391304344, 0)
            SliderButton.Size = UDim2.new(0, 148, 0, 8)
            SliderButton.Text = ""

            TextButton_Roundify_2px.Name = "TextButton_Roundify_2px"
            TextButton_Roundify_2px.Parent = SliderButton
            TextButton_Roundify_2px.Active = true
            TextButton_Roundify_2px.AnchorPoint = Vector2.new(0.5, 0.5)
            TextButton_Roundify_2px.BackgroundTransparency = 1
            TextButton_Roundify_2px.Position = UDim2.new(0.5, 0, 0.5, 0)
            TextButton_Roundify_2px.Size = UDim2.new(1, 0, 1, 0)
            TextButton_Roundify_2px.Image = "rbxassetid://3570695787"
            TextButton_Roundify_2px.ImageColor3 = theme2
            TextButton_Roundify_2px.ScaleType = Enum.ScaleType.Slice
            TextButton_Roundify_2px.SliceCenter = Rect.new(100, 100, 100, 100)
            TextButton_Roundify_2px.SliceScale = 0.020

            SliderInner.Name = "SliderInner"
            SliderInner.Parent = SliderButton
            SliderInner.BackgroundTransparency = 1
            SliderInner.Size = UDim2.new(0, 0, 0, 8)
            SliderInner.Image = "rbxassetid://3570695787"
            SliderInner.ImageColor3 = theme3
            SliderInner.ScaleType = Enum.ScaleType.Slice
            SliderInner.SliceCenter = Rect.new(100, 100, 100, 100)
            SliderInner.SliceScale = 0.020

            TextLabel_2.Parent = Slider
            TextLabel_2.BackgroundTransparency = 1
            TextLabel_2.Position = UDim2.new(3.10714293, 0, 0.4, 0)
            TextLabel_2.Size = UDim2.new(0, 33, 0, 7)
            TextLabel_2.Font = Enum.Font.SourceSansBold
            TextLabel_2.Text = tostring(minvalue)
            TextLabel_2.TextColor3 = theme3
            TextLabel_2.TextSize = 13

            SliderButton.MouseButton1Down:Connect(function()
                Value = math.floor((((tonumber(maxvalue) - tonumber(minvalue)) / 148) * SliderInner.AbsoluteSize.X) + tonumber(minvalue)) or 0
                pcall(function()
                    callback(Value)
                    TextLabel_2.Text = Value
                end)
                SliderInner.Size = UDim2.new(0, math.clamp(mouse.X - SliderInner.AbsolutePosition.X, 0, 148), 0, 8)

                local moveconnection = mouse.Move:Connect(function()
                    Value = math.floor((((tonumber(maxvalue) - tonumber(minvalue)) / 148) * SliderInner.AbsoluteSize.X) + tonumber(minvalue))
                    pcall(function()
                        callback(Value)
                        TextLabel_2.Text = Value
                    end)
                    SliderInner.Size = UDim2.new(0, math.clamp(mouse.X - SliderInner.AbsolutePosition.X, 0, 148), 0, 8)
                end)

                local releaseconnection = uis.InputEnded:Connect(function(Mouse)
                    if Mouse.UserInputType == Enum.UserInputType.MouseButton1 then
                        Value = math.floor((((tonumber(maxvalue) - tonumber(minvalue)) / 148) * SliderInner.AbsoluteSize.X) + tonumber(minvalue))
                        pcall(function()
                            callback(Value)
                        end)
                        SliderInner.Size = UDim2.new(0, math.clamp(mouse.X - SliderInner.AbsolutePosition.X, 0, 148), 0, 8)
                        moveconnection:Disconnect()
                        releaseconnection:Disconnect()
                    end
                end)
            end)
        end

        function InsideTab:CreateToggle(text,callback)
            text = text or "New Toggle"
            callback = callback or function() end
            local switchactions = {}
            local Toggle_2 = Instance.new("TextLabel")
            local Frame_t = Instance.new("ImageLabel")
            local Frame_2 = Instance.new("ImageLabel")
            local ToggleButton = Instance.new("TextButton")

            Toggle_2.Name = "Toggle"
            Toggle_2.Parent = Frame
            Toggle_2.BackgroundTransparency = 1
            Toggle_2.Size = UDim2.new(0, 200, 0, 50)
            Toggle_2.Font = Enum.Font.SourceSansSemibold
            Toggle_2.Text = text
            Toggle_2.TextColor3 = Color3.fromRGB(255, 255, 255)
            Toggle_2.TextSize = 14

            Frame_t.Name = "Frame"
            Frame_t.Parent = Toggle_2
            Frame_t.BackgroundTransparency = 1
            Frame_t.Position = UDim2.new(1, 0, 0.333333343, 0)
            Frame_t.Size = UDim2.new(0, 27, 0, 13)
            Frame_t.Image = "rbxassetid://3570695787"
            Frame_t.ImageColor3 = theme2
            Frame_t.ScaleType = Enum.ScaleType.Slice
            Frame_t.SliceCenter = Rect.new(100, 100, 100, 100)
            Frame_t.SliceScale = 0.250

            Frame_2.Name = "Frame_2"
            Frame_2.Parent = Frame_t
            Frame_2.BackgroundTransparency = 1
            Frame_2.Position = UDim2.new(0, 3, 0.150000006, 0)
            Frame_2.Size = UDim2.new(0, 9, 0, 9)
            Frame_2.Image = "rbxassetid://3570695787"
            Frame_2.ScaleType = Enum.ScaleType.Slice
            Frame_2.SliceCenter = Rect.new(100, 100, 100, 100)
            Frame_2.SliceScale = 0.250

            ToggleButton.Name = "ToggleButton"
            ToggleButton.Parent = Toggle_2
            ToggleButton.BackgroundTransparency = 1
            ToggleButton.Position = UDim2.new(1, 0, 0.333333552, 0)
            ToggleButton.Size = UDim2.new(0, 27, 0, 15)
            ToggleButton.Text = ""

            local enabled = false
            local function trigger()
                enabled = not enabled
                pcall(callback,enabled)
                if enabled then
                    Frame_t.ImageColor3 = theme3
                    if toolight then
                        Frame_2.ImageColor3 = Color3.fromRGB(26,26,26)
                    end
                    Frame_2.Position = UDim2.new(0.59, 0, 0.150000006, 0)
                else
                    Frame_t.ImageColor3 = theme2
                    if toolight then
                        Frame_2.ImageColor3 = theme3
                    end
                    Frame_2.Position = UDim2.new(0, 3, 0.150000006, 0)
                end
            end

            ToggleButton.MouseButton1Click:Connect(trigger)

            function switchactions:Set(state)
                enabled = state
                if enabled then
                    Frame_t.ImageColor3 = theme3
                    if toolight then
                        Frame_2.ImageColor3 = Color3.fromRGB(26,26,26)
                    end
                    Frame_2.Position = UDim2.new(0.59, 0, 0.150000006, 0)
                else
                    Frame_t.ImageColor3 = theme2
                    if toolight then
                        Frame_2.ImageColor3 = theme3
                    end
                    Frame_2.Position = UDim2.new(0, 3, 0.150000006, 0)
                end
                pcall(callback,enabled)
            end
            return switchactions
        end

        function InsideTab:CreateCheckbox(text,callback)
            local Cheat = Instance.new("TextLabel")
            local MainCheatFrame = Instance.new("ImageLabel")
            local InsideCheatFrame = Instance.new("ImageLabel")
            local CheatButton = Instance.new("TextButton")

            Cheat.Name = "Cheat"
            Cheat.Parent = Frame
            Cheat.BackgroundTransparency = 1
            Cheat.Size = UDim2.new(0, 200, 0, 50)
            Cheat.Text = text
            Cheat.Font = Enum.Font.SourceSansSemibold
            Cheat.TextColor3 = Color3.fromRGB(255, 255, 255)
            Cheat.TextSize = 14

            MainCheatFrame.Name = "MainCheatFrame"
            MainCheatFrame.Parent = Cheat
            MainCheatFrame.BackgroundTransparency = 1
            MainCheatFrame.Position = UDim2.new(1, 0, 0.129999995, 0)
            MainCheatFrame.Size = UDim2.new(0, 18, 0, 18)
            MainCheatFrame.Image = "rbxassetid://3570695787"
            MainCheatFrame.ImageColor3 = theme2
            MainCheatFrame.ScaleType = Enum.ScaleType.Slice
            MainCheatFrame.SliceCenter = Rect.new(100, 100, 100, 100)
            MainCheatFrame.SliceScale = 0.020

            InsideCheatFrame.Name = "Frame"
            InsideCheatFrame.Parent = MainCheatFrame
            InsideCheatFrame.AnchorPoint = Vector2.new(0.5, 0.5)
            InsideCheatFrame.BackgroundTransparency = 1
            InsideCheatFrame.Position = UDim2.new(0.5, 0, 0.5, 0)
            InsideCheatFrame.Size = UDim2.new(0, 14, 0, 14)
            InsideCheatFrame.Image = "rbxassetid://3570695787"
            InsideCheatFrame.ImageColor3 = theme2
            InsideCheatFrame.ScaleType = Enum.ScaleType.Slice
            InsideCheatFrame.SliceCenter = Rect.new(100, 100, 100, 100)
            InsideCheatFrame.SliceScale = 0.020

            CheatButton.Parent = MainCheatFrame
            CheatButton.BackgroundTransparency = 1
            CheatButton.Size = UDim2.new(0, 18, 0, 18)
            CheatButton.Text = ""

            local enabledcheat = false
            local function triggercheat()
                enabledcheat = not enabledcheat
                pcall(callback,enabledcheat)
                if enabledcheat then
                    InsideCheatFrame.ImageColor3 = theme3
                else
                    InsideCheatFrame.ImageColor3 = theme2
                end
            end

            CheatButton.MouseButton1Click:Connect(triggercheat)
        end

        function InsideTab:CreateButton(text, callback)
            text = text or "New Button"
            callback = callback or function() end

            local Button = Instance.new("TextButton")
            local Button_Roundify_3px = Instance.new("ImageLabel")

            Button.Name = "Btn"
            Button.Parent = Frame
            Button.BackgroundTransparency = 1
            Button.Size = UDim2.new(0, 36, 0, 21)
            Button.ZIndex = 2
            Button.Font = Enum.Font.SourceSansSemibold
            Button.Text = text
            Button.TextColor3 = Color3.fromRGB(255, 255, 255)
            Button.TextSize = 14

            Button_Roundify_3px.Name = "Button_Roundify_3px"
            Button_Roundify_3px.Parent = Button
            Button_Roundify_3px.Active = true
            Button_Roundify_3px.AnchorPoint = Vector2.new(0.5, 0.5)
            Button_Roundify_3px.BackgroundTransparency = 1
            Button_Roundify_3px.Position = UDim2.new(0.5, 0, 0.5, 0)
            Button_Roundify_3px.Size = UDim2.new(1, 0, 1, 0)
            Button_Roundify_3px.Image = "rbxassetid://3570695787"
            Button_Roundify_3px.ImageColor3 = theme2
            Button_Roundify_3px.ScaleType = Enum.ScaleType.Slice
            Button_Roundify_3px.SliceCenter = Rect.new(100, 100, 100, 100)
            Button_Roundify_3px.SliceScale = 0.030

            Button.MouseButton1Click:Connect(function()
                pcall(callback)
            end)
        end

        function InsideTab:Show()
            for i,v in next,Items:GetChildren() do
                v.Visible = false
            end
            Frame.Visible = true
            TextButton1.TextColor3 = theme3
        end

        return InsideTab
    end

    return InsideLibrary
end

return library
