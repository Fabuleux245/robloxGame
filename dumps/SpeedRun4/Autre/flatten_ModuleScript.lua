-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:52:29
-- Luau version 6, Types version 3
-- Time taken: 0.001040 seconds

local function flatten_upvr(arg1) -- Line 2, Named "flatten"
	--[[ Upvalues[1]:
		[1]: flatten_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local type_result1 = type(arg1)
	local var10
	if type_result1 ~= "table" then
		var10 = false
	else
		var10 = true
	end
	assert(var10, "expected a table for first argument, got "..type_result1)
	var10 = 1
	for i = 1, #arg1 do
		if type(arg1[i]) == "table" then
			local flatten_result1 = flatten_upvr(arg1[i])
			for i_2 = 1, #flatten_result1 do
				({})[var10] = flatten_result1[i_2]
				var10 += 1
				local var12
			end
		else
			var12 = arg1[i]
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect
			;({})[var10] = var12
			var10 += 1
		end
	end
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	return {}
end
return flatten_upvr