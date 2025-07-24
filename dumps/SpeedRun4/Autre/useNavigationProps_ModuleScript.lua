-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:41:00
-- Luau version 6, Types version 3
-- Time taken: 0.000360 seconds

local useNavigation_upvr = require(script:FindFirstAncestor("RobloxAppNavigation").Parent.Navigation).useNavigation
return function(arg1) -- Line 8, Named "useNavigationProps"
	--[[ Upvalues[1]:
		[1]: useNavigation_upvr (readonly)
	]]
	local useNavigation_upvr_result1 = useNavigation_upvr()
	return arg1(useNavigation_upvr_result1.getParam("detail"), useNavigation_upvr_result1.getParam("extraProps", {}), useNavigation_upvr_result1)
end