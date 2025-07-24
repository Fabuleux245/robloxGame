-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:57:25
-- Luau version 6, Types version 3
-- Time taken: 0.007717 seconds

local module = {}
local Parent = script.Parent
local module_upvr_2 = require(game:GetService("Chat"):WaitForChild("ClientChatModules"):WaitForChild("ChatSettings"))
local module_upvr = require(Parent:WaitForChild("CurveUtil"))
local tbl_upvr = {}
tbl_upvr.__index = tbl_upvr
local module_upvr_4 = require(Parent:WaitForChild("MessageSender"))
function tbl_upvr.CreateGuiObjects(arg1, arg2) -- Line 23
	--[[ Upvalues[2]:
		[1]: module_upvr_2 (readonly)
		[2]: module_upvr_4 (readonly)
	]]
	local Frame_6 = Instance.new("Frame")
	Frame_6.Selectable = false
	Frame_6.Size = UDim2.new(1, 0, 1, 0)
	Frame_6.BackgroundTransparency = 1
	Frame_6.Parent = arg2
	local Frame_5 = Instance.new("Frame")
	Frame_5.Selectable = false
	Frame_5.Name = "ScrollingBase"
	Frame_5.BackgroundTransparency = 1
	Frame_5.ClipsDescendants = true
	Frame_5.Size = UDim2.new(1, 0, 1, 0)
	Frame_5.Position = UDim2.new(0, 0, 0, 0)
	Frame_5.Parent = Frame_6
	local Frame_3 = Instance.new("Frame")
	Frame_3.Selectable = false
	Frame_3.Name = "ScrollerSizer"
	Frame_3.BackgroundTransparency = 1
	Frame_3.Size = UDim2.new(1, 0, 1, 0)
	Frame_3.Position = UDim2.new(0, 0, 0, 0)
	Frame_3.Parent = Frame_5
	local Frame = Instance.new("Frame")
	Frame.Selectable = false
	Frame.Name = "ScrollerFrame"
	Frame.BackgroundTransparency = 1
	Frame.Size = UDim2.new(1, 0, 1, 0)
	Frame.Position = UDim2.new(0, 0, 0, 0)
	Frame.Parent = Frame_3
	local Frame_7 = Instance.new("Frame")
	Frame_7.Selectable = false
	Frame_7.Size = UDim2.new(1, 0, 1, 0)
	Frame_7.Position = UDim2.new(0, 0, 0, 0)
	Frame_7.ClipsDescendants = true
	Frame_7.BackgroundTransparency = 1
	Frame_7.Parent = Frame_6
	local Frame_4_upvr = Instance.new("Frame")
	Frame_4_upvr.Selectable = false
	Frame_4_upvr.Name = "LeaveConfirmationFrame"
	Frame_4_upvr.Size = UDim2.new(1, 0, 1, 0)
	Frame_4_upvr.Position = UDim2.new(0, 0, 1, 0)
	Frame_4_upvr.BackgroundTransparency = 0.6
	Frame_4_upvr.BorderSizePixel = 0
	Frame_4_upvr.BackgroundColor3 = Color3.new(0, 0, 0)
	Frame_4_upvr.Parent = Frame_7
	local TextButton = Instance.new("TextButton")
	TextButton.Selectable = false
	TextButton.Size = UDim2.new(1, 0, 1, 0)
	TextButton.BackgroundTransparency = 1
	TextButton.Text = ""
	TextButton.Parent = Frame_4_upvr
	local TextButton_2 = Instance.new("TextButton")
	TextButton_2.Selectable = false
	TextButton_2.Size = UDim2.new(0.25, 0, 1, 0)
	TextButton_2.BackgroundTransparency = 1
	TextButton_2.Font = module_upvr_2.DefaultFont
	TextButton_2.TextSize = 18
	TextButton_2.TextStrokeTransparency = 0.75
	TextButton_2.Position = UDim2.new(0, 0, 0, 0)
	TextButton_2.TextColor3 = Color3.new(0, 1, 0)
	TextButton_2.Text = "Confirm"
	TextButton_2.Parent = Frame_4_upvr
	local clone = TextButton_2:Clone()
	clone.Parent = Frame_4_upvr
	clone.Position = UDim2.new(0.75, 0, 0, 0)
	clone.TextColor3 = Color3.new(1, 0, 0)
	clone.Text = "Cancel"
	local TextLabel = Instance.new("TextLabel")
	TextLabel.Selectable = false
	TextLabel.Size = UDim2.new(0.5, 0, 1, 0)
	TextLabel.Position = UDim2.new(0.25, 0, 0, 0)
	TextLabel.BackgroundTransparency = 1
	TextLabel.TextColor3 = Color3.new(1, 1, 1)
	TextLabel.TextStrokeTransparency = 0.75
	TextLabel.Text = "Leave channel <XX>?"
	TextLabel.Font = module_upvr_2.DefaultFont
	TextLabel.TextSize = 18
	TextLabel.Parent = Frame_4_upvr
	local StringValue_upvr = Instance.new("StringValue")
	StringValue_upvr.Name = "LeaveTarget"
	StringValue_upvr.Parent = Frame_4_upvr
	local Position_upvr = Frame_4_upvr.Position
	TextButton_2.MouseButton1Click:connect(function() -- Line 115
		--[[ Upvalues[4]:
			[1]: module_upvr_4 (copied, readonly)
			[2]: StringValue_upvr (readonly)
			[3]: Frame_4_upvr (readonly)
			[4]: Position_upvr (readonly)
		]]
		module_upvr_4:SendMessage(string.format("/leave %s", StringValue_upvr.Value), nil)
		Frame_4_upvr:TweenPosition(Position_upvr, Enum.EasingDirection.Out, Enum.EasingStyle.Quad, 0.2, true)
	end)
	clone.MouseButton1Click:connect(function() -- Line 119
		--[[ Upvalues[2]:
			[1]: Frame_4_upvr (readonly)
			[2]: Position_upvr (readonly)
		]]
		Frame_4_upvr:TweenPosition(Position_upvr, Enum.EasingDirection.Out, Enum.EasingStyle.Quad, 0.2, true)
	end)
	local ImageButton = Instance.new("ImageButton", Frame_6)
	ImageButton.Selectable = module_upvr_2.GamepadNavigationEnabled
	ImageButton.Name = "PageLeftButton"
	ImageButton.SizeConstraint = Enum.SizeConstraint.RelativeYY
	ImageButton.Size = UDim2.new(0.7, 0, 0.7, 0)
	ImageButton.BackgroundTransparency = 1
	ImageButton.Position = UDim2.new(0, 4, 0.15000000000000002, 0)
	ImageButton.Visible = false
	ImageButton.Image = "rbxassetid://471630199"
	local ImageLabel = Instance.new("ImageLabel", ImageButton)
	ImageLabel.Name = "ArrowLabel"
	ImageLabel.BackgroundTransparency = 1
	ImageLabel.Size = UDim2.new(0.4, 0, 0.4, 0)
	ImageLabel.Image = "rbxassetid://471630112"
	local Frame_2 = Instance.new("Frame", Frame_6)
	Frame_2.Selectable = false
	Frame_2.BackgroundTransparency = 1
	Frame_2.Name = "PositionalHelper"
	Frame_2.Size = ImageButton.Size
	Frame_2.SizeConstraint = ImageButton.SizeConstraint
	Frame_2.Position = UDim2.new(1, 0, 0.15000000000000002, 0)
	local clone_2 = ImageButton:Clone()
	clone_2.Parent = Frame_2
	clone_2.Name = "PageRightButton"
	clone_2.Size = UDim2.new(1, 0, 1, 0)
	clone_2.SizeConstraint = Enum.SizeConstraint.RelativeXY
	clone_2.Position = UDim2.new(-1, -4, 0, 0)
	local udim2 = UDim2.new(0.05, 0, 0, 0)
	clone_2.ArrowLabel.Position = UDim2.new(0.3, 0, 0.3, 0) + udim2
	ImageButton.ArrowLabel.Position = UDim2.new(0.3, 0, 0.3, 0) - udim2
	ImageButton.ArrowLabel.Rotation = 180
	arg1.GuiObject = Frame_6
	arg1.GuiObjects.BaseFrame = Frame_6
	arg1.GuiObjects.ScrollerSizer = Frame_3
	arg1.GuiObjects.ScrollerFrame = Frame
	arg1.GuiObjects.PageLeftButton = ImageButton
	arg1.GuiObjects.PageRightButton = clone_2
	arg1.GuiObjects.LeaveConfirmationFrame = Frame_4_upvr
	arg1.GuiObjects.LeaveConfirmationNotice = TextLabel
	arg1.GuiObjects.PageLeftButtonArrow = ImageButton.ArrowLabel
	arg1.GuiObjects.PageRightButtonArrow = clone_2.ArrowLabel
	arg1:AnimGuiObjects()
	ImageButton.MouseButton1Click:connect(function() -- Line 187
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		arg1:ScrollChannelsFrame(-1)
	end)
	clone_2.MouseButton1Click:connect(function() -- Line 188
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		arg1:ScrollChannelsFrame(1)
	end)
	arg1:ScrollChannelsFrame(0)
