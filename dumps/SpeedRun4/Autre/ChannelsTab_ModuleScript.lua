-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:57:26
-- Luau version 6, Types version 3
-- Time taken: 0.004856 seconds

local module = {}
local module_3_upvr = require(game:GetService("Chat"):WaitForChild("ClientChatModules"):WaitForChild("ChatSettings"))
local module_2_upvr = require(script.Parent:WaitForChild("CurveUtil"))
local tbl_upvr = {}
tbl_upvr.__index = tbl_upvr
local function CreateGuiObjects_upvr() -- Line 20, Named "CreateGuiObjects"
	--[[ Upvalues[1]:
		[1]: module_3_upvr (readonly)
	]]
	local Frame_3 = Instance.new("Frame")
	Frame_3.Selectable = false
	Frame_3.Size = UDim2.new(1, 0, 1, 0)
	Frame_3.BackgroundTransparency = 1
	local Frame = Instance.new("Frame")
	Frame.Selectable = false
	Frame.Name = "BackgroundFrame"
	Frame.Size = UDim2.new(1, -2, 1, -2)
	Frame.Position = UDim2.new(0, 1, 0, 1)
	Frame.BackgroundTransparency = 1
	Frame.Parent = Frame_3
	local Frame_5 = Instance.new("Frame")
	Frame_5.Selectable = false
	Frame_5.Name = "UnselectedFrame"
	Frame_5.Size = UDim2.new(1, 0, 1, 0)
	Frame_5.Position = UDim2.new(0, 0, 0, 0)
	Frame_5.BorderSizePixel = 0
	Frame_5.BackgroundColor3 = module_3_upvr.ChannelsTabUnselectedColor
	Frame_5.BackgroundTransparency = 0.6
	Frame_5.Parent = Frame
	local Frame_4 = Instance.new("Frame")
	Frame_4.Selectable = false
	Frame_4.Name = "SelectedFrame"
	Frame_4.Size = UDim2.new(1, 0, 1, 0)
	Frame_4.Position = UDim2.new(0, 0, 0, 0)
	Frame_4.BorderSizePixel = 0
	Frame_4.BackgroundColor3 = module_3_upvr.ChannelsTabSelectedColor
	Frame_4.BackgroundTransparency = 1
	Frame_4.Parent = Frame
	local ImageLabel_2 = Instance.new("ImageLabel")
	ImageLabel_2.Selectable = false
	ImageLabel_2.Name = "BackgroundImage"
	ImageLabel_2.BackgroundTransparency = 1
	ImageLabel_2.BorderSizePixel = 0
	ImageLabel_2.Size = UDim2.new(1, 0, 1, 0)
	ImageLabel_2.Position = UDim2.new(0, 0, 0, 0)
	ImageLabel_2.ScaleType = Enum.ScaleType.Slice
	ImageLabel_2.Parent = Frame_4
	ImageLabel_2.BackgroundTransparency = -0.4
	ImageLabel_2.BackgroundColor3 = Color3.fromRGB(93.6, 100.8, 115.19999999999999)
	local ImageLabel_3 = Instance.new("ImageLabel")
	ImageLabel_3.Selectable = false
	ImageLabel_3.Size = UDim2.new(0.5, -2, 0, 4)
	ImageLabel_3.BackgroundTransparency = 1
	ImageLabel_3.ScaleType = Enum.ScaleType.Slice
	ImageLabel_3.SliceCenter = Rect.new(3, 3, 32, 21)
	ImageLabel_3.Parent = Frame_4
	local clone = ImageLabel_3:Clone()
	clone.Parent = Frame_4
	ImageLabel_3.Position = UDim2.new(0, 2, 1, -4)
	clone.Position = UDim2.new(0.5, 0, 1, -4)
	ImageLabel_3.Image = "rbxasset://textures/ui/Settings/Slider/SelectedBarLeft.png"
	clone.Image = "rbxasset://textures/ui/Settings/Slider/SelectedBarRight.png"
	ImageLabel_3.Name = "BlueBarLeft"
	clone.Name = "BlueBarRight"
	local TextButton = Instance.new("TextButton")
	TextButton.Selectable = module_3_upvr.GamepadNavigationEnabled
	TextButton.Size = UDim2.new(1, 0, 1, 0)
	TextButton.Position = UDim2.new(0, 0, 0, 0)
	TextButton.BackgroundTransparency = 1
	TextButton.Font = module_3_upvr.DefaultFont
	TextButton.TextSize = module_3_upvr.ChatChannelsTabTextSize
	TextButton.TextColor3 = Color3.new(1, 1, 1)
	TextButton.TextStrokeTransparency = 0.75
	TextButton.Parent = Frame
	local clone_3 = TextButton:Clone()
	local clone_2 = TextButton:Clone()
	clone_3.Parent = Frame_5
	clone_2.Parent = Frame_4
	clone_3.Font = Enum.Font.SourceSans
	clone_3.Active = false
	clone_2.Active = false
	local Frame_2 = Instance.new("Frame")
	Frame_2.Selectable = false
	Frame_2.Size = UDim2.new(0, 18, 0, 18)
	Frame_2.Position = UDim2.new(0.8, -9, 0.5, -9)
	Frame_2.BackgroundTransparency = 1
	Frame_2.Parent = Frame
	local ImageLabel = Instance.new("ImageLabel")
	ImageLabel.Selectable = false
	ImageLabel.Size = UDim2.new(1, 0, 1, 0)
	ImageLabel.BackgroundTransparency = 1
	ImageLabel.Image = "rbxasset://textures/ui/Chat/MessageCounter.png"
	ImageLabel.Visible = false
	ImageLabel.Parent = Frame_2
	local TextLabel = Instance.new("TextLabel")
	TextLabel.Selectable = false
	TextLabel.BackgroundTransparency = 1
	TextLabel.Size = UDim2.new(0, 13, 0, 9)
	TextLabel.Position = UDim2.new(0.5, -7, 0.5, -7)
	TextLabel.Font = module_3_upvr.DefaultFont
	TextLabel.TextSize = 14
	TextLabel.TextColor3 = Color3.new(1, 1, 1)
	TextLabel.Text = ""
	TextLabel.Parent = ImageLabel
	return Frame_3, TextButton, clone_3, clone_2, ImageLabel, Frame_5, Frame_4
