-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:49:42
-- Luau version 6, Types version 3
-- Time taken: 0.002461 seconds

local AppChat = script:FindFirstAncestor("AppChat")
local Parent = AppChat.Parent
game:DefineFastFlag("AppChatChannelsGetNewerMessagesWithPrevCursor", false)
local Constants_upvr = require(AppChat.Constants)
local reportToDiagByCountryCode_upvr = require(AppChat.Utils.reportToDiagByCountryCode)
local function _(arg1) -- Line 13
	--[[ Upvalues[2]:
		[1]: reportToDiagByCountryCode_upvr (readonly)
		[2]: Constants_upvr (readonly)
	]]
	reportToDiagByCountryCode_upvr(Constants_upvr.PerformanceMeasurement.LUA_CHAT_RECEIVE_MESSAGE, "MessageReceivedTime", tick() - arg1)
end
local any_new_result1_upvr = require(AppChat.Logger):new(script.Name)
local AppChatNetworking_upvr = require(Parent.AppChatNetworking)
local Promise_upvr = require(Parent.Promise)
return function(arg1, arg2, arg3) -- Line 22
	--[[ Upvalues[5]:
		[1]: any_new_result1_upvr (readonly)
		[2]: AppChatNetworking_upvr (readonly)
		[3]: reportToDiagByCountryCode_upvr (readonly)
		[4]: Constants_upvr (readonly)
		[5]: Promise_upvr (readonly)
	]]
	any_new_result1_upvr:info("Getting new messages for {}", arg1)
	return function(arg1_2) -- Line 24
		--[[ Upvalues[7]:
			[1]: arg1 (readonly)
			[2]: AppChatNetworking_upvr (copied, readonly)
			[3]: any_new_result1_upvr (copied, readonly)
			[4]: arg3 (readonly)
			[5]: reportToDiagByCountryCode_upvr (copied, readonly)
			[6]: Constants_upvr (copied, readonly)
			[7]: Promise_upvr (copied, readonly)
		]]
		local module = {}
		local var12 = arg1_2:getState().ChatAppReducer.Conversations[arg1]
		local var13
		if not var12 then
			var13 = table.insert
			var13(module, arg1_2:dispatch(AppChatNetworking_upvr.rodux.GetConversationDetails.API(arg1)):catch(function(arg1_3) -- Line 31
				--[[ Upvalues[1]:
					[1]: any_new_result1_upvr (copied, readonly)
				]]
				any_new_result1_upvr:error(`AppChatNetworking failure in GetConversationDetails: {tostring(arg1_3)}`)
			end))
		end
		if game:GetFastFlag("AppChatChannelsGetNewerMessagesWithPrevCursor") then
			local function INLINED() -- Internal function, doesn't exist in bytecode
				var13 = var12.previousCursor
				return var13
			end
			if not var12 or not INLINED() then
				var13 = nil
				-- KONSTANTWARNING: GOTO [48] #36
			end
		else
			var13 = nil
		end
		table.insert(module, arg1_2:dispatch(AppChatNetworking_upvr.rodux.GetNewerMessages.API(arg1, var13)):andThen(function() -- Line 46
			--[[ Upvalues[3]:
				[1]: arg3 (copied, readonly)
				[2]: reportToDiagByCountryCode_upvr (copied, readonly)
				[3]: Constants_upvr (copied, readonly)
			]]
			reportToDiagByCountryCode_upvr(Constants_upvr.PerformanceMeasurement.LUA_CHAT_RECEIVE_MESSAGE, "MessageReceivedTime", tick() - arg3)
		end):catch(function(arg1_4) -- Line 49
			--[[ Upvalues[1]:
				[1]: any_new_result1_upvr (copied, readonly)
			]]
			any_new_result1_upvr:error(`AppChatNetworking failure in GetNewerMessages: {tostring(arg1_4)}`)
		end))
		return Promise_upvr.allSettled(module)
	end
end