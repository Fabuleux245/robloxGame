-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:52:19
-- Luau version 6, Types version 3
-- Time taken: 0.001859 seconds

local AppChat = script:FindFirstAncestor("AppChat")
local Parent = AppChat.Parent
local RequestTimeDiag_upvr = require(Parent.Analytics).RequestTimeDiag
local Constants_upvr = require(AppChat.Constants)
local StatusCodes_upvr = require(Parent.Http).StatusCodes
local ResponseStatus_upvr = require(Parent.AppChatNetworking).Constants.ResponseStatus
local Promise_upvr = require(Parent.Promise)
return function(arg1, arg2) -- Line 11
	--[[ Upvalues[5]:
		[1]: RequestTimeDiag_upvr (readonly)
		[2]: Constants_upvr (readonly)
		[3]: StatusCodes_upvr (readonly)
		[4]: ResponseStatus_upvr (readonly)
		[5]: Promise_upvr (readonly)
	]]
	local any_new_result1_upvr = RequestTimeDiag_upvr:new(Constants_upvr.PerformanceMeasurement.LUA_CHAT_SEND_MESSAGE)
	return function(arg1_2) -- Line 14
		--[[ Upvalues[5]:
			[1]: arg1 (readonly)
			[2]: any_new_result1_upvr (readonly)
			[3]: StatusCodes_upvr (copied, readonly)
			[4]: ResponseStatus_upvr (copied, readonly)
			[5]: Promise_upvr (copied, readonly)
		]]
		arg1:onBeforeSendingMessage(arg1_2)
		return arg1:sendMessage(arg1_2):andThen(function(arg1_3) -- Line 19
			--[[ Upvalues[4]:
				[1]: any_new_result1_upvr (copied, readonly)
				[2]: StatusCodes_upvr (copied, readonly)
				[3]: ResponseStatus_upvr (copied, readonly)
				[4]: Promise_upvr (copied, readonly)
			]]
			any_new_result1_upvr:report()
			if not arg1_3 or not arg1_3.responseBody or arg1_3.responseCode ~= StatusCodes_upvr.OK or not arg1_3.responseBody.messages or #arg1_3.responseBody.messages == 0 or arg1_3.responseBody.messages[1].status and arg1_3.responseBody.messages[1].status ~= "" and arg1_3.responseBody.messages[1].status ~= ResponseStatus_upvr.SUCCESS then
				return Promise_upvr.reject(arg1_3)
			end
			return arg1_3
		end):andThen(function(arg1_4) -- Line 40
			--[[ Upvalues[2]:
				[1]: arg1 (copied, readonly)
				[2]: arg1_2 (readonly)
			]]
			return arg1:onSuccess(arg1_2, arg1_4)
		end):catch(function(arg1_5) -- Line 43
			--[[ Upvalues[2]:
				[1]: arg1 (copied, readonly)
				[2]: arg1_2 (readonly)
			]]
			return arg1:onFailure(arg1_2, arg1_5)
		end)
	end
end