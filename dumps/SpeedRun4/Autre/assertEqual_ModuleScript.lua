-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:46:10
-- Luau version 6, Types version 3
-- Time taken: 0.000785 seconds

local Parent_upvr = script.Parent
return function(arg1, arg2, arg3) -- Line 12, Named "assertEqual"
	--[[ Upvalues[1]:
		[1]: Parent_upvr (readonly)
	]]
	if arg1 ~= arg2 then
		local var2 = arg3
		if not var2 then
			var2 = `Left "{arg1}" does not equal right "{arg2}"`
		end
		local tbl = {}
		tbl.left = arg1
		tbl.right = arg2
		require(Parent_upvr.Error).new("AssertError", var2):throw(tbl)
	end
end