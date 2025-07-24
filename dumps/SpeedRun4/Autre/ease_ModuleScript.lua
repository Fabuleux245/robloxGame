-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:57:49
-- Luau version 6, Types version 3
-- Time taken: 0.005554 seconds

local function _(arg1) -- Line 66, Named "easeOutBounce"
	if arg1 < 0.36363636363636365 then
		return arg1 * 7.5625 * arg1
	end
	if arg1 < 0.7272727272727273 then
		return (arg1 - 0.5454545454545454) * 7.5625 * (arg1 - 0.5454545454545454) + 0.75
	end
	if arg1 < 0.9090909090909091 then
		return (arg1 - 0.8181818181818182) * 7.5625 * (arg1 - 0.8181818181818182) + 0.9375
	end
	return (arg1 - 0.9545454545454546) * 7.5625 * (arg1 - 0.9545454545454546) + 0.984375
end
local function _(arg1, arg2, arg3) -- Line 90, Named "evaluateBezier"
	local var3 = 1 - arg1
	local var4 = arg1 * arg1
	return var3 * var3 * 3 * arg1 * arg2 + var3 * 3 * var4 * arg3 + arg1 * var4
end
local function cubicBezier_upvr(arg1, arg2) -- Line 99, Named "cubicBezier"
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local var9
	if typeof(arg2) ~= "table" then
		var9 = false
	else
		var9 = true
	end
	assert(var9, "Expected values to be a table")
	if #arg2 ~= 4 then
		var9 = false
	else
		var9 = true
	end
	assert(var9, "Expected values to have 4 elements")
	var9 = arg2
	local unpacked_value_1, unpacked_value_2, unpacked_value_3, unpacked_value_4 = table.unpack(var9)
	if 0 <= unpacked_value_1 then
		if unpacked_value_1 > 1 then
		else
		end
	end
	assert(true, "x1 must be between 0 and 1")
	if 0 <= unpacked_value_3 then
		if unpacked_value_3 > 1 then
		else
		end
	end
	assert(true, "x2 must be between 0 and 1")
	if arg1 <= 0 then
		return 0
	end
	if 1 <= arg1 then
		return 1
	end
	for _ = 1, 10 do
		local var14 = (0 + 1) / 2
		local var15 = 1 - var14
		local var16 = var14 * var14
		local var17 = var15 * var15 * 3 * var14 * unpacked_value_1 + var15 * 3 * var16 * unpacked_value_3 + var14 * var16
		if math.abs(var17 - arg1) < 0.0001 then
			local var18 = 1 - var14
			local var19 = var14 * var14
			return var18 * var18 * 3 * var14 * unpacked_value_2 + var18 * 3 * var19 * unpacked_value_4 + var14 * var19
		end
		if var17 < arg1 then
		else
		end
	end
	local var20 = (var14 + var14) / 2
	local var21 = 1 - var20
	local var22 = var20 * var20
	return var21 * var21 * 3 * var20 * unpacked_value_2 + var21 * 3 * var22 * unpacked_value_4 + var20 * var22
end
local tbl_upvr = {
	[Enum.EasingStyle.Linear] = function(arg1, arg2) -- Line 28, Named "linear"
		return arg1
	end;
	[Enum.EasingStyle.Quad] = function(arg1, arg2) -- Line 32, Named "quad"
		return arg1 * arg1
	end;
	[Enum.EasingStyle.Cubic] = function(arg1, arg2) -- Line 36, Named "cubic"
		return arg1 * arg1 * arg1
	end;
	[Enum.EasingStyle.Quart] = function(arg1, arg2) -- Line 40, Named "quart"
		return arg1 * arg1 * arg1 * arg1
	end;
	[Enum.EasingStyle.Quint] = function(arg1, arg2) -- Line 44, Named "quint"
		return arg1 * arg1 * arg1 * arg1 * arg1
	end;
	[Enum.EasingStyle.Exponential] = function(arg1, arg2) -- Line 48, Named "exponential"
		if arg1 == 0 then
			return 0
		end
		return math.pow(2, (arg1 - 1) * 10)
	end;
	[Enum.EasingStyle.Sine] = function(arg1, arg2) -- Line 52, Named "sine"
		return 1 - math.cos(arg1 * math.pi / 2)
	end;
	[Enum.EasingStyle.Back] = function(arg1, arg2) -- Line 60, Named "back"
		return arg1 * 2.70158 * arg1 * arg1 - arg1 * 1.70158 * arg1
	end;
	[Enum.EasingStyle.Bounce] = function(arg1, arg2) -- Line 81, Named "bounce"
		local var1 = 1 - arg1
		local var2
		if var1 < 0.36363636363636365 then
			var2 = var1 * 7.5625 * var1
		elseif var1 < 0.7272727272727273 then
			var2 = (var1 - 0.5454545454545454) * 7.5625 * (var1 - 0.5454545454545454) + 0.75
		elseif var1 < 0.9090909090909091 then
			var2 = (var1 - 0.8181818181818182) * 7.5625 * (var1 - 0.8181818181818182) + 0.9375
		else
			var2 = (var1 - 0.9545454545454546) * 7.5625 * (var1 - 0.9545454545454546) + 0.984375
		end
		return 1 - var2
	end;
	[Enum.EasingStyle.Elastic] = function(arg1, arg2) -- Line 56, Named "elastic"
		if arg1 == 0 then
			return 0
		end
		if arg1 == 1 then
			return 1
		end
		return -math.pow(2, arg1 * 10 - 10) * math.sin((arg1 * 10 - 10.75) * 2.0943951023931953)
	end;
	[Enum.EasingStyle.Circular] = function(arg1, arg2) -- Line 85, Named "circular"
		return -(math.sqrt(1 - arg1 * arg1) - 1)
	end;
}
return function(arg1, arg2) -- Line 162, Named "ease"
	--[[ Upvalues[2]:
		[1]: tbl_upvr (readonly)
		[2]: cubicBezier_upvr (readonly)
	]]
	if arg2 and arg2.duration then
	else
		local var24_upvr
	end
	if arg2 and arg2.easingStyle then
		var24_upvr = arg2.easingStyle
	else
		var24_upvr = Enum.EasingStyle.Linear
	end
	if typeof(var24_upvr) == "EnumItem" or typeof(var24_upvr) == "string" then
	else
	end
	local const_number_upvr = 1
	return {
		step = function(arg1_2, arg2_2) -- Line 173, Named "step"
			--[[ Upvalues[4]:
				[1]: arg1 (readonly)
				[2]: const_number_upvr (readonly)
				[3]: cubicBezier_upvr (readonly)
				[4]: var24_upvr (readonly)
			]]
			-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
			local var26
			if var26 ~= nil then
			else
				var26 = arg1_2.value
			end
			var26 = (arg1_2.elapsed or 0) + arg2_2
			if arg1_2.goal and arg1 ~= arg1_2.goal then
				var26 = 0
			end
			local var28 = true
			if const_number_upvr > var26 then
				if arg1_2.value ~= arg1 then
					var28 = false
				else
					var28 = true
				end
			end
			if var28 then
				var26 = 0
			end
			local module = {}
			module.initialValue = arg1
			module.goal = arg1
			module.value = arg1
			module.elapsed = var26
			module.complete = var28
			return module
		end;
	}
end