-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:33:46
-- Luau version 6, Types version 3
-- Time taken: 0.001460 seconds

local UserLib = script:FindFirstAncestor("UserLib")
local User_upvr = require(UserLib.Models.User)
local AddUsers_upvr = require(UserLib.Actions.AddUsers)
local SetFriendCount_upvr = require(UserLib.Parent.LegacyFriendsRodux).Actions.SetFriendCount
return function(arg1) -- Line 9
	--[[ Upvalues[3]:
		[1]: User_upvr (readonly)
		[2]: AddUsers_upvr (readonly)
		[3]: SetFriendCount_upvr (readonly)
	]]
	return function(arg1_2) -- Line 10
		--[[ Upvalues[4]:
			[1]: arg1 (readonly)
			[2]: User_upvr (copied, readonly)
			[3]: AddUsers_upvr (copied, readonly)
			[4]: SetFriendCount_upvr (copied, readonly)
		]]
		-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
		local pairs_result1, pairs_result2, pairs_result3 = pairs(arg1)
		local _
		-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [60] 48. Error Block 30 start (CF ANALYSIS FAILED)
		-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [60.8]
		if nil then
			-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [61.11]
			-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [62.9]
			-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [62.7]
			;({})[nil] = nil
		end
		-- KONSTANTERROR: [60] 48. Error Block 30 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [8] 7. Error Block 38 start (CF ANALYSIS FAILED)
		-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [63.14]
		if nil ~= "boolean" then
		else
		end
		-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [63.12]
		-- KONSTANTERROR: [8] 7. Error Block 38 end (CF ANALYSIS FAILED)
	end
end