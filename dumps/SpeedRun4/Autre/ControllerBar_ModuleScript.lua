-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:10:55
-- Luau version 6, Types version 3
-- Time taken: 0.006862 seconds

local Parent_3 = script.Parent.Parent
local Parent_2 = Parent_3.Parent
local Parent = Parent_2.Parent
local Roact_upvr = require(Parent.Roact)
local t = require(Parent.t)
local Cryo_upvr = require(Parent.Cryo)
local GetTextSize_upvr = require(Parent_2.Core.Text.GetTextSize)
local any_extend_result1_upvr = Roact_upvr.PureComponent:extend("ControllerBar")
local any_strictInterface_result1 = t.strictInterface({
	keyCode = t.enum(Enum.KeyCode);
	text = t.string;
})
any_extend_result1_upvr.validateProps = t.strictInterface({
	leftHint = any_strictInterface_result1;
	rightHints = t.optional(t.map(t.number, any_strictInterface_result1));
})
function any_extend_result1_upvr.init(arg1) -- Line 46
	arg1.state = {
		controllerBarWidth = 0;
		hintStringsConcat = nil;
		requiredSpace = nil;
		hintRatios = nil;
	}
end
local DefaultKeyLabelSize_upvr = require(Parent_3.Menu.MenuConstants).DefaultKeyLabelSize
local ControllerBarHintInternalPadding_upvr = require(script.Parent.BarConstants).ControllerBarHintInternalPadding
function any_extend_result1_upvr.calculateHintRatios(arg1, arg2) -- Line 56
	--[[ Upvalues[4]:
		[1]: Cryo_upvr (readonly)
		[2]: GetTextSize_upvr (readonly)
		[3]: DefaultKeyLabelSize_upvr (readonly)
		[4]: ControllerBarHintInternalPadding_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local var31 = 84
	local var32 = ""
	local module = {}
	local var34 = 0
	local tbl = {}
	tbl[1] = arg1
	local var36 = arg2
	if not var36 then
		var36 = {}
	end
	local any_join_result1 = Cryo_upvr.List.join(tbl, var36)
	for _, v in ipairs(any_join_result1) do
		module[v.text] = GetTextSize_upvr(v.text, 17, Enum.Font.ArialBold, Vector2.new(10000, 10000)).X
		var34 += module[v.text]
		var31 = var31 + DefaultKeyLabelSize_upvr + ControllerBarHintInternalPadding_upvr
		var32 = var32..v.text
	end
	for i_2, v_2 in pairs(module) do
		module[i_2] = v_2 / var34
	end
	return module, var31 + math.max(#any_join_result1 - 2, 0) * 40, var32
end
function any_extend_result1_upvr.getDerivedStateFromProps(arg1) -- Line 92
	--[[ Upvalues[1]:
		[1]: any_extend_result1_upvr (readonly)
	]]
	local any_calculateHintRatios_result1, any_calculateHintRatios_result2, any_calculateHintRatios_result3 = any_extend_result1_upvr.calculateHintRatios(arg1.leftHint, arg1.rightHints)
	return {
		hintRatios = any_calculateHintRatios_result1;
		requiredSpace = any_calculateHintRatios_result2;
		hintStringsConcat = any_calculateHintRatios_result3;
	}
end
function any_extend_result1_upvr.calculateHintSize(arg1, arg2, arg3) -- Line 103
	--[[ Upvalues[1]:
		[1]: GetTextSize_upvr (readonly)
	]]
	local var52 = arg2 - arg1.state.requiredSpace
	local var53 = arg3.Header2.RelativeSize * arg3.BaseSize
	local var54 = arg3.Header2.RelativeMinSize * arg3.BaseSize
	local X_2 = GetTextSize_upvr(arg1.state.hintStringsConcat, var54, arg3.Header2.Font, Vector2.new(10000, 10000)).X
	if X_2 <= var52 then
		local X = GetTextSize_upvr(arg1.state.hintStringsConcat, var53, arg3.Header2.Font, Vector2.new(10000, 10000)).X
		local var57 = (var53 - var54) / (X - X_2)
		return nil, math.clamp((var52 * var57) + (var53 - var57 * X), var54, var53)
	end
	for i_3, v_3 in pairs(arg1.state.hintRatios) do
		({})[i_3] = v_3 * var52
		local var62
	end
	return var62
end
local withStyle_upvr = require(Parent_2.Core.Style.withStyle)
local ControllerBarHint_upvr = require(script.Parent.ControllerBarHint)
function any_extend_result1_upvr.render(arg1) -- Line 142
	--[[ Upvalues[4]:
		[1]: withStyle_upvr (readonly)
		[2]: Cryo_upvr (readonly)
		[3]: Roact_upvr (readonly)
		[4]: ControllerBarHint_upvr (readonly)
	]]
	return withStyle_upvr(function(arg1_2) -- Line 143
		--[[ Upvalues[4]:
			[1]: arg1 (readonly)
			[2]: Cryo_upvr (copied, readonly)
			[3]: Roact_upvr (copied, readonly)
			[4]: ControllerBarHint_upvr (copied, readonly)
		]]
		local Theme = arg1_2.Theme
		local any_calculateHintSize_result1_upvr, any_calculateHintSize_result2_upvr = arg1:calculateHintSize(arg1.state.controllerBarWidth, arg1_2.Font)
		local function makeHint(arg1_3, arg2) -- Line 148
			--[[ Upvalues[5]:
				[1]: Cryo_upvr (copied, readonly)
				[2]: any_calculateHintSize_result2_upvr (readonly)
				[3]: any_calculateHintSize_result1_upvr (readonly)
				[4]: Roact_upvr (copied, readonly)
				[5]: ControllerBarHint_upvr (copied, readonly)
			]]
			local tbl_2 = {
				key = "Hint"..tostring(arg2);
				hintTextSize = any_calculateHintSize_result2_upvr;
			}
			local var70
			local function INLINED() -- Internal function, doesn't exist in bytecode
				var70 = any_calculateHintSize_result1_upvr[arg1_3.text]
				return var70
			end
			if not any_calculateHintSize_result1_upvr or not INLINED() then
				var70 = nil
			end
			tbl_2.maxWidth = var70
			var70 = Cryo_upvr.Dictionary.join(arg1_3, tbl_2)
			return Roact_upvr.createElement(ControllerBarHint_upvr, var70)
		end
		local var71
		if arg1.props.rightHints then
			var71 = Roact_upvr.createFragment(Cryo_upvr.List.map(arg1.props.rightHints, makeHint))
		end
		return Roact_upvr.createElement("Frame", {
			BorderSizePixel = 0;
			BackgroundTransparency = Theme.BackgroundUIContrast.Transparency;
			BackgroundColor3 = Theme.BackgroundUIContrast.Color;
			Size = UDim2.new(1, 0, 0, 72);
			Position = UDim2.fromScale(0, 1);
			AnchorPoint = Vector2.new(0, 1);
			[Roact_upvr.Change.AbsoluteSize] = function(arg1_4) -- Line 171
				--[[ Upvalues[1]:
					[1]: arg1 (copied, readonly)
				]]
				arg1:setState({
					controllerBarWidth = arg1_4.AbsoluteSize.X;
				})
			end;
			[Roact_upvr.Event.AncestryChanged] = function(arg1_5) -- Line 176
				--[[ Upvalues[1]:
					[1]: arg1 (copied, readonly)
				]]
				arg1:setState({
					controllerBarWidth = arg1_5.AbsoluteSize.X;
				})
			end;
		}, {
			Padding = Roact_upvr.createElement("UIPadding", {
				PaddingLeft = UDim.new(0, 24);
				PaddingRight = UDim.new(0, 24);
			});
			LeftFrame = Roact_upvr.createElement("Frame", {
				BackgroundTransparency = 1;
				Size = UDim2.fromScale(0.5, 1);
			}, {Roact_upvr.createElement("UIListLayout", {
				key = "Layout";
				SortOrder = Enum.SortOrder.LayoutOrder;
				FillDirection = Enum.FillDirection.Horizontal;
				HorizontalAlignment = Enum.HorizontalAlignment.Left;
				VerticalAlignment = Enum.VerticalAlignment.Center;
				Padding = UDim.new(0, 40);
			}), makeHint(arg1.props.leftHint, "Left")});
			RightFrame = Roact_upvr.createElement("Frame", {
				BackgroundTransparency = 1;
				Size = UDim2.fromScale(0.5, 1);
				Position = UDim2.fromScale(1, 0);
				AnchorPoint = Vector2.new(1, 0);
			}, {
				Layout = Roact_upvr.createElement("UIListLayout", {
					SortOrder = Enum.SortOrder.LayoutOrder;
					FillDirection = Enum.FillDirection.Horizontal;
					HorizontalAlignment = Enum.HorizontalAlignment.Right;
					VerticalAlignment = Enum.VerticalAlignment.Center;
					Padding = UDim.new(0, 40);
				});
				RightHints = var71;
			});
		})
	end)
end
return any_extend_result1_upvr