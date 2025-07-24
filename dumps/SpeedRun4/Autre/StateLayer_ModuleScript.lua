-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:13:59
-- Luau version 6, Types version 3
-- Time taken: 0.003186 seconds

local Parent_2 = script.Parent
local Parent = Parent_2.Parent
local Parent_4 = Parent.Parent
local Parent_3 = Parent_4.Parent
local React_upvr = require(Parent_3.React)
local tbl_2_upvr = {
	anchorPoint = Vector2.new(0.5, 0.5);
	position = UDim2.fromScale(0.5, 0.5);
	size = UDim2.fromScale(1, 1);
	isDisabled = false;
	selectable = true;
	affordance = "Background";
	stateStyle = "Standard";
	outset = {
		top = UDim.new(0, 0);
		right = UDim.new(0, 0);
		bottom = UDim.new(0, 0);
		left = UDim.new(0, 0);
	};
}
local Cryo_upvr = require(Parent_3.Cryo)
local useStyle_upvr = require(Parent.Style.useStyle)
local any_rawValue_result1_upvr = require(Parent_2.Enum.ControlState).Initialize.rawValue()
local useCursor_upvr = require(Parent_4.App.SelectionCursor.useCursor)
local Interactable_upvr = require(Parent_2.Interactable)
return React_upvr.memo(React_upvr.forwardRef(function(arg1, arg2) -- Line 76
	--[[ Upvalues[7]:
		[1]: Cryo_upvr (readonly)
		[2]: tbl_2_upvr (readonly)
		[3]: useStyle_upvr (readonly)
		[4]: any_rawValue_result1_upvr (readonly)
		[5]: React_upvr (readonly)
		[6]: useCursor_upvr (readonly)
		[7]: Interactable_upvr (readonly)
	]]
	local any_join_result1_upvr = Cryo_upvr.Dictionary.join(tbl_2_upvr, arg1)
	local StateLayer_upvr = useStyle_upvr().Tokens.Component.StateLayer
	local Color = StateLayer_upvr[any_join_result1_upvr.stateStyle][any_rawValue_result1_upvr].Color
	local any_useBinding_result1_2, any_useBinding_result2_upvr = React_upvr.useBinding(Color.Color3)
	local any_useBinding_result1, any_useBinding_result2_upvr_2 = React_upvr.useBinding(Color.Transparency)
	local module_2 = {}
	module_2.ref = arg2
	module_2.AnchorPoint = any_join_result1_upvr.anchorPoint
	module_2.Position = any_join_result1_upvr.position
	module_2.Size = any_join_result1_upvr.size
	module_2.LayoutOrder = any_join_result1_upvr.layoutOrder
	module_2.ZIndex = any_join_result1_upvr.zIndex
	module_2.BackgroundTransparency = 1
	local module = {}
	if any_join_result1_upvr.cornerRadius ~= nil then
		module.UICorner = React_upvr.createElement("UICorner", {
			CornerRadius = any_join_result1_upvr.cornerRadius;
		})
	end
	if any_join_result1_upvr.affordance == "Border" then
		module.UIStroke = React_upvr.createElement("UIStroke", {
			Thickness = StateLayer_upvr.Base.BorderWidth;
			Color = any_useBinding_result1_2;
			Transparency = any_useBinding_result1;
		})
		module_2.BackgroundTransparency = 1
	elseif any_join_result1_upvr.affordance == "Background" then
		module_2.BackgroundColor3 = any_useBinding_result1_2
		module_2.BackgroundTransparency = any_useBinding_result1
	end
	local outset = any_join_result1_upvr.outset
	local tbl = {
		Size = UDim2.new(1 + outset.left.Scale + outset.right.Scale, outset.left.Offset + outset.right.Offset, 1 + outset.top.Scale + outset.bottom.Scale, outset.top.Offset + outset.bottom.Offset);
		Position = UDim2.new(-outset.left.Scale, -outset.left.Offset, -outset.top.Scale, -outset.top.Offset);
		BackgroundTransparency = 1;
	}
	local var30 = not any_join_result1_upvr.isDisabled
	if var30 then
		var30 = any_join_result1_upvr.selectable
	end
	tbl.Selectable = var30
	tbl.SelectionImageObject = useCursor_upvr(any_join_result1_upvr.cornerRadius)
	tbl[React_upvr.Event.Activated] = any_join_result1_upvr.onActivated
	tbl.onStateChanged = React_upvr.useCallback(function(arg1_2, arg2_2) -- Line 122
		--[[ Upvalues[4]:
			[1]: StateLayer_upvr (readonly)
			[2]: any_join_result1_upvr (readonly)
			[3]: any_useBinding_result2_upvr (readonly)
			[4]: any_useBinding_result2_upvr_2 (readonly)
		]]
		local Color_2 = StateLayer_upvr[any_join_result1_upvr.stateStyle][arg2_2.rawValue()].Color
		any_useBinding_result2_upvr(Color_2.Color3)
		any_useBinding_result2_upvr_2(Color_2.Transparency)
		if any_join_result1_upvr.onStateChanged then
			any_join_result1_upvr.onStateChanged(arg1_2, arg2_2)
		end
	end, {StateLayer_upvr, any_useBinding_result2_upvr, any_useBinding_result2_upvr_2, any_join_result1_upvr.stateStyle, any_join_result1_upvr.onStateChanged})
	tbl.isDisabled = any_join_result1_upvr.isDisabled
	tbl.userInteractionEnabled = not any_join_result1_upvr.isDisabled
	module.Button = React_upvr.createElement(Interactable_upvr, tbl)
	return React_upvr.createElement("Frame", module_2, module)
end))