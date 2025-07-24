-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:15:43
-- Luau version 6, Types version 3
-- Time taken: 0.004744 seconds

local Parent = script:FindFirstAncestor("PeekView").Parent
local Symbol = require(Parent.AppCommonLib).Symbol
local module_upvr = {
	FitAxis = {
		Width = Symbol.named("Width");
		Height = Symbol.named("Height");
		Both = Symbol.named("Both");
	};
}
local Roact_upvr = require(Parent.Roact)
local Immutable_upvr = require(Parent.AppCommonLib).Immutable
local Cryo_upvr = require(Parent.Cryo)
function module_upvr.wrap(arg1) -- Line 23
	--[[ Upvalues[4]:
		[1]: Roact_upvr (readonly)
		[2]: module_upvr (readonly)
		[3]: Immutable_upvr (readonly)
		[4]: Cryo_upvr (readonly)
	]]
	local any_extend_result1_upvr = Roact_upvr.PureComponent:extend("FitChildren(%s)":format(tostring(arg1)))
	function any_extend_result1_upvr.disconnectSignals(arg1_2) -- Line 26
		for _, v in ipairs(arg1_2.signals) do
			v:Disconnect()
		end
	end
	function any_extend_result1_upvr.resize(arg1_3) -- Line 32
		--[[ Upvalues[1]:
			[1]: module_upvr (copied, readonly)
		]]
		-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [5] 4. Error Block 25 start (CF ANALYSIS FAILED)
		if arg1_3.props.fitAxis then
			local _ = {
				Size = arg1_3.props.fitAxis;
			}
		else
			local _ = {
				Size = module_upvr.FitAxis.Both;
			}
		end
		-- KONSTANTERROR: [5] 4. Error Block 25 end (CF ANALYSIS FAILED)
	end
	function any_extend_result1_upvr.resizeFromChildren(arg1_4, arg2) -- Line 86
		-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
		local current_2 = arg1_4.ref.current
		local var25
		if current_2 == nil then
		else
			local AbsolutePosition_2 = current_2.AbsolutePosition
			var25 = 0
			for _, v_2 in ipairs(current_2:GetChildren()) do
				if v_2:IsA("GuiBase2d") then
					local AbsoluteSize = v_2.AbsoluteSize
					local AbsolutePosition = v_2.AbsolutePosition
					var25 = math.max(var25, AbsolutePosition.x - AbsolutePosition_2.x + AbsoluteSize.x)
				end
			end
			arg1_4:applyFit(arg2, var25, math.max(0, AbsolutePosition.y - AbsolutePosition_2.y + AbsoluteSize.y))
		end
	end
	function any_extend_result1_upvr.applyFit(arg1_5, arg2, arg3, arg4) -- Line 108
		--[[ Upvalues[1]:
			[1]: module_upvr (copied, readonly)
		]]
		-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
		local current = arg1_5.ref.current
		local var41
		if current == nil then
		else
			var41 = arg1_5.props.Size
			if not var41 then
				var41 = UDim2.new(0, 0, 0, 0)
			end
			local class_UIPadding_upvr = current:FindFirstChildOfClass("UIPadding")
			local function calculateAxis(arg1_6, arg2_2, arg3_2, arg4_2, arg5, arg6) -- Line 119
				--[[ Upvalues[2]:
					[1]: module_upvr (copied, readonly)
					[2]: class_UIPadding_upvr (readonly)
				]]
				local var43 = true
				if arg1_6 ~= arg2_2 then
					if arg1_6 ~= module_upvr.FitAxis.Both then
						var43 = false
					else
						var43 = true
					end
				end
				if var43 then
					local const_number = 0
					if class_UIPadding_upvr then
						local var45 = class_UIPadding_upvr[arg5].Scale + class_UIPadding_upvr[arg6].Scale
						if var45 == 1 then
							error("Can not apply FitChildren to a component with 100% padding width")
							return const_number, nil
						end
						return const_number, ((arg3_2) + (class_UIPadding_upvr[arg5].Offset + class_UIPadding_upvr[arg6].Offset)) / (1 - var45)
					end
					return const_number, arg3_2
				end
				return arg4_2.Scale, arg4_2.Offset
			end
			for i_3, v_3 in pairs(arg2) do
				local calculateAxis_result1, calculateAxis_result2 = calculateAxis(v_3, module_upvr.FitAxis.Width, arg3, var41.X, "PaddingLeft", "PaddingRight")
				local calculateAxis_result1_2, calculateAxis_result2_2 = calculateAxis(v_3, module_upvr.FitAxis.Height, arg4, var41.Y, "PaddingTop", "PaddingBottom")
				current[i_3] = UDim2.new(calculateAxis_result1, calculateAxis_result2, calculateAxis_result1_2, calculateAxis_result2_2)
				local _
			end
		end
	end
	function any_extend_result1_upvr.init(arg1_7) -- Line 150
		--[[ Upvalues[2]:
			[1]: any_extend_result1_upvr (readonly)
			[2]: Roact_upvr (copied, readonly)
		]]
		arg1_7.signals = {}
		local forwardRef = arg1_7.props.forwardRef
		local var55
		if type(forwardRef) == "function" then
			var55 = false
		else
			var55 = true
		end
		assert(var55, "%s does not support function ref forwarding":format(tostring(any_extend_result1_upvr)))
		local var56 = forwardRef
		if not var56 then
			var55 = Roact_upvr
			var56 = var55.createRef()
		end
		arg1_7.ref = var56
	end
	function any_extend_result1_upvr.render(arg1_8) -- Line 164
		--[[ Upvalues[3]:
			[1]: Immutable_upvr (copied, readonly)
			[2]: Roact_upvr (copied, readonly)
			[3]: arg1 (readonly)
		]]
		local any_RemoveFromDictionary_result1 = Immutable_upvr.RemoveFromDictionary(arg1_8.props, "fitAxis", "fitFields", "forwardRef")
		any_RemoveFromDictionary_result1[Roact_upvr.Ref] = arg1_8.ref
		return Roact_upvr.createElement(arg1, any_RemoveFromDictionary_result1)
	end
	function any_extend_result1_upvr.didMount(arg1_9) -- Line 171
		arg1_9:resize()
	end
	function any_extend_result1_upvr.didUpdate(arg1_10) -- Line 175
		arg1_10:resize()
	end
	function any_extend_result1_upvr.willUnmount(arg1_11) -- Line 179
		arg1_11:disconnectSignals()
	end
	return Roact_upvr.forwardRef(function(arg1_12, arg2) -- Line 183
		--[[ Upvalues[3]:
			[1]: Roact_upvr (copied, readonly)
			[2]: any_extend_result1_upvr (readonly)
			[3]: Cryo_upvr (copied, readonly)
		]]
		local module = {}
		module.forwardRef = arg2
		return Roact_upvr.createElement(any_extend_result1_upvr, Cryo_upvr.Dictionary.join(arg1_12, module))
	end)
end
module_upvr.FitFrame = module_upvr.wrap("Frame")
module_upvr.FitScrollingFrame = module_upvr.wrap("ScrollingFrame")
module_upvr.FitTextButton = module_upvr.wrap("TextButton")
return module_upvr