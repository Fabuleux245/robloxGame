-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:29:54
-- Luau version 6, Types version 3
-- Time taken: 0.004872 seconds

local Songbird = script:FindFirstAncestor("Songbird")
local React_upvr = require(Songbird.Parent.React)
local useLocalization_upvr = require(Songbird.Parent.Localization).Hooks.useLocalization
local GetFFlagSongDetailsInAppReportingFlow_upvr = require(Songbird.Parent.SharedFlags).GetFFlagSongDetailsInAppReportingFlow
local useState_upvr = React_upvr.useState
local createNextOrder_upvr = require(Songbird.Parent.ReactUtils).createNextOrder
local useCallback_upvr = React_upvr.useCallback
local sendAudioPlayerAnalytics_upvr = require(Songbird.Analytics.sendAudioPlayerAnalytics)
local AnalyticActions_upvr = require(Songbird.Analytics.AnalyticActions)
local GetFFlagSongDetailsFixAudioReportingAnalytics_upvr = require(Songbird.Parent.SharedFlags).GetFFlagSongDetailsFixAudioReportingAnalytics
local Foundation_upvr = require(Songbird.Parent.Foundation)
local CustomFoundationChip_upvr = require(Songbird.Components.CustomFoundationChip)
local ReactRoblox_upvr = require(Songbird.Parent.ReactRoblox)
local ReportSongDialog_upvr = require(Songbird.Components.ReportSongDialog)
local CoreGui_upvr = game:GetService("CoreGui")
return function(arg1) -- Line 42, Named "AudioPlayerActions"
	--[[ Upvalues[14]:
		[1]: useLocalization_upvr (readonly)
		[2]: GetFFlagSongDetailsInAppReportingFlow_upvr (readonly)
		[3]: useState_upvr (readonly)
		[4]: createNextOrder_upvr (readonly)
		[5]: useCallback_upvr (readonly)
		[6]: sendAudioPlayerAnalytics_upvr (readonly)
		[7]: AnalyticActions_upvr (readonly)
		[8]: GetFFlagSongDetailsFixAudioReportingAnalytics_upvr (readonly)
		[9]: React_upvr (readonly)
		[10]: Foundation_upvr (readonly)
		[11]: CustomFoundationChip_upvr (readonly)
		[12]: ReactRoblox_upvr (readonly)
		[13]: ReportSongDialog_upvr (readonly)
		[14]: CoreGui_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	-- KONSTANTERROR: [0] 1. Error Block 41 start (CF ANALYSIS FAILED)
	local useLocalization_upvr_result1 = useLocalization_upvr({
		favorite = "Feature.SongDetails.Action.Favorite";
		report = "Feature.SongDetails.Action.Report";
	})
	local var18_upvw
	if GetFFlagSongDetailsInAppReportingFlow_upvr() then
		local useState_upvr_result1, useState_upvr_result2 = useState_upvr(false)
		var18_upvw = useState_upvr_result2
	end
	if GetFFlagSongDetailsInAppReportingFlow_upvr() then
		local _ = createNextOrder_upvr()
	else
	end
	local useCallback_upvr_result1_upvr = useCallback_upvr(function(arg1_2) -- Line 55
		--[[ Upvalues[2]:
			[1]: arg1 (readonly)
			[2]: sendAudioPlayerAnalytics_upvr (copied, readonly)
		]]
		local var23
		if arg1.audio.thumbnailAssetId then
			var23 = arg1.audio.thumbnailAssetId:gsub("rbxassetid://", "")
		else
			var23 = nil
		end
		local tbl_4 = {}
		tbl_4.action = arg1_2
		tbl_4.songId = arg1.audio.assetId:gsub("rbxassetid://", "")
		tbl_4.thumbnailId = var23 or "-1"
		tbl_4.source = arg1.analyticsSource
		sendAudioPlayerAnalytics_upvr(tbl_4)
	end, {arg1.audio.assetId, arg1.audio.thumbnail, arg1.audio.thumbnailAssetId, arg1.analyticsSource})
	local function var27() -- Line 80
		--[[ Upvalues[3]:
			[1]: arg1 (readonly)
			[2]: useCallback_upvr_result1_upvr (readonly)
			[3]: AnalyticActions_upvr (copied, readonly)
		]]
		-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [10] 8. Error Block 3 start (CF ANALYSIS FAILED)
		useCallback_upvr_result1_upvr(AnalyticActions_upvr.Unlike)
		arg1.onUnlike()
		do
			return
		end
		-- KONSTANTERROR: [10] 8. Error Block 3 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [20] 16. Error Block 7 start (CF ANALYSIS FAILED)
		if arg1.onLike then
			useCallback_upvr_result1_upvr(AnalyticActions_upvr.Like)
			arg1.onLike()
		end
		-- KONSTANTERROR: [20] 16. Error Block 7 end (CF ANALYSIS FAILED)
	end
	local tbl_6 = {arg1.audio.isLiked, arg1.onLike, arg1.onUnlike, useCallback_upvr_result1_upvr}
	if GetFFlagSongDetailsInAppReportingFlow_upvr() then
		-- KONSTANTWARNING: GOTO [86] #67
	end
	-- KONSTANTERROR: [0] 1. Error Block 41 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [73] 57. Error Block 46 start (CF ANALYSIS FAILED)
	if GetFFlagSongDetailsInAppReportingFlow_upvr() then
		local function _() -- Line 113
			--[[ Upvalues[4]:
				[1]: GetFFlagSongDetailsFixAudioReportingAnalytics_upvr (copied, readonly)
				[2]: useCallback_upvr_result1_upvr (readonly)
				[3]: AnalyticActions_upvr (copied, readonly)
				[4]: var18_upvw (read and write)
			]]
			if GetFFlagSongDetailsFixAudioReportingAnalytics_upvr() then
				useCallback_upvr_result1_upvr(AnalyticActions_upvr.StartAudioReport)
			end
			var18_upvw(true)
		end
	else
	end
	local var7_result1 = useCallback_upvr(function() -- Line 121
		--[[ Upvalues[1]:
			[1]: var18_upvw (read and write)
		]]
		var18_upvw(false)
	end, {})
	if GetFFlagSongDetailsInAppReportingFlow_upvr() then
		local module_2 = {}
		local tbl_2 = {
			LayoutOrder = nil();
		}
		local favorite = useLocalization_upvr_result1.favorite
		tbl_2.text = favorite
		if arg1.audio.isLiked then
			favorite = "icons/actions/favoriteOn"
		else
			favorite = "icons/actions/favoriteOff"
		end
		tbl_2.icon = favorite
		tbl_2.onActivated = useCallback_upvr(var27, tbl_6)
		module_2.Favorite = React_upvr.createElement(CustomFoundationChip_upvr, tbl_2)
		local tbl = {}
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		tbl.LayoutOrder = nil()
		tbl.text = useLocalization_upvr_result1.report
		tbl.icon = "icons/actions/feedback"
		tbl.onActivated = nil
		module_2.Report = React_upvr.createElement(CustomFoundationChip_upvr, tbl)
		local var39 = useState_upvr_result1
		if var39 then
			var39 = ReactRoblox_upvr.createPortal
			local tbl_3 = {
				ZIndexBehavior = Enum.ZIndexBehavior.Sibling;
				DisplayOrder = 2;
			}
			var39 = var39(React_upvr.createElement("ScreenGui", tbl_3, {
				Background = React_upvr.createElement(Foundation_upvr.View, {
					tag = "size-full row align-y-center align-x-center bg-over-media-100";
					stateLayer = {
						affordance = Foundation_upvr.Enums.StateLayerAffordance.None;
					};
					onActivated = var7_result1;
				}, {
					Dialog = React_upvr.createElement(ReportSongDialog_upvr, {
						audio = arg1.audio;
						analyticsSource = arg1.analyticsSource or "unknown";
						onClose = var7_result1;
					});
				});
			}), CoreGui_upvr)
		end
		module_2.ReportDialog = var39
		return React_upvr.createElement(Foundation_upvr.View, {
			tag = "auto-y size-full-0 row gap-small";
		}, module_2)
	end
	local module = {}
	local tbl_5 = {}
	tbl_3 = useLocalization_upvr_result1.favorite
	local var49 = tbl_3
	tbl_5.text = var49
	if arg1.audio.isLiked then
		var49 = "icons/actions/favoriteOn"
	else
		var49 = "icons/actions/favoriteOff"
	end
	tbl_5.icon = var49
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	tbl_5.onActivated = useCallback_upvr(var27, tbl_6)
	module.Favorite = React_upvr.createElement(CustomFoundationChip_upvr, tbl_5)
	module.Report = React_upvr.createElement(CustomFoundationChip_upvr, {
		text = useLocalization_upvr_result1.report;
		icon = "icons/actions/feedback";
		onActivated = useCallback_upvr(function() -- Line 103
			--[[ Upvalues[4]:
				[1]: arg1 (readonly)
				[2]: GetFFlagSongDetailsFixAudioReportingAnalytics_upvr (copied, readonly)
				[3]: useCallback_upvr_result1_upvr (readonly)
				[4]: AnalyticActions_upvr (copied, readonly)
			]]
			if arg1.onReport then
				if GetFFlagSongDetailsFixAudioReportingAnalytics_upvr() then
					useCallback_upvr_result1_upvr(AnalyticActions_upvr.StartAudioReport)
				end
				arg1.onReport()
			end
		end, {arg1.onReport});
	})
	do
		return React_upvr.createElement(Foundation_upvr.View, {
			tag = "auto-y size-full-0 row gap-small";
		}, module)
	end
	-- KONSTANTERROR: [73] 57. Error Block 46 end (CF ANALYSIS FAILED)
end