end
function tbl_upvr.UpdateMessagePostedInChannel(arg1, arg2) -- Line 194
	local any_GetChannelTab_result1 = arg1:GetChannelTab(arg2)
	if any_GetChannelTab_result1 then
		any_GetChannelTab_result1:UpdateMessagePostedInChannel()
	else
		warn("ChannelsTab '"..arg2.."' does not exist!")
	end
end
local module_upvr_3 = require(Parent:WaitForChild("ChannelsTab"))
function tbl_upvr.AddChannelTab(arg1, arg2) -- Line 203
	--[[ Upvalues[2]:
		[1]: module_upvr_3 (readonly)
		[2]: module_upvr_2 (readonly)
	]]
	if arg1:GetChannelTab(arg2) then
		error("Channel tab '"..arg2.."'already exists!")
	end
	local any_new_result1_upvr = module_upvr_3.new(arg2)
	any_new_result1_upvr.GuiObject.Parent = arg1.GuiObjects.ScrollerFrame
	arg1.ChannelTabs[arg2:lower()] = any_new_result1_upvr
	arg1.NumTabs += 1
	arg1:OrganizeChannelTabs()
	if module_upvr_2.RightClickToLeaveChannelEnabled then
		any_new_result1_upvr.NameTag.MouseButton2Click:connect(function() -- Line 216
			--[[ Upvalues[2]:
				[1]: arg1 (readonly)
				[2]: any_new_result1_upvr (readonly)
			]]
			arg1.LeaveConfirmationNotice.Text = string.format("Leave channel %s?", any_new_result1_upvr.ChannelName)
			arg1.LeaveConfirmationFrame.LeaveTarget.Value = any_new_result1_upvr.ChannelName
			arg1.LeaveConfirmationFrame:TweenPosition(UDim2.new(0, 0, 0, 0), Enum.EasingDirection.In, Enum.EasingStyle.Quad, 0.2, true)
		end)
	end
	return any_new_result1_upvr
