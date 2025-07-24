-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:13:47
-- Luau version 6, Types version 3
-- Time taken: 0.001209 seconds

local function defaultCompareFn_upvr(arg1, arg2) -- Line 1, Named "defaultCompareFn"
	local var1
	if arg1.value >= arg2.value then
		var1 = false
	else
		var1 = true
	end
	return var1
end
return function(arg1, arg2) -- Line 5, Named "sortTableByValue"
	--[[ Upvalues[1]:
		[1]: defaultCompareFn_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local module = {}
	if arg2 then
	else
	end
	for i, v in arg1 do
		table.insert(module, {
			key = i;
			value = v;
		})
	end
	table.sort(module, defaultCompareFn_upvr)
	return module
end