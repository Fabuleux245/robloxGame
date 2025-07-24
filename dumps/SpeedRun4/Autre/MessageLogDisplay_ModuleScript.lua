-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:57:43
-- Luau version 6, Types version 3
-- Time taken: 0.006547 seconds

local pcall_result1_2, pcall_result2 = pcall(function() -- Line 7
	return UserSettings():IsUserFeatureEnabled("UserRemoveMessageOnTextFilterFailures")
end)
local pcall_result1, pcall_result2_2 = pcall(function() -- Line 15
	return UserSettings():IsUserFeatureEnabled("UserIsChatTranslationEnabled2")
end)
local var7_upvw = pcall_result1 and pcall_result2_2
local module_upvr_3 = {
	ScrollBarThickness = 4;
}
local Parent = script.Parent
local module_upvr = require(Parent:WaitForChild("CurveUtil"))
local any_new_result1_upvr = require(Parent:WaitForChild("MessageLabelCreator")).new()
local tbl_upvr = {}
tbl_upvr.__index = tbl_upvr
local module_upvr_2 = require(game:GetService("Chat"):WaitForChild("ClientChatModules"):WaitForChild("ChatSettings"))
local function CreateGuiObjects_upvr() -- Line 42, Named "CreateGuiObjects"
	--[[ Upvalues[2]:
		[1]: module_upvr_2 (readonly)
		[2]: module_upvr_3 (readonly)
	]]
	local Frame = Instance.new("Frame")
	Frame.Selectable = false
	Frame.Size = UDim2.new(1, 0, 1, 0)
	Frame.BackgroundTransparency = 1
	local ScrollingFrame = Instance.new("ScrollingFrame")
	ScrollingFrame.Selectable = module_upvr_2.GamepadNavigationEnabled
	ScrollingFrame.Name = "Scroller"
	ScrollingFrame.BackgroundTransparency = 1
	ScrollingFrame.BorderSizePixel = 0
	ScrollingFrame.Position = UDim2.new(0, 0, 0, 3)
	ScrollingFrame.Size = UDim2.new(1, -4, 1, -6)
	ScrollingFrame.CanvasSize = UDim2.new(0, 0, 0, 0)
	ScrollingFrame.ScrollBarThickness = module_upvr_3.ScrollBarThickness
	ScrollingFrame.Active = true
	ScrollingFrame.Parent = Frame
	local UIListLayout = Instance.new("UIListLayout")
	UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
	UIListLayout.Parent = ScrollingFrame
	return Frame, ScrollingFrame, UIListLayout
end
function tbl_upvr.Destroy(arg1) -- Line 67
	arg1.GuiObject:Destroy()
	arg1.Destroyed = true
end
function tbl_upvr.SetActive(arg1, arg2) -- Line 72
	arg1.GuiObject.Visible = arg2
