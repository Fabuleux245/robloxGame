-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:44:00
-- Luau version 6, Types version 3
-- Time taken: 0.000745 seconds

local module = {}
local React = require(script.Parent.Parent.Parent.Parent.React)
local tbl_upvr = {
	__value = "nil placeholder";
}
local useState_upvr = React.useState
local useEffect_upvr = React.useEffect
function module.useReactiveVar(arg1) -- Line 25
	--[[ Upvalues[3]:
		[1]: useState_upvr (readonly)
		[2]: useEffect_upvr (readonly)
		[3]: tbl_upvr (readonly)
	]]
	local arg1_result1_2_upvr = arg1()
	local useState_upvr_result1, useState_upvr_result2_upvr = useState_upvr(arg1_result1_2_upvr)
	local tbl = {}
	local var13 = arg1_result1_2_upvr
	if not var13 then
		var13 = tbl_upvr
	end
	tbl[1] = var13
	useEffect_upvr(function() -- Line 34
		--[[ Upvalues[3]:
			[1]: arg1 (readonly)
			[2]: arg1_result1_2_upvr (readonly)
			[3]: useState_upvr_result2_upvr (readonly)
		]]
		local arg1_result1 = arg1()
		if arg1_result1_2_upvr ~= arg1_result1 then
			useState_upvr_result2_upvr(arg1_result1)
		else
			return arg1:onNextChange(useState_upvr_result2_upvr)
		end
	end, tbl)
	return arg1_result1_2_upvr
end
return module