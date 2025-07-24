-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:52:29
-- Luau version 6, Types version 3
-- Time taken: 0.001284 seconds

local function flatMap_upvr(arg1, arg2) -- Line 2, Named "flatMap"
	--[[ Upvalues[1]:
		[1]: flatMap_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local type_result1_2 = type(arg1)
	local var10
	if type_result1_2 ~= "table" then
		var10 = false
	else
		var10 = true
	end
	assert(var10, "expected a table for first argument, got "..type_result1_2)
	var10 = arg2
	local type_result1 = type(var10)
	if type_result1 ~= "function" then
	else
	end
	var10 = assert
	var10(true, "expected a function for second argument, got "..type_result1)
	var10 = {}
	local var12 = 1
	for i = 1, #arg1 do
		if type(arg1[i]) == "table" then
			local flatMap_result1 = flatMap_upvr(arg1[i], arg2)
			for i_2 = 1, #flatMap_result1 do
				var10[var12] = flatMap_result1[i_2]
				local var14
			end
		else
			var14 = arg2(arg1[i], i)
			local var15 = var14
			if var15 ~= nil then
				var10[var12 + 1] = var15
				-- KONSTANTERROR: Expression was reused, decompilation is incorrect
			end
		end
	end
	return var10
end
return flatMap_upvr