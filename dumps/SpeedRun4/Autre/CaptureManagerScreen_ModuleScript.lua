-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:58:13
-- Luau version 6, Types version 3
-- Time taken: 0.008137 seconds

local Parent_2 = script.Parent.Parent.Parent
local Parent = Parent_2.Parent
local Foundation = require(Parent.Foundation)
local React_upvr = require(Parent.React)
local RoactUtils = require(Parent.RoactUtils)
local UIBlox = require(Parent.UIBlox)
local function _(arg1) -- Line 66, Named "getItemsPerRow"
	return math.clamp(math.floor(arg1 / 90), 1, 3)
end
local function _(arg1, arg2) -- Line 70, Named "getGalleryItemSize"
	local clamped = math.clamp(math.floor(arg2 / 90), 1, 3)
	local var8 = (arg2 - 4 * (clamped - 1)) / clamped
	return Vector2.new(math.floor(var8), math.floor(var8 * arg1))
end
local CaptureManagerItem_upvr = require(Parent_2.Components.CaptureManager.CaptureManagerItem)
local function renderItem_upvr(arg1, arg2) -- Line 80, Named "renderItem"
	--[[ Upvalues[2]:
		[1]: React_upvr (readonly)
		[2]: CaptureManagerItem_upvr (readonly)
	]]
	local module = {}
	module.capture = arg1
	module.captureIndex = arg2
	return React_upvr.createElement(CaptureManagerItem_upvr, module)
