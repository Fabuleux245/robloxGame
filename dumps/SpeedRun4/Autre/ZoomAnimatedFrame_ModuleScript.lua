-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:34:25
-- Luau version 6, Types version 3
-- Time taken: 0.003338 seconds

local Parent = script:FindFirstAncestor("GameTile").Parent
local React_upvr = require(Parent.React)
local Otter_upvr = require(Parent.Otter)
function ZoomAnimatedFrame(arg1) -- Line 18
	--[[ Upvalues[2]:
		[1]: React_upvr (readonly)
		[2]: Otter_upvr (readonly)
	]]
	local isZoomEnabled_upvr = arg1.isZoomEnabled
	local any_useRef_result1_upvr = React_upvr.useRef(nil)
	if any_useRef_result1_upvr.current == nil then
		any_useRef_result1_upvr.current = Otter_upvr.createSingleMotor(0)
	end
	assert(any_useRef_result1_upvr.current, "zoomMotorRef should always exist; assert only needed for the linter")
	local any_useBinding_result1, any_useBinding_result2_upvr = React_upvr.useBinding(0)
	React_upvr.useEffect(function() -- Line 30
		--[[ Upvalues[2]:
			[1]: any_useRef_result1_upvr (readonly)
			[2]: any_useBinding_result2_upvr (readonly)
		]]
		any_useRef_result1_upvr.current:onStep(any_useBinding_result2_upvr)
	end, {})
	React_upvr.useEffect(function() -- Line 35
		--[[ Upvalues[4]:
			[1]: any_useRef_result1_upvr (readonly)
			[2]: Otter_upvr (copied, readonly)
			[3]: isZoomEnabled_upvr (readonly)
			[4]: arg1 (readonly)
		]]
		local var10 = Otter_upvr
		local var11
		if isZoomEnabled_upvr then
			var10 = 1
		else
			var10 = 0
		end
		local tbl = {}
		if arg1.reducedMotion then
			var11 = 200
		else
			var11 = 6.5
		end
		tbl.frequency = var11
		any_useRef_result1_upvr.current:setGoal(var10.spring(var10, tbl))
	end, {isZoomEnabled_upvr})
	return React_upvr.createElement("Frame", {
		Position = any_useBinding_result1:map(function(arg1_2) -- Line 43
			--[[ Upvalues[1]:
				[1]: arg1 (readonly)
			]]
			-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
			local var16
			if 0.9 < arg1_2 then
				var16 = 1
			else
				var16 = arg1_2
			end
			if arg1.reducedMotion then
			else
			end
			return UDim2.fromOffset(-arg1.expansionOffsetX * var16 / 2, -arg1.expansionOffsetTop * var16 - 0 * var16)
		end);
		Size = any_useBinding_result1:map(function(arg1_3) -- Line 56
			--[[ Upvalues[1]:
				[1]: arg1 (readonly)
			]]
			-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
			local var18
			if 0.9 < arg1_3 then
				var18 = 1
			else
				var18 = arg1_3
			end
			if arg1.reducedMotion then
			else
			end
			return UDim2.new(1, arg1.expansionOffsetX * var18, 1, arg1.expansionOffsetTop * var18 + arg1.expansionOffsetBottom * var18 + 0 * var18)
		end);
		BackgroundTransparency = 1;
	}, arg1.children)
end
return ZoomAnimatedFrame