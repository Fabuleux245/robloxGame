-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:58:24
-- Luau version 6, Types version 3
-- Time taken: 0.007607 seconds

-- KONSTANTERROR: [0] 1. Error Block 24 start (CF ANALYSIS FAILED)
local Parent = script.Parent.Parent.Parent
local Parent_2 = Parent.Parent
local UserInputService = game:GetService("UserInputService")
local RoactUtils = require(Parent_2.RoactUtils)
local UIBlox = require(Parent_2.UIBlox)
local Images = UIBlox.App.ImageSet.Images
local CapturesToastType_upvr = require(Parent.Enums.CapturesToastType)
local CaptureType_upvr = require(Parent.Enums.CaptureType)
local EventNames_upvr = require(Parent.Analytics.EventNames)
local tbl_upvr = {
	captureSaved = "captureSaved";
	captureSavedToDevice = "captureSavedToDevice";
	capturesEnabled = "capturesEnabled";
	openInFiles = "openInFiles";
	postAction = "postAction";
	postFailed = "postFailed";
	postGenericError = "postGenericError";
	postModeratedDescription = "postModeratedDescription";
	postShared = "postShared";
	postUploading = "postUploading";
	shareAction = "shareAction";
	shareCaptureDescription = "shareCaptureDescription";
	videoCaptureFailed = "videoCaptureFailed";
	viewAction = "viewAction";
}
local var11 = true
local onActivated
if UserInputService:GetPlatform() ~= Enum.Platform.Windows then
	if UserInputService:GetPlatform() ~= Enum.Platform.OSX then
		var11 = false
	else
		var11 = true
	end
end
local function _(arg1) -- Line 69, Named "isVideoCapture"
	--[[ Upvalues[1]:
		[1]: CaptureType_upvr (readonly)
	]]
	if not arg1 then
		return false
	end
	local captureInfo_2 = arg1.captureInfo
	if not captureInfo_2 then
		return false
	end
	if captureInfo_2.type ~= CaptureType_upvr.Video then
	else
	end
	return true
end
local tbl_9_upvr = {}
local tbl_11 = {}
onActivated = Images["icons/status/success"]
tbl_11.iconImage = onActivated
if var11 then
	function onActivated(arg1, arg2, arg3) -- Line 86
		--[[ Upvalues[2]:
			[1]: EventNames_upvr (readonly)
			[2]: CaptureType_upvr (readonly)
		]]
		-- KONSTANTERROR: [0] 1. Error Block 19 start (CF ANALYSIS FAILED)
		arg1.fireEvent(EventNames_upvr.CapturesSavedToDeviceToastOpenButtonActivated)
		local var17
		if not arg3 then
			var17 = false
			-- KONSTANTWARNING: GOTO [23] #18
		end
		-- KONSTANTERROR: [0] 1. Error Block 19 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [9] 8. Error Block 20 start (CF ANALYSIS FAILED)
		local captureInfo = arg3.captureInfo
		if not captureInfo then
			var17 = false
		elseif captureInfo.type ~= CaptureType_upvr.Video then
			var17 = false
		else
			var17 = true
		end
		if var17 then
			var17 = game:OpenVideosFolder
			var17()
		else
			var17 = game:OpenScreenshotsFolder
			var17()
			-- KONSTANTERROR: [9] 8. Error Block 20 end (CF ANALYSIS FAILED)
		end
	end
	-- KONSTANTWARNING: GOTO [256] #156
end
-- KONSTANTERROR: [0] 1. Error Block 24 end (CF ANALYSIS FAILED)
-- KONSTANTERROR: [255] 155. Error Block 22 start (CF ANALYSIS FAILED)
onActivated = nil
tbl_11.onActivated = onActivated
if var11 then
	onActivated = tbl_upvr.openInFiles
else
	onActivated = nil
