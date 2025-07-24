-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:52:56
-- Luau version 6, Types version 3
-- Time taken: 0.001212 seconds

local AppChat = script:FindFirstAncestor("AppChat")
local Parent = AppChat.Parent
local useGetConversationFromId_upvr = require(AppChat.Hooks.useGetConversationFromId)
local useGetOneToOneFriendIdFromConversationId_upvr = require(AppChat.Hooks.useGetOneToOneFriendIdFromConversationId)
local React_upvr = require(Parent.React)
local Cryo_upvr = require(Parent.Cryo)
return function(arg1, arg2) -- Line 25, Named "useCallbackWithDynamicConversationId"
	--[[ Upvalues[4]:
		[1]: useGetConversationFromId_upvr (readonly)
		[2]: useGetOneToOneFriendIdFromConversationId_upvr (readonly)
		[3]: React_upvr (readonly)
		[4]: Cryo_upvr (readonly)
	]]
	local useGetConversationFromId_upvr_result1 = useGetConversationFromId_upvr(arg2)
	if not useGetConversationFromId_upvr_result1 then
		useGetConversationFromId_upvr_result1 = {}
	end
	local var4_result1_upvr = useGetOneToOneFriendIdFromConversationId_upvr(arg2)
	local var9_upvr = false
	if useGetConversationFromId_upvr_result1.source == "friends" then
		var9_upvr = var4_result1_upvr
	end
	local module = {}
	module[1] = arg1
	module[2] = arg2
	module[3] = var9_upvr
	module[4] = var4_result1_upvr
	return React_upvr.useCallback(function(arg1_2) -- Line 30
		--[[ Upvalues[5]:
			[1]: arg1 (readonly)
			[2]: Cryo_upvr (copied, readonly)
			[3]: var9_upvr (readonly)
			[4]: arg2 (readonly)
			[5]: var4_result1_upvr (readonly)
		]]
		-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
		local var11
		if not arg1_2 then
		end
		local module_2 = {}
		if not var9_upvr then
			var11 = arg2
		else
			var11 = nil
		end
		module_2.conversationId = var11
		if var9_upvr then
			var11 = var4_result1_upvr
		else
			var11 = nil
		end
		module_2.friendId = var11
		return arg1(Cryo_upvr.Dictionary.union({}, module_2))
	end, module)
end