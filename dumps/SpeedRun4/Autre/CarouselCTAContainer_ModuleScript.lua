-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:58:14
-- Luau version 6, Types version 3
-- Time taken: 0.007912 seconds

local Parent_2 = script.Parent.Parent.Parent
local Parent = Parent_2.Parent
local React_upvr = require(Parent.React)
local RoactUtils = require(Parent.RoactUtils)
local UIBlox = require(Parent.UIBlox)
local useAnalytics_upvr = require(Parent_2.Analytics.useAnalytics)
local useDispatch_upvr = RoactUtils.Hooks.RoactRodux.useDispatch
local useStyle_upvr = UIBlox.Core.Style.useStyle
local useRef_upvr = React_upvr.useRef
local FFlagEnableOnPlatformSharingExperiment_upvr = require(Parent.SharedFlags).FFlagEnableOnPlatformSharingExperiment
local useUserExperiment_upvr = require(Parent.RoactAppExperiment).useUserExperiment
local FStringSocialCaptureTakenIXPLayer_upvr = require(Parent.SharedFlags).FStringSocialCaptureTakenIXPLayer
local useSelector_upvr = RoactUtils.Hooks.RoactRodux.useSelector
local Constants_upvr = require(Parent_2.Constants)
local getIsCapturePostable_upvr = require(Parent_2.Utils.getIsCapturePostable)
local getSaveToStoragePermission_upvr = require(Parent_2.Utils.getSaveToStoragePermission)
local FFlagCapturesVideoCaptureLoggingEnabled_upvr = require(Parent_2.Flags.FFlagCapturesVideoCaptureLoggingEnabled)
local CaptureType_upvr = require(Parent_2.Enums.CaptureType)
local EventNames_upvr = require(Parent_2.Analytics.EventNames)
local getCaptureUploadData_upvr = require(Parent_2.Utils.getCaptureUploadData)
local ComposerOpened_upvr = require(Parent_2.Actions.ComposerOpened)
local RbxAnalyticsService_upvr = game:GetService("RbxAnalyticsService")
local SocialStopwatch_upvr = require(Parent.SocialStopwatch)
local ShareCapture_upvr = require(Parent_2.Thunks.ShareCapture)
local ExternalShareSourceType_upvr = require(Parent_2.Enums.ExternalShareSourceType)
local getIsDeleteWarningModalOptedOut_upvr = require(Parent_2.Utils.getIsDeleteWarningModalOptedOut)
local DeleteWarningModalOpened_upvr = require(Parent_2.Actions.DeleteWarningModalOpened)
local udim_upvr = UDim.new(0, 8)
local udim_upvr_2 = UDim.new(0.12, 0)
local FFlagCapturesHideVideoSaveCTA_upvr = require(Parent_2.Flags.FFlagCapturesHideVideoSaveCTA)
local IconButton_upvr = UIBlox.App.Button.IconButton
local Images_upvr = UIBlox.App.ImageSet.Images
local udim2_upvr = UDim2.fromOffset(36, 36)
local FFlagCapturesPostEnabledForAll_upvr = require(Parent.SharedFlags).FFlagCapturesPostEnabledForAll
local FFlagCapturesHideVideoShareCTA_upvr = require(Parent_2.Flags.FFlagCapturesHideVideoShareCTA)
return require(Parent_2.App.CapturesPolicy).connect(function(arg1) -- Line 245
	return {
		enableShareCaptureCTA = arg1.enableShareCaptureCTA();
	}
end)(function(arg1) -- Line 60
	--[[ Upvalues[31]:
		[1]: useAnalytics_upvr (readonly)
		[2]: useDispatch_upvr (readonly)
		[3]: useStyle_upvr (readonly)
		[4]: React_upvr (readonly)
		[5]: useRef_upvr (readonly)
		[6]: FFlagEnableOnPlatformSharingExperiment_upvr (readonly)
		[7]: useUserExperiment_upvr (readonly)
		[8]: FStringSocialCaptureTakenIXPLayer_upvr (readonly)
		[9]: useSelector_upvr (readonly)
		[10]: Constants_upvr (readonly)
		[11]: getIsCapturePostable_upvr (readonly)
		[12]: getSaveToStoragePermission_upvr (readonly)
		[13]: FFlagCapturesVideoCaptureLoggingEnabled_upvr (readonly)
		[14]: CaptureType_upvr (readonly)
		[15]: EventNames_upvr (readonly)
		[16]: getCaptureUploadData_upvr (readonly)
		[17]: ComposerOpened_upvr (readonly)
		[18]: RbxAnalyticsService_upvr (readonly)
		[19]: SocialStopwatch_upvr (readonly)
		[20]: ShareCapture_upvr (readonly)
		[21]: ExternalShareSourceType_upvr (readonly)
		[22]: getIsDeleteWarningModalOptedOut_upvr (readonly)
		[23]: DeleteWarningModalOpened_upvr (readonly)
		[24]: udim_upvr (readonly)
		[25]: udim_upvr_2 (readonly)
		[26]: FFlagCapturesHideVideoSaveCTA_upvr (readonly)
		[27]: IconButton_upvr (readonly)
		[28]: Images_upvr (readonly)
		[29]: udim2_upvr (readonly)
		[30]: FFlagCapturesPostEnabledForAll_upvr (readonly)
		[31]: FFlagCapturesHideVideoShareCTA_upvr (readonly)
	]]
	local var7_result1_upvr = useAnalytics_upvr()
	local var8_result1_upvr = useDispatch_upvr()
	local useStyle_upvr_result1 = useStyle_upvr()
	local any_useState_result1, any_useState_result2_upvr = React_upvr.useState(false)
	local useRef_upvr_result1_upvr = useRef_upvr(0)
	local var43
	if FFlagEnableOnPlatformSharingExperiment_upvr then
		var43 = useUserExperiment_upvr
		var43 = var43({FStringSocialCaptureTakenIXPLayer_upvr}, function(arg1_2) -- Line 69
			--[[ Upvalues[1]:
				[1]: FStringSocialCaptureTakenIXPLayer_upvr (copied, readonly)
			]]
			local var46 = arg1_2[FStringSocialCaptureTakenIXPLayer_upvr]
			if not var46 then
				var46 = {}
			end
			return var46.OnPlatformSharingEnabled
		end, false)
	else
		var43 = false
	end
	local var47
	local var14_result1_upvr = useSelector_upvr(function(arg1_3) -- Line 75
		--[[ Upvalues[1]:
			[1]: Constants_upvr (copied, readonly)
		]]
		return arg1_3[Constants_upvr.RoduxKey].Captures[arg1_3[Constants_upvr.RoduxKey].Carousel.SelectedCaptureIndex]
	end)
	React_upvr.useEffect(function() -- Line 80
		--[[ Upvalues[3]:
			[1]: getIsCapturePostable_upvr (copied, readonly)
			[2]: var14_result1_upvr (readonly)
			[3]: any_useState_result2_upvr (readonly)
		]]
		any_useState_result2_upvr(getIsCapturePostable_upvr(var14_result1_upvr))
	end, {var14_result1_upvr})
	local any_useCallback_result1_upvr = React_upvr.useCallback(function() -- Line 85
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
	local any_useCallback_result1_upvr_2 = React_upvr.useCallback(function() -- Line 99
		--[[ Upvalues[1]:
			[1]: useRef_upvr_result1_upvr (readonly)
		]]
		useRef_upvr_result1_upvr.current = DateTime.now().UnixTimestampMillis
	end, {})
	local tbl = {}
	var47 = any_useCallback_result1_upvr_2
	tbl[1] = var14_result1_upvr
	tbl[2] = arg1.isDisabled
	tbl[3] = any_useCallback_result1_upvr
	tbl[4] = var47
	local tbl_2 = {}
	var47 = arg1.isDisabled
	tbl_2[1] = var14_result1_upvr
	tbl_2[2] = arg1.deleteItem
	tbl_2[3] = var47
	tbl_2[4] = any_useCallback_result1_upvr
	tbl_2[5] = any_useCallback_result1_upvr_2
	local module = {
		AutomaticSize = Enum.AutomaticSize.None;
	}
	var47 = useStyle_upvr_result1.Theme.BackgroundContrast
	module.BackgroundColor3 = var47.Color
	var47 = useStyle_upvr_result1.Theme.BackgroundContrast
	module.BackgroundTransparency = var47.Transparency
	module.BorderSizePixel = 0
	module.LayoutOrder = arg1.LayoutOrder
	var47 = 1
	module.Size = UDim2.new(var47, 0, 0, arg1.height)
	module.ZIndex = arg1.ZIndex
	local module_2 = {}
	var47 = React_upvr.createElement
	var47 = var47("UICorner", {
		CornerRadius = udim_upvr;
	})
	module_2.UICorner = var47
	var47 = React_upvr.createElement
	var47 = var47("UIPadding", {
		PaddingLeft = UDim.new(0, 12);
		PaddingRight = UDim.new(0, 12);
	})
	module_2.UIPadding = var47
	var47 = React_upvr.createElement
	var47 = var47("UIListLayout", {
		FillDirection = Enum.FillDirection.Horizontal;
		HorizontalAlignment = Enum.HorizontalAlignment.Center;
		Padding = udim_upvr_2;
		SortOrder = Enum.SortOrder.LayoutOrder;
		VerticalAlignment = Enum.VerticalAlignment.Center;
	})
	module_2.Layout = var47
	if FFlagCapturesHideVideoSaveCTA_upvr and var14_result1_upvr.type == CaptureType_upvr.Video then
		var47 = nil
	else
		var47 = React_upvr.createElement
		var47 = var47(IconButton_upvr, {
			backgroundColor = useStyle_upvr_result1.Theme.BackgroundUIContrast;
			icon = Images_upvr["icons/actions/download_medium"];
			layoutOrder = 1;
			onActivated = React_upvr.useCallback(function() -- Line 104
				--[[ Upvalues[10]:
					[1]: any_useCallback_result1_upvr (readonly)
					[2]: getSaveToStoragePermission_upvr (copied, readonly)
					[3]: var14_result1_upvr (readonly)
					[4]: arg1 (readonly)
					[5]: var8_result1_upvr (readonly)
					[6]: any_useCallback_result1_upvr_2 (readonly)
					[7]: FFlagCapturesVideoCaptureLoggingEnabled_upvr (copied, readonly)
					[8]: CaptureType_upvr (copied, readonly)
					[9]: var7_result1_upvr (readonly)
					[10]: EventNames_upvr (copied, readonly)
				]]
				if any_useCallback_result1_upvr() then
				else
					getSaveToStoragePermission_upvr(var14_result1_upvr, arg1.openPermissionModal, var8_result1_upvr)
					any_useCallback_result1_upvr_2()
					if FFlagCapturesVideoCaptureLoggingEnabled_upvr and var14_result1_upvr.type == CaptureType_upvr.Video then
						var7_result1_upvr.fireEvent(EventNames_upvr.CapturesCarouselVideoSaveToExternalStorageActivated)
						return
					end
					var7_result1_upvr.fireEvent(EventNames_upvr.CapturesCarouselSaveToExternalStorageActivated)
				end
			end, {var14_result1_upvr, any_useCallback_result1_upvr, any_useCallback_result1_upvr_2, arg1.openPermissionModal});
			showBackground = false;
			size = udim2_upvr;
		})
	end
	module_2.SaveButton = var47
	local function INLINED() -- Internal function, doesn't exist in bytecode
		var47 = var43
		return var47
	end
	local function INLINED_2() -- Internal function, doesn't exist in bytecode
		var47 = any_useState_result1
		return var47
	end
	if FFlagCapturesPostEnabledForAll_upvr or INLINED() or INLINED_2() then
		var47 = React_upvr.createElement
		var47 = var47(IconButton_upvr, {
			backgroundColor = useStyle_upvr_result1.Theme.BackgroundUIContrast;
			icon = Images_upvr["icons/actions/edit/add"];
			layoutOrder = 2;
			onActivated = React_upvr.useCallback(function() -- Line 118
				--[[ Upvalues[9]:
					[1]: any_useCallback_result1_upvr (readonly)
					[2]: getCaptureUploadData_upvr (copied, readonly)
					[3]: var14_result1_upvr (readonly)
					[4]: any_useCallback_result1_upvr_2 (readonly)
					[5]: var8_result1_upvr (readonly)
					[6]: ComposerOpened_upvr (copied, readonly)
					[7]: var7_result1_upvr (readonly)
					[8]: EventNames_upvr (copied, readonly)
					[9]: RbxAnalyticsService_upvr (copied, readonly)
				]]
				if any_useCallback_result1_upvr() then
				else
					local var21_result1 = getCaptureUploadData_upvr(var14_result1_upvr)
					any_useCallback_result1_upvr_2()
					var8_result1_upvr(ComposerOpened_upvr(var14_result1_upvr))
					local tbl_3 = {}
					local any_GetSessionId_result1 = RbxAnalyticsService_upvr:GetSessionId()
					tbl_3.sessionId = any_GetSessionId_result1
					if var21_result1 then
						any_GetSessionId_result1 = var21_result1.context.experienceId
					else
						any_GetSessionId_result1 = nil
					end
					tbl_3.universeId = any_GetSessionId_result1
					var7_result1_upvr.fireEvent(EventNames_upvr.CapturesCarouselPostActivated, tbl_3)
				end
			end, {var14_result1_upvr, arg1.isDisabled, any_useCallback_result1_upvr, any_useCallback_result1_upvr_2});
			showBackground = false;
			size = udim2_upvr;
		})
	end
	module_2.PostButton = var47
	if FFlagCapturesHideVideoShareCTA_upvr and var14_result1_upvr.type == CaptureType_upvr.Video then
		var47 = nil
	else
		var47 = arg1.enableShareCaptureCTA
		if var47 then
			var47 = React_upvr.createElement
			var47 = var47(IconButton_upvr, {
				backgroundColor = useStyle_upvr_result1.Theme.BackgroundUIContrast;
				icon = Images_upvr["icons/actions/share"];
				layoutOrder = 3;
				onActivated = React_upvr.useCallback(function() -- Line 134
					--[[ Upvalues[11]:
						[1]: any_useCallback_result1_upvr (readonly)
						[2]: any_useCallback_result1_upvr_2 (readonly)
						[3]: FFlagCapturesVideoCaptureLoggingEnabled_upvr (copied, readonly)
						[4]: var14_result1_upvr (readonly)
						[5]: CaptureType_upvr (copied, readonly)
						[6]: var7_result1_upvr (readonly)
						[7]: EventNames_upvr (copied, readonly)
						[8]: SocialStopwatch_upvr (copied, readonly)
						[9]: var8_result1_upvr (readonly)
						[10]: ShareCapture_upvr (copied, readonly)
						[11]: ExternalShareSourceType_upvr (copied, readonly)
					]]
					if any_useCallback_result1_upvr() then
					else
						any_useCallback_result1_upvr_2()
						if FFlagCapturesVideoCaptureLoggingEnabled_upvr and var14_result1_upvr.type == CaptureType_upvr.Video then
							var7_result1_upvr.fireEvent(EventNames_upvr.CapturesCarouselVideoShareActivated)
						else
							var7_result1_upvr.fireEvent(EventNames_upvr.CapturesCarouselShareActivated)
						end
						if SocialStopwatch_upvr.Stopwatch.get(SocialStopwatch_upvr.Events.CaptureShared) == nil then
							SocialStopwatch_upvr.Stopwatch.start(SocialStopwatch_upvr.Events.CaptureShared)
						end
						var8_result1_upvr(ShareCapture_upvr(var14_result1_upvr, ExternalShareSourceType_upvr.CapturesCarousel))
					end
				end, tbl);
				showBackground = false;
				size = udim2_upvr;
			})
		end
	end
	module_2.ShareButton = var47
	var47 = React_upvr.createElement
	var47 = var47(IconButton_upvr, {
		icon = Images_upvr["icons/actions/edit/delete"];
		layoutOrder = 4;
		onActivated = React_upvr.useCallback(function() -- Line 154
			--[[ Upvalues[11]:
				[1]: any_useCallback_result1_upvr (readonly)
				[2]: any_useCallback_result1_upvr_2 (readonly)
				[3]: FFlagCapturesVideoCaptureLoggingEnabled_upvr (copied, readonly)
				[4]: var14_result1_upvr (readonly)
				[5]: CaptureType_upvr (copied, readonly)
				[6]: var7_result1_upvr (readonly)
				[7]: EventNames_upvr (copied, readonly)
				[8]: getIsDeleteWarningModalOptedOut_upvr (copied, readonly)
				[9]: arg1 (readonly)
				[10]: var8_result1_upvr (readonly)
				[11]: DeleteWarningModalOpened_upvr (copied, readonly)
			]]
			if any_useCallback_result1_upvr() then
			else
				any_useCallback_result1_upvr_2()
				if FFlagCapturesVideoCaptureLoggingEnabled_upvr then
					if var14_result1_upvr.type == CaptureType_upvr.Video then
						var7_result1_upvr.fireEvent(EventNames_upvr.CapturesVideoDeleteActivatedInCarousel)
						-- KONSTANTWARNING: GOTO [31] #25
					end
				end
				var7_result1_upvr.fireEvent(EventNames_upvr.CapturesDeleteActivatedInCarousel)
				local var68
				if getIsDeleteWarningModalOptedOut_upvr() then
					if arg1.deleteItem == nil then
						var68 = false
					else
						var68 = true
					end
					assert(var68, "props.deleteItem should not be nil")
					var68 = arg1
					var68.deleteItem()
					return
				end
				var8_result1_upvr(DeleteWarningModalOpened_upvr())
			end
		end, tbl_2);
		showBackground = false;
		size = udim2_upvr;
	})
	module_2.DeleteButton = var47
	return React_upvr.createElement("Frame", module, module_2)
end)