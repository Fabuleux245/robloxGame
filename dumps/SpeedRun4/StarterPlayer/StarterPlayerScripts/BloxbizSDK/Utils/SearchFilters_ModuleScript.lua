-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:40:16
-- Luau version 6, Types version 3
-- Time taken: 0.000817 seconds

local tbl_upvr = {
	User = 1;
	Group = 2;
}
local module = {}
local Parent_upvr = require(script.Parent)
function module.getCreatorFilter(arg1) -- Line 12
	--[[ Upvalues[2]:
		[1]: Parent_upvr (readonly)
		[2]: tbl_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 26 start (CF ANALYSIS FAILED)
	if not arg1 then
		return arg1, nil
	end
	local var4_upvw = ""
	local function _(arg1_2, arg2) -- Line 20, Named "advance"
		--[[ Upvalues[2]:
			[1]: arg1 (read and write)
			[2]: var4_upvw (read and write)
		]]
		local any_sub_result1 = arg1:sub(1, arg1_2)
		if arg2 then
			var4_upvw = var4_upvw..any_sub_result1
		end
		arg1 = arg1:sub(arg1_2 + 1)
		return any_sub_result1
	end
	-- KONSTANTERROR: [0] 1. Error Block 26 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [148] 118. Error Block 19 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [148] 118. Error Block 19 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [11] 11. Error Block 4 start (CF ANALYSIS FAILED)
	-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [148.5]
	-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [148.1531]
	-- KONSTANTERROR: [11] 11. Error Block 4 end (CF ANALYSIS FAILED)
end
return module