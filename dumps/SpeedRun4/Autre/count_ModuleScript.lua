-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:52:24
-- Luau version 6, Types version 3
-- Time taken: 0.001383 seconds

local function alwaysTrue_upvr() -- Line 2, Named "alwaysTrue"
	return true
end
return function(arg1, arg2) -- Line 6, Named "count"
	--[[ Upvalues[1]:
		[1]: alwaysTrue_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local type_result1 = type(arg1)
	local var6
	if type_result1 ~= "table" then
		var6 = false
	else
		var6 = true
	end
	assert(var6, "expected a table for first argument, got "..type_result1)
	if not arg2 then
	end
	var6 = #arg1
	for i = 1, var6 do
		if alwaysTrue_upvr(arg1[i], i) then
		end
	end
	return 0 + 1
end