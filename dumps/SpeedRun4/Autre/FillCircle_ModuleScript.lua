-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:53:53
-- Luau version 6, Types version 3
-- Time taken: 0.008996 seconds

local InGameMenuDependencies = require(game:GetService("CorePackages").Packages.InGameMenuDependencies)
local Roact_upvr = InGameMenuDependencies.Roact
local t = InGameMenuDependencies.t
local any_extend_result1 = Roact_upvr.PureComponent:extend("FillCircle")
any_extend_result1.validateProps = t.strictInterface({
	Position = t.UDim2;
	AnchorPoint = t.Vector2;
	fillFraction = t.number;
	largerCircleFraction = t.number;
	popCircleFraction = t.number;
	shakeCircleFraction = t.number;
	BackgroundColor = t.Color3;
})
local function _(arg1) -- Line 37, Named "getFillRingZIndex"
	if 0.75 < arg1 then
		return 8
	end
	if 0.5 < arg1 then
		return 6
	end
	if 0.25 < arg1 then
		return 4
	end
	if 0 < arg1 then
		return 2
	end
	return 0
end
local function _(arg1, arg2, arg3) -- Line 50, Named "linearTween"
	return (arg1 - arg2 / 30) / ((arg3 - arg2) / 30)
end
local function _(arg1, arg2, arg3) -- Line 55, Named "isBetweenFrames"
	local var6 = false
	if arg2 / 30 <= arg1 then
		if arg1 > arg3 / 30 then
			var6 = false
		else
			var6 = true
		end
	end
	return var6
end
local function largerCircleAnimation_upvr(arg1, arg2, arg3, arg4) -- Line 59, Named "largerCircleAnimation"
	if arg3 then
		local var7 = 0.26666666666666666 - arg1
	end
	local var8 = var7
	local var9 = false
	if 0 <= var8 then
		if var8 > 0.16666666666666666 then
			var9 = false
		else
			var9 = true
		end
	end
	if var9 then
		local var10 = 16 + (6) * ((var7 - 0) / 0.16666666666666666)
		arg2.size(UDim2.new(0, var10, 0, var10))
	else
		local var11 = var7
		local var12 = false
		if 0.16666666666666666 <= var11 then
			if var11 > 0.26666666666666666 then
				var12 = false
			else
				var12 = true
			end
		end
		if var12 then
			local var13 = 22 - (2) * ((var7 - 0.16666666666666666) / 0.1)
			arg2.size(UDim2.new(0, var13, 0, var13))
			return
		end
		if var7 < 0 then
			arg2.size(UDim2.new(0, 16, 0, 16))
			arg4()
			return
		end
		arg2.size(UDim2.new(0, 20, 0, 20))
		arg4()
	end
end
local function popCircleAnimation_upvr(arg1, arg2, arg3, arg4) -- Line 87, Named "popCircleAnimation"
	local var14 = false
	if 0 <= arg1 then
		if arg1 > 0.1 then
			var14 = false
		else
			var14 = true
		end
	end
	if var14 then
		local var15 = 20 + (4) * ((arg1 - 0) / 0.1)
		arg2.size(UDim2.new(0, var15, 0, var15))
	else
		local var16 = false
		if 0.1 <= arg1 then
			if arg1 > 0.2 then
				var16 = false
			else
				var16 = true
			end
		end
		if var16 then
			local var17 = 24 - (4) * ((arg1 - 0.1) / 0.1)
			arg2.size(UDim2.new(0, var17, 0, var17))
			return
		end
		arg2.size(UDim2.new(0, 20, 0, 20))
		arg4()
	end
