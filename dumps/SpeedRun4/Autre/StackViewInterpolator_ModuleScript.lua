-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:01:17
-- Luau version 6, Types version 3
-- Time taken: 0.004391 seconds

local Parent = script.Parent.Parent.Parent
local getSceneIndicesForInterpolationInputRange_upvr = require(Parent.utils.getSceneIndicesForInterpolationInputRange)
local lerp_upvr = require(Parent.utils.lerp)
local function forInitial_upvr(arg1) -- Line 33, Named "forInitial"
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local var4
	if arg1.initialPositionValue == arg1.scene.index then
		var4 = false
	else
		var4 = true
	end
	if var4 then
		local const_number = 1000000
	else
	end
	local module_2 = {
		forceHidden = var4;
	}
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	module_2.initialPosition = UDim2.new(0, 0, 0, 0)
	module_2.positionStep = nil
	return module_2
end
return {
	forHorizontal = function(arg1) -- Line 48, Named "forHorizontal"
		--[[ Upvalues[3]:
			[1]: forInitial_upvr (readonly)
			[2]: getSceneIndicesForInterpolationInputRange_upvr (readonly)
			[3]: lerp_upvr (readonly)
		]]
		-- KONSTANTERROR: [0] 1. Error Block 25 start (CF ANALYSIS FAILED)
		local initialPositionValue = arg1.initialPositionValue
		local layout = arg1.layout
		local var9
		if not layout.isMeasured then
			return forInitial_upvr(arg1)
		end
		local var2_result1 = getSceneIndicesForInterpolationInputRange_upvr(arg1)
		if not var2_result1 then
			return {
				forceHidden = true;
				initialPosition = UDim2.new(0, 100000, 0, 100000);
				positionStep = nil;
			}
		end
		local first_upvr = var2_result1.first
		local last_upvr = var2_result1.last
		local index_upvr = arg1.scene.index
		local initWidth_upvr = layout.initWidth
		local function calculate(arg1_2) -- Line 75
			--[[ Upvalues[5]:
				[1]: first_upvr (readonly)
				[2]: initWidth_upvr (readonly)
				[3]: index_upvr (readonly)
				[4]: lerp_upvr (copied, readonly)
				[5]: last_upvr (readonly)
			]]
			if arg1_2 < first_upvr then
				return initWidth_upvr
			end
			if arg1_2 < index_upvr then
				return lerp_upvr(initWidth_upvr, 0, (arg1_2 - first_upvr) / (index_upvr - first_upvr))
			end
			if arg1_2 == index_upvr then
				return 0
			end
			if arg1_2 < last_upvr then
				return lerp_upvr(0, -initWidth_upvr, (arg1_2 - index_upvr) / (last_upvr - index_upvr))
			end
			return -initWidth_upvr
		end
		local function stepper(arg1_3, arg2) -- Line 90
			--[[ Upvalues[5]:
				[1]: first_upvr (readonly)
				[2]: initWidth_upvr (readonly)
				[3]: index_upvr (readonly)
				[4]: lerp_upvr (copied, readonly)
				[5]: last_upvr (readonly)
			]]
			local current_2 = arg1_3.current
			if not current_2 then
			else
				local Position_2 = current_2.Position
				local X = Position_2.X
				if arg2 < first_upvr then
					X = initWidth_upvr
				elseif arg2 < index_upvr then
					X = lerp_upvr(initWidth_upvr, 0, (arg2 - first_upvr) / (index_upvr - first_upvr))
				elseif arg2 == index_upvr then
					X = 0
				elseif arg2 < last_upvr then
					X = lerp_upvr(0, -initWidth_upvr, (arg2 - index_upvr) / (last_upvr - index_upvr))
				else
					X = -initWidth_upvr
				end
				current_2.Position = UDim2.new(X.Scale, X, Position_2.Y.Scale, Position_2.Y.Offset)
			end
		end
		if initialPositionValue < first_upvr then
			var9 = initWidth_upvr
			-- KONSTANTWARNING: GOTO [87] #71
		end
		-- KONSTANTERROR: [0] 1. Error Block 25 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [61] 48. Error Block 26 start (CF ANALYSIS FAILED)
		if initialPositionValue < index_upvr then
			var9 = lerp_upvr(initWidth_upvr, 0, (initialPositionValue - first_upvr) / (index_upvr - first_upvr))
		elseif initialPositionValue == index_upvr then
			var9 = 0
		elseif initialPositionValue < last_upvr then
			var9 = lerp_upvr(0, -initWidth_upvr, (initialPositionValue - index_upvr) / (last_upvr - index_upvr))
		else
			var9 = -initWidth_upvr
		end
		do
			return {
				initialPosition = UDim2.new(0, var9, 0, 0);
				positionStep = stepper;
			}
		end
		-- KONSTANTERROR: [61] 48. Error Block 26 end (CF ANALYSIS FAILED)
	end;
	forVertical = function(arg1) -- Line 110, Named "forVertical"
		--[[ Upvalues[3]:
			[1]: forInitial_upvr (readonly)
			[2]: getSceneIndicesForInterpolationInputRange_upvr (readonly)
			[3]: lerp_upvr (readonly)
		]]
		local layout_2 = arg1.layout
		if not layout_2.isMeasured then
			return forInitial_upvr(arg1)
		end
		local getSceneIndicesForInterpolationInputRange_upvr_result1 = getSceneIndicesForInterpolationInputRange_upvr(arg1)
		if not getSceneIndicesForInterpolationInputRange_upvr_result1 then
			return {
				forceHidden = true;
				initialPosition = UDim2.new(0, 100000, 0, 100000);
				positionStep = nil;
			}
		end
		local first_upvr_2 = getSceneIndicesForInterpolationInputRange_upvr_result1.first
		local initHeight_upvr = layout_2.initHeight
		local index_upvr_3 = arg1.scene.index
		local function calculate(arg1_4) -- Line 133
			--[[ Upvalues[4]:
				[1]: first_upvr_2 (readonly)
				[2]: initHeight_upvr (readonly)
				[3]: index_upvr_3 (readonly)
				[4]: lerp_upvr (copied, readonly)
			]]
			if arg1_4 < first_upvr_2 then
				return initHeight_upvr
			end
			if arg1_4 < index_upvr_3 then
				return lerp_upvr(initHeight_upvr, 0, (arg1_4 - first_upvr_2) / (index_upvr_3 - first_upvr_2))
			end
			return 0
		end
		local function stepper(arg1_5, arg2) -- Line 144
			--[[ Upvalues[1]:
				[1]: calculate (readonly)
			]]
			local current_3 = arg1_5.current
			if not current_3 then
			else
				local Position = current_3.Position
				current_3.Position = UDim2.new(Position.X.Scale, Position.X.Offset, Position.Y.Scale, calculate(arg2))
			end
		end
		return {
			initialPosition = UDim2.new(0, 0, 0, calculate(arg1.initialPositionValue));
			positionStep = stepper;
		}
	end;
	forFade = function(arg1) -- Line 165, Named "forFade"
		--[[ Upvalues[2]:
			[1]: forInitial_upvr (readonly)
			[2]: getSceneIndicesForInterpolationInputRange_upvr (readonly)
		]]
		local var29
		if not arg1.layout.isMeasured then
			return forInitial_upvr(arg1)
		end
		if not getSceneIndicesForInterpolationInputRange_upvr(arg1) then
			local module_3 = {
				forceHidden = true;
			}
			var29 = 100000
			module_3.initialPosition = UDim2.new(0, 100000, 0, var29)
			module_3.positionStep = nil
			return module_3
		end
		local index_upvr_2 = arg1.scene.index
		local function _(arg1_6) -- Line 186, Named "calculate"
			--[[ Upvalues[1]:
				[1]: index_upvr_2 (readonly)
			]]
			local var32
			if index_upvr_2 - 0.5 > arg1_6 then
				var32 = false
			else
				var32 = true
			end
			return var32
		end
		local module = {}
		if index_upvr_2 - 0.5 > arg1.initialPositionValue then
			var29 = false
		else
			var29 = true
		end
		module.forceHidden = not var29
		var29 = 0
		module.initialPosition = UDim2.new(var29, 0, 0, 0)
		function module.positionStep(arg1_7, arg2) -- Line 190, Named "stepper"
			--[[ Upvalues[1]:
				[1]: index_upvr_2 (readonly)
			]]
			local current = arg1_7.current
			local var34
			if not current then
			else
				if index_upvr_2 - 0.5 > arg2 then
					var34 = false
				else
					var34 = true
				end
				current.Visible = var34
			end
		end
		return module
	end;
}