-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:53:10
-- Luau version 6, Types version 3
-- Time taken: 0.000494 seconds

local Parent = script:FindFirstAncestor("AppChat").Parent
local useDispatch_upvr = require(Parent.RoactUtils).Hooks.RoactRodux.useDispatch
local React_upvr = require(Parent.React)
return function(arg1) -- Line 7
	--[[ Upvalues[2]:
		[1]: useDispatch_upvr (readonly)
		[2]: React_upvr (readonly)
	]]
	local var3_result1_upvr = useDispatch_upvr()
	local module = {var3_result1_upvr}
	module[2] = arg1
	return React_upvr.useMemo(function() -- Line 10
		--[[ Upvalues[2]:
			[1]: arg1 (readonly)
			[2]: var3_result1_upvr (readonly)
		]]
		return arg1(var3_result1_upvr)
	end, module)
end