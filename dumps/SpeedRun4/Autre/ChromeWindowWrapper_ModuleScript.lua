-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:29:56
-- Luau version 6, Types version 3
-- Time taken: 0.002604 seconds

local Songbird = script:FindFirstAncestor("Songbird")
local React_upvr = require(Songbird.Parent.React)
local useCurrentSong_upvr = require(Songbird.Hooks.useCurrentSong)
local ReportAudioPopupContext_upvr = require(Songbird.Components.ReportAudioPopupContext)
local useMemo_upvr = React_upvr.useMemo
local useEffect_upvr = React_upvr.useEffect
local useCallback_upvr = React_upvr.useCallback
local sendChromeWindowAnalytics_upvr = require(Songbird.Analytics.sendChromeWindowAnalytics)
local AnalyticActions_upvr = require(Songbird.Analytics.AnalyticActions)
local ChromeWindow_upvr = require(Songbird.Components.ChromeWindow)
return function(arg1) -- Line 23, Named "ChromeWindowWrapper"
	--[[ Upvalues[9]:
		[1]: useCurrentSong_upvr (readonly)
		[2]: ReportAudioPopupContext_upvr (readonly)
		[3]: useMemo_upvr (readonly)
		[4]: useEffect_upvr (readonly)
		[5]: useCallback_upvr (readonly)
		[6]: sendChromeWindowAnalytics_upvr (readonly)
		[7]: AnalyticActions_upvr (readonly)
		[8]: React_upvr (readonly)
		[9]: ChromeWindow_upvr (readonly)
	]]
	local var3_result1_upvr = useCurrentSong_upvr()
	local any_use_result1_upvr = ReportAudioPopupContext_upvr.use()
	local useMemo_upvr_result1_upvr = useMemo_upvr(function() -- Line 27
		--[[ Upvalues[1]:
			[1]: var3_result1_upvr (readonly)
		]]
		if var3_result1_upvr then
			return tonumber(var3_result1_upvr.metadata.AssetId)
		end
		return nil
	end, {var3_result1_upvr})
	useEffect_upvr(function() -- Line 31
		--[[ Upvalues[2]:
			[1]: any_use_result1_upvr (readonly)
			[2]: useMemo_upvr_result1_upvr (readonly)
		]]
		any_use_result1_upvr.setAssetId(useMemo_upvr_result1_upvr)
		return function() -- Line 34
			--[[ Upvalues[1]:
				[1]: any_use_result1_upvr (copied, readonly)
			]]
			any_use_result1_upvr.setAssetId(nil)
		end
	end, {useMemo_upvr_result1_upvr})
	local module = {}
	local var25
	if var3_result1_upvr then
		var25 = {}
		var25.title = var3_result1_upvr.metadata.Title
		var25.artists = {var3_result1_upvr.metadata.Artist}
		var25.isLiked = var3_result1_upvr.isFavorited
		var25.meetsCriteria = var3_result1_upvr.meetsCriteria
	else
		var25 = nil
	end
	module.song = var25
	var25 = arg1.maxSize
	module.maxSize = var25
	module.onToggleLike = useCallback_upvr(function() -- Line 48
		--[[ Upvalues[1]:
			[1]: var3_result1_upvr (readonly)
		]]
		if var3_result1_upvr then
			var3_result1_upvr.toggleFavorite()
		end
	end, {var3_result1_upvr})
	module.onReport = useCallback_upvr(function() -- Line 39
		--[[ Upvalues[5]:
			[1]: any_use_result1_upvr (readonly)
			[2]: sendChromeWindowAnalytics_upvr (copied, readonly)
			[3]: useMemo_upvr_result1_upvr (readonly)
			[4]: AnalyticActions_upvr (copied, readonly)
			[5]: arg1 (readonly)
		]]
		any_use_result1_upvr.setVisibility(true)
		sendChromeWindowAnalytics_upvr({
			assetId = useMemo_upvr_result1_upvr;
			action = AnalyticActions_upvr.OpenReport;
		})
		if arg1.onReport then
			arg1.onReport()
		end
	end, {arg1.onClose, arg1.onReport})
	var25 = arg1.onClose
	module.onClose = var25
	return React_upvr.createElement(ChromeWindow_upvr, module)
end