end
function tbl_upvr.RemoveChannelTab(arg1, arg2) -- Line 226
	if not arg1:GetChannelTab(arg2) then
		error("Channel tab '"..arg2.."'does not exist!")
	end
	local any_lower_result1 = arg2:lower()
	arg1.ChannelTabs[any_lower_result1]:Destroy()
	arg1.ChannelTabs[any_lower_result1] = nil
	arg1.NumTabs -= 1
	arg1:OrganizeChannelTabs()
end
function tbl_upvr.GetChannelTab(arg1, arg2) -- Line 239
	return arg1.ChannelTabs[arg2:lower()]
end
function tbl_upvr.OrganizeChannelTabs(arg1) -- Line 243
	--[[ Upvalues[1]:
		[1]: module_upvr_2 (readonly)
	]]
	local tbl = {}
	table.insert(tbl, arg1:GetChannelTab(module_upvr_2.GeneralChannelName))
	table.insert(tbl, arg1:GetChannelTab("System"))
	for _, v in pairs(arg1.ChannelTabs) do
		if v.ChannelName ~= module_upvr_2.GeneralChannelName and v.ChannelName ~= "System" then
			table.insert(tbl, v)
		end
	end
	for i_2, v_2 in pairs(tbl) do
		v_2.GuiObject.Position = UDim2.new(i_2 - 1, 0, 0, 0)
	end
	arg1.GuiObjects.ScrollerSizer.Size = UDim2.new(1 / math.max(1, math.min(module_upvr_2.ChannelsBarFullTabSize, arg1.NumTabs)), 0, 1, 0)
	arg1:ScrollChannelsFrame(0)
end
function tbl_upvr.ResizeChannelTabText(arg1, arg2) -- Line 265
	for _, v_3 in pairs(arg1.ChannelTabs) do
		v_3:SetTextSize(arg2)
	end
end
function tbl_upvr.ScrollChannelsFrame(arg1, arg2) -- Line 271
	--[[ Upvalues[1]:
		[1]: module_upvr_2 (readonly)
	]]
	local var49
	if arg1.ScrollChannelsFrameLock then
	else
		arg1.ScrollChannelsFrameLock = true
		local ChannelsBarFullTabSize = module_upvr_2.ChannelsBarFullTabSize
		local var51 = arg1.CurPageNum + arg2
		if var51 < 0 then
			var51 = 0
		elseif 0 < var51 and arg1.NumTabs < var51 + ChannelsBarFullTabSize then
			var51 = arg1.NumTabs - ChannelsBarFullTabSize
		end
		arg1.CurPageNum = var51
		var49 = arg1.CurPageNum
		var49 = 0
		var49 = arg1.GuiObjects
		if 0 >= arg1.CurPageNum then
			var49 = false
		else
			var49 = true
		end
		var49.PageLeftButton.Visible = var49
		if arg1.CurPageNum + ChannelsBarFullTabSize >= arg1.NumTabs then
		else
		end
		arg1.GuiObjects.PageRightButton.Visible = true
		if arg2 == 0 then
			arg1.ScrollChannelsFrameLock = false
			return
		end
		arg1:WaitUntilParentedCorrectly()
		arg1.GuiObjects.ScrollerFrame:TweenPosition(UDim2.new(-var49, var49, 0, 0), Enum.EasingDirection.InOut, Enum.EasingStyle.Quad, 0.15, true, function() -- Line 297, Named "UnlockFunc"
			--[[ Upvalues[1]:
				[1]: arg1 (readonly)
			]]
			arg1.ScrollChannelsFrameLock = false
		end)
	end
