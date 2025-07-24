-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:55:47
-- Luau version 6, Types version 3
-- Time taken: 0.001716 seconds

local getNumericalApplicationId_upvr = require(script.Parent.getNumericalApplicationId)
local function _(arg1, arg2) -- Line 9, Named "getRolloutEnabledForUser"
	--[[ Upvalues[1]:
		[1]: getNumericalApplicationId_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local arg1_result1 = arg1()
	local var3 = arg2
	local var1_result1 = getNumericalApplicationId_upvr(var3)
	if var1_result1 == nil then
		if 100 > arg1_result1 then
			var3 = false
		else
			var3 = true
		end
		return var3
	end
	local var5 = var1_result1 % 100
	if var5 + 1 > arg1_result1 then
	else
	end
	return true
end
return function(arg1, arg2) -- Line 28
	--[[ Upvalues[1]:
		[1]: getNumericalApplicationId_upvr (readonly)
	]]
	local var1_result1_2 = getNumericalApplicationId_upvr(arg2)
	local var8_upvr
	if var1_result1_2 == nil then
		if 100 > arg1() then
			var8_upvr = false
		else
			var8_upvr = true
		end
	else
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		if var1_result1_2 % 100 + 1 > arg1() then
			var8_upvr = false
		else
			var8_upvr = true
		end
	end
	return function() -- Line 34
		--[[ Upvalues[1]:
			[1]: var8_upvr (readonly)
		]]
		return var8_upvr
	end
end