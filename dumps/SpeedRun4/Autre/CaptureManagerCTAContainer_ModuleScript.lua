-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:58:12
-- Luau version 6, Types version 3
-- Time taken: 0.016244 seconds

local Parent_2 = script.Parent.Parent.Parent
local Parent = Parent_2.Parent
local React_upvr = require(Parent.React)
local RoactUtils = require(Parent.RoactUtils)
local UIBlox = require(Parent.UIBlox)
local useAnalytics_upvr = require(Parent_2.Analytics.useAnalytics)
local useDispatch_upvr = RoactUtils.Hooks.RoactRodux.useDispatch
local useStyle_upvr = UIBlox.Core.Style.useStyle
local useRef_upvr = React_upvr.useRef
local useSelector_upvr = RoactUtils.Hooks.RoactRodux.useSelector
local Constants_upvr = require(Parent_2.Constants)
local FFlagCapturesHideVideoShareCTA_upvr = require(Parent_2.Flags.FFlagCapturesHideVideoShareCTA)
local game_DefineFastInt_result1_upvr = game:DefineFastInt("CapturesSaveToExternalStorageLimit", 10)
local FFlagCapturesHideVideoSaveCTA_upvr = require(Parent_2.Flags.FFlagCapturesHideVideoSaveCTA)
local useLocalization_upvr = require(Parent.Localization).Hooks.useLocalization
local CaptureType_upvr = require(Parent_2.Enums.CaptureType)
local getSaveToStoragePermission_upvr = require(Parent_2.Utils.getSaveToStoragePermission)
local EventNames_upvr = require(Parent_2.Analytics.EventNames)
local SocialStopwatch_upvr = require(Parent.SocialStopwatch)
local ShareCapture_upvr = require(Parent_2.Thunks.ShareCapture)
local ExternalShareSourceType_upvr = require(Parent_2.Enums.ExternalShareSourceType)
local getIsDeleteWarningModalOptedOut_upvr = require(Parent_2.Utils.getIsDeleteWarningModalOptedOut)
local DeleteWarningModalOpened_upvr = require(Parent_2.Actions.DeleteWarningModalOpened)
local IconButton_upvr = UIBlox.App.Button.IconButton
local Images_upvr = UIBlox.App.ImageSet.Images
local IconSize_upvr = UIBlox.App.Constant.IconSize
local udim2_upvr = UDim2.new(0.33, 0, 0, 36)
return require(Parent_2.App.CapturesPolicy).connect(function(arg1) -- Line 268
	return {
		enableShareCaptureCTA = arg1.enableShareCaptureCTA();
	}
end)(function(arg1) -- Line 55
	--[[ Upvalues[23]:
		[1]: useAnalytics_upvr (readonly)
		[2]: useDispatch_upvr (readonly)
		[3]: useStyle_upvr (readonly)
		[4]: useRef_upvr (readonly)
		[5]: useSelector_upvr (readonly)
		[6]: Constants_upvr (readonly)
		[7]: React_upvr (readonly)
		[8]: FFlagCapturesHideVideoShareCTA_upvr (readonly)
		[9]: game_DefineFastInt_result1_upvr (readonly)
		[10]: FFlagCapturesHideVideoSaveCTA_upvr (readonly)
		[11]: useLocalization_upvr (readonly)
		[12]: CaptureType_upvr (readonly)
		[13]: getSaveToStoragePermission_upvr (readonly)
		[14]: EventNames_upvr (readonly)
		[15]: SocialStopwatch_upvr (readonly)
		[16]: ShareCapture_upvr (readonly)
		[17]: ExternalShareSourceType_upvr (readonly)
		[18]: getIsDeleteWarningModalOptedOut_upvr (readonly)
		[19]: DeleteWarningModalOpened_upvr (readonly)
		[20]: IconButton_upvr (readonly)
		[21]: Images_upvr (readonly)
		[22]: IconSize_upvr (readonly)
		[23]: udim2_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local var7_result1_upvr = useAnalytics_upvr()
	local var8_result1_upvr = useDispatch_upvr()
	local useStyle_upvr_result1 = useStyle_upvr()
	local useRef_upvr_result1_upvr = useRef_upvr(0)
	local useSelector_upvr_result1_upvr = useSelector_upvr(function(arg1_3) -- Line 62
		--[[ Upvalues[1]:
			[1]: Constants_upvr (copied, readonly)
		]]
		return arg1_3[Constants_upvr.RoduxKey].CaptureManager.SelectedCaptures
	end)
	local any_useState_result1_2, any_useState_result2_upvr = React_upvr.useState(false)
	local len_upvr = #useSelector_upvr_result1_upvr
	local var82_upvr = true
	local var83_upvr
	if #useSelector_upvr_result1_upvr ~= 0 then
		var82_upvr = true
		var83_upvr = 1
		if var83_upvr >= #useSelector_upvr_result1_upvr then
			var82_upvr = FFlagCapturesHideVideoShareCTA_upvr and any_useState_result1_2
		end
	end
	local var84 = true
	var83_upvr = #useSelector_upvr_result1_upvr
	if var83_upvr ~= 0 then
		var84 = true
		var83_upvr = #useSelector_upvr_result1_upvr
		if game_DefineFastInt_result1_upvr >= var83_upvr then
			var83_upvr = FFlagCapturesHideVideoSaveCTA_upvr
			var84 = var83_upvr and any_useState_result1_2
		end
	end
	if #useSelector_upvr_result1_upvr ~= 0 then
		var83_upvr = false
	else
		var83_upvr = true
	end
	if arg1.isHorizontal then
		-- KONSTANTWARNING: GOTO [54] #46
	end
	if arg1.isHorizontal then
		-- KONSTANTWARNING: GOTO [62] #51
	end
	if arg1.isHorizontal then
		-- KONSTANTWARNING: GOTO [83] #67
	end
	if arg1.isHorizontal then
		local _ = UDim2.new(0, 279, 0, arg1.height)
	else
	end
	React_upvr.useEffect(function() -- Line 94
		--[[ Upvalues[5]:
			[1]: FFlagCapturesHideVideoSaveCTA_upvr (copied, readonly)
			[2]: FFlagCapturesHideVideoShareCTA_upvr (copied, readonly)
			[3]: useSelector_upvr_result1_upvr (readonly)
			[4]: CaptureType_upvr (copied, readonly)
			[5]: any_useState_result2_upvr (readonly)
		]]
		-- KONSTANTERROR: [0] 1. Error Block 11 start (CF ANALYSIS FAILED)
		if not FFlagCapturesHideVideoSaveCTA_upvr and not FFlagCapturesHideVideoShareCTA_upvr then return end
		-- KONSTANTERROR: [0] 1. Error Block 11 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [19] 17. Error Block 7 start (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [19] 17. Error Block 7 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [10] 11. Error Block 5 start (CF ANALYSIS FAILED)
		-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [19.6]
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		-- KONSTANTERROR: [10] 11. Error Block 5 end (CF ANALYSIS FAILED)
	end, {useSelector_upvr_result1_upvr})
	local var16_result1_upvr = useLocalization_upvr({
		selectCaptureLabel = "Feature.Captures.Label.SelectCapture";
		oneCaptureSelectedLabel = "Feature.Captures.Label.OneCaptureSelected";
		multipleCapturesSelectedLabel = {
			numberOfCaptures = len_upvr;
			"Feature.Captures.Label.MultipleCapturesSelected"
		};
	})
	local any_useCallback_result1_upvr_4 = React_upvr.useCallback(function() -- Line 119
		--[[ Upvalues[2]:
			[1]: arg1 (readonly)
			[2]: useRef_upvr_result1_upvr (readonly)
		]]
		if arg1.isDisabled then
			return true
		end
		if DateTime.now().UnixTimestampMillis - useRef_upvr_result1_upvr.current < 500 then
			return true
		end
		return false
	end, {arg1.isDisabled})
	local any_useCallback_result1_upvr_2 = React_upvr.useCallback(function() -- Line 133
		--[[ Upvalues[1]:
			[1]: useRef_upvr_result1_upvr (readonly)
		]]
		useRef_upvr_result1_upvr.current = DateTime.now().UnixTimestampMillis
	end, {})
	local module_2 = {
		Layout = React_upvr.createElement("UIListLayout", {
			FillDirection = Enum.FillDirection.Vertical;
			HorizontalAlignment = Enum.HorizontalAlignment.Center;
			Padding = UDim.new(0, 0);
			SortOrder = Enum.SortOrder.LayoutOrder;
			VerticalAlignment = Enum.VerticalAlignment.Center;
		});
		Padding = React_upvr.createElement("UIPadding", {
			PaddingRight = UDim.new(0, 16);
		});
		CapturesLabel = React_upvr.createElement("TextLabel", {
			AnchorPoint = Vector2.new(1, 0.5);
			AutomaticSize = Enum.AutomaticSize.X;
			BackgroundTransparency = 1;
			Font = useStyle_upvr_result1.Font.Header2.Font;
			LayoutOrder = 1;
			Position = UDim2.new(1, 0, 1, 0);
			Size = UDim2.new(1, 0, 0, 38);
			Text = React_upvr.useCallback(function() -- Line 109
				--[[ Upvalues[2]:
					[1]: len_upvr (readonly)
					[2]: var16_result1_upvr (readonly)
				]]
				if len_upvr == 0 then
					return var16_result1_upvr.selectCaptureLabel
				end
				if len_upvr == 1 then
					return var16_result1_upvr.oneCaptureSelectedLabel
				end
				return var16_result1_upvr.multipleCapturesSelectedLabel
			end, {len_upvr})();
			TextColor3 = useStyle_upvr_result1.Theme.TextEmphasis.Color;
			TextSize = useStyle_upvr_result1.Font.BaseSize * useStyle_upvr_result1.Font.CaptionHeader.RelativeSize;
			TextXAlignment = Enum.TextXAlignment.Center;
			TextYAlignment = Enum.TextYAlignment.Center;
			ZIndex = 1;
		});
	}
	local tbl_17 = {
		Layout = React_upvr.createElement("UIListLayout", {
			FillDirection = Enum.FillDirection.Horizontal;
			HorizontalAlignment = Enum.HorizontalAlignment.Center;
			SortOrder = Enum.SortOrder.LayoutOrder;
			VerticalAlignment = Enum.VerticalAlignment.Center;
		});
		BulkSaveButton = React_upvr.createElement(IconButton_upvr, {
			backgroundColor = useStyle_upvr_result1.Theme.BackgroundUIContrast;
			icon = Images_upvr["icons/actions/download_medium"];
			iconSize = IconSize_upvr.Medium;
			isDisabled = var84;
			layoutOrder = 1;
			onActivated = React_upvr.useCallback(function() -- Line 137
				--[[ Upvalues[8]:
					[1]: any_useCallback_result1_upvr_4 (readonly)
					[2]: useSelector_upvr_result1_upvr (readonly)
					[3]: getSaveToStoragePermission_upvr (copied, readonly)
					[4]: arg1 (readonly)
					[5]: var8_result1_upvr (readonly)
					[6]: var7_result1_upvr (readonly)
					[7]: EventNames_upvr (copied, readonly)
					[8]: any_useCallback_result1_upvr_2 (readonly)
				]]
				if any_useCallback_result1_upvr_4() or #useSelector_upvr_result1_upvr == 0 then
				else
					getSaveToStoragePermission_upvr(useSelector_upvr_result1_upvr, arg1.openPermissionModal, var8_result1_upvr)
					var7_result1_upvr.fireEvent(EventNames_upvr.CapturesManagerBulkSaveToExternalStorageActivated)
					any_useCallback_result1_upvr_2()
				end
			end, {useSelector_upvr_result1_upvr, any_useCallback_result1_upvr_4, any_useCallback_result1_upvr_2, arg1.openPermissionModal});
			size = udim2_upvr;
		});
	}
	local enableShareCaptureCTA_2 = arg1.enableShareCaptureCTA
	if enableShareCaptureCTA_2 then
		enableShareCaptureCTA_2 = React_upvr.createElement
		enableShareCaptureCTA_2 = enableShareCaptureCTA_2(IconButton_upvr, {
			backgroundColor = useStyle_upvr_result1.Theme.BackgroundUIContrast;
			icon = Images_upvr["icons/actions/share"];
			iconSize = IconSize_upvr.Medium;
			isDisabled = var82_upvr;
			layoutOrder = 1;
			onActivated = React_upvr.useCallback(function() -- Line 148
				--[[ Upvalues[10]:
					[1]: any_useCallback_result1_upvr_4 (readonly)
					[2]: var82_upvr (readonly)
					[3]: useSelector_upvr_result1_upvr (readonly)
					[4]: any_useCallback_result1_upvr_2 (readonly)
					[5]: var7_result1_upvr (readonly)
					[6]: EventNames_upvr (copied, readonly)
					[7]: SocialStopwatch_upvr (copied, readonly)
					[8]: var8_result1_upvr (readonly)
					[9]: ShareCapture_upvr (copied, readonly)
					[10]: ExternalShareSourceType_upvr (copied, readonly)
				]]
				if any_useCallback_result1_upvr_4() or var82_upvr then
				else
					any_useCallback_result1_upvr_2()
					var7_result1_upvr.fireEvent(EventNames_upvr.CapturesManagerShareActivated)
					if not SocialStopwatch_upvr.Stopwatch.get(SocialStopwatch_upvr.Events.CaptureShared) then
						SocialStopwatch_upvr.Stopwatch.start(SocialStopwatch_upvr.Events.CaptureShared)
					end
					var8_result1_upvr(ShareCapture_upvr(useSelector_upvr_result1_upvr[1], ExternalShareSourceType_upvr.CapturesManager))
				end
			end, {any_useCallback_result1_upvr_4, var82_upvr, arg1.isDisabled, any_useCallback_result1_upvr_2, useSelector_upvr_result1_upvr});
			size = udim2_upvr;
		})
	end
	tbl_17.BulkShareButton = enableShareCaptureCTA_2
	tbl_17.BulkDeleteButton = React_upvr.createElement(IconButton_upvr, {
		icon = Images_upvr["icons/actions/edit/delete"];
		iconSize = IconSize_upvr.Medium;
		isDisabled = var83_upvr;
		layoutOrder = 2;
		onActivated = React_upvr.useCallback(function() -- Line 166
			--[[ Upvalues[9]:
				[1]: any_useCallback_result1_upvr_4 (readonly)
				[2]: var83_upvr (readonly)
				[3]: any_useCallback_result1_upvr_2 (readonly)
				[4]: var7_result1_upvr (readonly)
				[5]: EventNames_upvr (copied, readonly)
				[6]: getIsDeleteWarningModalOptedOut_upvr (copied, readonly)
				[7]: arg1 (readonly)
				[8]: var8_result1_upvr (readonly)
				[9]: DeleteWarningModalOpened_upvr (copied, readonly)
			]]
			-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
			local var103
			if any_useCallback_result1_upvr_4() or var83_upvr then
			else
				any_useCallback_result1_upvr_2()
				var7_result1_upvr.fireEvent(EventNames_upvr.CapturesDeleteActivatedInCaptureManager)
				if getIsDeleteWarningModalOptedOut_upvr() then
					if arg1.deleteItem == nil then
					else
					end
					assert(true, "props.deleteItem should not be nil")
					arg1.deleteItem()
					return
				end
				var8_result1_upvr(DeleteWarningModalOpened_upvr())
			end
		end, {any_useCallback_result1_upvr_4, var83_upvr, arg1.deleteItem, arg1.isDisabled, any_useCallback_result1_upvr_2});
		size = udim2_upvr;
	})
	module_2.CTAContainer = React_upvr.createElement("Frame", {
		BackgroundColor3 = useStyle_upvr_result1.Theme.BackgroundContrast.Color;
		BackgroundTransparency = useStyle_upvr_result1.Theme.BackgroundContrast.Transparency;
		BorderSizePixel = 0;
		LayoutOrder = arg1.LayoutOrder;
		Size = UDim2.new(1, 0, 0, 44);
		ZIndex = arg1.ZIndex;
	}, tbl_17)
	return React_upvr.createElement("Frame", {
		BackgroundColor3 = useStyle_upvr_result1.Theme.BackgroundContrast.Color;
		BackgroundTransparency = useStyle_upvr_result1.Theme.BackgroundContrast.Transparency;
		BorderSizePixel = 0;
		LayoutOrder = arg1.LayoutOrder;
		Size = UDim2.new(1, 0, 0, arg1.height);
		ZIndex = arg1.ZIndex;
	}, module_2)
end)