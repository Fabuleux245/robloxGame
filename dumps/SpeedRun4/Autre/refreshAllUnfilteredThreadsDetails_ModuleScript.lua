-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:52:17
-- Luau version 6, Types version 3
-- Time taken: 0.001615 seconds

local AppChat = script:FindFirstAncestor("AppChat")
local Parent = AppChat.Parent
local getDeepValue_upvr = require(AppChat.Utils.getDeepValue)
local Cryo_upvr = require(Parent.Cryo)
local Promise_upvr = require(Parent.Promise)
local game_DefineFastInt_result1_upvr = game:DefineFastInt("UnfilteredThreadsPvDelayMs", 0)
local multiGetConversationDetails_upvr = require(AppChat.Conversations.Thunks.multiGetConversationDetails)
local any_new_result1_upvr = require(AppChat.Logger):new(script.Name)
local getUnfilteredThreadsEligibility_upvr = require(script.Parent.getUnfilteredThreadsEligibility)
local AppChatNetworking_upvr = require(Parent.AppChatNetworking)
return function(arg1, arg2) -- Line 20
	--[[ Upvalues[8]:
		[1]: getDeepValue_upvr (readonly)
		[2]: Cryo_upvr (readonly)
		[3]: Promise_upvr (readonly)
		[4]: game_DefineFastInt_result1_upvr (readonly)
		[5]: multiGetConversationDetails_upvr (readonly)
		[6]: any_new_result1_upvr (readonly)
		[7]: getUnfilteredThreadsEligibility_upvr (readonly)
		[8]: AppChatNetworking_upvr (readonly)
	]]
	return function(arg1_2) -- Line 21
		--[[ Upvalues[10]:
			[1]: getDeepValue_upvr (copied, readonly)
			[2]: Cryo_upvr (copied, readonly)
			[3]: Promise_upvr (copied, readonly)
			[4]: game_DefineFastInt_result1_upvr (copied, readonly)
			[5]: multiGetConversationDetails_upvr (copied, readonly)
			[6]: any_new_result1_upvr (copied, readonly)
			[7]: getUnfilteredThreadsEligibility_upvr (copied, readonly)
			[8]: arg2 (readonly)
			[9]: arg1 (readonly)
			[10]: AppChatNetworking_upvr (copied, readonly)
		]]
		local getDeepValue_upvr_result1 = getDeepValue_upvr(arg1_2:getState(), "ChatAppReducer.Conversations")
		if not getDeepValue_upvr_result1 then
			getDeepValue_upvr_result1 = {}
		end
		local any_filterMap_result1_upvr = Cryo_upvr.List.filterMap(Cryo_upvr.Dictionary.values(getDeepValue_upvr_result1), function(arg1_3) -- Line 24
			if arg1_3 and arg1_3.id and arg1_3.source ~= "friends" then
				return arg1_3.id
			end
			return nil
		end)
		return Promise_upvr.delay(game_DefineFastInt_result1_upvr / 1000):andThen(function() -- Line 33
			--[[ Upvalues[8]:
				[1]: any_filterMap_result1_upvr (readonly)
				[2]: arg1_2 (readonly)
				[3]: multiGetConversationDetails_upvr (copied, readonly)
				[4]: any_new_result1_upvr (copied, readonly)
				[5]: getUnfilteredThreadsEligibility_upvr (copied, readonly)
				[6]: arg2 (copied, readonly)
				[7]: arg1 (copied, readonly)
				[8]: AppChatNetworking_upvr (copied, readonly)
			]]
			if any_filterMap_result1_upvr then
				arg1_2:dispatch(multiGetConversationDetails_upvr(any_filterMap_result1_upvr)):catch(function(arg1_4) -- Line 35
					--[[ Upvalues[1]:
						[1]: any_new_result1_upvr (copied, readonly)
					]]
					any_new_result1_upvr:warning("Error in multiGetConversationDetails thunk. Error: {}", tostring(arg1_4))
				end)
			end
			arg1_2:dispatch(getUnfilteredThreadsEligibility_upvr(arg2))
			if arg1 then
				arg1_2:dispatch(AppChatNetworking_upvr.rodux.GetConversationTopModal.API(arg1, arg2)):catch(function(arg1_5) -- Line 45
					--[[ Upvalues[1]:
						[1]: any_new_result1_upvr (copied, readonly)
					]]
					any_new_result1_upvr:warning("Error in refreshAllUnfilteredThreadsDetails->GetConversationTopModal. Error: {}", tostring(arg1_5))
				end)
			end
		end)
	end
end