end
function tbl_upvr.Destroy(arg1) -- Line 140
	arg1.GuiObject:Destroy()
end
function tbl_upvr.UpdateMessagePostedInChannel(arg1, arg2) -- Line 144
	local var18
	if arg1.Active and arg2 ~= true then
	else
		local var19 = arg1.UnreadMessageCount + 1
		arg1.UnreadMessageCount = var19
		local NewMessageIcon = arg1.NewMessageIcon
		NewMessageIcon.Visible = true
		local function INLINED() -- Internal function, doesn't exist in bytecode
			var18 = tostring(var19)
			return var18
		end
		if var19 >= 100 or not INLINED() then
			var18 = '!'
		end
		NewMessageIcon.TextLabel.Text = var18
		var18 = 0
		var18 = NewMessageIcon.Position
		NewMessageIcon.Position = UDim2.new(0, 0, -0.15, 0)
		NewMessageIcon:TweenPosition(UDim2.new(0, 0, 0, 0), Enum.EasingDirection.Out, Enum.EasingStyle.Quad, 0.15, true)
	end
end
function tbl_upvr.SetActive(arg1, arg2) -- Line 167
	arg1.Active = arg2
	arg1.UnselectedFrame.Visible = not arg2
	arg1.SelectedFrame.Visible = arg2
	if arg2 then
		arg1.UnreadMessageCount = 0
		arg1.NewMessageIcon.Visible = false
		arg1.NameTag.Font = Enum.Font.SourceSansBold
	else
		arg1.NameTag.Font = Enum.Font.SourceSans
	end
end
function tbl_upvr.SetTextSize(arg1, arg2) -- Line 183
	arg1.NameTag.TextSize = arg2
