-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:40:56
-- Luau version 6, Types version 3
-- Time taken: 0.006701 seconds

local function _(arg1) -- Line 1, Named "connectBackgroundValues"
	arg1.Main.ChildRemoved:Connect(function(arg1_2) -- Line 2
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		for _, v in pairs(arg1.Colors:GetChildren()) do
			if v.Value == arg1_2.BackgroundColor3 or #arg1.Main:GetChildren() <= 1 then
				v.Use.Value = false
			end
		end
	end)
end
return function() -- Line 11
	local ScreenGui_upvr = Instance.new("ScreenGui")
	ScreenGui_upvr.Name = "DebugGui"
	ScreenGui_upvr.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
	ScreenGui_upvr.ResetOnSpawn = false
	local Frame_4 = Instance.new("Frame")
	Frame_4.Name = "Main"
	Frame_4.Visible = false
	Frame_4.Size = UDim2.new(1, 0, 0.07492, 0)
	Frame_4.BackgroundTransparency = 0.9
	Frame_4.Position = UDim2.new(0, 0, 0.9250801, 0)
	Frame_4.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
	Frame_4.Parent = ScreenGui_upvr
	local UIGridLayout_3 = Instance.new("UIGridLayout")
	UIGridLayout_3.SortOrder = Enum.SortOrder.LayoutOrder
	UIGridLayout_3.CellSize = UDim2.new(0.12, 0, 1, 0)
	UIGridLayout_3.CellPadding = UDim2.new(0.001, 0, 0, 0)
	UIGridLayout_3.Parent = Frame_4
	local Folder = Instance.new("Folder")
	Folder.Name = "Colors"
	Folder.Parent = ScreenGui_upvr
	local Color3Value_6 = Instance.new("Color3Value")
	Color3Value_6.Name = '1'
	Color3Value_6.Value = Color3.fromRGB(150, 59, 247)
	Color3Value_6.Parent = Folder
	local BoolValue_9 = Instance.new("BoolValue")
	BoolValue_9.Name = "Use"
	BoolValue_9.Parent = Color3Value_6
	local Color3Value_5 = Instance.new("Color3Value")
	Color3Value_5.Name = '2'
	Color3Value_5.Value = Color3.fromRGB(59, 200, 247)
	Color3Value_5.Parent = Folder
	local BoolValue_7 = Instance.new("BoolValue")
	BoolValue_7.Name = "Use"
	BoolValue_7.Parent = Color3Value_5
	local Color3Value_3 = Instance.new("Color3Value")
	Color3Value_3.Name = '3'
	Color3Value_3.Value = Color3.fromRGB(247, 125, 59)
	Color3Value_3.Parent = Folder
	local BoolValue_6 = Instance.new("BoolValue")
	BoolValue_6.Name = "Use"
	BoolValue_6.Parent = Color3Value_3
	local Color3Value_4 = Instance.new("Color3Value")
	Color3Value_4.Name = '4'
	Color3Value_4.Value = Color3.fromRGB(156, 247, 59)
	Color3Value_4.Parent = Folder
	local BoolValue_10 = Instance.new("BoolValue")
	BoolValue_10.Name = "Use"
	BoolValue_10.Parent = Color3Value_4
	local Color3Value_9 = Instance.new("Color3Value")
	Color3Value_9.Name = '5'
	Color3Value_9.Value = Color3.fromRGB(59, 128, 247)
	Color3Value_9.Parent = Folder
	local BoolValue_11 = Instance.new("BoolValue")
	BoolValue_11.Name = "Use"
	BoolValue_11.Parent = Color3Value_9
	local Color3Value_7 = Instance.new("Color3Value")
	Color3Value_7.Name = '6'
	Color3Value_7.Value = Color3.fromRGB(247, 222, 59)
	Color3Value_7.Parent = Folder
	local BoolValue_8 = Instance.new("BoolValue")
	BoolValue_8.Name = "Use"
	BoolValue_8.Parent = Color3Value_7
	local Color3Value_8 = Instance.new("Color3Value")
	Color3Value_8.Name = '7'
	Color3Value_8.Value = Color3.fromRGB(222, 59, 247)
	Color3Value_8.Parent = Folder
	local BoolValue_3 = Instance.new("BoolValue")
	BoolValue_3.Name = "Use"
	BoolValue_3.Parent = Color3Value_8
	local Color3Value = Instance.new("Color3Value")
	Color3Value.Name = '8'
	Color3Value.Value = Color3.fromRGB(247, 163, 59)
	Color3Value.Parent = Folder
	local BoolValue_5 = Instance.new("BoolValue")
	BoolValue_5.Name = "Use"
	BoolValue_5.Parent = Color3Value
	local Color3Value_11 = Instance.new("Color3Value")
	Color3Value_11.Name = '9'
	Color3Value_11.Value = Color3.fromRGB(59, 247, 163)
	Color3Value_11.Parent = Folder
	local BoolValue = Instance.new("BoolValue")
	BoolValue.Name = "Use"
	BoolValue.Parent = Color3Value_11
	local Color3Value_10 = Instance.new("Color3Value")
	Color3Value_10.Name = "10"
	Color3Value_10.Value = Color3.fromRGB(247, 59, 125)
	Color3Value_10.Parent = Folder
	local BoolValue_12 = Instance.new("BoolValue")
	BoolValue_12.Name = "Use"
	BoolValue_12.Parent = Color3Value_10
	local Color3Value_12 = Instance.new("Color3Value")
	Color3Value_12.Name = "11"
	Color3Value_12.Value = Color3.fromRGB(62, 59, 247)
	Color3Value_12.Parent = Folder
	local BoolValue_2 = Instance.new("BoolValue")
	BoolValue_2.Name = "Use"
	BoolValue_2.Parent = Color3Value_12
	local Color3Value_2 = Instance.new("Color3Value")
	Color3Value_2.Name = "12"
	Color3Value_2.Value = Color3.fromRGB(247, 59, 59)
	Color3Value_2.Parent = Folder
	local BoolValue_4 = Instance.new("BoolValue")
	BoolValue_4.Name = "Use"
	BoolValue_4.Parent = Color3Value_2
	local Frame = Instance.new("Frame")
	Frame.Name = "Colorize"
	Frame.AnchorPoint = Vector2.new(0.5, 0.5)
	Frame.Visible = false
	Frame.Size = UDim2.new(0.65, 0, 0.65, 0)
	Frame.Position = UDim2.new(0.5, 0, 0.5, 0)
	Frame.BorderSizePixel = 0
	Frame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Frame.Parent = ScreenGui_upvr
	local ObjectValue = Instance.new("ObjectValue")
	ObjectValue.Name = "UI"
	ObjectValue.Parent = Frame
	local TextLabel_4 = Instance.new("TextLabel")
	TextLabel_4.Name = "ImpressionTime"
	TextLabel_4.AnchorPoint = Vector2.new(1, 1)
	TextLabel_4.Size = UDim2.new(0.1, 0, 0.025, 0)
	TextLabel_4.BackgroundTransparency = 1
	TextLabel_4.Position = UDim2.new(0.9975, 0, 1, 0)
	TextLabel_4.BorderSizePixel = 0
	TextLabel_4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	TextLabel_4.FontSize = Enum.FontSize.Size14
	TextLabel_4.TextStrokeTransparency = 0.5
	TextLabel_4.TextSize = 14
	TextLabel_4.TextColor3 = Color3.fromRGB(255, 255, 255)
	TextLabel_4.Text = '0'
	TextLabel_4.TextWrapped = true
	TextLabel_4.TextWrap = true
	TextLabel_4.TextXAlignment = Enum.TextXAlignment.Right
	TextLabel_4.TextScaled = true
	TextLabel_4.Parent = ScreenGui_upvr
	local Frame_5 = Instance.new("Frame")
	Frame_5.Name = "Item"
	Frame_5.Selectable = true
	Frame_5.AnchorPoint = Vector2.new(0, 1)
	Frame_5.Visible = false
	Frame_5.Size = UDim2.new(0.12, 0, 0.07, 0)
	Frame_5.BackgroundTransparency = 1
	Frame_5.Position = UDim2.new(0, 0, 1, 0)
	Frame_5.BorderSizePixel = 0
	Frame_5.BackgroundColor3 = Color3.fromRGB(170, 0, 255)
	Frame_5.Parent = ScreenGui_upvr
	local UIGridLayout = Instance.new("UIGridLayout")
	UIGridLayout.SortOrder = Enum.SortOrder.LayoutOrder
	UIGridLayout.CellSize = UDim2.new(1, 0, 0.5, 0)
	UIGridLayout.CellPadding = UDim2.new(0, 0, 0, 0)
	UIGridLayout.Parent = Frame_5
	local Frame_3 = Instance.new("Frame")
	Frame_3.Name = "Row1"
	Frame_3.Size = UDim2.new(0, 100, 0, 100)
	Frame_3.BackgroundTransparency = 1
	Frame_3.BorderSizePixel = 0
	Frame_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Frame_3.Parent = Frame_5
	local TextLabel = Instance.new("TextLabel")
	TextLabel.Name = "Time"
	TextLabel.Size = UDim2.new(1, 0, 0.7, 0)
	TextLabel.BackgroundTransparency = 1
	TextLabel.Position = UDim2.new(0, 0, 0.15, 0)
	TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	TextLabel.FontSize = Enum.FontSize.Size18
	TextLabel.TextStrokeTransparency = 0.5
	TextLabel.TextSize = 17
	TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
	TextLabel.Text = "10"
	TextLabel.TextWrapped = true
	TextLabel.TextWrap = true
	TextLabel.TextScaled = true
	TextLabel.Parent = Frame_3
	local Frame_2 = Instance.new("Frame")
	Frame_2.Name = "Row2"
	Frame_2.Size = UDim2.new(0, 100, 0, 100)
	Frame_2.BorderSizePixel = 0
	Frame_2.BackgroundColor3 = Color3.fromRGB(150, 59, 247)
	Frame_2.Parent = Frame_5
	local TextLabel_3 = Instance.new("TextLabel")
	TextLabel_3.Name = "Angle"
	TextLabel_3.Size = UDim2.new(0.3654081, 0, 0.1904762, 0)
	TextLabel_3.BackgroundTransparency = 1
	TextLabel_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	TextLabel_3.FontSize = Enum.FontSize.Size18
	TextLabel_3.TextStrokeTransparency = 0.5
	TextLabel_3.TextSize = 17
	TextLabel_3.TextColor3 = Color3.fromRGB(0, 255, 28)
	TextLabel_3.Text = "180\xB0"
	TextLabel_3.TextWrapped = true
	TextLabel_3.TextWrap = true
	TextLabel_3.TextScaled = true
	TextLabel_3.Parent = Frame_2
	local TextLabel_2 = Instance.new("TextLabel")
	TextLabel_2.Name = "ScreenPercentage"
	TextLabel_2.Size = UDim2.new(0.25, 0, 1, 0)
	TextLabel_2.BackgroundTransparency = 1
	TextLabel_2.Position = UDim2.new(0.5, 0, 0, 0)
	TextLabel_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	TextLabel_2.FontSize = Enum.FontSize.Size18
	TextLabel_2.TextStrokeTransparency = 0.5
	TextLabel_2.TextSize = 17
	TextLabel_2.TextColor3 = Color3.fromRGB(254, 252, 255)
	TextLabel_2.Text = "25%"
	TextLabel_2.TextWrapped = true
	TextLabel_2.TextWrap = true
	TextLabel_2.TextScaled = true
	TextLabel_2.Parent = Frame_2
	local UIGridLayout_2 = Instance.new("UIGridLayout")
	UIGridLayout_2.SortOrder = Enum.SortOrder.LayoutOrder
	UIGridLayout_2.CellSize = UDim2.new(0.5, 0, 1, 0)
	UIGridLayout_2.CellPadding = UDim2.new(0, 0, 0, 0)
	UIGridLayout_2.Parent = Frame_2
	ScreenGui_upvr.Main.ChildRemoved:Connect(function(arg1) -- Line 2
		--[[ Upvalues[1]:
			[1]: ScreenGui_upvr (readonly)
		]]
		for _, v_2 in pairs(ScreenGui_upvr.Colors:GetChildren()) do
			if v_2.Value == arg1.BackgroundColor3 or #ScreenGui_upvr.Main:GetChildren() <= 1 then
				v_2.Use.Value = false
			end
		end
	end)
	script.DebugAPI:Clone().Parent = ScreenGui_upvr
	return ScreenGui_upvr
end