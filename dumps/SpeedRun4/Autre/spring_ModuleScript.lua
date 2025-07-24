-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:57:50
-- Luau version 6, Types version 3
-- Time taken: 0.004802 seconds

local sqrt_upvr = math.sqrt
local function _(arg1, arg2, arg3) -- Line 56, Named "translateParameters"
	--[[ Upvalues[1]:
		[1]: sqrt_upvr (readonly)
	]]
	return (arg1) / (sqrt_upvr(arg3 * arg2) * 2), sqrt_upvr(arg2 / arg3) / 2 / math.pi
end
local assign_upvr = require(script.Parent.Parent.Collections).Object.assign
local exp_upvr = math.exp
local cos_upvr = math.cos
local sin_upvr = math.sin
local abs_upvr = math.abs
return function(arg1, arg2) -- Line 62, Named "spring"
	--[[ Upvalues[6]:
		[1]: assign_upvr (readonly)
		[2]: sqrt_upvr (readonly)
		[3]: exp_upvr (readonly)
		[4]: cos_upvr (readonly)
		[5]: sin_upvr (readonly)
		[6]: abs_upvr (readonly)
	]]
	local tbl = {
		dampingRatio = 1;
		frequency = 1;
		restingVelocityLimit = 0.001;
		restingPositionLimit = 0.01;
	}
	if arg2 ~= nil then
		assign_upvr(tbl, arg2)
	end
	local var8_upvr
	local var9
	local restingVelocityLimit_upvr = tbl.restingVelocityLimit
	local restingPositionLimit_upvr = tbl.restingPositionLimit
	local damping = tbl.damping
	local stiffness = tbl.stiffness
	local mass = tbl.mass
	local var15
	if typeof(damping) == "number" and typeof(stiffness) == "number" and typeof(mass) == "number" then
		var15 = sqrt_upvr(mass * stiffness) * 2
		var15 = sqrt_upvr(stiffness / mass) / 2 / math.pi
		var8_upvr = damping / var15
		var9 = var15
	else
		var8_upvr = tbl.dampingRatio
		var9 = tbl.frequency
	end
	if 0 > restingVelocityLimit_upvr then
		var15 = false
	else
		var15 = true
	end
	assert(var15, "Expected restingVelocityLimit >= 0")
	if 0 > restingPositionLimit_upvr then
		var15 = false
	else
		var15 = true
	end
	assert(var15, "Expected restingPositionLimit >= 0")
	local var16_upvr = var9 * 2 * math.pi
	var15 = {}
	function var15.step(arg1_2, arg2_2) -- Line 99
		--[[ Upvalues[11]:
			[1]: arg1 (readonly)
			[2]: var8_upvr (readonly)
			[3]: var16_upvr (readonly)
			[4]: exp_upvr (copied, readonly)
			[5]: sqrt_upvr (copied, readonly)
			[6]: cos_upvr (copied, readonly)
			[7]: sin_upvr (copied, readonly)
			[8]: arg1 (readonly)
			[9]: abs_upvr (copied, readonly)
			[10]: restingVelocityLimit_upvr (readonly)
			[11]: restingPositionLimit_upvr (readonly)
		]]
		-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
		local var17 = arg1_2.velocity or 0
		local var18 = arg1_2.value - arg1
		local exp_upvr_result1 = exp_upvr(-arg2_2 * var8_upvr * var16_upvr)
		local var20
		if var8_upvr == 1 then
			var20 = (var17 * arg2_2 + var18 * (var16_upvr * arg2_2 + 1)) * exp_upvr_result1 + arg1
		elseif var8_upvr < 1 then
			local sqrt_upvr_result1_2 = sqrt_upvr(1 - var8_upvr * var8_upvr)
			local var23
			if 0.0001 < sqrt_upvr_result1_2 then
				var23 = sin_upvr(var16_upvr * sqrt_upvr_result1_2 * arg2_2) / sqrt_upvr_result1_2
			else
				local var24 = arg2_2 * var16_upvr
				var23 = var24 + (((var24 * var24) * (sqrt_upvr_result1_2 * sqrt_upvr_result1_2)) * (sqrt_upvr_result1_2 * sqrt_upvr_result1_2) / 20 - sqrt_upvr_result1_2 * sqrt_upvr_result1_2) * (var24 * var24 * var24) / 6
			end
			var24 = nil
			local var25 = var24
			if 0.0001 < var16_upvr * sqrt_upvr_result1_2 then
				-- KONSTANTERROR: Expression was reused, decompilation is incorrect
				var25 = (sin_upvr(var16_upvr * sqrt_upvr_result1_2 * arg2_2)) / (var16_upvr * sqrt_upvr_result1_2)
			else
				local var26 = var16_upvr * sqrt_upvr_result1_2
				var25 = arg2_2 + (((arg2_2 * arg2_2) * (var26 * var26)) * (var26 * var26) / 20 - var26 * var26) * (arg2_2 * arg2_2 * arg2_2) / 6
			end
			var20 = (var18 * (cos_upvr(var16_upvr * sqrt_upvr_result1_2 * arg2_2) + var8_upvr * var23) + var17 * var25) * exp_upvr_result1 + arg1
		else
			local sqrt_upvr_result1 = sqrt_upvr(var8_upvr * var8_upvr - 1)
			local var28 = -var16_upvr * (var8_upvr - sqrt_upvr_result1)
			local var29 = -var16_upvr * (var8_upvr + sqrt_upvr_result1)
			local var30 = (var17 - var28 * var18) / (2 * var16_upvr * sqrt_upvr_result1)
			local var31 = (var18 - var30) * exp_upvr(var28 * arg2_2)
			local var32 = var30 * exp_upvr(var29 * arg2_2)
			var20 = var31 + var32 + arg1
		end
		local var33 = false
		if abs_upvr(var28 * var31 + var29 * var32) < restingVelocityLimit_upvr then
			if abs_upvr(var20 - arg1) >= restingPositionLimit_upvr then
				var33 = false
			else
				var33 = true
			end
		end
		if var33 then
			var20 = arg1
		end
		return {
			value = var20;
			velocity = 0;
			complete = var33;
		}
	end
	return var15
end