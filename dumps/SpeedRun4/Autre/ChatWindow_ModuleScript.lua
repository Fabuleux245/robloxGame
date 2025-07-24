-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:57:28
-- Luau version 6, Types version 3
-- Time taken: 0.018452 seconds

local module = {}
local Players_upvr = game:GetService("Players")
local Chat_upvr = game:GetService("Chat")
local Parent = script.Parent
local module_upvr = require(Chat_upvr:WaitForChild("ClientChatModules"):WaitForChild("ChatSettings"))
local module_3_upvr = require(Parent:WaitForChild("CurveUtil"))
local tbl_upvr = {}
tbl_upvr.__index = tbl_upvr
function getClassicChatEnabled() -- Line 34
	--[[ Upvalues[2]:
		[1]: module_upvr (readonly)
		[2]: Players_upvr (readonly)
	]]
	if module_upvr.ClassicChatEnabled ~= nil then
		return module_upvr.ClassicChatEnabled
	end
	return Players_upvr.ClassicChat
end
function getBubbleChatEnabled() -- Line 41
	--[[ Upvalues[2]:
		[1]: module_upvr (readonly)
		[2]: Players_upvr (readonly)
	]]
	if module_upvr.BubbleChatEnabled ~= nil then
		return module_upvr.BubbleChatEnabled
	end
	return Players_upvr.BubbleChat
end
function bubbleChatOnly() -- Line 48
	local var8 = not getClassicChatEnabled()
	if var8 then
		var8 = getBubbleChatEnabled()
	end
	return var8
end
function mergeProps(arg1, arg2) -- Line 53
	if not arg1 or not arg2 then
	else
		for i_2, v_2 in pairs(arg1) do
			if arg2[i_2] ~= nil then
				arg2[i_2] = v_2
			end
		end
	end