end
function tbl_upvr.FadeOutBackground(arg1, arg2) -- Line 187
	--[[ Upvalues[1]:
		[1]: module_2_upvr (readonly)
	]]
	arg1.AnimParams.Background_TargetTransparency = 1
	arg1.AnimParams.Background_NormalizedExptValue = module_2_upvr:NormalizedDefaultExptValueInSeconds(arg2)
end
function tbl_upvr.FadeInBackground(arg1, arg2) -- Line 192
	--[[ Upvalues[1]:
		[1]: module_2_upvr (readonly)
	]]
	arg1.AnimParams.Background_TargetTransparency = 0.6
	arg1.AnimParams.Background_NormalizedExptValue = module_2_upvr:NormalizedDefaultExptValueInSeconds(arg2)
end
function tbl_upvr.FadeOutText(arg1, arg2) -- Line 197
	--[[ Upvalues[1]:
		[1]: module_2_upvr (readonly)
	]]
	arg1.AnimParams.Text_TargetTransparency = 1
	arg1.AnimParams.Text_NormalizedExptValue = module_2_upvr:NormalizedDefaultExptValueInSeconds(arg2)
	arg1.AnimParams.TextStroke_TargetTransparency = 1
	arg1.AnimParams.TextStroke_NormalizedExptValue = module_2_upvr:NormalizedDefaultExptValueInSeconds(arg2)
end
function tbl_upvr.FadeInText(arg1, arg2) -- Line 204
	--[[ Upvalues[1]:
		[1]: module_2_upvr (readonly)
	]]
	arg1.AnimParams.Text_TargetTransparency = 0
	arg1.AnimParams.Text_NormalizedExptValue = module_2_upvr:NormalizedDefaultExptValueInSeconds(arg2)
	arg1.AnimParams.TextStroke_TargetTransparency = 0.75
	arg1.AnimParams.TextStroke_NormalizedExptValue = module_2_upvr:NormalizedDefaultExptValueInSeconds(arg2)
end
function tbl_upvr.AnimGuiObjects(arg1) -- Line 211
	arg1.UnselectedFrame.BackgroundTransparency = arg1.AnimParams.Background_CurrentTransparency
	arg1.SelectedFrame.BackgroundImage.BackgroundTransparency = arg1.AnimParams.Background_CurrentTransparency
	arg1.SelectedFrame.BlueBarLeft.ImageTransparency = arg1.AnimParams.Background_CurrentTransparency
	arg1.SelectedFrame.BlueBarRight.ImageTransparency = arg1.AnimParams.Background_CurrentTransparency
	arg1.NameTagNonSelect.TextTransparency = arg1.AnimParams.Background_CurrentTransparency
	arg1.NameTagNonSelect.TextStrokeTransparency = arg1.AnimParams.Background_CurrentTransparency
	arg1.NameTag.TextTransparency = arg1.AnimParams.Text_CurrentTransparency
	arg1.NewMessageIcon.ImageTransparency = arg1.AnimParams.Text_CurrentTransparency
	arg1.WhiteTextNewMessageNotification.TextTransparency = arg1.AnimParams.Text_CurrentTransparency
	arg1.NameTagSelect.TextTransparency = arg1.AnimParams.Text_CurrentTransparency
	arg1.NameTag.TextStrokeTransparency = arg1.AnimParams.TextStroke_CurrentTransparency
	arg1.WhiteTextNewMessageNotification.TextStrokeTransparency = arg1.AnimParams.TextStroke_CurrentTransparency
	arg1.NameTagSelect.TextStrokeTransparency = arg1.AnimParams.TextStroke_CurrentTransparency
end
function tbl_upvr.InitializeAnimParams(arg1) -- Line 229
	--[[ Upvalues[1]:
		[1]: module_2_upvr (readonly)
	]]
	arg1.AnimParams.Text_TargetTransparency = 0
	arg1.AnimParams.Text_CurrentTransparency = 0
	arg1.AnimParams.Text_NormalizedExptValue = module_2_upvr:NormalizedDefaultExptValueInSeconds(0)
	arg1.AnimParams.TextStroke_TargetTransparency = 0.75
	arg1.AnimParams.TextStroke_CurrentTransparency = 0.75
	arg1.AnimParams.TextStroke_NormalizedExptValue = module_2_upvr:NormalizedDefaultExptValueInSeconds(0)
	arg1.AnimParams.Background_TargetTransparency = 0.6
	arg1.AnimParams.Background_CurrentTransparency = 0.6
	arg1.AnimParams.Background_NormalizedExptValue = module_2_upvr:NormalizedDefaultExptValueInSeconds(0)