end
local var17_upvw = pcall_result1_2 and pcall_result2
function tbl_upvr.UpdateMessageFiltered(arg1, arg2) -- Line 76
	--[[ Upvalues[1]:
		[1]: var17_upvw (read and write)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [16] 12. Error Block 16 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [16] 12. Error Block 16 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [4] 4. Error Block 2 start (CF ANALYSIS FAILED)
	-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [17.1966606]
	-- KONSTANTERROR: [4] 4. Error Block 2 end (CF ANALYSIS FAILED)
end
function tbl_upvr.RefreshMessagePlacement(arg1, arg2) -- Line 107
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [16] 12. Error Block 12 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [16] 12. Error Block 12 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [4] 4. Error Block 2 start (CF ANALYSIS FAILED)
	-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [17.328206]
	-- KONSTANTERROR: [4] 4. Error Block 2 end (CF ANALYSIS FAILED)
end
function tbl_upvr.AddMessage(arg1, arg2) -- Line 129
	--[[ Upvalues[2]:
		[1]: var7_upvw (read and write)
		[2]: any_new_result1_upvr (readonly)
	]]
	arg1:WaitUntilParentedCorrectly()
	local var18
	if var7_upvw then
		var18 = any_new_result1_upvr:CreateMessageLabel_Chat(arg2, arg1.CurrentChannelName, function() -- Line 134
			--[[ Upvalues[2]:
				[1]: arg1 (readonly)
				[2]: arg2 (readonly)
			]]
			arg1:RefreshMessagePlacement(arg2)
		end)
	else
		var18 = any_new_result1_upvr:CreateMessageLabel(arg2, arg1.CurrentChannelName)
	end
	if var18 == nil then
	else
		table.insert(arg1.MessageObjectLog, var18)
		arg1:PositionMessageLabelInWindow(var18, #arg1.MessageObjectLog)
	end
end
function tbl_upvr.RemoveMessageAtIndex(arg1, arg2) -- Line 151
	arg1:WaitUntilParentedCorrectly()
	local var20 = arg1.MessageObjectLog[arg2]
	if var20 then
		var20:Destroy()
		table.remove(arg1.MessageObjectLog, arg2)
	end
end
function tbl_upvr.AddMessageAtIndex(arg1, arg2, arg3) -- Line 162
	--[[ Upvalues[2]:
		[1]: var7_upvw (read and write)
		[2]: any_new_result1_upvr (readonly)
	]]
	local var21
	if var7_upvw then
		var21 = any_new_result1_upvr:CreateMessageLabel_Chat(arg2, arg1.CurrentChannelName, function() -- Line 165
			--[[ Upvalues[2]:
				[1]: arg1 (readonly)
				[2]: arg2 (readonly)
			]]
			arg1:RefreshMessagePlacement(arg2)
		end)
	else
		var21 = any_new_result1_upvr:CreateMessageLabel(arg2, arg1.CurrentChannelName)
	end
	if var21 == nil then
	else
		table.insert(arg1.MessageObjectLog, arg3, var21)
		arg1:PositionMessageLabelInWindow(var21, arg3)
	end
end
function tbl_upvr.RemoveLastMessage(arg1) -- Line 183
	arg1:WaitUntilParentedCorrectly()
	arg1.MessageObjectLog[1]:Destroy()
	table.remove(arg1.MessageObjectLog, 1)
end
function tbl_upvr.IsScrolledDown(arg1) -- Line 192
	local Offset = arg1.Scroller.CanvasSize.Y.Offset
	local Y = arg1.Scroller.AbsoluteWindowSize.Y
	local var25 = true
	if Offset >= Y then
		if Offset - arg1.Scroller.CanvasPosition.Y > Y + 5 then
			var25 = false
		else
			var25 = true
		end
	end
	return var25
end
function tbl_upvr.UpdateMessageTextHeight(arg1, arg2) -- Line 201
	for i = 1, 10 do
		if arg2.BaseMessage.TextFits then break end
		arg2.BaseFrame.Size = UDim2.new(1, 0, 0, arg2.GetHeightFunction(arg1.Scroller.AbsoluteSize.X - i))
	end
end
function tbl_upvr.PositionMessageLabelInWindow(arg1, arg2, arg3) -- Line 213
	arg1:WaitUntilParentedCorrectly()
	local BaseFrame = arg2.BaseFrame
	local var28 = 1
	if arg1.MessageObjectLog[arg3 - 1] then
		if arg3 == #arg1.MessageObjectLog then
			var28 = arg1.MessageObjectLog[arg3 - 1].BaseFrame.LayoutOrder + 1
		else
			var28 = arg1.MessageObjectLog[arg3 - 1].BaseFrame.LayoutOrder
		end
	end
	BaseFrame.LayoutOrder = var28
	BaseFrame.Size = UDim2.new(1, 0, 0, arg2.GetHeightFunction(arg1.Scroller.AbsoluteSize.X))
	BaseFrame.Parent = arg1.Scroller
	if arg2.BaseMessage then
		arg1:UpdateMessageTextHeight(arg2)
	end
	if arg1:IsScrolledDown() then
		arg1.Scroller.CanvasPosition = Vector2.new(0, math.max(0, arg1.Scroller.CanvasSize.Y.Offset - arg1.Scroller.AbsoluteSize.Y))
	end
end
function tbl_upvr.ReorderAllMessages(arg1) -- Line 243
	arg1:WaitUntilParentedCorrectly()
	if arg1.GuiObject.AbsoluteSize.Y < 1 then
	else
		for _, v_2 in pairs(arg1.MessageObjectLog) do
			arg1:UpdateMessageTextHeight(v_2)
		end
		if not arg1:IsScrolledDown() then
			arg1.Scroller.CanvasPosition = arg1.Scroller.CanvasPosition
			return
		end
		arg1.Scroller.CanvasPosition = Vector2.new(0, math.max(0, arg1.Scroller.CanvasSize.Y.Offset - arg1.Scroller.AbsoluteSize.Y))
	end
end
function tbl_upvr.Clear(arg1) -- Line 265
	for _, v in pairs(arg1.MessageObjectLog) do
		v:Destroy()
	end
	arg1.MessageObjectLog = {}
end
function tbl_upvr.SetCurrentChannelName(arg1, arg2) -- Line 272
	arg1.CurrentChannelName = arg2
end
function tbl_upvr.FadeOutBackground(arg1, arg2) -- Line 276
end
function tbl_upvr.FadeInBackground(arg1, arg2) -- Line 280
end
function tbl_upvr.FadeOutText(arg1, arg2) -- Line 284
	--[[ Upvalues[1]:
		[1]: module_upvr (readonly)
	]]
	for i_3 = 1, #arg1.MessageObjectLog do
		if arg1.MessageObjectLog[i_3].FadeOutFunction then
			arg1.MessageObjectLog[i_3].FadeOutFunction(arg2, module_upvr)
		end
	end
end
function tbl_upvr.FadeInText(arg1, arg2) -- Line 292
	--[[ Upvalues[1]:
		[1]: module_upvr (readonly)
	]]
	for i_4 = 1, #arg1.MessageObjectLog do
		if arg1.MessageObjectLog[i_4].FadeInFunction then
			arg1.MessageObjectLog[i_4].FadeInFunction(arg2, module_upvr)
		end
	end
end
function tbl_upvr.Update(arg1, arg2) -- Line 300
	--[[ Upvalues[1]:
		[1]: module_upvr (readonly)
	]]
	for i_5 = 1, #arg1.MessageObjectLog do
		if arg1.MessageObjectLog[i_5].UpdateAnimFunction then
			arg1.MessageObjectLog[i_5].UpdateAnimFunction(arg2, module_upvr)
		end
	end
end
function tbl_upvr.WaitUntilParentedCorrectly(arg1) -- Line 309
	while not arg1.GuiObject:IsDescendantOf(game:GetService("Players").LocalPlayer) do
		arg1.GuiObject.AncestryChanged:wait()
	end
end
function module_upvr_3.new() -- Line 318
	--[[ Upvalues[2]:
		[1]: tbl_upvr (readonly)
		[2]: CreateGuiObjects_upvr (readonly)
	]]
	local setmetatable_result1_upvr = setmetatable({}, tbl_upvr)
	setmetatable_result1_upvr.Destroyed = false
	local CreateGuiObjects_upvr_result1, CreateGuiObjects_upvr_result2, CreateGuiObjects_upvr_result3 = CreateGuiObjects_upvr()
	setmetatable_result1_upvr.GuiObject = CreateGuiObjects_upvr_result1
	setmetatable_result1_upvr.Scroller = CreateGuiObjects_upvr_result2
	setmetatable_result1_upvr.Layout = CreateGuiObjects_upvr_result3
	setmetatable_result1_upvr.MessageObjectLog = {}
	setmetatable_result1_upvr.Name = "MessageLogDisplay"
	setmetatable_result1_upvr.GuiObject.Name = "Frame_"..setmetatable_result1_upvr.Name
	setmetatable_result1_upvr.CurrentChannelName = ""
	setmetatable_result1_upvr.GuiObject:GetPropertyChangedSignal("AbsoluteSize"):Connect(function() -- Line 334
		--[[ Upvalues[1]:
			[1]: setmetatable_result1_upvr (readonly)
		]]
		spawn(function() -- Line 335
			--[[ Upvalues[1]:
				[1]: setmetatable_result1_upvr (copied, readonly)
			]]
			setmetatable_result1_upvr:ReorderAllMessages()
		end)
	end)
	local var48_upvw = true
	setmetatable_result1_upvr.Layout:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(function() -- Line 340
		--[[ Upvalues[2]:
			[1]: setmetatable_result1_upvr (readonly)
			[2]: var48_upvw (read and write)
		]]
		local AbsoluteContentSize = setmetatable_result1_upvr.Layout.AbsoluteContentSize
		setmetatable_result1_upvr.Scroller.CanvasSize = UDim2.new(0, 0, 0, AbsoluteContentSize.Y)
		if var48_upvw then
			setmetatable_result1_upvr.Scroller.CanvasPosition = Vector2.new(0, AbsoluteContentSize.Y - setmetatable_result1_upvr.Scroller.AbsoluteWindowSize.Y)
		end
	end)
	setmetatable_result1_upvr.Scroller:GetPropertyChangedSignal("CanvasPosition"):Connect(function() -- Line 349
		--[[ Upvalues[2]:
			[1]: var48_upvw (read and write)
			[2]: setmetatable_result1_upvr (readonly)
		]]
		var48_upvw = setmetatable_result1_upvr:IsScrolledDown()
	end)
	return setmetatable_result1_upvr
end
return module_upvr_3