end
local useAnalytics_upvr = require(Parent_2.Analytics.useAnalytics)
local useDispatch_upvr = RoactUtils.Hooks.RoactRodux.useDispatch
local useStyle_upvr = UIBlox.Core.Style.useStyle
local useTopbarInsetHeight_upvr = require(Parent_2.Hooks.useTopbarInsetHeight)
local useSelector_upvr = RoactUtils.Hooks.RoactRodux.useSelector
local Constants_upvr = require(Parent_2.Constants)
local useLocalization_upvr = require(Parent.Localization).Hooks.useLocalization
local useState_upvr = React_upvr.useState
local useScreenSize_upvr = require(Parent.RobloxAppHooks).useScreenSize
local useCallback_upvr = React_upvr.useCallback
local CaptureManagerClosed_upvr = require(Parent_2.Actions.CaptureManagerClosed)
local DeleteCaptures_upvr = require(Parent_2.Thunks.DeleteCaptures)
local UpdateSelectedCaptures_upvr = require(Parent_2.Actions.UpdateSelectedCaptures)
local EventNames_upvr = require(Parent_2.Analytics.EventNames)
local Dash_upvr = require(Parent.Dash)
local View_upvr = Foundation.View
local ImageSetButton_upvr = UIBlox.Core.ImageSet.ImageSetButton
local Images_upvr = UIBlox.App.ImageSet.Images
local udim2_upvr = UDim2.fromOffset(32, 32)
local Text_upvr = Foundation.Text
local ScrollView_upvr = Foundation.ScrollView
local ScrollBarVisibility_upvr = Foundation.Enums.ScrollBarVisibility
local GridView_upvr = UIBlox.App.Grid.GridView
local ShowMoreButton_upvr = require(Parent_2.Components.Common.ShowMoreButton)
local CaptureManagerCTAContainer_upvr = require(Parent_2.Components.CaptureManager.CaptureManagerCTAContainer)
local DeleteWarningModal_upvr = require(Parent_2.Components.Common.DeleteWarningModal)
local PermissionModal_upvr = require(Parent_2.Components.Common.PermissionModal)
local ToastContainer_upvr = require(Parent_2.Components.Common.ToastContainer)
return function(arg1) -- Line 87
	--[[ Upvalues[30]:
		[1]: useAnalytics_upvr (readonly)
		[2]: useDispatch_upvr (readonly)
		[3]: useStyle_upvr (readonly)
		[4]: useTopbarInsetHeight_upvr (readonly)
		[5]: useSelector_upvr (readonly)
		[6]: Constants_upvr (readonly)
		[7]: useLocalization_upvr (readonly)
		[8]: React_upvr (readonly)
		[9]: useState_upvr (readonly)
		[10]: useScreenSize_upvr (readonly)
		[11]: useCallback_upvr (readonly)
		[12]: CaptureManagerClosed_upvr (readonly)
		[13]: DeleteCaptures_upvr (readonly)
		[14]: UpdateSelectedCaptures_upvr (readonly)
		[15]: EventNames_upvr (readonly)
		[16]: Dash_upvr (readonly)
		[17]: View_upvr (readonly)
		[18]: ImageSetButton_upvr (readonly)
		[19]: Images_upvr (readonly)
		[20]: udim2_upvr (readonly)
		[21]: Text_upvr (readonly)
		[22]: ScrollView_upvr (readonly)
		[23]: ScrollBarVisibility_upvr (readonly)
		[24]: GridView_upvr (readonly)
		[25]: renderItem_upvr (readonly)
		[26]: ShowMoreButton_upvr (readonly)
		[27]: CaptureManagerCTAContainer_upvr (readonly)
		[28]: DeleteWarningModal_upvr (readonly)
		[29]: PermissionModal_upvr (readonly)
		[30]: ToastContainer_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local useDispatch_upvr_result1_upvr = useDispatch_upvr()
	local useStyle_upvr_result1 = useStyle_upvr()
	local var15_result1 = useTopbarInsetHeight_upvr()
	local useSelector_upvr_result1_upvr = useSelector_upvr(function(arg1_2) -- Line 94
		--[[ Upvalues[1]:
			[1]: Constants_upvr (copied, readonly)
		]]
		return arg1_2[Constants_upvr.RoduxKey].Captures
	end)
	local var16_result1_upvr = useSelector_upvr(function(arg1_3) -- Line 98
		--[[ Upvalues[1]:
			[1]: Constants_upvr (copied, readonly)
		]]
		return arg1_3[Constants_upvr.RoduxKey].CaptureManager.SelectedCaptures
	end)
	local tbl = {
		cancelSelectAllAction = "Feature.Captures.Action.CancelSelectAllCaptures";
		selectAllAction = "Feature.Captures.Action.SelectAllCaptures";
	}
	local any_useRef_result1_upvr = React_upvr.useRef(nil)
	local useState_upvr_result1, var19_result2_upvr = useState_upvr(Vector2.new(0, 0))
	local useState_upvr_result1_2, useState_upvr_result2_upvr = useState_upvr(false)
	local useState_upvr_result1_3, useState_upvr_result2_upvr_2 = useState_upvr(false)
	local any_useState_result1_upvr, any_useState_result2_upvr = React_upvr.useState(24)
	local var58
	if #var16_result1_upvr == 0 then
		var58 = useLocalization_upvr(tbl).selectAllAction
	else
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		var58 = useLocalization_upvr(tbl).cancelSelectAllAction
	end
	local var20_result1 = useScreenSize_upvr()
	React_upvr.useEffect(function() -- Line 121
		--[[ Upvalues[2]:
			[1]: any_useRef_result1_upvr (readonly)
			[2]: var19_result2_upvr (readonly)
		]]
		if any_useRef_result1_upvr.current then
			var19_result2_upvr(any_useRef_result1_upvr.current.AbsoluteSize)
		end
	end, {})
	local useCallback_upvr_result1 = useCallback_upvr(function() -- Line 144
		--[[ Upvalues[3]:
			[1]: useDispatch_upvr_result1_upvr (readonly)
			[2]: DeleteCaptures_upvr (copied, readonly)
			[3]: var16_result1_upvr (readonly)
		]]
		useDispatch_upvr_result1_upvr(DeleteCaptures_upvr(var16_result1_upvr))
	end, {var16_result1_upvr})
	local useAnalytics_upvr_result1_upvr = useAnalytics_upvr()
	if not useSelector_upvr(function(arg1_4) -- Line 102
		--[[ Upvalues[1]:
			[1]: Constants_upvr (copied, readonly)
		]]
		return arg1_4[Constants_upvr.RoduxKey].CaptureManager.IsOpen
	end) then
		return nil
	end
	local var75 = false
	if 0 < useState_upvr_result1.X then
		if 0 >= useState_upvr_result1.Y then
			var75 = false
		else
			var75 = true
		end
	end
	local var76 = useState_upvr_result1.X - 41
	local var77 = var76
	local clamped_2 = math.clamp(math.floor(var77 / 90), 1, 3)
	local var79 = (var77 - 4 * (clamped_2 - 1)) / clamped_2
	local vector2 = Vector2.new(math.floor(var79), math.floor(var79 * math.clamp(var20_result1.Y / var20_result1.X, 0.42857142857142855, 1)))
	if useState_upvr_result1.Y >= var76 then
		-- KONSTANTWARNING: GOTO [219] #181
	end
	local var81 = true
	if var81 then
	else
	end
	local module_2 = {}
	local tbl_3 = {
		TitleFrame = React_upvr.createElement(View_upvr, {
			LayoutOrder = 1;
			Size = UDim2.new(1, 0, 0, 32);
			tag = "bg-action-subtle";
			ZIndex = 2;
		}, {
			CloseButton = React_upvr.createElement(ImageSetButton_upvr, {
				AnchorPoint = Vector2.new(0, 0.5);
				BackgroundTransparency = 1;
				Image = Images_upvr["icons/navigation/close"];
				ImageColor3 = useStyle_upvr_result1.Theme.IconEmphasis.Color;
				ImageTransparency = useStyle_upvr_result1.Theme.IconEmphasis.Transparency;
				Position = UDim2.new(0, 0, 0.5, 0);
				Size = udim2_upvr;
				[React_upvr.Event.Activated] = useCallback_upvr(function() -- Line 131
					--[[ Upvalues[3]:
						[1]: useState_upvr_result2_upvr (readonly)
						[2]: useDispatch_upvr_result1_upvr (readonly)
						[3]: CaptureManagerClosed_upvr (copied, readonly)
					]]
					useState_upvr_result2_upvr(false)
					useDispatch_upvr_result1_upvr(CaptureManagerClosed_upvr())
				end, {});
			});
			SelectOrDeselectAllButton = React_upvr.createElement(Text_upvr, {
				LayoutOrder = 1;
				onActivated = useCallback_upvr(function() -- Line 148
					--[[ Upvalues[6]:
						[1]: var16_result1_upvr (readonly)
						[2]: useDispatch_upvr_result1_upvr (readonly)
						[3]: UpdateSelectedCaptures_upvr (copied, readonly)
						[4]: useSelector_upvr_result1_upvr (readonly)
						[5]: useAnalytics_upvr_result1_upvr (readonly)
						[6]: EventNames_upvr (copied, readonly)
					]]
					if #var16_result1_upvr == 0 then
						useDispatch_upvr_result1_upvr(UpdateSelectedCaptures_upvr(useSelector_upvr_result1_upvr))
						useAnalytics_upvr_result1_upvr.fireEvent(EventNames_upvr.CapturesManagerSelectAllActivated)
					else
						useDispatch_upvr_result1_upvr(UpdateSelectedCaptures_upvr({}))
					end
				end, {var16_result1_upvr, useSelector_upvr_result1_upvr});
				Position = UDim2.new(1, -16, 0.5, 2);
				tag = "auto-x anchor-center-right bg-action-subtle size-0-full text-defaults text-align-x-center text-align-y-center text-title-large";
				Text = var58;
				ZIndex = 2;
			});
		});
	}
	local tbl_4 = {}
	local var93 = var75
	if var93 then
		var93 = React_upvr.createElement
		var93 = var93(GridView_upvr, {
			itemPadding = Vector2.new(4, 4);
			items = React_upvr.useMemo(function() -- Line 161
				--[[ Upvalues[3]:
					[1]: useSelector_upvr_result1_upvr (readonly)
					[2]: any_useState_result1_upvr (readonly)
					[3]: Dash_upvr (copied, readonly)
				]]
				return Dash_upvr.slice(useSelector_upvr_result1_upvr, 1, math.min(#useSelector_upvr_result1_upvr, any_useState_result1_upvr))
			end, {useSelector_upvr_result1_upvr, any_useState_result1_upvr});
			itemSize = vector2;
			LayoutOrder = 1;
			maxHeight = (vector2.Y + 4) * math.ceil(#useSelector_upvr_result1_upvr / math.clamp(math.floor(var76 / 90), 1, 3));
			renderItem = renderItem_upvr;
			Size = UDim2.fromScale(1, 0.9);
		})
	end
	tbl_4.GridView = var93
	var93 = false
	local var95 = var93
	if any_useState_result1_upvr < #useSelector_upvr_result1_upvr then
		var95 = React_upvr.createElement
		var95 = var95(ShowMoreButton_upvr, {
			buttonHeight = 40;
			LayoutOrder = 2;
			onActivated = React_upvr.useCallback(function() -- Line 157
				--[[ Upvalues[2]:
					[1]: any_useState_result2_upvr (readonly)
					[2]: any_useState_result1_upvr (readonly)
				]]
				any_useState_result2_upvr(any_useState_result1_upvr + 24)
			end, {any_useState_result1_upvr});
		})
	end
	tbl_4.ShowMoreButton = var95
	tbl_3.ScrollingFrame = React_upvr.createElement(ScrollView_upvr, {
		BorderSizePixel = 0;
		LayoutOrder = 2;
		scroll = {
			AutomaticCanvasSize = Enum.AutomaticSize.Y;
			CanvasSize = UDim2.fromScale(1, 0);
			ScrollingDirection = Enum.ScrollingDirection.Y;
			scrollBarVisibility = ScrollBarVisibility_upvr.None;
		};
		Size = UDim2.new(1, 0, 1, -(82 + 40));
		tag = "bg-action-subtle gap-xsmall col align-x-center align-y-top";
	}, tbl_4)
	local tbl_2 = {
		deleteItem = useCallback_upvr_result1;
	}
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	tbl_2.height = 82
	tbl_2.isDisabled = useState_upvr_result1_2
	tbl_2.isHorizontal = var81
	tbl_2.LayoutOrder = 3
	tbl_2.openPermissionModal = useCallback_upvr(function() -- Line 136
		--[[ Upvalues[1]:
			[1]: useState_upvr_result2_upvr_2 (readonly)
		]]
		useState_upvr_result2_upvr_2(true)
	end, {})
	tbl_2.width = var76
	tbl_2.ZIndex = 2
	tbl_3.CTAContainer = React_upvr.createElement(CaptureManagerCTAContainer_upvr, tbl_2)
	module_2.CaptureManagerContainer = React_upvr.createElement(View_upvr, {
		tag = "bg-action-subtle size-full padding-bottom-small padding-right-small padding-left-xxlarge padding-top-xxlarge gap-xsmall col align-x-center align-y-top";
	}, tbl_3)
	module_2.DeleteWarningModal = React_upvr.createElement(DeleteWarningModal_upvr, {
		deleteItem = useCallback_upvr_result1;
		zIndex = 3;
	})
	module_2.PermissionModal = React_upvr.createElement(PermissionModal_upvr, {
		closeModal = useCallback_upvr(function() -- Line 140
			--[[ Upvalues[1]:
				[1]: useState_upvr_result2_upvr_2 (readonly)
			]]
			useState_upvr_result2_upvr_2(false)
		end, {});
		visible = useState_upvr_result1_3;
		zIndex = 3;
	})
	module_2.ToastsFrame = React_upvr.createElement(View_upvr, {
		tag = "bg-action-subtle size-full";
		ZIndex = Constants_upvr.ZIndex.Toasts;
	}, {
		ToastContainer = React_upvr.createElement(ToastContainer_upvr);
	})
	return React_upvr.createElement(View_upvr, {
		BorderSizePixel = 0;
		onAbsoluteSizeChanged = useCallback_upvr(function(arg1_5) -- Line 127
			--[[ Upvalues[1]:
				[1]: var19_result2_upvr (readonly)
			]]
			var19_result2_upvr(arg1_5.AbsoluteSize)
		end, {});
		Position = UDim2.fromOffset(0, -var15_result1);
		ref = any_useRef_result1_upvr;
		Size = UDim2.new(1, 0, 1, var15_result1);
		tag = "bg-surface-100";
	}, module_2)
end