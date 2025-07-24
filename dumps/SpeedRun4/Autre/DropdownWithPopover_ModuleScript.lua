-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:35:22
-- Luau version 6, Types version 3
-- Time taken: 0.013611 seconds

local GenericAbuseReporting = script:FindFirstAncestor("GenericAbuseReporting")
local Parent = GenericAbuseReporting.Parent
local FocusNavigationUtils = require(Parent.FocusNavigationUtils)
local Foundation = require(Parent.Foundation)
local React_upvr = require(Parent.React)
local useLayerCollector_upvr = require(Parent.UIBlox).Core.Layout.LayerCollector.useLayerCollector
local useTokens_upvr = Foundation.Hooks.useTokens
local useScrollbarOffset_upvr = require(GenericAbuseReporting.Common.useScrollbarOffset)
local ReactFocusNavigation_upvr = require(Parent.ReactFocusNavigation)
local game_DefineFastFlag_result1_upvr = game:DefineFastFlag("EnableAbuseReportRevampVrOverlay", false)
local CoreGui_upvr = game:GetService("CoreGui")
local View_upvr = Foundation.View
local Text_upvr = Foundation.Text
local OverlayProvider_upvr = Foundation.OverlayProvider
local Popover_upvr = Foundation.Popover
local SideModalDropdownButton_upvr = require(GenericAbuseReporting.Common.SideModalDropdownButton)
local PopoverAlign_upvr = Foundation.Enums.PopoverAlign
local PopoverSide_upvr = Foundation.Enums.PopoverSide
local AppFocusRoot_upvr = FocusNavigationUtils.AppFocusRoot
local FocusNavigableSurfaceIdentifierEnum_upvr = FocusNavigationUtils.FocusNavigableSurfaceIdentifierEnum
local FocusNavigationEventNameEnum_upvr = FocusNavigationUtils.FocusNavigationEventNameEnum
local InputHandlers_upvr = require(Parent.InputHandlers)
local ScrollView_upvr = Foundation.ScrollView
local ScrollBarVisibility_upvr = Foundation.Enums.ScrollBarVisibility
return React_upvr.memo(function(arg1) -- Line 46, Named "DropdownWithPopover"
	--[[ Upvalues[20]:
		[1]: useLayerCollector_upvr (readonly)
		[2]: useTokens_upvr (readonly)
		[3]: React_upvr (readonly)
		[4]: useScrollbarOffset_upvr (readonly)
		[5]: ReactFocusNavigation_upvr (readonly)
		[6]: game_DefineFastFlag_result1_upvr (readonly)
		[7]: CoreGui_upvr (readonly)
		[8]: View_upvr (readonly)
		[9]: Text_upvr (readonly)
		[10]: OverlayProvider_upvr (readonly)
		[11]: Popover_upvr (readonly)
		[12]: SideModalDropdownButton_upvr (readonly)
		[13]: PopoverAlign_upvr (readonly)
		[14]: PopoverSide_upvr (readonly)
		[15]: AppFocusRoot_upvr (readonly)
		[16]: FocusNavigableSurfaceIdentifierEnum_upvr (readonly)
		[17]: FocusNavigationEventNameEnum_upvr (readonly)
		[18]: InputHandlers_upvr (readonly)
		[19]: ScrollView_upvr (readonly)
		[20]: ScrollBarVisibility_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local absoluteSize = useLayerCollector_upvr().absoluteSize
	local any_useState_result1_3_upvr, any_useState_result2_upvr_4 = React_upvr.useState(false)
	local any_useState_result1_2_upvr, any_useState_result2_upvr_6 = React_upvr.useState({})
	local any_useState_result1_5, any_useState_result2_upvr_2 = React_upvr.useState(Vector2.new(0, 0))
	local any_useState_result1_6, any_useState_result2_upvr_3 = React_upvr.useState(Vector2.new(0, 0))
	local any_useState_result1, any_useState_result2_upvr = React_upvr.useState(Vector2.new(0, 0))
	local any_useState_result1_4, any_useState_result2_upvr_5 = React_upvr.useState(Vector2.new(0, 0))
	local any_useFocusGuiObject_result1_upvr = ReactFocusNavigation_upvr.useFocusGuiObject()
	local any_useRef_result1_upvr = React_upvr.useRef(nil)
	local var40_upvw
	local var41
	if game_DefineFastFlag_result1_upvr then
		if CoreGui_upvr:FindFirstChild("VRCentralOverlay") then
			var41 = CoreGui_upvr:FindFirstChild("VRCentralOverlay"):FindFirstChild("CentralOverlay_SurfaceGui")
		else
			var41 = nil
		end
		var40_upvw = var41
	end
	local any_useCallback_result1_upvr = React_upvr.useCallback(function() -- Line 73
		--[[ Upvalues[5]:
			[1]: game_DefineFastFlag_result1_upvr (copied, readonly)
			[2]: var40_upvw (read and write)
			[3]: any_useFocusGuiObject_result1_upvr (readonly)
			[4]: any_useRef_result1_upvr (readonly)
			[5]: any_useState_result2_upvr_4 (readonly)
		]]
		-- KONSTANTERROR: [0] 1. Error Block 9 start (CF ANALYSIS FAILED)
		if game_DefineFastFlag_result1_upvr then
			if not var40_upvw then
				any_useFocusGuiObject_result1_upvr(any_useRef_result1_upvr.current)
				-- KONSTANTWARNING: GOTO [15] #14
			end
		else
			any_useFocusGuiObject_result1_upvr(any_useRef_result1_upvr.current)
		end
		-- KONSTANTERROR: [0] 1. Error Block 9 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [15] 14. Error Block 6 start (CF ANALYSIS FAILED)
		any_useState_result2_upvr_4(false)
		-- KONSTANTERROR: [15] 14. Error Block 6 end (CF ANALYSIS FAILED)
	end, {any_useRef_result1_upvr.current, any_useFocusGuiObject_result1_upvr, var40_upvw})
	local function var46() -- Line 85
		--[[ Upvalues[7]:
			[1]: arg1 (readonly)
			[2]: any_useState_result2_upvr_6 (readonly)
			[3]: any_useCallback_result1_upvr (readonly)
			[4]: React_upvr (copied, readonly)
			[5]: View_upvr (copied, readonly)
			[6]: any_useState_result1_2_upvr (readonly)
			[7]: Text_upvr (copied, readonly)
		]]
		local module = {}
		for _, v_upvr in ipairs(arg1.cellDatas) do
			local tbl_25 = {
				onActivated = function() -- Line 88
					--[[ Upvalues[4]:
						[1]: arg1 (copied, readonly)
						[2]: v_upvr (readonly)
						[3]: any_useState_result2_upvr_6 (copied, readonly)
						[4]: any_useCallback_result1_upvr (copied, readonly)
					]]
					local var56 = arg1
					if v_upvr.value == nil then
						var56 = v_upvr.text
					else
						var56 = v_upvr.value
					end
					var56.onChange(var56)
					any_useState_result2_upvr_6(v_upvr)
					any_useCallback_result1_upvr()
				end;
				selection = {
					Selectable = true;
				};
			}
			local tbl_6 = {
				["size-full-0"] = true;
				["auto-y"] = true;
				["padding-small"] = true;
			}
			local var60 = true
			tbl_6["radius-medium"] = var60
			if any_useState_result1_2_upvr ~= v_upvr then
				var60 = false
			else
				var60 = true
			end
			tbl_6["bg-shift-200"] = var60
			tbl_25.tag = tbl_6
			table.insert(module, React_upvr.createElement(View_upvr, tbl_25, {
				TextContainer = React_upvr.createElement(View_upvr, {
					tag = "size-full-0 auto-y";
				}, {
					Text = React_upvr.createElement(Text_upvr, {
						Text = v_upvr.text;
						TextXAlignment = Enum.TextXAlignment.Left;
						TextWrapped = true;
						tag = "auto-xy";
					});
				});
			}))
		end
		return module
	end
	local tbl_5 = {arg1.cellDatas, any_useState_result1_2_upvr, arg1.onChange, any_useCallback_result1_upvr}
	local function var66() -- Line 125
		--[[ Upvalues[2]:
			[1]: any_useState_result2_upvr_4 (readonly)
			[2]: any_useState_result1_3_upvr (readonly)
		]]
		any_useState_result2_upvr_4(not any_useState_result1_3_upvr)
	end
	local tbl_12 = {any_useState_result1_3_upvr}
	if game_DefineFastFlag_result1_upvr then
		local tbl_22 = {}
		local tbl_16 = {
			tag = "size-full-0 auto-y";
			ref = any_useRef_result1_upvr;
		}
		local function onAbsoluteSizeChanged(arg1_2) -- Line 136
			--[[ Upvalues[1]:
				[1]: any_useState_result2_upvr_2 (readonly)
			]]
			any_useState_result2_upvr_2(arg1_2.AbsoluteSize)
		end
		tbl_16.onAbsoluteSizeChanged = onAbsoluteSizeChanged
		tbl_16.LayoutOrder = arg1.layoutOrder
		local tbl_24 = {}
		local tbl_13 = {}
		local tbl_26 = {
			onActivated = React_upvr.useCallback(var66, tbl_12);
		}
		local var76
		if any_useState_result1_2_upvr.text and 0 < #any_useState_result1_2_upvr.text then
			var76 = any_useState_result1_2_upvr.text
		else
			var76 = arg1.placeholder
		end
		tbl_26.text = var76
		var76 = arg1.errorState
		tbl_26.isDropdownError = var76
		;({}).DropdownButton = React_upvr.createElement(SideModalDropdownButton_upvr, tbl_26)
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		tbl_13.Anchor = React_upvr.createElement(Popover_upvr.Anchor, nil, React_upvr.createElement(View_upvr, {
			Size = UDim2.new(0, any_useState_result1_5.X, 0, any_useState_result1_5.Y);
		}, {}))
		local tbl_10 = {}
		;({}).tag = "auto-xy"
		local tbl_20 = {}
		var76 = {}
		if any_useState_result1_3_upvr then
		else
		end
		var76.surfaceIdentifier = FocusNavigableSurfaceIdentifierEnum_upvr.PopUp
		var76.isIsolated = any_useState_result1_3_upvr
		var76.customEventHandlers = {
			[FocusNavigationEventNameEnum_upvr.NavigateBack] = {
				handler = InputHandlers_upvr.onRelease(any_useCallback_result1_upvr);
			};
		}
		local tbl_4 = {}
		local tbl_19 = {
			Size = UDim2.new(0, math.min(absoluteSize.X, any_useState_result1_6.X + useScrollbarOffset_upvr(any_useState_result1, any_useState_result1_4)), 0, math.min(absoluteSize.Y, any_useState_result1_6.Y));
			scroll = {
				AutomaticCanvasSize = Enum.AutomaticSize.Y;
				CanvasSize = UDim2.new(1, 0, 0, 0);
				ScrollingDirection = Enum.ScrollingDirection.Y;
				scrollBarVisibility = ScrollBarVisibility_upvr.Always;
			};
		}
		local function onAbsoluteCanvasSizeChanged(arg1_3) -- Line 204
			--[[ Upvalues[1]:
				[1]: any_useState_result2_upvr (readonly)
			]]
			any_useState_result2_upvr(arg1_3.AbsoluteCanvasSize)
		end
		tbl_19.onAbsoluteCanvasSizeChanged = onAbsoluteCanvasSizeChanged
		local function onAbsoluteWindowSizeChanged(arg1_4) -- Line 207
			--[[ Upvalues[1]:
				[1]: any_useState_result2_upvr_5 (readonly)
			]]
			any_useState_result2_upvr_5(arg1_4.AbsoluteWindowSize)
		end
		tbl_19.onAbsoluteWindowSizeChanged = onAbsoluteWindowSizeChanged
		tbl_19.gradientHeight = 15
		local tbl_2 = {}
		local tbl_23 = {
			Size = UDim2.new(0, any_useState_result1_5.X + useTokens_upvr().Stroke.Standard * 2, 0, 0);
		}
		local function onAbsoluteSizeChanged(arg1_5) -- Line 219
			--[[ Upvalues[1]:
				[1]: any_useState_result2_upvr_3 (readonly)
			]]
			any_useState_result2_upvr_3(arg1_5.AbsoluteSize)
		end
		tbl_23.onAbsoluteSizeChanged = onAbsoluteSizeChanged
		tbl_23.tag = "auto-y col align-y-center gap-xsmall padding-xsmall"
		tbl_23.ref = React_upvr.useRef(nil)
		tbl_2.BaseMenu = React_upvr.createElement(View_upvr, tbl_23, React_upvr.useMemo(var46, tbl_5))
		tbl_4[1] = React_upvr.createElement(ScrollView_upvr, tbl_19, tbl_2)
		tbl_20.AppFocusRoot = React_upvr.createElement(AppFocusRoot_upvr, var76, tbl_4)
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		tbl_10.DropdownPopup = React_upvr.createElement(View_upvr, {}, tbl_20)
		tbl_13.Content = React_upvr.createElement(Popover_upvr.Content, {
			align = PopoverAlign_upvr.Center;
			side = PopoverSide_upvr.Bottom;
			hasArrow = false;
			onPressedOutside = any_useCallback_result1_upvr;
			selection = {
				Selectable = true;
			};
		}, tbl_10)
		tbl_24.Popover = React_upvr.createElement(Popover_upvr.Root, {
			isOpen = any_useState_result1_3_upvr;
		}, tbl_13)
		tbl_22.DropdownWithPopover = React_upvr.createElement(View_upvr, tbl_16, tbl_24)
		local _ = React_upvr.createElement(OverlayProvider_upvr, {
			gui = var40_upvw;
		}, tbl_22)
	else
		local var89
		local module_3 = {
			tag = "size-full-0 auto-y";
			ref = any_useRef_result1_upvr;
		}
		local function onAbsoluteSizeChanged(arg1_6) -- Line 236
			--[[ Upvalues[1]:
				[1]: any_useState_result2_upvr_2 (readonly)
			]]
			any_useState_result2_upvr_2(arg1_6.AbsoluteSize)
		end
		module_3.onAbsoluteSizeChanged = onAbsoluteSizeChanged
		module_3.LayoutOrder = arg1.layoutOrder
		local module_2 = {}
		local tbl_15 = {}
		local tbl_14 = {}
		var89 = any_useState_result1_5.Y
		tbl_14.Size = UDim2.new(0, any_useState_result1_5.X, 0, var89)
		local tbl_17 = {}
		local tbl_21 = {}
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		tbl_21.onActivated = React_upvr.useCallback(var66, tbl_12)
		if any_useState_result1_2_upvr.text and 0 < #any_useState_result1_2_upvr.text then
			var89 = any_useState_result1_2_upvr.text
		else
			var89 = arg1.placeholder
		end
		tbl_21.text = var89
		var89 = arg1.errorState
		tbl_21.isDropdownError = var89
		tbl_17.DropdownButton = React_upvr.createElement(SideModalDropdownButton_upvr, tbl_21)
		tbl_15.Anchor = React_upvr.createElement(Popover_upvr.Anchor, nil, React_upvr.createElement(View_upvr, tbl_14, tbl_17))
		local tbl_11 = {}
		local tbl_9 = {}
		var89 = {}
		if any_useState_result1_3_upvr then
		else
		end
		var89.surfaceIdentifier = FocusNavigableSurfaceIdentifierEnum_upvr.PopUp
		var89.isIsolated = any_useState_result1_3_upvr
		local tbl_8 = {}
		local tbl_7 = {}
		var76 = InputHandlers_upvr.onRelease(any_useCallback_result1_upvr)
		tbl_7.handler = var76
		tbl_8[FocusNavigationEventNameEnum_upvr.NavigateBack] = tbl_7
		var89.customEventHandlers = tbl_8
		local tbl_18 = {}
		var76 = {}
		local var105 = var76
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		var105.Size = UDim2.new(0, math.min(absoluteSize.X, any_useState_result1_6.X + useScrollbarOffset_upvr(any_useState_result1, any_useState_result1_4)), 0, math.min(absoluteSize.Y, any_useState_result1_6.Y))
		var105.scroll = {
			AutomaticCanvasSize = Enum.AutomaticSize.Y;
			CanvasSize = UDim2.new(1, 0, 0, 0);
			ScrollingDirection = Enum.ScrollingDirection.Y;
			scrollBarVisibility = ScrollBarVisibility_upvr.Always;
		}
		function var105.onAbsoluteCanvasSizeChanged(arg1_7) -- Line 304
			--[[ Upvalues[1]:
				[1]: any_useState_result2_upvr (readonly)
			]]
			any_useState_result2_upvr(arg1_7.AbsoluteCanvasSize)
		end
		function var105.onAbsoluteWindowSizeChanged(arg1_8) -- Line 307
			--[[ Upvalues[1]:
				[1]: any_useState_result2_upvr_5 (readonly)
			]]
			any_useState_result2_upvr_5(arg1_8.AbsoluteWindowSize)
		end
		var105.gradientHeight = 15
		local tbl_3 = {}
		local tbl = {}
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		tbl.Size = UDim2.new(0, any_useState_result1_5.X + useTokens_upvr().Stroke.Standard * 2, 0, 0)
		function tbl.onAbsoluteSizeChanged(arg1_9) -- Line 314
			--[[ Upvalues[1]:
				[1]: any_useState_result2_upvr_3 (readonly)
			]]
			any_useState_result2_upvr_3(arg1_9.AbsoluteSize)
		end
		tbl.tag = "auto-y col align-y-center gap-xsmall padding-xsmall"
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		tbl.ref = React_upvr.useRef(nil)
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		tbl_3.BaseMenu = React_upvr.createElement(View_upvr, tbl, React_upvr.useMemo(var46, tbl_5))
		tbl_18[1] = React_upvr.createElement(ScrollView_upvr, var105, tbl_3)
		tbl_9.AppFocusRoot = React_upvr.createElement(AppFocusRoot_upvr, var89, tbl_18)
		tbl_11.DropdownPopup = React_upvr.createElement(View_upvr, {
			tag = "auto-xy";
		}, tbl_9)
		tbl_15.Content = React_upvr.createElement(Popover_upvr.Content, {
			align = PopoverAlign_upvr.Center;
			side = PopoverSide_upvr.Bottom;
			hasArrow = false;
			onPressedOutside = any_useCallback_result1_upvr;
			selection = {
				Selectable = true;
			};
		}, tbl_11)
		module_2.Popover = React_upvr.createElement(Popover_upvr.Root, {
			isOpen = any_useState_result1_3_upvr;
		}, tbl_15)
	end
	return React_upvr.createElement(View_upvr, module_3, module_2)
end)