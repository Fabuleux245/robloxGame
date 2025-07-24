-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:59:12
-- Luau version 6, Types version 3
-- Time taken: 0.003364 seconds

local Parent = script.Parent.Parent
local Parent_2 = Parent.Parent
local default_upvr = require(Parent_2.ExternalContentSharingProtocol).ExternalContentSharingProtocol.default
local SocialStopwatch_upvr = require(Parent_2.SocialStopwatch)
local Constants_upvr = require(Parent.Constants)
local EventNames_upvr = require(Parent.Analytics.EventNames)
local FireEvent_upvr = require(Parent.Analytics.FireEvent)
local Networking = require(Parent.App.Networking)
local any_new_result1_upvr = require(Parent_2.RobloxAppLocales).Localization.new(game:GetService("LocalizationService").RobloxLocaleId)
local function shareImage_upvr(arg1, arg2) -- Line 31, Named "shareImage"
	--[[ Upvalues[3]:
		[1]: default_upvr (readonly)
		[2]: Constants_upvr (readonly)
		[3]: any_new_result1_upvr (readonly)
	]]
	local var10
	if not default_upvr then
	else
		if default_upvr == nil then
			var10 = false
		else
			var10 = true
		end
		assert(var10, "ExternalContentSharingProtocol is required")
		local tbl_5 = {
			context = Constants_upvr.CapturesContext;
		}
		tbl_5.image = arg1
		tbl_5.shareSheetTitle = any_new_result1_upvr:Format("Feature.Captures.Action.ShareYourCapture")
		tbl_5.url = arg2
		default_upvr:shareImage(tbl_5)
	end
end
local function shareVideo_upvr(arg1, arg2) -- Line 46, Named "shareVideo"
	--[[ Upvalues[3]:
		[1]: default_upvr (readonly)
		[2]: Constants_upvr (readonly)
		[3]: any_new_result1_upvr (readonly)
	]]
	local var12
	if not default_upvr then
	else
		if default_upvr == nil then
			var12 = false
		else
			var12 = true
		end
		assert(var12, "ExternalContentSharingProtocol is required")
		local tbl_6 = {
			context = Constants_upvr.CapturesContext;
			shareSheetTitle = any_new_result1_upvr:Format("Feature.Captures.Action.ShareYourCapture");
		}
		tbl_6.url = arg2
		tbl_6.video = arg1
		default_upvr:shareVideo(tbl_6)
	end
end
local FFlagUseRbxstorageInGallery_upvr = require(Parent.Flags.FFlagUseRbxstorageInGallery)
local CaptureType_upvr = require(Parent.Enums.CaptureType)
local CaptureService_upvr = game:GetService("CaptureService")
local function shareCapture_upvr(arg1, arg2) -- Line 61, Named "shareCapture"
	--[[ Upvalues[5]:
		[1]: FFlagUseRbxstorageInGallery_upvr (readonly)
		[2]: CaptureType_upvr (readonly)
		[3]: CaptureService_upvr (readonly)
		[4]: shareVideo_upvr (readonly)
		[5]: shareImage_upvr (readonly)
	]]
	if FFlagUseRbxstorageInGallery_upvr and arg1.type == CaptureType_upvr.Video then
		shareVideo_upvr(CaptureService_upvr:PreVideoCaptureShared(arg1.videoCapture), arg2)
		CaptureService_upvr:OnVideoCaptureShared(arg1.videoCapture)
	else
		shareImage_upvr(arg1.filePath, arg2)
		CaptureService_upvr:OnCaptureShared(arg1.filePath)
	end
end
local function _(arg1) -- Line 72, Named "sendShareLatencyEvent"
	--[[ Upvalues[3]:
		[1]: SocialStopwatch_upvr (readonly)
		[2]: FireEvent_upvr (readonly)
		[3]: EventNames_upvr (readonly)
	]]
	local any_stop_result1_2 = SocialStopwatch_upvr.Stopwatch.stop(SocialStopwatch_upvr.Events.CaptureShared)
	local tbl_3 = {}
	local var19
	if any_stop_result1_2 then
		var19 = any_stop_result1_2.timeElapsed
	else
		var19 = nil
	end
	tbl_3.statValue = var19
	tbl_3.externalShareSource = arg1
	FireEvent_upvr(EventNames_upvr.CapturesShareLatency, tbl_3)
