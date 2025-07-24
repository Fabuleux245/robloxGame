-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:58:19
-- Luau version 6, Types version 3
-- Time taken: 0.005915 seconds

local Parent_2 = script.Parent.Parent.Parent
local Parent = Parent_2.Parent
local CapturesCommon = require(Parent.CapturesCommon)
local RoactUtils = require(Parent.RoactUtils)
local useAnalytics_upvr = require(Parent_2.Analytics.useAnalytics)
local useDispatch_upvr = RoactUtils.Hooks.RoactRodux.useDispatch
local useStyle_upvr = require(Parent.UIBlox).Core.Style.useStyle
local useSelector_upvr = RoactUtils.Hooks.RoactRodux.useSelector
local Constants_upvr = require(Parent_2.Constants)
local useLocalization_upvr = require(Parent.Localization).Hooks.useLocalization
local React_upvr = require(Parent.React)
local EventNames_upvr = require(Parent_2.Analytics.EventNames)
local CarouselOpened_upvr = require(Parent_2.Actions.CarouselOpened)
local FFlagUseCaptureCommonComponents_upvr = require(Parent_2.Flags.FFlagUseCaptureCommonComponents)
local CaptureGridView_upvr = CapturesCommon.Components.CaptureGridView
local GalleryActionContainer_upvr = require(Parent_2.Components.CapturesGallery.GalleryActionContainer)
local CaptureItem_upvr = CapturesCommon.Components.CaptureItem
local GalleryGridView_upvr = require(Parent_2.Components.CapturesGallery.GalleryGridView)
return function(arg1) -- Line 35
	--[[ Upvalues[14]:
		[1]: useAnalytics_upvr (readonly)
		[2]: useDispatch_upvr (readonly)
		[3]: useStyle_upvr (readonly)
		[4]: useSelector_upvr (readonly)
		[5]: Constants_upvr (readonly)
		[6]: useLocalization_upvr (readonly)
		[7]: React_upvr (readonly)
		[8]: EventNames_upvr (readonly)
		[9]: CarouselOpened_upvr (readonly)
		[10]: FFlagUseCaptureCommonComponents_upvr (readonly)
		[11]: CaptureGridView_upvr (readonly)
		[12]: GalleryActionContainer_upvr (readonly)
		[13]: CaptureItem_upvr (readonly)
		[14]: GalleryGridView_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local useStyle_upvr_result1 = useStyle_upvr()
	local function var21(arg1_2) -- Line 40
		--[[ Upvalues[1]:
			[1]: Constants_upvr (copied, readonly)
		]]
		return arg1_2[Constants_upvr.RoduxKey].Captures
	end
	local useSelector_upvr_result1 = useSelector_upvr(var21)
	local var25
	if next(useSelector_upvr_result1) ~= nil then
		var21 = false
	else
		var21 = true
	end
	local tbl_2 = {}
	var25 = "Feature.Captures.Label.NothingHereYet"
	tbl_2.nothingHereYet = var25
	var25 = "Feature.Captures.Title.Gallery"
	tbl_2.title = var25
	var25 = React_upvr
	local useAnalytics_upvr_result1_upvr = useAnalytics_upvr()
	local var7_result1_upvr = useDispatch_upvr()
	function var25(arg1_3) -- Line 51
		--[[ Upvalues[4]:
			[1]: useAnalytics_upvr_result1_upvr (readonly)
			[2]: EventNames_upvr (copied, readonly)
			[3]: var7_result1_upvr (readonly)
			[4]: CarouselOpened_upvr (copied, readonly)
		]]
		return function() -- Line 52
			--[[ Upvalues[5]:
				[1]: useAnalytics_upvr_result1_upvr (copied, readonly)
				[2]: EventNames_upvr (copied, readonly)
				[3]: var7_result1_upvr (copied, readonly)
				[4]: CarouselOpened_upvr (copied, readonly)
				[5]: arg1_3 (readonly)
			]]
			useAnalytics_upvr_result1_upvr.fireEvent(EventNames_upvr.CapturesCarouselOpened)
			var7_result1_upvr(CarouselOpened_upvr(arg1_3))
		end
	end
	var25 = arg1.Size
	if not var25 then
		var25 = UDim2.fromScale(1, 1)
	end
	local module_2 = {
		UICorner = React_upvr.createElement("UICorner", {
			CornerRadius = UDim.new(0, 8);
		});
		Layout = React_upvr.createElement("UIListLayout", {
			FillDirection = Enum.FillDirection.Vertical;
			HorizontalAlignment = Enum.HorizontalAlignment.Center;
			Padding = UDim.new(0, 12);
			SortOrder = Enum.SortOrder.LayoutOrder;
			VerticalAlignment = Enum.VerticalAlignment.Top;
		});
	}
	if var21 then
	end
	module_2.NothingHereYet = React_upvr.createElement("TextLabel", {
		BackgroundTransparency = 1;
		Font = useStyle_upvr_result1.Font.CaptionBody.Font;
		Size = UDim2.new(1, -12, 1, 12);
		Text = useLocalization_upvr(tbl_2).nothingHereYet;
		TextColor3 = useStyle_upvr_result1.Theme.TextMuted.Color;
		TextSize = useStyle_upvr_result1.Font.BaseSize * useStyle_upvr_result1.Font.CaptionBody.RelativeSize;
		TextTransparency = useStyle_upvr_result1.Theme.TextMuted.Transparency;
		TextWrapped = true;
		TextXAlignment = Enum.TextXAlignment.Center;
	}, {
		MaxSize = React_upvr.createElement("UISizeConstraint", {
			MaxSize = Vector2.new(312, math.huge);
		});
	})
	if not var21 then
		if FFlagUseCaptureCommonComponents_upvr then
			local tbl = {
				captures = useSelector_upvr_result1;
				header = React_upvr.createElement(GalleryActionContainer_upvr, {
					isDisabled = false;
					itemCount = #useSelector_upvr_result1;
					LayoutOrder = 1;
				});
			}
			local any_useCallback_result1_upvr = var25.useCallback(var25, {})
			function tbl.renderItem(arg1_4, arg2) -- Line 112
				--[[ Upvalues[3]:
					[1]: React_upvr (copied, readonly)
					[2]: CaptureItem_upvr (copied, readonly)
					[3]: any_useCallback_result1_upvr (readonly)
				]]
				local module = {}
				module.capture = arg1_4
				module.onActivated = any_useCallback_result1_upvr(arg2)
				return React_upvr.createElement(CaptureItem_upvr, module)
			end
			tbl.shouldShowShowMoreButton = true
		else
			local tbl_3 = {
				captures = useSelector_upvr_result1;
				Size = UDim2.new(1, -12, 1, -12);
			}
		end
	else
	end
	module_2.GalleryGridView = nil
	return React_upvr.createElement("Frame", {
		BackgroundColor3 = useStyle_upvr_result1.Theme.BackgroundDefault.Color;
		BackgroundTransparency = useStyle_upvr_result1.Theme.BackgroundDefault.Transparency;
		BorderSizePixel = 0;
		LayoutOrder = arg1.LayoutOrder;
		Size = var25;
	}, module_2)
end