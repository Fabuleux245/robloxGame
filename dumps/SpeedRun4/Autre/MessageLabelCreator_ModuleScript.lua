-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:57:42
-- Luau version 6, Types version 3
-- Time taken: 0.004135 seconds

local module = {}
local Chat_upvr = game:GetService("Chat")
local MessageCreatorModules_upvr = Chat_upvr:WaitForChild("ClientChatModules"):WaitForChild("MessageCreatorModules")
local module_3_upvr = require(MessageCreatorModules_upvr:WaitForChild("Util"))
local tbl_upvr = {}
tbl_upvr.__index = tbl_upvr
function mergeProps(arg1, arg2) -- Line 26
	if not arg1 then
	else
		for i_3, v in pairs(arg1) do
			arg2[i_3] = v
		end
	end
end
function ReturnToObjectPoolRecursive(arg1, arg2) -- Line 33
	local children_2 = arg1:GetChildren()
	for i = 1, #children_2 do
		ReturnToObjectPoolRecursive(children_2[i], arg2)
	end
	arg1.Parent = nil
	arg2:ReturnInstance(arg1)
end
function GetMessageCreators() -- Line 42
	--[[ Upvalues[2]:
		[1]: MessageCreatorModules_upvr (readonly)
		[2]: module_3_upvr (readonly)
	]]
	local children = MessageCreatorModules_upvr:GetChildren()
	for i_2 = 1, #children do
		if children[i_2]:IsA("ModuleScript") and children[i_2].Name ~= "Util" then
			local any = require(children[i_2])
			;({})[any[module_3_upvr.KEY_MESSAGE_TYPE]] = any[module_3_upvr.KEY_CREATOR_FUNCTION]
		end
	end
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	return {}
end
function tbl_upvr.WrapIntoMessageObject(arg1, arg2, arg3) -- Line 56
	--[[ Upvalues[1]:
		[1]: module_3_upvr (readonly)
	]]
	local var19
	if module_3_upvr.KEY_BASE_MESSAGE then
		var19 = arg3[module_3_upvr.KEY_BASE_MESSAGE]
	end
	local module_4 = {
		ID = arg2.ID;
		BaseFrame = arg3[module_3_upvr.KEY_BASE_FRAME];
		BaseMessage = var19;
	}
	local var22 = arg3[module_3_upvr.KEY_UPDATE_TEXT_FUNC]
	if not var22 then
		function var22() -- Line 73
			warn("NO MESSAGE RESIZE FUNCTION")
		end
	end
	module_4.UpdateTextFunction = var22
	module_4.GetHeightFunction = arg3[module_3_upvr.KEY_GET_HEIGHT]
	module_4.FadeInFunction = arg3[module_3_upvr.KEY_FADE_IN]
	module_4.FadeOutFunction = arg3[module_3_upvr.KEY_FADE_OUT]
	module_4.UpdateAnimFunction = arg3[module_3_upvr.KEY_UPDATE_ANIMATION]
	module_4.ObjectPool = arg1.ObjectPool
	module_4.Destroyed = false
	function module_4.Destroy(arg1_2) -- Line 81
		ReturnToObjectPoolRecursive(arg1_2.BaseFrame, arg1_2.ObjectPool)
		arg1_2.Destroyed = true
	end
	return module_4
end
function tbl_upvr.CreateMessageLabel_Chat(arg1, arg2, arg3, arg4) -- Line 89
	--[[ Upvalues[1]:
		[1]: Chat_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	arg2.Channel = arg3
	local var23_upvw
	pcall(function() -- Line 92
		--[[ Upvalues[3]:
			[1]: var23_upvw (read and write)
			[2]: Chat_upvr (copied, readonly)
			[3]: arg2 (readonly)
		]]
		var23_upvw = Chat_upvr:InvokeChatCallback(Enum.ChatCallbackType.OnClientFormattingMessage, arg2)
	end)
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [13] 11. Error Block 2 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [13] 11. Error Block 2 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [15] 12. Error Block 3 start (CF ANALYSIS FAILED)
	arg2.ExtraData = {}
	mergeProps(var23_upvw, arg2.ExtraData)
	-- KONSTANTERROR: [15] 12. Error Block 3 end (CF ANALYSIS FAILED)
end
function tbl_upvr.CreateMessageLabel(arg1, arg2, arg3) -- Line 114
	--[[ Upvalues[1]:
		[1]: Chat_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	arg2.Channel = arg3
	local var25_upvw
	pcall(function() -- Line 118
		--[[ Upvalues[3]:
			[1]: var25_upvw (read and write)
			[2]: Chat_upvr (copied, readonly)
			[3]: arg2 (readonly)
		]]
		var25_upvw = Chat_upvr:InvokeChatCallback(Enum.ChatCallbackType.OnClientFormattingMessage, arg2)
	end)
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [13] 11. Error Block 2 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [13] 11. Error Block 2 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [15] 12. Error Block 3 start (CF ANALYSIS FAILED)
	arg2.ExtraData = {}
	mergeProps(var25_upvw, arg2.ExtraData)
	-- KONSTANTERROR: [15] 12. Error Block 3 end (CF ANALYSIS FAILED)
end
local module_2_upvr = require(script.Parent:WaitForChild("ObjectPool"))
function module.new() -- Line 143
	--[[ Upvalues[3]:
		[1]: tbl_upvr (readonly)
		[2]: module_2_upvr (readonly)
		[3]: module_3_upvr (readonly)
	]]
	local setmetatable_result1 = setmetatable({}, tbl_upvr)
	setmetatable_result1.ObjectPool = module_2_upvr.new(50)
	setmetatable_result1.MessageCreators = GetMessageCreators()
	setmetatable_result1.DefaultCreatorType = module_3_upvr.DEFAULT_MESSAGE_CREATOR
	module_3_upvr:RegisterObjectPool(setmetatable_result1.ObjectPool)
	return setmetatable_result1
end
function module.GetStringTextBounds(arg1, arg2, arg3, arg4, arg5) -- Line 155
	--[[ Upvalues[1]:
		[1]: module_3_upvr (readonly)
	]]
	return module_3_upvr:GetStringTextBounds(arg2, arg3, arg4, arg5)
end
return module