end
local ServerType_upvr = require(Parent.Enums.ServerType)
local getPlaceIdFromCapture_upvr = require(Parent.Utils.getPlaceIdFromCapture)
local LinkType_upvr = Networking.ShareLinksRodux.Enums.LinkType
local ShareLinksNetworking_upvr = Networking.ShareLinksNetworking
return function(arg1, arg2, arg3) -- Line 80
	--[[ Upvalues[8]:
		[1]: ServerType_upvr (readonly)
		[2]: shareCapture_upvr (readonly)
		[3]: FireEvent_upvr (readonly)
		[4]: EventNames_upvr (readonly)
		[5]: SocialStopwatch_upvr (readonly)
		[6]: getPlaceIdFromCapture_upvr (readonly)
		[7]: LinkType_upvr (readonly)
		[8]: ShareLinksNetworking_upvr (readonly)
	]]
	return function(arg1_2) -- Line 85
		--[[ Upvalues[11]:
			[1]: ServerType_upvr (copied, readonly)
			[2]: shareCapture_upvr (copied, readonly)
			[3]: arg1 (readonly)
			[4]: FireEvent_upvr (copied, readonly)
			[5]: EventNames_upvr (copied, readonly)
			[6]: arg2 (readonly)
			[7]: SocialStopwatch_upvr (copied, readonly)
			[8]: getPlaceIdFromCapture_upvr (copied, readonly)
			[9]: arg3 (readonly)
			[10]: LinkType_upvr (copied, readonly)
			[11]: ShareLinksNetworking_upvr (copied, readonly)
		]]
		local any_getState_result1 = arg1_2:getState()
		local var27
		if any_getState_result1.ServerType ~= ServerType_upvr.StandardServer then
			any_getState_result1 = false
		else
			any_getState_result1 = true
		end
		if not any_getState_result1 then
			shareCapture_upvr(arg1)
			FireEvent_upvr(EventNames_upvr.CapturesShareFromNonStandardServer)
			local any_stop_result1_4 = SocialStopwatch_upvr.Stopwatch.stop(SocialStopwatch_upvr.Events.CaptureShared)
			local tbl = {}
			if any_stop_result1_4 then
				var27 = any_stop_result1_4.timeElapsed
			else
				var27 = nil
			end
			tbl.statValue = var27
			tbl.externalShareSource = arg2
			FireEvent_upvr(EventNames_upvr.CapturesShareLatency, tbl)
		else
			local var30
			local getPlaceIdFromCapture_upvr_result1 = getPlaceIdFromCapture_upvr(arg1)
			if game.PlaceId == getPlaceIdFromCapture_upvr_result1 then
				var30 = game.JobId
			end
			local tbl_7 = {
				instanceId = var30;
			}
			tbl_7.launchData = arg3
			tbl_7.linkType = LinkType_upvr.ScreenshotInvite.rawValue()
			tbl_7.placeId = getPlaceIdFromCapture_upvr_result1
			arg1_2:dispatch(ShareLinksNetworking_upvr.GenerateLink.API(tbl_7)):andThen(function(arg1_3) -- Line 112
				--[[ Upvalues[6]:
					[1]: shareCapture_upvr (copied, readonly)
					[2]: arg1 (copied, readonly)
					[3]: arg2 (copied, readonly)
					[4]: SocialStopwatch_upvr (copied, readonly)
					[5]: FireEvent_upvr (copied, readonly)
					[6]: EventNames_upvr (copied, readonly)
				]]
				shareCapture_upvr(arg1, arg1_3.responseBody.shortUrl)
				local any_stop_result1 = SocialStopwatch_upvr.Stopwatch.stop(SocialStopwatch_upvr.Events.CaptureShared)
				local tbl_2 = {}
				local var36
				if any_stop_result1 then
					var36 = any_stop_result1.timeElapsed
				else
					var36 = nil
				end
				tbl_2.statValue = var36
				tbl_2.externalShareSource = arg2
				FireEvent_upvr(EventNames_upvr.CapturesShareLatency, tbl_2)
			end):catch(function(arg1_4) -- Line 117
				--[[ Upvalues[6]:
					[1]: FireEvent_upvr (copied, readonly)
					[2]: EventNames_upvr (copied, readonly)
					[3]: shareCapture_upvr (copied, readonly)
					[4]: arg1 (copied, readonly)
					[5]: arg2 (copied, readonly)
					[6]: SocialStopwatch_upvr (copied, readonly)
				]]
				warn("GenerateLink failed with error:", arg1_4)
				FireEvent_upvr(EventNames_upvr.ShareCaptureGenerateLinkFailed, {
					httpError = arg1_4.HttpError;
				})
				shareCapture_upvr(arg1)
				local any_stop_result1_3 = SocialStopwatch_upvr.Stopwatch.stop(SocialStopwatch_upvr.Events.CaptureShared)
				local tbl_4 = {}
				local var41
				if any_stop_result1_3 then
					var41 = any_stop_result1_3.timeElapsed
				else
					var41 = nil
				end
				tbl_4.statValue = var41
				tbl_4.externalShareSource = arg2
				FireEvent_upvr(EventNames_upvr.CapturesShareLatency, tbl_4)
			end)
		end
	end
end