end
local PlayerGui_upvr = Players_upvr.LocalPlayer:WaitForChild("PlayerGui")
function tbl_upvr.CreateGuiObjects(arg1, arg2) -- Line 62
	--[[ Upvalues[3]:
		[1]: Chat_upvr (readonly)
		[2]: module_upvr (readonly)
		[3]: PlayerGui_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local var15_upvw
	pcall(function() -- Line 64
		--[[ Upvalues[2]:
			[1]: var15_upvw (read and write)
			[2]: Chat_upvr (copied, readonly)
		]]
		var15_upvw = Chat_upvr:InvokeChatCallback(Enum.ChatCallbackType.OnCreatingChatWindow, nil)
	end)
	mergeProps(var15_upvw, module_upvr)
	local Frame_upvr_3 = Instance.new("Frame")
	Frame_upvr_3.BackgroundTransparency = 1
	Frame_upvr_3.Active = module_upvr.WindowDraggable
	Frame_upvr_3.Parent = arg2
	Frame_upvr_3.AutoLocalize = false
	local Frame_upvr = Instance.new("Frame")
	Frame_upvr.Selectable = false
	Frame_upvr.Name = "ChatBarParentFrame"
	Frame_upvr.BackgroundTransparency = 1
	Frame_upvr.Parent = Frame_upvr_3
	local Frame_upvr_2 = Instance.new("Frame")
	Frame_upvr_2.Selectable = false
	Frame_upvr_2.Name = "ChannelsBarParentFrame"
	Frame_upvr_2.BackgroundTransparency = 1
	Frame_upvr_2.Position = UDim2.new(0, 0, 0, 0)
	Frame_upvr_2.Parent = Frame_upvr_3
	local Frame_upvr_4 = Instance.new("Frame")
	Frame_upvr_4.Selectable = false
	Frame_upvr_4.Name = "ChatChannelParentFrame"
	Frame_upvr_4.BackgroundTransparency = 1
	Frame_upvr_4.BackgroundColor3 = module_upvr.BackGroundColor
	Frame_upvr_4.BackgroundTransparency = 0.6
	Frame_upvr_4.BorderSizePixel = 0
	Frame_upvr_4.Parent = Frame_upvr_3
	local ImageButton_upvr = Instance.new("ImageButton")
	ImageButton_upvr.Selectable = false
	ImageButton_upvr.Image = ""
	ImageButton_upvr.BackgroundTransparency = 0.6
	ImageButton_upvr.BorderSizePixel = 0
	ImageButton_upvr.Visible = false
	ImageButton_upvr.BackgroundColor3 = module_upvr.BackGroundColor
	ImageButton_upvr.Active = true
	local var22_upvw
	if bubbleChatOnly() then
		var22_upvw = ImageButton_upvr.AbsoluteSize
		var22_upvw = 0
		ImageButton_upvr.Position = UDim2.new(1, -var22_upvw.X, 0, var22_upvw)
	else
		var22_upvw = ImageButton_upvr.AbsoluteSize
		var22_upvw = -ImageButton_upvr.AbsoluteSize.Y
		ImageButton_upvr.Position = UDim2.new(1, -var22_upvw.X, 1, var22_upvw)
	end
	ImageButton_upvr.Parent = Frame_upvr_3
	local ImageLabel = Instance.new("ImageLabel")
	ImageLabel.Selectable = false
	var22_upvw = 0.8
	ImageLabel.Size = UDim2.new(0.8, 0, var22_upvw, 0)
	var22_upvw = 0.2
	ImageLabel.Position = UDim2.new(0.2, 0, var22_upvw, 0)
	ImageLabel.BackgroundTransparency = 1
	ImageLabel.Image = "rbxassetid://261880743"
	ImageLabel.Parent = ImageButton_upvr
	local function _() -- Line 122, Named "GetScreenGuiParent"
		--[[ Upvalues[1]:
			[1]: Frame_upvr_3 (readonly)
		]]
		local var24
		while var24 and not var24:IsA("ScreenGui") do
			var24 = var24.Parent
		end
		return var24
	end
	var22_upvw = Frame_upvr_3
	while var22_upvw and not var22_upvw:IsA("ScreenGui") do
		var22_upvw = var22_upvw.Parent
	end
	local var25 = var22_upvw
	var22_upvw = var25.AbsoluteSize.X
	if var22_upvw <= 640 then
		local _ = 1
	else
		var22_upvw = var25.AbsoluteSize.X
		if var22_upvw <= 1024 then
		end
	end
	var22_upvw = false
	local function doCheckSizeBounds_upvr() -- Line 145, Named "doCheckSizeBounds"
		--[[ Upvalues[6]:
			[1]: var22_upvw (read and write)
			[2]: Frame_upvr_3 (readonly)
			[3]: PlayerGui_upvr (copied, readonly)
			[4]: module_upvr (copied, readonly)
			[5]: Frame_upvr_2 (readonly)
			[6]: Frame_upvr (readonly)
		]]
		local var27
		if var22_upvw then
		else
			var22_upvw = true
			if not Frame_upvr_3:IsDescendantOf(PlayerGui_upvr) then return end
			var27 = Frame_upvr_3
			while var27 and not var27:IsA("ScreenGui") do
				var27 = var27.Parent
			end
			local var28 = var27
			var27 = module_upvr.MinimumWindowSize
			local MaximumWindowSize = module_upvr.MaximumWindowSize
			local var30 = var27.X.Scale * var28.AbsoluteSize.X + var27.X.Offset
			local maximum = math.max(var27.Y.Scale * var28.AbsoluteSize.Y + var27.Y.Offset, Frame_upvr_2.AbsoluteSize.Y + Frame_upvr.AbsoluteSize.Y)
			local var32 = MaximumWindowSize.X.Scale * var28.AbsoluteSize.X + MaximumWindowSize.X.Offset
			local var33 = MaximumWindowSize.Y.Scale * var28.AbsoluteSize.Y + MaximumWindowSize.Y.Offset
			local X = Frame_upvr_3.AbsoluteSize.X
			local Y = Frame_upvr_3.AbsoluteSize.Y
			if X < var30 then
				Frame_upvr_3.Size += UDim2.new(0, var30 - X, 0, 0)
			elseif var32 < X then
				Frame_upvr_3.Size += UDim2.new(0, var32 - X, 0, 0)
			end
			if Y < maximum then
				Frame_upvr_3.Size += UDim2.new(0, 0, 0, maximum - Y)
			elseif var33 < Y then
				Frame_upvr_3.Size += UDim2.new(0, 0, 0, var33 - Y)
			end
			Frame_upvr_3.Size = UDim2.new(Frame_upvr_3.AbsoluteSize.X / var28.AbsoluteSize.X, 0, Frame_upvr_3.AbsoluteSize.Y / var28.AbsoluteSize.Y, 0)
			var22_upvw = false
		end
	end
	Frame_upvr_3.Changed:connect(function(arg1_2) -- Line 196
		--[[ Upvalues[1]:
			[1]: doCheckSizeBounds_upvr (readonly)
		]]
		if arg1_2 == "AbsoluteSize" then
			doCheckSizeBounds_upvr()
		end
	end)
	ImageButton_upvr.DragBegin:connect(function(arg1_3) -- Line 202
		--[[ Upvalues[1]:
			[1]: Frame_upvr_3 (readonly)
		]]
		Frame_upvr_3.Draggable = false
	end)
	local function UpdatePositionFromDrag_upvr(arg1_4) -- Line 206, Named "UpdatePositionFromDrag"
		--[[ Upvalues[3]:
			[1]: module_upvr (copied, readonly)
			[2]: Frame_upvr_3 (readonly)
			[3]: ImageButton_upvr (readonly)
		]]
		if module_upvr.WindowDraggable == false and module_upvr.WindowResizable == false then
		else
			local var38 = arg1_4 - Frame_upvr_3.AbsolutePosition + ImageButton_upvr.AbsoluteSize
			Frame_upvr_3.Size = UDim2.new(0, var38.X, 0, var38.Y)
			if bubbleChatOnly() then
				ImageButton_upvr.Position = UDim2.new(1, -ImageButton_upvr.AbsoluteSize.X, 0, 0)
				return
			end
			ImageButton_upvr.Position = UDim2.new(1, -ImageButton_upvr.AbsoluteSize.X, 1, -ImageButton_upvr.AbsoluteSize.Y)
		end
	end
	ImageButton_upvr.DragStopped:connect(function(arg1_5, arg2_2) -- Line 219
		--[[ Upvalues[2]:
			[1]: Frame_upvr_3 (readonly)
			[2]: module_upvr (copied, readonly)
		]]
		Frame_upvr_3.Draggable = module_upvr.WindowDraggable
	end)
	local var41_upvw = false
	ImageButton_upvr.Changed:connect(function(arg1_6) -- Line 225
		--[[ Upvalues[4]:
			[1]: Frame_upvr_3 (readonly)
			[2]: var41_upvw (read and write)
			[3]: UpdatePositionFromDrag_upvr (readonly)
			[4]: ImageButton_upvr (readonly)
		]]
		if arg1_6 == "AbsolutePosition" and not Frame_upvr_3.Draggable then
			if var41_upvw then return end
			var41_upvw = true
			UpdatePositionFromDrag_upvr(ImageButton_upvr.AbsolutePosition)
			var41_upvw = false
		end
	end)
	local const_number_upvw = 2
	local function _(arg1_7) -- Line 236, Named "CalculateChannelsBarPixelSize"
		--[[ Upvalues[2]:
			[1]: const_number_upvw (read and write)
			[2]: module_upvr (copied, readonly)
		]]
		-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
		local var43
		if var43 == 1 then
			var43 = arg1_7
			if not var43 then
				var43 = module_upvr.ChatChannelsTabTextSizePhone
			end
		elseif not var43 then
		end
		return math.max(32, module_upvr.ChatChannelsTabTextSize + 8) + 2
	end
	local function _(arg1_8) -- Line 249, Named "CalculateChatBarPixelSize"
		--[[ Upvalues[2]:
			[1]: const_number_upvw (read and write)
			[2]: module_upvr (copied, readonly)
		]]
		-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
		local var45
		if var45 == 1 then
			var45 = arg1_8
			if not var45 then
				var45 = module_upvr.ChatBarTextSizePhone
			end
		elseif not var45 then
		end
		return module_upvr.ChatBarTextSize + 14 + 10
	end
	local var47
	if bubbleChatOnly() then
		var47 = 0
		Frame_upvr.Position = UDim2.new(var47, 0, 0, 0)
		Frame_upvr_2.Visible = false
		Frame_upvr_2.Active = false
		Frame_upvr_4.Visible = false
		Frame_upvr_4.Active = false
		var47 = 0
		local var48 = Frame_upvr_3
		repeat
		until not var48 and var48:IsA("ScreenGui")
		if const_number_upvw == 1 then
			var47 = module_upvr.DefaultWindowSizePhone.X.Offset
		elseif const_number_upvw == 2 then
			var47 = module_upvr.DefaultWindowSizeTablet.X.Offset
		else
			var47 = module_upvr.DefaultWindowSizeDesktop.X.Offset
		end
		local var49
		if const_number_upvw == 1 then
			var49 = nil
			if not var49 then
				var49 = module_upvr.ChatBarTextSizePhone
			end
		elseif not var49 then
		end
		Frame_upvr_3.Size = UDim2.new(module_upvr.DefaultWindowSizeDesktop.X.Scale, var47, 0, module_upvr.ChatBarTextSize + 14 + 10)
		Frame_upvr_3.Position = module_upvr.DefaultWindowPosition
	else
		var47 = Frame_upvr_3
		while var47 and not var47:IsA("ScreenGui") do
			var47 = var47.Parent
		end
		if const_number_upvw == 1 then
			var47 = module_upvr.DefaultWindowSizePhone
			Frame_upvr_3.Size = var47
		elseif const_number_upvw == 2 then
			var47 = module_upvr.DefaultWindowSizeTablet
			Frame_upvr_3.Size = var47
		else
			var47 = module_upvr.DefaultWindowSizeDesktop
			Frame_upvr_3.Size = var47
		end
		var47 = module_upvr.DefaultWindowPosition
		Frame_upvr_3.Position = var47
	end
	if const_number_upvw == 1 then
		var47 = module_upvr.ChatWindowTextSizePhone
		module_upvr.ChatWindowTextSize = var47
		var47 = module_upvr.ChatChannelsTabTextSizePhone
		module_upvr.ChatChannelsTabTextSize = var47
		var47 = module_upvr.ChatBarTextSizePhone
		module_upvr.ChatBarTextSize = var47
	end
	local function _(arg1_9) -- Line 318, Named "UpdateDraggable"
		--[[ Upvalues[1]:
			[1]: Frame_upvr_3 (readonly)
		]]
		Frame_upvr_3.Active = arg1_9
		Frame_upvr_3.Draggable = arg1_9
	end
	local function UpdateResizable_upvr(arg1_10) -- Line 323, Named "UpdateResizable"
		--[[ Upvalues[2]:
			[1]: ImageButton_upvr (readonly)
			[2]: Frame_upvr (readonly)
		]]
		-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
		ImageButton_upvr.Visible = arg1_10
		ImageButton_upvr.Draggable = arg1_10
		local Offset = Frame_upvr.Size.Y.Offset
		-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [29] 22. Error Block 3 start (CF ANALYSIS FAILED)
		Frame_upvr.Position = UDim2.new(0, 0, 1, -Offset)
		do
			return
		end
		-- KONSTANTERROR: [29] 22. Error Block 3 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [40] 31. Error Block 7 start (CF ANALYSIS FAILED)
		Frame_upvr.Size = UDim2.new(1, 0, 0, Offset)
		if not bubbleChatOnly() then
			Frame_upvr.Position = UDim2.new(0, 0, 1, -Offset)
		end
		-- KONSTANTERROR: [40] 31. Error Block 7 end (CF ANALYSIS FAILED)
	end
	local function UpdateChatChannelParentFrameSize_upvr() -- Line 342, Named "UpdateChatChannelParentFrameSize"
		--[[ Upvalues[3]:
			[1]: const_number_upvw (read and write)
			[2]: module_upvr (copied, readonly)
			[3]: Frame_upvr_4 (readonly)
		]]
		local var52
		local var53
		if var53 == 1 then
			var53 = var52
			if not var53 then
				var53 = module_upvr.ChatChannelsTabTextSizePhone
			end
			var52 = var53
		else
			if not var52 then
			end
			var52 = module_upvr.ChatChannelsTabTextSize
		end
		local var54 = math.max(32, var52 + 8) + 2
		local var55
		local var56
		if var56 == 1 then
			var56 = var55
			if not var56 then
				var56 = module_upvr.ChatBarTextSizePhone
			end
			var55 = var56
		else
			if not var55 then
			end
			var55 = module_upvr.ChatBarTextSize
		end
		local var57 = var55 + 14 + 10
		if module_upvr.ShowChannelsBar then
			Frame_upvr_4.Size = UDim2.new(1, 0, 1, -(var54 + var57 + 2 + 2))
			Frame_upvr_4.Position = UDim2.new(0, 0, 0, var54 + 2)
		else
			Frame_upvr_4.Size = UDim2.new(1, 0, 1, -(var57 + 2 + 2))
			Frame_upvr_4.Position = UDim2.new(0, 0, 0, 2)
		end
	end
	local function _(arg1_11) -- Line 357, Named "UpdateChatChannelsTabTextSize"
		--[[ Upvalues[4]:
			[1]: const_number_upvw (read and write)
			[2]: module_upvr (copied, readonly)
			[3]: Frame_upvr_2 (readonly)
			[4]: UpdateChatChannelParentFrameSize_upvr (readonly)
		]]
		local var58 = arg1_11
		local var59
		if var59 == 1 then
			var59 = var58
			if not var59 then
				var59 = module_upvr.ChatChannelsTabTextSizePhone
			end
			var58 = var59
		else
			if not var58 then
			end
			var58 = module_upvr.ChatChannelsTabTextSize
		end
		Frame_upvr_2.Size = UDim2.new(1, 0, 0, math.max(32, var58 + 8) + 2)
		UpdateChatChannelParentFrameSize_upvr()
	end
	local function UpdateChatBarTextSize_upvr(arg1_12) -- Line 364, Named "UpdateChatBarTextSize"
		--[[ Upvalues[6]:
			[1]: const_number_upvw (read and write)
			[2]: module_upvr (copied, readonly)
			[3]: Frame_upvr (readonly)
			[4]: ImageButton_upvr (readonly)
			[5]: UpdateChatChannelParentFrameSize_upvr (readonly)
			[6]: UpdateResizable_upvr (readonly)
		]]
		local var60 = arg1_12
		local var61
		if var61 == 1 then
			var61 = var60
			if not var61 then
				var61 = module_upvr.ChatBarTextSizePhone
			end
			var60 = var61
		else
			if not var60 then
			end
			var60 = module_upvr.ChatBarTextSize
		end
		local var62 = var60 + 14 + 10
		Frame_upvr.Size = UDim2.new(1, 0, 0, var62)
		if not bubbleChatOnly() then
			Frame_upvr.Position = UDim2.new(0, 0, 1, -var62)
		end
		ImageButton_upvr.Size = UDim2.new(0, var62, 0, var62)
		ImageButton_upvr.Position = UDim2.new(1, -var62, 1, -var62)
		UpdateChatChannelParentFrameSize_upvr()
		UpdateResizable_upvr(module_upvr.WindowResizable)
	end
	local function _(arg1_13) -- Line 379, Named "UpdateShowChannelsBar"
		--[[ Upvalues[2]:
			[1]: Frame_upvr_2 (readonly)
			[2]: UpdateChatChannelParentFrameSize_upvr (readonly)
		]]
		Frame_upvr_2.Visible = arg1_13
		UpdateChatChannelParentFrameSize_upvr()
	end
	local var63
	if const_number_upvw == 1 then
		var63 = module_upvr.ChatChannelsTabTextSize
		if not var63 then
			var63 = module_upvr.ChatChannelsTabTextSizePhone
		end
	elseif not var63 then
	end
	Frame_upvr_2.Size = UDim2.new(1, 0, 0, math.max(32, module_upvr.ChatChannelsTabTextSize + 8) + 2)
	UpdateChatChannelParentFrameSize_upvr()
	UpdateChatBarTextSize_upvr(module_upvr.ChatBarTextSize)
	local WindowDraggable = module_upvr.WindowDraggable
	Frame_upvr_3.Active = WindowDraggable
	Frame_upvr_3.Draggable = WindowDraggable
	UpdateResizable_upvr(module_upvr.WindowResizable)
	Frame_upvr_2.Visible = module_upvr.ShowChannelsBar
	UpdateChatChannelParentFrameSize_upvr()
	module_upvr.SettingsChanged:connect(function(arg1_14, arg2_3) -- Line 390
		--[[ Upvalues[7]:
			[1]: Frame_upvr_3 (readonly)
			[2]: UpdateResizable_upvr (readonly)
			[3]: const_number_upvw (read and write)
			[4]: module_upvr (copied, readonly)
			[5]: Frame_upvr_2 (readonly)
			[6]: UpdateChatChannelParentFrameSize_upvr (readonly)
			[7]: UpdateChatBarTextSize_upvr (readonly)
		]]
		if arg1_14 == "WindowDraggable" then
			Frame_upvr_3.Active = arg2_3
			Frame_upvr_3.Draggable = arg2_3
		else
			if arg1_14 == "WindowResizable" then
				UpdateResizable_upvr(arg2_3)
				return
			end
			if arg1_14 == "ChatChannelsTabTextSize" then
				local var67 = arg2_3
				local var68
				if var68 == 1 then
					var68 = var67
					if not var68 then
						var68 = module_upvr.ChatChannelsTabTextSizePhone
					end
					var67 = var68
				else
					if not var67 then
					end
					var67 = module_upvr.ChatChannelsTabTextSize
				end
				Frame_upvr_2.Size = UDim2.new(1, 0, 0, math.max(32, var67 + 8) + 2)
				UpdateChatChannelParentFrameSize_upvr()
				return
			end
			if arg1_14 == "ChatBarTextSize" then
				UpdateChatBarTextSize_upvr(arg2_3)
				return
			end
			if arg1_14 == "ShowChannelsBar" then
				Frame_upvr_2.Visible = arg2_3
				UpdateChatChannelParentFrameSize_upvr()
			end
		end
	end)
	arg1.GuiObject = Frame_upvr_3
	arg1.GuiObjects.BaseFrame = Frame_upvr_3
	arg1.GuiObjects.ChatBarParentFrame = Frame_upvr
	arg1.GuiObjects.ChannelsBarParentFrame = Frame_upvr_2
	arg1.GuiObjects.ChatChannelParentFrame = Frame_upvr_4
	arg1.GuiObjects.ChatResizerFrame = ImageButton_upvr
	arg1.GuiObjects.ResizeIcon = ImageLabel
	arg1:AnimGuiObjects()
end
function tbl_upvr.GetChatBar(arg1) -- Line 420
	return arg1.ChatBar
end
function tbl_upvr.RegisterChatBar(arg1, arg2) -- Line 424
	arg1.ChatBar = arg2
	arg1.ChatBar:CreateGuiObjects(arg1.GuiObjects.ChatBarParentFrame)
end
function tbl_upvr.RegisterChannelsBar(arg1, arg2) -- Line 429
	arg1.ChannelsBar = arg2
	arg1.ChannelsBar:CreateGuiObjects(arg1.GuiObjects.ChannelsBarParentFrame)
end
function tbl_upvr.RegisterMessageLogDisplay(arg1, arg2) -- Line 434
	arg1.MessageLogDisplay = arg2
	arg1.MessageLogDisplay.GuiObject.Parent = arg1.GuiObjects.ChatChannelParentFrame
end
local module_2_upvr = require(Parent:WaitForChild("ChatChannel"))
function tbl_upvr.AddChannel(arg1, arg2) -- Line 439
	--[[ Upvalues[1]:
		[1]: module_2_upvr (readonly)
	]]
	if arg1:GetChannel(arg2) then
		error("Channel '"..arg2.."' already exists!")
		return
	end
	local any_new_result1 = module_2_upvr.new(arg2, arg1.MessageLogDisplay)
	arg1.Channels[arg2:lower()] = any_new_result1
	any_new_result1:SetActive(false)
	local any_AddChannelTab_result1 = arg1.ChannelsBar:AddChannelTab(arg2)
	any_AddChannelTab_result1.NameTag.MouseButton1Click:connect(function() -- Line 451
		--[[ Upvalues[2]:
			[1]: arg1 (readonly)
			[2]: arg2 (readonly)
		]]
		arg1:SwitchCurrentChannel(arg2)
	end)
	any_new_result1:RegisterChannelTab(any_AddChannelTab_result1)
	return any_new_result1
end
function tbl_upvr.GetFirstChannel(arg1) -- Line 460
	for _, v in pairs(arg1.Channels) do
		return v
	end
	return nil
end
function tbl_upvr.RemoveChannel(arg1, arg2) -- Line 469
	--[[ Upvalues[1]:
		[1]: module_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [5] 5. Error Block 2 start (CF ANALYSIS FAILED)
	error("Channel '"..arg2.."' does not exist!")
	-- KONSTANTERROR: [5] 5. Error Block 2 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [12] 11. Error Block 3 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [12] 11. Error Block 3 end (CF ANALYSIS FAILED)
end
function tbl_upvr.GetChannel(arg1, arg2) -- Line 511
	if not arg2 or not arg1.Channels[arg2:lower()] then
	end
	return nil
end
function tbl_upvr.GetTargetMessageChannel(arg1) -- Line 515
	--[[ Upvalues[1]:
		[1]: module_upvr (readonly)
	]]
	if not module_upvr.ShowChannelsBar then
		return arg1.ChatBar.TargetChannel
	end
	local any_GetCurrentChannel_result1 = arg1:GetCurrentChannel()
	local var79 = any_GetCurrentChannel_result1
	if var79 then
		var79 = any_GetCurrentChannel_result1.Name
	end
	return var79
end
function tbl_upvr.GetCurrentChannel(arg1) -- Line 524
	return arg1.CurrentChannel
end
function tbl_upvr.SwitchCurrentChannel(arg1, arg2) -- Line 528
	--[[ Upvalues[1]:
		[1]: module_upvr (readonly)
	]]
	local var80
	if not module_upvr.ShowChannelsBar then
		local any_GetChannel_result1 = arg1:GetChannel(var80)
		if any_GetChannel_result1 then
			arg1.ChatBar:SetChannelTarget(any_GetChannel_result1.Name)
		end
		var80 = module_upvr.GeneralChannelName
	end
	local any_GetCurrentChannel_result1_2 = arg1:GetCurrentChannel()
	local any_GetChannel_result1_2 = arg1:GetChannel(var80)
	if any_GetChannel_result1_2 == nil then
		error(string.format("Channel '%s' does not exist.", var80))
	end
	if any_GetChannel_result1_2 ~= any_GetCurrentChannel_result1_2 then
		if any_GetCurrentChannel_result1_2 then
			any_GetCurrentChannel_result1_2:SetActive(false)
			arg1.ChannelsBar:GetChannelTab(any_GetCurrentChannel_result1_2.Name):SetActive(false)
		end
		if any_GetChannel_result1_2 then
			any_GetChannel_result1_2:SetActive(true)
			arg1.ChannelsBar:GetChannelTab(any_GetChannel_result1_2.Name):SetActive(true)
		end
		arg1.CurrentChannel = any_GetChannel_result1_2
	end
end
function tbl_upvr.UpdateFrameVisibility(arg1) -- Line 562
	local Visible = arg1.Visible
	if Visible then
		Visible = arg1.CoreGuiEnabled
	end
	arg1.GuiObject.Visible = Visible
end
function tbl_upvr.GetVisible(arg1) -- Line 566
	return arg1.Visible
end
function tbl_upvr.SetVisible(arg1, arg2) -- Line 570
	arg1.Visible = arg2
	arg1:UpdateFrameVisibility()
end
function tbl_upvr.GetCoreGuiEnabled(arg1) -- Line 575
	return arg1.CoreGuiEnabled
end
function tbl_upvr.SetCoreGuiEnabled(arg1, arg2) -- Line 579
	arg1.CoreGuiEnabled = arg2
	arg1:UpdateFrameVisibility()
end
function tbl_upvr.EnableResizable(arg1) -- Line 584
	arg1.GuiObjects.ChatResizerFrame.Active = true
end
function tbl_upvr.DisableResizable(arg1) -- Line 588
	arg1.GuiObjects.ChatResizerFrame.Active = false
end
function tbl_upvr.FadeOutBackground(arg1, arg2) -- Line 592
	--[[ Upvalues[1]:
		[1]: module_3_upvr (readonly)
	]]
	arg1.ChannelsBar:FadeOutBackground(arg2)
	arg1.MessageLogDisplay:FadeOutBackground(arg2)
	arg1.ChatBar:FadeOutBackground(arg2)
	arg1.AnimParams.Background_TargetTransparency = 1
	arg1.AnimParams.Background_NormalizedExptValue = module_3_upvr:NormalizedDefaultExptValueInSeconds(arg2)
end
function tbl_upvr.FadeInBackground(arg1, arg2) -- Line 601
	--[[ Upvalues[1]:
		[1]: module_3_upvr (readonly)
	]]
	arg1.ChannelsBar:FadeInBackground(arg2)
	arg1.MessageLogDisplay:FadeInBackground(arg2)
	arg1.ChatBar:FadeInBackground(arg2)
	arg1.AnimParams.Background_TargetTransparency = 0.6
	arg1.AnimParams.Background_NormalizedExptValue = module_3_upvr:NormalizedDefaultExptValueInSeconds(arg2)
end
function tbl_upvr.FadeOutText(arg1, arg2) -- Line 610
	arg1.MessageLogDisplay:FadeOutText(arg2)
	arg1.ChannelsBar:FadeOutText(arg2)
end
function tbl_upvr.FadeInText(arg1, arg2) -- Line 615
	arg1.MessageLogDisplay:FadeInText(arg2)
	arg1.ChannelsBar:FadeInText(arg2)
end
function tbl_upvr.AnimGuiObjects(arg1) -- Line 620
	arg1.GuiObjects.ChatChannelParentFrame.BackgroundTransparency = arg1.AnimParams.Background_CurrentTransparency
	arg1.GuiObjects.ChatResizerFrame.BackgroundTransparency = arg1.AnimParams.Background_CurrentTransparency
	arg1.GuiObjects.ResizeIcon.ImageTransparency = arg1.AnimParams.Background_CurrentTransparency
end
function tbl_upvr.InitializeAnimParams(arg1) -- Line 626
	--[[ Upvalues[1]:
		[1]: module_3_upvr (readonly)
	]]
	arg1.AnimParams.Background_TargetTransparency = 0.6
	arg1.AnimParams.Background_CurrentTransparency = 0.6
	arg1.AnimParams.Background_NormalizedExptValue = module_3_upvr:NormalizedDefaultExptValueInSeconds(0)
end
function tbl_upvr.Update(arg1, arg2) -- Line 632
	--[[ Upvalues[1]:
		[1]: module_3_upvr (readonly)
	]]
	arg1.ChatBar:Update(arg2)
	arg1.ChannelsBar:Update(arg2)
	arg1.MessageLogDisplay:Update(arg2)
	arg1.AnimParams.Background_CurrentTransparency = module_3_upvr:Expt(arg1.AnimParams.Background_CurrentTransparency, arg1.AnimParams.Background_TargetTransparency, arg1.AnimParams.Background_NormalizedExptValue, arg2)
	arg1:AnimGuiObjects()
end
function module.new() -- Line 650
	--[[ Upvalues[1]:
		[1]: tbl_upvr (readonly)
	]]
	local setmetatable_result1 = setmetatable({}, tbl_upvr)
	setmetatable_result1.GuiObject = nil
	setmetatable_result1.GuiObjects = {}
	setmetatable_result1.ChatBar = nil
	setmetatable_result1.ChannelsBar = nil
	setmetatable_result1.MessageLogDisplay = nil
	setmetatable_result1.Channels = {}
	setmetatable_result1.CurrentChannel = nil
	setmetatable_result1.Visible = true
	setmetatable_result1.CoreGuiEnabled = true
	setmetatable_result1.AnimParams = {}
	setmetatable_result1:InitializeAnimParams()
	return setmetatable_result1
end
return module