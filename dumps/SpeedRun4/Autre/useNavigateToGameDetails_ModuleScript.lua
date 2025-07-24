-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:32:12
-- Luau version 6, Types version 3
-- Time taken: 0.000580 seconds

local Parent = script:FindFirstAncestor("GameCollections").Parent
local useDispatch_upvr = require(Parent.RoactUtils).Hooks.RoactRodux.useDispatch
local useNavigation_upvr = require(Parent.Navigation).useNavigation
local React_upvr = require(Parent.React)
local OpenGameDetails_upvr = require(Parent.GameDetail).OpenGameDetails
return function() -- Line 8, Named "useNavigateToGameDetails"
	--[[ Upvalues[4]:
		[1]: useDispatch_upvr (readonly)
		[2]: useNavigation_upvr (readonly)
		[3]: React_upvr (readonly)
		[4]: OpenGameDetails_upvr (readonly)
	]]
	local var2_result1_upvr = useDispatch_upvr()
	local useNavigation_upvr_result1_upvr = useNavigation_upvr()
	return React_upvr.useCallback(function(arg1, arg2) -- Line 12
		--[[ Upvalues[3]:
			[1]: var2_result1_upvr (readonly)
			[2]: OpenGameDetails_upvr (copied, readonly)
			[3]: useNavigation_upvr_result1_upvr (readonly)
		]]
		var2_result1_upvr(OpenGameDetails_upvr(arg1, useNavigation_upvr_result1_upvr, arg2))
	end, {var2_result1_upvr, useNavigation_upvr_result1_upvr})
end