end
local function shakeCircleAnimation_upvr(arg1, arg2, arg3, arg4) -- Line 108, Named "shakeCircleAnimation"
	local var18 = false
	if 0 <= arg1 then
		if arg1 > 0.1 then
			var18 = false
		else
			var18 = true
		end
	end
	if var18 then
		arg2.positionOffset(UDim2.new(0, (-4) * ((arg1 - 0) / 0.1), 0, 0))
	else
		local var19 = false
		if 0.1 <= arg1 then
			if arg1 > 0.2 then
				var19 = false
			else
				var19 = true
			end
		end
		if var19 then
			arg2.positionOffset(UDim2.new(0, -4 + (12) * ((arg1 - 0.1) / 0.1), 0, 0))
			return
		end
		local var20 = false
		if 0.2 <= arg1 then
			if arg1 > 0.26666666666666666 then
				var20 = false
			else
				var20 = true
			end
		end
		if var20 then
			arg2.positionOffset(UDim2.new(0, 8 - (16) * ((arg1 - 0.2) / 0.06666666666666667), 0, 0))
			return
		end
		local var21 = false
		if 0.26666666666666666 <= arg1 then
			if arg1 > 0.3333333333333333 then
				var21 = false
			else
				var21 = true
			end
		end
		if var21 then
			arg2.positionOffset(UDim2.new(0, -8 + (16) * ((arg1 - 0.26666666666666666) / 0.06666666666666667), 0, 0))
			return
		end
		local var22 = false
		if 0.3333333333333333 <= arg1 then
			if arg1 > 0.4 then
				var22 = false
			else
				var22 = true
			end
		end
		if var22 then
			arg2.positionOffset(UDim2.new(0, 8 - (16) * ((arg1 - 0.3333333333333333) / 0.06666666666666667), 0, 0))
			return
		end
		local var23 = false
		if 0.4 <= arg1 then
			if arg1 > 0.4666666666666667 then
				var23 = false
			else
				var23 = true
			end
		end
		if var23 then
			arg2.positionOffset(UDim2.new(0, -8 + (8) * ((arg1 - 0.4) / 0.06666666666666667), 0, 0))
			return
		end
		arg2.positionOffset(UDim2.new(0, 0, 0, 0))
		arg4()
	end
end
function any_extend_result1.init(arg1) -- Line 143
	--[[ Upvalues[1]:
		[1]: Roact_upvr (readonly)
	]]
	local any_createBinding_result1_2, any_createBinding_result2 = Roact_upvr.createBinding(UDim2.new(0, 16, 0, 16))
	arg1.sizeBinding = any_createBinding_result1_2
	arg1.sizeBindingUpdate = any_createBinding_result2
	arg1.largerSizeBinding = arg1.sizeBinding:map(function(arg1_2) -- Line 146
		return arg1_2 + UDim2.new(0, 2, 0, 2)
	end)
	local any_createBinding_result1, any_createBinding_result2_2 = Roact_upvr.createBinding(UDim2.new(0, 0, 0, 0))
	arg1.positionOffsetBinding = any_createBinding_result1
	arg1.positionOffsetBindingUpdate = any_createBinding_result2_2
	arg1.updateBindings = {
		size = arg1.sizeBindingUpdate;
		positionOffset = arg1.positionOffsetBindingUpdate;
	}
	arg1.animationStartTime = nil
	arg1.animationFunction = nil
	arg1.reverseAnimation = false
	arg1.renderSteppedConnection = nil
