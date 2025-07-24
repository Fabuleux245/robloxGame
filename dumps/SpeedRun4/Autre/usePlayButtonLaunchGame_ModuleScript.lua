-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:33:18
-- Luau version 6, Types version 3
-- Time taken: 0.003483 seconds

local Parent = script:FindFirstAncestor("GamePlayButton").Parent
local RoactServiceTags = require(Parent.RoactServiceTags)
local RoactUtils = require(Parent.RoactUtils)
local DiscoveryAnalytics = require(Parent.DiscoveryAnalytics)
local GameVotesRodux = require(Parent.GameVotesRodux)
local useRoactService_upvr = require(Parent.RobloxAppHooks).useRoactService
local RoactAnalytics_upvr = RoactServiceTags.RoactAnalytics
local AppEventIngestService_upvr = RoactServiceTags.AppEventIngestService
local AppGame_upvr = RoactServiceTags.AppGame
local useSelector_upvr = RoactUtils.Hooks.RoactRodux.useSelector
local useDispatch_upvr = RoactUtils.Hooks.RoactRodux.useDispatch
local FFlagLuaAppEnablePlayButtonThrottle_upvr = require(Parent.SharedFlags).FFlagLuaAppEnablePlayButtonThrottle
local React_upvr = require(Parent.React)
local FIntLuaAppPlayButtonThrottleTimeSeconds_upvr = require(Parent.SharedFlags).FIntLuaAppPlayButtonThrottleTimeSeconds
local GetFFlagLuaAppEnableVirtualEventPlaceId_upvr = require(Parent.SharedFlags).GetFFlagLuaAppEnableVirtualEventPlaceId
local gamePlayIntent_upvr = DiscoveryAnalytics.Events.gamePlayIntent
local joinGamePlayButton_upvr = DiscoveryAnalytics.Points.joinGamePlayButton
local IsVRAppBuild_upvr = require(Parent.AppCommonLib).IsVRAppBuild
local SplashScreenManager_upvr = require(Parent.SplashScreenManager).SplashScreenManager
local LaunchGame_upvr = require(Parent.GameLaunch).LaunchGame
local ReasonForNotVoteable_upvr = GameVotesRodux.Enums.ReasonForNotVoteable
local ClearUserGameVotes_upvr = GameVotesRodux.UserGameVotes.ClearUserGameVotes
return function(arg1, arg2, arg3, arg4, arg5, arg6, arg7) -- Line 29
	--[[ Upvalues[17]:
		[1]: useRoactService_upvr (readonly)
		[2]: RoactAnalytics_upvr (readonly)
		[3]: AppEventIngestService_upvr (readonly)
		[4]: AppGame_upvr (readonly)
		[5]: useSelector_upvr (readonly)
		[6]: useDispatch_upvr (readonly)
		[7]: FFlagLuaAppEnablePlayButtonThrottle_upvr (readonly)
		[8]: React_upvr (readonly)
		[9]: FIntLuaAppPlayButtonThrottleTimeSeconds_upvr (readonly)
		[10]: GetFFlagLuaAppEnableVirtualEventPlaceId_upvr (readonly)
		[11]: gamePlayIntent_upvr (readonly)
		[12]: joinGamePlayButton_upvr (readonly)
		[13]: IsVRAppBuild_upvr (readonly)
		[14]: SplashScreenManager_upvr (readonly)
		[15]: LaunchGame_upvr (readonly)
		[16]: ReasonForNotVoteable_upvr (readonly)
		[17]: ClearUserGameVotes_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local useRoactService_upvr_result1_upvr_2 = useRoactService_upvr(RoactAnalytics_upvr)
	local useRoactService_upvr_result1_upvr = useRoactService_upvr(AppEventIngestService_upvr)
	local var8_result1_upvr = useRoactService_upvr(AppGame_upvr)
	local var12_result1_upvr = useSelector_upvr(function(arg1_2) -- Line 42
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		return arg1_2.UserGameVotes[arg1]
	end)
	local var30_upvr
	if FFlagLuaAppEnablePlayButtonThrottle_upvr then
		var30_upvr = React_upvr.useRef(0)
	else
		var30_upvr = nil
	end
	local useDispatch_upvr_result1_upvr = useDispatch_upvr()
	local module = {}
	if GetFFlagLuaAppEnableVirtualEventPlaceId_upvr() then
	else
	end
	module[1] = useRoactService_upvr_result1_upvr
	module[2] = useRoactService_upvr_result1_upvr_2
	module[3] = var8_result1_upvr
	module[4] = var12_result1_upvr
	module[5] = arg1
	module[6] = nil
	module[7] = arg3
	module[8] = arg4
	module[9] = arg5
	return React_upvr.useCallback(function(arg1_3) -- Line 49
		--[[ Upvalues[23]:
			[1]: FFlagLuaAppEnablePlayButtonThrottle_upvr (copied, readonly)
			[2]: var30_upvr (readonly)
			[3]: FIntLuaAppPlayButtonThrottleTimeSeconds_upvr (copied, readonly)
			[4]: GetFFlagLuaAppEnableVirtualEventPlaceId_upvr (copied, readonly)
			[5]: arg2 (readonly)
			[6]: arg3 (readonly)
			[7]: gamePlayIntent_upvr (copied, readonly)
			[8]: useRoactService_upvr_result1_upvr (readonly)
			[9]: arg4 (readonly)
			[10]: arg1 (readonly)
			[11]: joinGamePlayButton_upvr (copied, readonly)
			[12]: useRoactService_upvr_result1_upvr_2 (readonly)
			[13]: arg5 (readonly)
			[14]: IsVRAppBuild_upvr (copied, readonly)
			[15]: SplashScreenManager_upvr (copied, readonly)
			[16]: LaunchGame_upvr (copied, readonly)
			[17]: arg6 (readonly)
			[18]: arg7 (readonly)
			[19]: var8_result1_upvr (readonly)
			[20]: var12_result1_upvr (readonly)
			[21]: ReasonForNotVoteable_upvr (copied, readonly)
			[22]: useDispatch_upvr_result1_upvr (readonly)
			[23]: ClearUserGameVotes_upvr (copied, readonly)
		]]
		-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
		-- KONSTANTERROR: [0] 1. Error Block 49 start (CF ANALYSIS FAILED)
		local var33
		if FFlagLuaAppEnablePlayButtonThrottle_upvr then
			local tick_result1 = tick()
			if tick_result1 - var30_upvr.current < FIntLuaAppPlayButtonThrottleTimeSeconds_upvr then return end
			var30_upvr.current = tick_result1
		end
		if GetFFlagLuaAppEnableVirtualEventPlaceId_upvr() and (not arg2 or not arg3) or not GetFFlagLuaAppEnableVirtualEventPlaceId_upvr() and not arg3 then
		else
			if arg1_3 ~= nil then
				arg1_3()
				-- KONSTANTWARNING: GOTO [60] #51
			end
			-- KONSTANTERROR: [0] 1. Error Block 49 end (CF ANALYSIS FAILED)
			-- KONSTANTERROR: [34] 30. Error Block 54 start (CF ANALYSIS FAILED)
			local tbl = {}
			if GetFFlagLuaAppEnableVirtualEventPlaceId_upvr() then
				var33 = arg2
			else
				var33 = arg3
			end
			tbl.placeId = var33
			var33 = tonumber(arg3)
			tbl.rootPlaceId = var33
			var33 = arg4
			tbl.referralSource = var33
			var33 = arg1
			tbl.universeId = var33
			gamePlayIntent_upvr(useRoactService_upvr_result1_upvr, "PlayButton", tbl)
			local tbl_2 = {}
			var33 = true
			tbl_2.isUniversalApp = var33
			var33 = arg4
			tbl_2.referralSource = var33
			if GetFFlagLuaAppEnableVirtualEventPlaceId_upvr() then
				var33 = arg2
			else
				var33 = arg3
			end
			tbl_2.placeId = var33
			tbl_2.ctx = arg5
			joinGamePlayButton_upvr(useRoactService_upvr_result1_upvr_2.InfluxDb, "gamePlayIntent", tbl_2)
			if IsVRAppBuild_upvr() then
				SplashScreenManager_upvr.initialize(36)
				wait(0.3)
			end
			if GetFFlagLuaAppEnableVirtualEventPlaceId_upvr() then
			else
			end
			LaunchGame_upvr(arg3, arg6, arg7, var8_result1_upvr)
			if var12_result1_upvr and var12_result1_upvr.reasonForNotVoteable == ReasonForNotVoteable_upvr.PlayGame then
				useDispatch_upvr_result1_upvr(ClearUserGameVotes_upvr(arg1))
			end
			-- KONSTANTERROR: [34] 30. Error Block 54 end (CF ANALYSIS FAILED)
		end
	end, module)
end