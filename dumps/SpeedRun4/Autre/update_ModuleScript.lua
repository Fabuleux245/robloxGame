-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:52:41
-- Luau version 6, Types version 3
-- Time taken: 0.001349 seconds

local function noUpdate_upvr(arg1) -- Line 4, Named "noUpdate"
	return arg1
end
local function call_upvr(arg1, ...) -- Line 8, Named "call"
	if type(arg1) == "function" then
		return arg1(...)
	end
end
local copy_upvr = require(script.Parent.copy)
return function(arg1, arg2, arg3, arg4) -- Line 14, Named "update"
	--[[ Upvalues[3]:
		[1]: copy_upvr (readonly)
		[2]: noUpdate_upvr (readonly)
		[3]: call_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local type_result1_2 = type(arg1)
	local var3
	if type_result1_2 ~= "table" then
		var3 = false
	else
		var3 = true
	end
	assert(var3, "expected a table for first argument, got "..type_result1_2)
	var3 = arg2
	local type_result1 = type(var3)
	if type_result1 == "number" then
		if arg2 % 1 ~= 0 then
		else
		end
	end
	var3 = assert
	var3(true, "expected an integer for second argument, got "..type_result1)
	var3 = copy_upvr(arg1)
	if not arg3 then
	end
	if var3[arg2] ~= nil then
		call_upvr(arg4, true, noUpdate_upvr(var3[arg2], arg2), arg2)
	else
	end
	var3[arg2] = call_upvr(arg4, false, arg2)
	return var3
end