-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:52:11
-- Luau version 6, Types version 3
-- Time taken: 0.001513 seconds

local AppChat = script:FindFirstAncestor("AppChat")
local Parent = AppChat.Parent
local Promise_upvr = require(Parent.Promise)
local AppChatNetworking_upvr = require(Parent.AppChatNetworking)
local any_new_result1_upvr = require(AppChat.Logger):new(script.Name)
return function(arg1) -- Line 13
	--[[ Upvalues[3]:
		[1]: Promise_upvr (readonly)
		[2]: AppChatNetworking_upvr (readonly)
		[3]: any_new_result1_upvr (readonly)
	]]
	return function(arg1_2) -- Line 14
		--[[ Upvalues[4]:
			[1]: Promise_upvr (copied, readonly)
			[2]: AppChatNetworking_upvr (copied, readonly)
			[3]: any_new_result1_upvr (copied, readonly)
			[4]: arg1 (readonly)
		]]
		return Promise_upvr.all({arg1_2:dispatch(AppChatNetworking_upvr.rodux.GetUnfilteredThreadEligibility.API()):catch(function(arg1_3) -- Line 16
			--[[ Upvalues[1]:
				[1]: any_new_result1_upvr (copied, readonly)
			]]
			any_new_result1_upvr:warning("Error in GetUnfilteredThreadsEligibility request. Error: {}", tostring(arg1_3))
		end), arg1_2:dispatch(AppChatNetworking_upvr.rodux.GetChatLandingModal.API(arg1)):catch(function(arg1_4) -- Line 19
			--[[ Upvalues[1]:
				[1]: any_new_result1_upvr (copied, readonly)
			]]
			any_new_result1_upvr:warning("Error in GetChatLandingModal request. Error: {}", tostring(arg1_4))
		end)}):andThen(function(arg1_5) -- Line 22
			return {
				GetUnfilteredThreadsEligibility = arg1_5[1];
				GetChatLandingModal = arg1_5[2];
			}
		end)
	end
end