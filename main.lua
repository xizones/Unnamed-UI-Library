local Library = {}

function Library:createMain(GuiName)
	local Prototype = Instance.new("ScreenGui")
	local TopBar1 = Instance.new("Frame")
	local Tittle = Instance.new("TextLabel")
	local MainBody = Instance.new("Frame")
	local TabViewer = Instance.new("ScrollingFrame")
	local UIListLayout = Instance.new("UIListLayout")
	local EzToggle = Instance.new("Frame")
	local TextLabel = Instance.new("TextLabel")
	local TextButton = Instance.new("TextButton")
	local EzButton = Instance.new("Frame")
	local TextLabel_2 = Instance.new("TextLabel")
	local TextButton_2 = Instance.new("TextButton")
	local EzSlider = Instance.new("Frame")
	local TextLabel_3 = Instance.new("TextLabel")
	local Slider = Instance.new("Frame")
	local SliderButton = Instance.new("TextButton")
	local DisplayValue = Instance.new("TextLabel")
	local EzDropDown = Instance.new("Frame")
	local TextLabel_4 = Instance.new("TextLabel")
	local TextButton_3 = Instance.new("TextButton")
	
	--Properties:
	
	Prototype.Name = "Prototype"
	Prototype.Parent = game.CoreGui
	
	TopBar1.Name = "TopBar1"
	TopBar1.Parent = Prototype
	TopBar1.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
	TopBar1.BorderSizePixel = 0
	TopBar1.Position = UDim2.new(0.294050604, 0, 0.3080495, 0)
	TopBar1.Size = UDim2.new(0, 504, 0, 41)
	
	Tittle.Name = "Tittle"
	Tittle.Parent = TopBar1
	Tittle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Tittle.BackgroundTransparency = 1.000
	Tittle.BorderSizePixel = 0
	Tittle.Position = UDim2.new(0.0119047761, 0, 0.024390243, 0)
	Tittle.Size = UDim2.new(0, 250, 0, 40)
	Tittle.Font = Enum.Font.SourceSans
	Tittle.Text = GuiName
	Tittle.TextColor3 = Color3.fromRGB(255, 255, 255)
	Tittle.TextSize = 44.000
	Tittle.TextWrapped = true
	Tittle.TextXAlignment = Enum.TextXAlignment.Left
	
	MainBody.Name = "MainBody"
	MainBody.Parent = TopBar1
	MainBody.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
	MainBody.BorderSizePixel = 0
	MainBody.Position = UDim2.new(0, 0, 0.984127164, 0)
	MainBody.Size = UDim2.new(0, 504, 0, 284)
	
	TabViewer.Name = "TabViewer"
	TabViewer.Parent = MainBody
	TabViewer.Active = true
	TabViewer.BackgroundColor3 = Color3.fromRGB(7, 7, 7)
	TabViewer.BorderSizePixel = 0
	TabViewer.Position = UDim2.new(0.0119047621, 0, 0.0346589424, 0)
	TabViewer.Size = UDim2.new(0, 491, 0, 269)
	TabViewer.CanvasSize = UDim2.new(0, 0, 20, 0)
	TabViewer.ScrollBarThickness = 3
	
	UIListLayout.Parent = TabViewer
	UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
	UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
	UIListLayout.Padding = UDim.new(0, 3)

	local zonesLibrary = {}

	function zonesLibrary:createToggle(name, f)

		local f = f or function() end
		local state =  false

		EzToggle.Name = "EzToggle"
		EzToggle.Parent = TabViewer
		EzToggle.BackgroundColor3 = Color3.fromRGB(3, 3, 3)
		EzToggle.BorderSizePixel = 0
		EzToggle.Size = UDim2.new(0, 484, 0, 38)
		
		TextLabel.Parent = EzToggle
		TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		TextLabel.BackgroundTransparency = 1.000
		TextLabel.BorderSizePixel = 0
		TextLabel.Position = UDim2.new(0, 0, 0.210526317, 0)
		TextLabel.Size = UDim2.new(0, 103, 0, 23)
		TextLabel.Font = Enum.Font.SourceSansBold
		TextLabel.Text = name
		TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
		TextLabel.TextSize = 14.000
		
		TextButton.Parent = EzToggle
		TextButton.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
		TextButton.BorderSizePixel = 0
		TextButton.Position = UDim2.new(0.90830946, 0, 0.210526317, 0)
		TextButton.Size = UDim2.new(0, 23, 0, 22)
		TextButton.Font = Enum.Font.SourceSansBold
		TextButton.Text = ""
		TextButton.TextColor3 = Color3.fromRGB(255, 255, 255)
		TextButton.TextScaled = true
		TextButton.TextSize = 14.000
		TextButton.TextWrapped = true

		function fire()
			state = not state
			TextButton.Text = state and utf8.char(10003) or ""
			pcall(f, state)
		end
		TextButton.MouseButton1Down:Connect(fire)

		function set(arg)
			TextButton.Text = state and  utf8.char(10003) or ""
		end
	end
	
	function zonesLibrary:createButton(name, f)

		local f = f or function() end

		EzButton.Name = "EzButton"
		EzButton.Parent = TabViewer
		EzButton.BackgroundColor3 = Color3.fromRGB(3, 3, 3)
		EzButton.BorderSizePixel = 0
		EzButton.Position = UDim2.new(-0.135523617, 0, 0.152416363, 0)
		EzButton.Size = UDim2.new(0, 484, 0, 38)
		
		TextLabel_2.Parent = EzButton
		TextLabel_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		TextLabel_2.BackgroundTransparency = 1.000
		TextLabel_2.BorderSizePixel = 0
		TextLabel_2.Position = UDim2.new(0, 0, 0.210526317, 0)
		TextLabel_2.Size = UDim2.new(0, 103, 0, 23)
		TextLabel_2.Font = Enum.Font.SourceSansBold
		TextLabel_2.Text = name
		TextLabel_2.TextColor3 = Color3.fromRGB(255, 255, 255)
		TextLabel_2.TextSize = 14.000
		
		TextButton_2.Parent = EzButton
		TextButton_2.BackgroundColor3 = Color3.fromRGB(17, 17, 17)
		TextButton_2.BorderSizePixel = 0
		TextButton_2.Position = UDim2.new(0.843283057, 0, 0.210526317, 0)
		TextButton_2.Size = UDim2.new(0, 63, 0, 22)
		TextButton_2.Font = Enum.Font.SourceSansBold
		TextButton_2.Text = "Click me"
		TextButton_2.TextColor3 = Color3.fromRGB(255, 255, 255)
		TextButton_2.TextScaled = true
		TextButton_2.TextSize = 14.000
		TextButton_2.TextWrapped = true
		TextButton_2.MouseButton1Down:Connect(function()
			pcall(f)
		end)
	end
	
	function zonesLibrary:createSlider(name, minvalue, maxvalue, callback)
		EzSlider.Name = "EzSlider"
		EzSlider.Parent = TabViewer
		EzSlider.BackgroundColor3 = Color3.fromRGB(3, 3, 3)
		EzSlider.BorderSizePixel = 0
		EzSlider.Position = UDim2.new(0.0271432232, 0, -0.00104541029, 0)
		EzSlider.Size = UDim2.new(0, 484, 0, 38)
		
		TextLabel_3.Parent = EzSlider
		TextLabel_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		TextLabel_3.BackgroundTransparency = 1.000
		TextLabel_3.BorderSizePixel = 0
		TextLabel_3.Position = UDim2.new(0, 0, 0.210526317, 0)
		TextLabel_3.Size = UDim2.new(0, 103, 0, 23)
		TextLabel_3.Font = Enum.Font.SourceSansBold
		TextLabel_3.Text = name
		TextLabel_3.TextColor3 = Color3.fromRGB(255, 255, 255)
		TextLabel_3.TextSize = 14.000
		
		Slider.Name = "Slider"
		Slider.Parent = EzSlider
		Slider.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		Slider.BorderSizePixel = 0
		Slider.Position = UDim2.new(0.252148986, 0, 0.421052635, 0)
		Slider.Size = UDim2.new(0, 218, 0, 4)
		
		SliderButton.Name = "SliderButton"
		SliderButton.Parent = Slider
		SliderButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		SliderButton.BorderSizePixel = 0
		SliderButton.Position = UDim2.new(0.0321100913, 0, -1.75, 0)
		SliderButton.Size = UDim2.new(0, 323,0, 40)
		SliderButton.Font = Enum.Font.SourceSans
		SliderButton.Text = ""
		SliderButton.TextColor3 = Color3.fromRGB(0, 0, 0)
		SliderButton.TextSize = 14.000
		SliderButton.BackgroundTransparency = 1
		
		DisplayValue.Name = "DisplayValue"
		DisplayValue.Parent = EzSlider
		DisplayValue.BackgroundColor3 = Color3.fromRGB(2, 2, 2)
		DisplayValue.BorderSizePixel = 0
		DisplayValue.Position = UDim2.new(0.90830946, 0, 0.236842111, 0)
		DisplayValue.Size = UDim2.new(0, 32, 0, 20)
		DisplayValue.Font = Enum.Font.SourceSansBold
		DisplayValue.Text = "Value"
		DisplayValue.TextColor3 = Color3.fromRGB(255, 255, 255)
		DisplayValue.TextScaled = true
		DisplayValue.TextSize = 14.000
		DisplayValue.TextWrapped = true

		-----Values-----
		minvalue = minvalue or 0
		maxvalue = maxvalue or 100
		
		
		-----Callback-----
		callback = callback or function() end
		
		
		-----Variables-----
		local mouse = game.Players.LocalPlayer:GetMouse()
		local uis = game:GetService("UserInputService")
		local Value;
		
		
		
		
		-----Main Code-----
		
		SliderButton.MouseButton1Down:Connect(function()
			Value = math.floor((((tonumber(maxvalue) - tonumber(minvalue)) / 318) * Slider.AbsoluteSize.X) + tonumber(minvalue)) or 0
			pcall(function()
				callback(Value)
			end)
			Slider.Size = UDim2.new(0, math.clamp(mouse.X - Slider.AbsolutePosition.X, 0, 318), 0, 14)
			moveconnection = mouse.Move:Connect(function()
				DisplayValue.Text = Value
				Value = math.floor((((tonumber(maxvalue) - tonumber(minvalue)) / 318) * Slider.AbsoluteSize.X) + tonumber(minvalue))
				pcall(function()
					callback(Value)
				end)
				Slider.Size = UDim2.new(0, math.clamp(mouse.X - Slider.AbsolutePosition.X, 0, 318), 0, 14)
			end)
			releaseconnection = uis.InputEnded:Connect(function(Mouse)
				if Mouse.UserInputType == Enum.UserInputType.MouseButton1 then
					Value = math.floor((((tonumber(maxvalue) - tonumber(minvalue)) / 318) * Slider.AbsoluteSize.X) + tonumber(minvalue))
					pcall(function()
						callback(Value)
					end)
					Slider.Size = UDim2.new(0, math.clamp(mouse.X - Slider.AbsolutePosition.X, 0, 318), 0, 14)
					moveconnection:Disconnect()
					releaseconnection:Disconnect()
				end
			end)
		end)
	end
	
	function zonesLibrary:createDropdown(name)
		EzDropDown.Name = "EzDropDown"
		EzDropDown.Parent = TabViewer
		EzDropDown.BackgroundColor3 = Color3.fromRGB(3, 3, 3)
		EzDropDown.BorderSizePixel = 0
		EzDropDown.Position = UDim2.new(-0.137576997, 0, 0.457249075, 0)
		EzDropDown.Size = UDim2.new(0, 484, 0, 38)
		
		TextLabel_4.Parent = EzDropDown
		TextLabel_4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		TextLabel_4.BackgroundTransparency = 1.000
		TextLabel_4.BorderSizePixel = 0
		TextLabel_4.Position = UDim2.new(0, 0, 0.210526317, 0)
		TextLabel_4.Size = UDim2.new(0, 103, 0, 23)
		TextLabel_4.Font = Enum.Font.SourceSansBold
		TextLabel_4.Text = name
		TextLabel_4.TextColor3 = Color3.fromRGB(255, 255, 255)
		TextLabel_4.TextSize = 14.000
		
		TextButton_3.Parent = EzDropDown
		TextButton_3.BackgroundColor3 = Color3.fromRGB(17, 17, 17)
		TextButton_3.BorderSizePixel = 0
		TextButton_3.Position = UDim2.new(0.90830946, 0, 0.210526317, 0)
		TextButton_3.Size = UDim2.new(0, 23, 0, 22)
		TextButton_3.Font = Enum.Font.SourceSansSemibold
		TextButton_3.Text = "V"
		TextButton_3.TextColor3 = Color3.fromRGB(255, 255, 255)
		TextButton_3.TextScaled = true
		TextButton_3.TextSize = 14.000
		TextButton_3.TextWrapped = true
	end
	
	-- Scripts:
	
	local function RQSZY_fake_script() -- TopBar1.SmoothDrag 
		local script = Instance.new('LocalScript', TopBar1)
	
		local Drag = script.Parent
		gsCoreGui = game:GetService("CoreGui")
		gsTween = game:GetService("TweenService")
		local UserInputService = game:GetService("UserInputService")
			local dragging
			local dragInput
			local dragStart
			local startPos
			local function update(input)
				local delta = input.Position - dragStart
				local dragTime = 0.04
				local SmoothDrag = {}
				SmoothDrag.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
				local dragSmoothFunction = gsTween:Create(Drag, TweenInfo.new(dragTime, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut), SmoothDrag)
				dragSmoothFunction:Play()
			end
			Drag.InputBegan:Connect(function(input)
				if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
					dragging = true
					dragStart = input.Position
					startPos = Drag.Position
					input.Changed:Connect(function()
						if input.UserInputState == Enum.UserInputState.End then
							dragging = false
						end
					end)
				end
			end)
			Drag.InputChanged:Connect(function(input)
				if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
					dragInput = input
				end
			end)
			UserInputService.InputChanged:Connect(function(input)
				if input == dragInput and dragging and Drag.Size then
					update(input)
				end
			end)
		
	end
	coroutine.wrap(RQSZY_fake_script)()
	return zonesLibrary;
end
return Library;