end
function tbl_upvr.FadeOutBackground(arg1, arg2) -- Line 306
	--[[ Upvalues[1]:
		[1]: module_upvr (readonly)
	]]
	for _, v_4 in pairs(arg1.ChannelTabs) do
		v_4:FadeOutBackground(arg2)
	end
	arg1.AnimParams.Background_TargetTransparency = 1
	arg1.AnimParams.Background_NormalizedExptValue = module_upvr:NormalizedDefaultExptValueInSeconds(arg2)
end
function tbl_upvr.FadeInBackground(arg1, arg2) -- Line 315
	--[[ Upvalues[1]:
		[1]: module_upvr (readonly)
	]]
	for _, v_5 in pairs(arg1.ChannelTabs) do
		v_5:FadeInBackground(arg2)
	end
	arg1.AnimParams.Background_TargetTransparency = 0.6
	arg1.AnimParams.Background_NormalizedExptValue = module_upvr:NormalizedDefaultExptValueInSeconds(arg2)
end
function tbl_upvr.FadeOutText(arg1, arg2) -- Line 324
	for _, v_6 in pairs(arg1.ChannelTabs) do
		v_6:FadeOutText(arg2)
	end
end
function tbl_upvr.FadeInText(arg1, arg2) -- Line 330
	for _, v_7 in pairs(arg1.ChannelTabs) do
		v_7:FadeInText(arg2)
	end
end
function tbl_upvr.AnimGuiObjects(arg1) -- Line 336
	arg1.GuiObjects.PageLeftButton.ImageTransparency = arg1.AnimParams.Background_CurrentTransparency
	arg1.GuiObjects.PageRightButton.ImageTransparency = arg1.AnimParams.Background_CurrentTransparency
	arg1.GuiObjects.PageLeftButtonArrow.ImageTransparency = arg1.AnimParams.Background_CurrentTransparency
	arg1.GuiObjects.PageRightButtonArrow.ImageTransparency = arg1.AnimParams.Background_CurrentTransparency
end
function tbl_upvr.InitializeAnimParams(arg1) -- Line 343
	--[[ Upvalues[1]:
		[1]: module_upvr (readonly)
	]]
	arg1.AnimParams.Background_TargetTransparency = 0.6
	arg1.AnimParams.Background_CurrentTransparency = 0.6
	arg1.AnimParams.Background_NormalizedExptValue = module_upvr:NormalizedDefaultExptValueInSeconds(0)
end
function tbl_upvr.Update(arg1, arg2) -- Line 349
	--[[ Upvalues[1]:
		[1]: module_upvr (readonly)
	]]
	for _, v_8 in pairs(arg1.ChannelTabs) do
		v_8:Update(arg2)
	end
	arg1.AnimParams.Background_CurrentTransparency = module_upvr:Expt(arg1.AnimParams.Background_CurrentTransparency, arg1.AnimParams.Background_TargetTransparency, arg1.AnimParams.Background_NormalizedExptValue, arg2)
	arg1:AnimGuiObjects()
end
function tbl_upvr.WaitUntilParentedCorrectly(arg1) -- Line 365
	while not arg1.GuiObject:IsDescendantOf(game:GetService("Players").LocalPlayer) do
		arg1.GuiObject.AncestryChanged:wait()
	end
end
function module.new() -- Line 374
	--[[ Upvalues[2]:
		[1]: tbl_upvr (readonly)
		[2]: module_upvr_2 (readonly)
	]]
	local setmetatable_result1_upvr = setmetatable({}, tbl_upvr)
	setmetatable_result1_upvr.GuiObject = nil
	setmetatable_result1_upvr.GuiObjects = {}
	setmetatable_result1_upvr.ChannelTabs = {}
	setmetatable_result1_upvr.NumTabs = 0
	setmetatable_result1_upvr.CurPageNum = 0
	setmetatable_result1_upvr.ScrollChannelsFrameLock = false
	setmetatable_result1_upvr.AnimParams = {}
	setmetatable_result1_upvr:InitializeAnimParams()
	module_upvr_2.SettingsChanged:connect(function(arg1, arg2) -- Line 390
		--[[ Upvalues[1]:
			[1]: setmetatable_result1_upvr (readonly)
		]]
		if arg1 == "ChatChannelsTabTextSize" then
			setmetatable_result1_upvr:ResizeChannelTabText(arg2)
		end
	end)
	return setmetatable_result1_upvr
end
return module