end
local Color3_fromRGB_result1_upvr_2 = Color3.fromRGB(196, 0, 1)
local Color3_fromRGB_result1_upvr = Color3.fromRGB(255, 255, 255)
local Color3_fromRGB_result1_upvr_3 = Color3.fromRGB(98, 98, 99)
local ImageSetLabel_upvr = InGameMenuDependencies.UIBlox.Core.ImageSet.ImageSetLabel
local Assets_upvr = require(script.Parent.Parent.Parent.Resources.Assets)
function any_extend_result1.render(arg1) -- Line 162
	--[[ Upvalues[6]:
		[1]: Color3_fromRGB_result1_upvr_2 (readonly)
		[2]: Color3_fromRGB_result1_upvr (readonly)
		[3]: Roact_upvr (readonly)
		[4]: Color3_fromRGB_result1_upvr_3 (readonly)
		[5]: ImageSetLabel_upvr (readonly)
		[6]: Assets_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 56 start (CF ANALYSIS FAILED)
	local props = arg1.props
	if 1 > props.fillFraction or not Color3_fromRGB_result1_upvr_2 then
	end
	local _ = {
		Size = arg1.sizeBinding;
		Position = props.Position;
		AnchorPoint = props.AnchorPoint;
		BackgroundTransparency = 1;
	}
	local _ = {
		Position = arg1.positionOffsetBinding;
		Size = UDim2.new(1, 0, 1, 0);
		BorderSizePixel = 0;
		BackgroundColor3 = Color3_fromRGB_result1_upvr_3;
	}
	local tbl = {
		OuterRing = Roact_upvr.createElement(ImageSetLabel_upvr, {
			Image = Assets_upvr.Images.CircleCutout;
			Size = UDim2.new(1, 0, 1, 0);
			ImageColor3 = props.BackgroundColor;
			BackgroundTransparency = 1;
			ZIndex = 10;
		});
		InnerRing = Roact_upvr.createElement(ImageSetLabel_upvr, {
			Image = Assets_upvr.Images.Circle;
			Size = UDim2.new(1, -4, 1, -4);
			Position = UDim2.new(0.5, 0, 0.5, 0);
			AnchorPoint = Vector2.new(0.5, 0.5);
			ImageColor3 = props.BackgroundColor;
			BackgroundTransparency = 1;
			ZIndex = 10;
		});
	}
	local _ = {
		BackgroundTransparency = 1;
		Size = UDim2.new(0, 0, 0, 0);
		Position = UDim2.new(0.5, 0, 0.5, 0);
		Rotation = props.fillFraction * 360;
	}
	local fillFraction = props.fillFraction
	-- KONSTANTERROR: [0] 1. Error Block 56 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [178] 125. Error Block 68 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [178] 125. Error Block 68 end (CF ANALYSIS FAILED)
end
function any_extend_result1.didUpdate(arg1, arg2, arg3) -- Line 285
	--[[ Upvalues[3]:
		[1]: largerCircleAnimation_upvr (readonly)
		[2]: popCircleAnimation_upvr (readonly)
		[3]: shakeCircleAnimation_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 44 start (CF ANALYSIS FAILED)
	local var43
	if arg2.largerCircleFraction > arg2.fillFraction then
		var43 = false
	else
		var43 = true
	end
	if arg1.props.largerCircleFraction > arg1.props.fillFraction then
		-- KONSTANTWARNING: GOTO [20] #13
	end
	-- KONSTANTERROR: [0] 1. Error Block 44 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [19] 12. Error Block 49 start (CF ANALYSIS FAILED)
	local var44 = true
	if var43 ~= var44 then
		arg1:playAnimation(largerCircleAnimation_upvr, not var44)
	end
	if arg2.popCircleFraction > arg2.fillFraction then
	else
	end
	if arg1.props.popCircleFraction > arg1.props.fillFraction then
		-- KONSTANTWARNING: GOTO [47] #30
	end
	-- KONSTANTERROR: [19] 12. Error Block 49 end (CF ANALYSIS FAILED)
end
local RunService_upvr = game:GetService("RunService")
function any_extend_result1.playAnimation(arg1, arg2, arg3) -- Line 305
	--[[ Upvalues[1]:
		[1]: RunService_upvr (readonly)
	]]
	if arg1.animationFunction then
		arg1.animationFunction(100, arg1.updateBindings, arg1.reverseAnimation, function() -- Line 308
		end)
	end
	arg1.animationStartTime = tick()
	arg1.animationFunction = arg2
	arg1.reverseAnimation = arg3
	if not arg1.renderSteppedConnection then
		arg1.renderSteppedConnection = RunService_upvr.RenderStepped:Connect(function() -- Line 314
			--[[ Upvalues[1]:
				[1]: arg1 (readonly)
			]]
			arg1.animationFunction(tick() - arg1.animationStartTime, arg1.updateBindings, arg1.reverseAnimation, function() -- Line 319
				--[[ Upvalues[1]:
					[1]: arg1 (copied, readonly)
				]]
				arg1:stopAnimation()
			end)
		end)
	end
end
function any_extend_result1.stopAnimation(arg1) -- Line 327
	if arg1.renderSteppedConnection then
		arg1.renderSteppedConnection:Disconnect()
		arg1.renderSteppedConnection = nil
	end
end
function any_extend_result1.willUnmount(arg1) -- Line 334
	arg1:stopAnimation()
end
return any_extend_result1