-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:48:09
-- Luau version 6, Types version 3
-- Time taken: 0.006380 seconds

local Foundation = script:FindFirstAncestor("Foundation")
local Parent = Foundation.Parent
local Radius = require(Foundation.Enums.Radius)
local React_upvr = require(Parent.React)
local tbl_3_upvr = {
	side = require(Foundation.Enums.PopoverSide).Bottom;
	align = require(Foundation.Enums.PopoverAlign).Center;
	hasArrow = true;
	selection = {
		Selectable = false;
	};
	radius = Radius.Medium;
}
local tbl_4_upvr = {
	[Radius.Small] = "radius-small";
	[Radius.Medium] = "radius-medium";
}
local withDefaults_upvr = require(Foundation.Utility.withDefaults)
local PopoverContext_upvr = require(script.Parent.Parent.PopoverContext)
local usePointerPosition_upvr = require(Foundation.Utility.usePointerPosition)
local useOverlay_upvr = require(Foundation.Providers.Overlay.useOverlay)
local useTokens_upvr = require(Foundation.Providers.Style.useTokens)
local useFloating_upvr = require(script.Parent.Parent.useFloating)
local Flags_upvr = require(Foundation.Utility.Flags)
local isPointInGuiObjectBounds_upvr = require(Foundation.Utility.isPointInGuiObjectBounds)
local View_upvr = require(Foundation.Components.View)
local StateLayerAffordance_upvr = require(Foundation.Enums.StateLayerAffordance)
local Image_upvr = require(Foundation.Components.Image)
local ReactRoblox_upvr = require(Parent.ReactRoblox)
return React_upvr.forwardRef(function(arg1, arg2) -- Line 67, Named "PopoverContent"
	--[[ Upvalues[15]:
		[1]: withDefaults_upvr (readonly)
		[2]: tbl_3_upvr (readonly)
		[3]: React_upvr (readonly)
		[4]: PopoverContext_upvr (readonly)
		[5]: usePointerPosition_upvr (readonly)
		[6]: useOverlay_upvr (readonly)
		[7]: useTokens_upvr (readonly)
		[8]: useFloating_upvr (readonly)
		[9]: Flags_upvr (readonly)
		[10]: isPointInGuiObjectBounds_upvr (readonly)
		[11]: View_upvr (readonly)
		[12]: StateLayerAffordance_upvr (readonly)
		[13]: Image_upvr (readonly)
		[14]: tbl_4_upvr (readonly)
		[15]: ReactRoblox_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local withDefaults_upvr_result1_upvr = withDefaults_upvr(arg1, tbl_3_upvr)
	local any_useContext_result1_upvr = React_upvr.useContext(PopoverContext_upvr)
	local useOverlay_upvr_result1 = useOverlay_upvr()
	local useTokens_upvr_result1 = useTokens_upvr()
	local Size_200 = useTokens_upvr_result1.Size.Size_200
	local var35
	if not withDefaults_upvr_result1_upvr.backgroundStyle then
	end
	local any_useRef_result1_upvr = React_upvr.useRef(nil)
	React_upvr.useImperativeHandle(arg2, function() -- Line 83
		--[[ Upvalues[1]:
			[1]: any_useRef_result1_upvr (readonly)
		]]
		return any_useRef_result1_upvr.current
	end, {})
	if withDefaults_upvr_result1_upvr.hasArrow then
		var35 = Size_200 * 1.4142135623730951 / 2
	else
		var35 = 0
	end
	local var13_result1, var13_result2, useFloating_upvr_result3, var13_result4, useFloating_upvr_result5 = useFloating_upvr(any_useContext_result1_upvr.isOpen, any_useContext_result1_upvr.anchor, any_useRef_result1_upvr.current, useOverlay_upvr_result1, withDefaults_upvr_result1_upvr.side, withDefaults_upvr_result1_upvr.align, var35)
	local var33
	local any_useRef_result1_upvr_2 = React_upvr.useRef(nil)
	var35 = React_upvr
	local usePointerPosition_upvr_result1_upvr = usePointerPosition_upvr(any_useContext_result1_upvr.anchor)
	function var35(arg1_2) -- Line 99
		--[[ Upvalues[6]:
			[1]: any_useRef_result1_upvr_2 (readonly)
			[2]: withDefaults_upvr_result1_upvr (readonly)
			[3]: Flags_upvr (copied, readonly)
			[4]: any_useContext_result1_upvr (readonly)
			[5]: usePointerPosition_upvr_result1_upvr (readonly)
			[6]: isPointInGuiObjectBounds_upvr (copied, readonly)
		]]
		if any_useRef_result1_upvr_2.current then
			any_useRef_result1_upvr_2.current:Disconnect()
		end
		if arg1_2 ~= nil and withDefaults_upvr_result1_upvr.onPressedOutside then
			any_useRef_result1_upvr_2.current = arg1_2:GetPropertyChangedSignal("GuiState"):Connect(function() -- Line 105
				--[[ Upvalues[6]:
					[1]: arg1_2 (readonly)
					[2]: Flags_upvr (copied, readonly)
					[3]: any_useContext_result1_upvr (copied, readonly)
					[4]: usePointerPosition_upvr_result1_upvr (copied, readonly)
					[5]: isPointInGuiObjectBounds_upvr (copied, readonly)
					[6]: withDefaults_upvr_result1_upvr (copied, readonly)
				]]
				if arg1_2.GuiState == Enum.GuiState.Press then
					if Flags_upvr.FoundationSkipPopoverOnPressedOutsideWhenClickingAnchor and any_useContext_result1_upvr.anchor and isPointInGuiObjectBounds_upvr(any_useContext_result1_upvr.anchor, usePointerPosition_upvr_result1_upvr:getValue()) then return end
					withDefaults_upvr_result1_upvr.onPressedOutside()
				end
			end)
		end
	end
	var35 = React_upvr.useEffect
	var35(function() -- Line 125
		--[[ Upvalues[1]:
			[1]: any_useRef_result1_upvr_2 (readonly)
		]]
		return function() -- Line 126
			--[[ Upvalues[1]:
				[1]: any_useRef_result1_upvr_2 (copied, readonly)
			]]
			if any_useRef_result1_upvr_2.current then
				any_useRef_result1_upvr_2.current:Disconnect()
			end
		end
	end, {})
	var35 = React_upvr.createElement
	local tbl_2 = {}
	if withDefaults_upvr_result1_upvr.onPressedOutside and any_useContext_result1_upvr.isOpen then
		var33 = React_upvr.createElement
		var33 = var33(View_upvr, {
			ZIndex = 1;
			stateLayer = {
				affordance = StateLayerAffordance_upvr.None;
			};
			Size = UDim2.fromScale(1, 1);
			ref = var35.useCallback(var35, {withDefaults_upvr_result1_upvr.onPressedOutside, any_useContext_result1_upvr.anchor});
		})
	else
		var33 = nil
	end
	tbl_2.Backdrop = var33
	var33 = React_upvr.createElement
	var33 = var33(Image_upvr, {
		Image = "component_assets/dropshadow_17_8";
		Size = useFloating_upvr_result3:map(function(arg1_3) -- Line 146
			return arg1_3 + UDim2.fromOffset(16, 16)
		end);
		Position = var13_result1:map(function(arg1_4) -- Line 149
			return UDim2.fromOffset(arg1_4.X - 8, arg1_4.Y - 8 + 2)
		end);
		ZIndex = 2;
		Visible = var13_result2;
		slice = {
			center = Rect.new(16, 16, 17, 17);
		};
		imageStyle = useTokens_upvr_result1.Color.Extended.Black.Black_20;
	})
	tbl_2.Shadow = var33
	if withDefaults_upvr_result1_upvr.hasArrow then
		var33 = React_upvr.createElement
		var33 = var33(View_upvr, {
			Size = UDim2.fromOffset(Size_200, Size_200);
			Position = var13_result4:map(function(arg1_5) -- Line 162
				return UDim2.fromOffset(arg1_5.X, arg1_5.Y)
			end);
			Rotation = 45;
			ZIndex = 3;
			Visible = var13_result2;
			backgroundStyle = useTokens_upvr_result1.Color.Surface.Surface_100;
			tag = "anchor-center-center";
		})
		-- KONSTANTWARNING: GOTO [228] #163
	end
	var33 = nil
	tbl_2.Arrow = var33
	var33 = React_upvr.createElement
	local tbl = {
		Position = var13_result1:map(function(arg1_6) -- Line 173
			return UDim2.fromOffset(arg1_6.X, arg1_6.Y)
		end);
		Visible = var13_result2;
		selection = withDefaults_upvr_result1_upvr.selection;
		sizeConstraint = {
			MaxSize = useFloating_upvr_result5;
		};
		stateLayer = {
			affordance = StateLayerAffordance_upvr.None;
		};
		ZIndex = 4;
	}
	if withDefaults_upvr_result1_upvr.onPressedOutside then
		local function _() -- Line 186
		end
	else
	end
	tbl.onActivated = nil
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	tbl.backgroundStyle = useTokens_upvr_result1.Color.Surface.Surface_100
	tbl.tag = `auto-xy {tbl_4_upvr[withDefaults_upvr_result1_upvr.radius]}`
	tbl.ref = any_useRef_result1_upvr
	var33 = var33(View_upvr, tbl, withDefaults_upvr_result1_upvr.children)
	tbl_2.Content = var33
	var35 = var35(React_upvr.Fragment, nil, tbl_2)
	if useOverlay_upvr_result1 == nil then
		return var35
	end
	return ReactRoblox_upvr.createPortal(var35, useOverlay_upvr_result1)
end)