end
function tbl_upvr.Update(arg1, arg2) -- Line 243
	--[[ Upvalues[1]:
		[1]: module_2_upvr (readonly)
	]]
	arg1.AnimParams.Background_CurrentTransparency = module_2_upvr:Expt(arg1.AnimParams.Background_CurrentTransparency, arg1.AnimParams.Background_TargetTransparency, arg1.AnimParams.Background_NormalizedExptValue, arg2)
	arg1.AnimParams.Text_CurrentTransparency = module_2_upvr:Expt(arg1.AnimParams.Text_CurrentTransparency, arg1.AnimParams.Text_TargetTransparency, arg1.AnimParams.Text_NormalizedExptValue, arg2)
	arg1.AnimParams.TextStroke_CurrentTransparency = module_2_upvr:Expt(arg1.AnimParams.TextStroke_CurrentTransparency, arg1.AnimParams.TextStroke_TargetTransparency, arg1.AnimParams.TextStroke_NormalizedExptValue, arg2)
	arg1:AnimGuiObjects()
end
function module.new(arg1) -- Line 269
	--[[ Upvalues[3]:
		[1]: tbl_upvr (readonly)
		[2]: CreateGuiObjects_upvr (readonly)
		[3]: module_3_upvr (readonly)
	]]
	local setmetatable_result1 = setmetatable({}, tbl_upvr)
	local CreateGuiObjects_upvr_result1, CreateGuiObjects_upvr_result2, CreateGuiObjects_upvr_result3, CreateGuiObjects_upvr_result4, CreateGuiObjects_upvr_result5, CreateGuiObjects_upvr_result6, CreateGuiObjects_upvr_result7 = CreateGuiObjects_upvr()
	setmetatable_result1.GuiObject = CreateGuiObjects_upvr_result1
	setmetatable_result1.NameTag = CreateGuiObjects_upvr_result2
	setmetatable_result1.NameTagNonSelect = CreateGuiObjects_upvr_result3
	setmetatable_result1.NameTagSelect = CreateGuiObjects_upvr_result4
	setmetatable_result1.NewMessageIcon = CreateGuiObjects_upvr_result5
	setmetatable_result1.UnselectedFrame = CreateGuiObjects_upvr_result6
	setmetatable_result1.SelectedFrame = CreateGuiObjects_upvr_result7
	setmetatable_result1.BlueBarLeft = CreateGuiObjects_upvr_result7.BlueBarLeft
	setmetatable_result1.BlueBarRight = CreateGuiObjects_upvr_result7.BlueBarRight
	setmetatable_result1.BackgroundImage = CreateGuiObjects_upvr_result7.BackgroundImage
	setmetatable_result1.WhiteTextNewMessageNotification = setmetatable_result1.NewMessageIcon.TextLabel
	setmetatable_result1.ChannelName = arg1
	setmetatable_result1.UnreadMessageCount = 0
	setmetatable_result1.Active = false
	setmetatable_result1.GuiObject.Name = "Frame_"..setmetatable_result1.ChannelName
	local var29
	if module_3_upvr.MaxChannelNameLength < string.len(arg1) then
		var29 = string.sub(var29, 1, module_3_upvr.MaxChannelNameLength - 3).."..."
	end
	setmetatable_result1.NameTag.Text = ""
	setmetatable_result1.NameTagNonSelect.Text = var29
	setmetatable_result1.NameTagSelect.Text = var29
	setmetatable_result1.AnimParams = {}
	setmetatable_result1:InitializeAnimParams()
	setmetatable_result1:AnimGuiObjects()
	setmetatable_result1:SetActive(false)
	return setmetatable_result1
end
return module