end
tbl_11.toastCTAKey = onActivated
onActivated = tbl_upvr.captureSavedToDevice
tbl_11.toastTitleKey = onActivated
tbl_9_upvr[CapturesToastType_upvr.CaptureSavedToDevice] = tbl_11
local tbl_4 = {}
onActivated = Images["icons/controls/screenshot"]
tbl_4.iconImage = onActivated
local FFlagCapturesVideoCaptureEntrypointLogsEnabled_upvr = require(Parent.Flags.FFlagCapturesVideoCaptureEntrypointLogsEnabled)
local SocialStopwatch_upvr = require(Parent_2.SocialStopwatch)
local ShareCapture_upvr = require(Parent.Thunks.ShareCapture)
local ExternalShareSourceType_upvr = require(Parent.Enums.ExternalShareSourceType)
function onActivated(arg1, arg2, arg3) -- Line 100
	--[[ Upvalues[6]:
		[1]: EventNames_upvr (readonly)
		[2]: FFlagCapturesVideoCaptureEntrypointLogsEnabled_upvr (readonly)
		[3]: CaptureType_upvr (readonly)
		[4]: SocialStopwatch_upvr (readonly)
		[5]: ShareCapture_upvr (readonly)
		[6]: ExternalShareSourceType_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	arg1.fireEvent(EventNames_upvr.CapturesShareToastButtonActivated)
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [8] 7. Error Block 29 start (CF ANALYSIS FAILED)
	if not arg3 then
		-- KONSTANTWARNING: GOTO [25] #20
	end
	-- KONSTANTERROR: [8] 7. Error Block 29 end (CF ANALYSIS FAILED)
end
tbl_4.onActivated = onActivated
onActivated = tbl_upvr.shareAction
tbl_4.toastCTAKey = onActivated
onActivated = tbl_upvr.shareCaptureDescription
tbl_4.toastSubtitleKey = onActivated
onActivated = tbl_upvr.captureSaved
tbl_4.toastTitleKey = onActivated
tbl_9_upvr[CapturesToastType_upvr.CaptureTaken] = tbl_4
local tbl_5 = {}
onActivated = Images["icons/controls/cameraOff"]
tbl_5.iconImage = onActivated
local getCaptureUploadData_upvr = require(Parent.Utils.getCaptureUploadData)
local RbxAnalyticsService_upvr = game:GetService("RbxAnalyticsService")
local ComposerOpened_upvr = require(Parent.Actions.ComposerOpened)
function onActivated(arg1, arg2, arg3) -- Line 121
	--[[ Upvalues[4]:
		[1]: getCaptureUploadData_upvr (readonly)
		[2]: EventNames_upvr (readonly)
		[3]: RbxAnalyticsService_upvr (readonly)
		[4]: ComposerOpened_upvr (readonly)
	]]
	local var30
	if arg3 ~= nil and arg3.captureInfo then
		var30 = getCaptureUploadData_upvr(arg3.captureInfo)
	end
	local tbl_3 = {}
	local any_GetSessionId_result1 = RbxAnalyticsService_upvr:GetSessionId()
	tbl_3.sessionId = any_GetSessionId_result1
	if var30 then
		any_GetSessionId_result1 = var30.context.experienceId
	else
		any_GetSessionId_result1 = nil
	end
	tbl_3.universeId = any_GetSessionId_result1
	arg1.fireEvent(EventNames_upvr.CapturesPostToastButtonActivated, tbl_3)
	if arg3 ~= nil then
		arg2(ComposerOpened_upvr(arg3.captureInfo))
	end
end
tbl_5.onActivated = onActivated
onActivated = tbl_upvr.postAction
tbl_5.toastCTAKey = onActivated
onActivated = tbl_upvr.captureSaved
tbl_5.toastTitleKey = onActivated
tbl_9_upvr[CapturesToastType_upvr.CaptureTakenWithPostCTA] = tbl_5
local tbl_6 = {}
onActivated = Images["icons/status/alert"]
tbl_6.iconImage = onActivated
onActivated = tbl_upvr.postFailed
tbl_6.toastTitleKey = onActivated
onActivated = tbl_upvr.postGenericError
tbl_6.toastSubtitleKey = onActivated
tbl_9_upvr[CapturesToastType_upvr.PostFailedGeneric] = tbl_6
local tbl_2 = {}
onActivated = Images["icons/status/alert"]
tbl_2.iconImage = onActivated
onActivated = tbl_upvr.postFailed
tbl_2.toastTitleKey = onActivated
onActivated = tbl_upvr.postModeratedDescription
tbl_2.toastSubtitleKey = onActivated
tbl_9_upvr[CapturesToastType_upvr.PostFailedModerated] = tbl_2
local tbl = {}
onActivated = Images["icons/status/success"]
tbl.iconImage = onActivated
onActivated = tbl_upvr.postShared
tbl.toastTitleKey = onActivated
tbl_9_upvr[CapturesToastType_upvr.PostShared] = tbl
local tbl_12 = {}
onActivated = Images["icons/status/success"]
tbl_12.iconImage = onActivated
local SharePost_upvr = require(Parent.Thunks.SharePost)
function onActivated(arg1, arg2, arg3) -- Line 153
	--[[ Upvalues[2]:
		[1]: EventNames_upvr (readonly)
		[2]: SharePost_upvr (readonly)
	]]
	arg1.fireEvent(EventNames_upvr.PostShareToastButtonActivated)
	if arg3 and arg3.postId then
		arg2(SharePost_upvr(arg3.postId))
	end
end
tbl_12.onActivated = onActivated
onActivated = tbl_upvr.shareAction
tbl_12.toastCTAKey = onActivated
onActivated = tbl_upvr.postShared
tbl_12.toastTitleKey = onActivated
tbl_9_upvr[CapturesToastType_upvr.PostSharedWithShareCTA] = tbl_12
local tbl_7 = {}
onActivated = Images["icons/status/pending_small"]
tbl_7.iconImage = onActivated
onActivated = Vector2.new(24, 24)
tbl_7.iconSize = onActivated
onActivated = tbl_upvr.postUploading
tbl_7.toastTitleKey = onActivated
tbl_9_upvr[CapturesToastType_upvr.PostUploading] = tbl_7
local tbl_10 = {}
onActivated = Images["icons/status/success"]
tbl_10.iconImage = onActivated
onActivated = tbl_upvr.capturesEnabled
tbl_10.toastTitleKey = onActivated
tbl_9_upvr[CapturesToastType_upvr.CapturesActivated] = tbl_10
local tbl_8 = {}
onActivated = Images["icons/status/alert"]
tbl_8.iconImage = onActivated
onActivated = tbl_upvr.videoCaptureFailed
tbl_8.toastTitleKey = onActivated
tbl_9_upvr[CapturesToastType_upvr.VideoCaptureFailed] = tbl_8
local tbl_13 = {}
onActivated = Images["icons/controls/screenshot"]
tbl_13.iconImage = onActivated
local CarouselOpened_upvr = require(Parent.Actions.CarouselOpened)
function onActivated(arg1, arg2) -- Line 177
	--[[ Upvalues[2]:
		[1]: EventNames_upvr (readonly)
		[2]: CarouselOpened_upvr (readonly)
	]]
	arg1.fireEvent(EventNames_upvr.CapturesViewToastButtonActivated)
	arg2(CarouselOpened_upvr(1))
end
tbl_13.onActivated = onActivated
onActivated = tbl_upvr.viewAction
tbl_13.toastCTAKey = onActivated
onActivated = tbl_upvr.captureSaved
tbl_13.toastTitleKey = onActivated
tbl_9_upvr[CapturesToastType_upvr.ViewCapture] = tbl_13
local useAnalytics_upvr = require(Parent.Analytics.useAnalytics)
local useDispatch_upvr = RoactUtils.Hooks.RoactRodux.useDispatch
local useLocalization_upvr = require(Parent_2.Localization).Hooks.useLocalization
local useSelector_upvr = RoactUtils.Hooks.RoactRodux.useSelector
local Constants_upvr = require(Parent.Constants)
local React_upvr = require(Parent_2.React)
local ToastVanished_upvr = require(Parent.Actions.ToastVanished)
local Dash_upvr = require(Parent_2.Dash)
local dependencyArray_upvr = RoactUtils.Hooks.dependencyArray
local Toast_upvr = UIBlox.App.Dialog.Toast
do
	return function(arg1) -- Line 188
		--[[ Upvalues[13]:
			[1]: useAnalytics_upvr (readonly)
			[2]: useDispatch_upvr (readonly)
			[3]: useLocalization_upvr (readonly)
			[4]: tbl_upvr (readonly)
			[5]: useSelector_upvr (readonly)
			[6]: Constants_upvr (readonly)
			[7]: React_upvr (readonly)
			[8]: CapturesToastType_upvr (readonly)
			[9]: tbl_9_upvr (readonly)
			[10]: ToastVanished_upvr (readonly)
			[11]: Dash_upvr (readonly)
			[12]: dependencyArray_upvr (readonly)
			[13]: Toast_upvr (readonly)
		]]
		local useSelector_upvr_result1_upvr = useSelector_upvr(function(arg1_2) -- Line 209
			--[[ Upvalues[1]:
				[1]: Constants_upvr (copied, readonly)
			]]
			return arg1_2[Constants_upvr.RoduxKey].Toast.ToastType
		end)
		local var47_result1_upvr = useSelector_upvr(function(arg1_3) -- Line 213
			--[[ Upvalues[1]:
				[1]: Constants_upvr (copied, readonly)
			]]
			return arg1_3[Constants_upvr.RoduxKey].Toast.ToastConfig
		end)
		local useLocalization_upvr_result1_upvr = useLocalization_upvr({
			[tbl_upvr.captureSaved] = "Feature.Captures.Toast.CaptureSaved";
			[tbl_upvr.captureSavedToDevice] = "Feature.Captures.Toast.CaptureSavedToDevice";
			[tbl_upvr.capturesEnabled] = "Feature.Captures.Toast.CapturesEnabled";
			[tbl_upvr.openInFiles] = "Feature.Captures.Action.OpenInFiles";
			[tbl_upvr.postAction] = "Feature.Captures.Action.Post";
			[tbl_upvr.postFailed] = "Feature.Captures.Toast.PostUnsuccessful";
			[tbl_upvr.postGenericError] = "Feature.Captures.Description.PostGenericError";
			[tbl_upvr.postModeratedDescription] = "Feature.Captures.Description.PostModerated";
			[tbl_upvr.postShared] = "Feature.Captures.Toast.PostShared";
			[tbl_upvr.postUploading] = "Feature.ContentFeed.Toast.PostUploading";
			[tbl_upvr.shareAction] = "Feature.Captures.Action.Share";
			[tbl_upvr.shareCaptureDescription] = "Feature.Captures.Description.ShareCTA";
			[tbl_upvr.videoCaptureFailed] = "Feature.Captures.Toast.VideoCaptureFailed";
			[tbl_upvr.viewAction] = "Feature.Captures.Action.ViewCapture";
		})
		local var45_result1_upvr = useDispatch_upvr()
		local useAnalytics_upvr_result1_upvr = useAnalytics_upvr()
		local any_useCallback_result1_upvr = React_upvr.useCallback(function(arg1_5) -- Line 221
			--[[ Upvalues[1]:
				[1]: useLocalization_upvr_result1_upvr (readonly)
			]]
			if arg1_5 then
				return useLocalization_upvr_result1_upvr[arg1_5]
			end
			return nil
		end)
		local any_useMemo_result1 = React_upvr.useMemo(function() -- Line 228
			--[[ Upvalues[10]:
				[1]: useSelector_upvr_result1_upvr (readonly)
				[2]: CapturesToastType_upvr (copied, readonly)
				[3]: tbl_9_upvr (copied, readonly)
				[4]: var45_result1_upvr (readonly)
				[5]: ToastVanished_upvr (copied, readonly)
				[6]: useAnalytics_upvr_result1_upvr (readonly)
				[7]: var47_result1_upvr (readonly)
				[8]: Constants_upvr (copied, readonly)
				[9]: Dash_upvr (copied, readonly)
				[10]: any_useCallback_result1_upvr (readonly)
			]]
			if useSelector_upvr_result1_upvr == CapturesToastType_upvr.None then
				return nil
			end
			local var66_upvr = tbl_9_upvr[useSelector_upvr_result1_upvr]
			local var67_upvr = useSelector_upvr_result1_upvr
			local var70
			if var66_upvr.onActivated then
				function var70() -- Line 244
					--[[ Upvalues[7]:
						[1]: var66_upvr (readonly)
						[2]: useAnalytics_upvr_result1_upvr (copied, readonly)
						[3]: var45_result1_upvr (copied, readonly)
						[4]: var47_result1_upvr (copied, readonly)
						[5]: var67_upvr (readonly)
						[6]: useSelector_upvr_result1_upvr (copied, readonly)
						[7]: ToastVanished_upvr (copied, readonly)
					]]
					var66_upvr.onActivated(useAnalytics_upvr_result1_upvr, var45_result1_upvr, var47_result1_upvr)
					if var67_upvr == useSelector_upvr_result1_upvr then
						var45_result1_upvr(ToastVanished_upvr())
					end
				end
			end
			local duration = var66_upvr.duration
			if not duration then
				duration = Constants_upvr.ToastDuration
			end
			return Dash_upvr.join(var66_upvr, {
				buttonText = any_useCallback_result1_upvr(var66_upvr.toastCTAKey);
				duration = duration;
				onActivated = var70;
				onDismissed = function() -- Line 236
					--[[ Upvalues[4]:
						[1]: var67_upvr (readonly)
						[2]: useSelector_upvr_result1_upvr (copied, readonly)
						[3]: var45_result1_upvr (copied, readonly)
						[4]: ToastVanished_upvr (copied, readonly)
					]]
					if var67_upvr == useSelector_upvr_result1_upvr then
						var45_result1_upvr(ToastVanished_upvr())
					end
				end;
				toastCTAKey = Dash_upvr.None;
				toastSubtitle = any_useCallback_result1_upvr(var66_upvr.toastSubtitleKey);
				toastSubtitleKey = Dash_upvr.None;
				toastTitle = any_useCallback_result1_upvr(var66_upvr.toastTitleKey);
				toastTitleKey = Dash_upvr.None;
			})
		end, dependencyArray_upvr(useSelector_upvr_result1_upvr, var47_result1_upvr))
		if not any_useMemo_result1 then
			return nil
		end
		return React_upvr.createElement(React_upvr.Fragment, {}, {
			[useSelector_upvr_result1_upvr] = React_upvr.createElement(Toast_upvr, {
				duration = any_useMemo_result1.duration;
				show = not useSelector_upvr(function(arg1_4) -- Line 217
					--[[ Upvalues[1]:
						[1]: Constants_upvr (copied, readonly)
					]]
					return arg1_4[Constants_upvr.RoduxKey].Toast.IsDismissed
				end);
				toastContent = any_useMemo_result1;
			});
		})
	end
end
-- KONSTANTERROR: [255] 155. Error Block 22 end (CF ANALYSIS FAILED)