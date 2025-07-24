-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:39:27
-- Luau version 6, Types version 3
-- Time taken: 0.001230 seconds

local ProfileQRCode = script:FindFirstAncestor("ProfileQRCode")
local Parent = ProfileQRCode.Parent
local useAnalytics_upvr = require(ProfileQRCode.Analytics.useAnalytics)
local useLoadingState_upvr = require(ProfileQRCode.Networking.useLoadingState)
local useGetProfileShareUrl_upvr = require(ProfileQRCode.Networking.useGetProfileShareUrl)
local FFlagQRCodeCallRefreshSessionIXP_upvr = require(Parent.SharedFlags).FFlagQRCodeCallRefreshSessionIXP
local FFlagQRCodeCallRefreshSessionEnabledForAll_upvr = require(Parent.SharedFlags).FFlagQRCodeCallRefreshSessionEnabledForAll
local useRefreshQrSession_upvr = require(ProfileQRCode.Networking.useRefreshQrSession)
local useShortUrl_upvr = require(ProfileQRCode.Rodux.useShortUrl)
local NetworkStatus_upvr = require(ProfileQRCode.Networking.configuredRoduxNetworking).Enum.NetworkStatus
local RoactAppExperiment_upvr = require(Parent.RoactAppExperiment)
local game_DefineFastString_result1_upvr = game:DefineFastString("QRCodeRefreshSessionLayerName", "ProfileQRCodeLayer")
local React_upvr = require(Parent.React)
local EventNames_upvr = require(ProfileQRCode.Analytics.EventNames)
local useEffectOnce_upvr = require(Parent.RoactUtils).Hooks.useEffectOnce
local useHasLoadedSuccessfully_upvr = require(script.Parent.useHasLoadedSuccessfully)
local useHasFailedToLoad_upvr = require(script.Parent.useHasFailedToLoad)
local QRCodeSucceededView_upvr = require(script.Parent.QRCodeSucceededView)
local QRCodeFailedView_upvr = require(script.Parent.QRCodeFailedView)
local QRCodeLoadingView_upvr = require(script.Parent.QRCodeLoadingView)
return function(arg1) -- Line 37
	--[[ Upvalues[18]:
		[1]: useAnalytics_upvr (readonly)
		[2]: useLoadingState_upvr (readonly)
		[3]: useGetProfileShareUrl_upvr (readonly)
		[4]: FFlagQRCodeCallRefreshSessionIXP_upvr (readonly)
		[5]: FFlagQRCodeCallRefreshSessionEnabledForAll_upvr (readonly)
		[6]: useRefreshQrSession_upvr (readonly)
		[7]: useShortUrl_upvr (readonly)
		[8]: NetworkStatus_upvr (readonly)
		[9]: RoactAppExperiment_upvr (readonly)
		[10]: game_DefineFastString_result1_upvr (readonly)
		[11]: React_upvr (readonly)
		[12]: EventNames_upvr (readonly)
		[13]: useEffectOnce_upvr (readonly)
		[14]: useHasLoadedSuccessfully_upvr (readonly)
		[15]: useHasFailedToLoad_upvr (readonly)
		[16]: QRCodeSucceededView_upvr (readonly)
		[17]: QRCodeFailedView_upvr (readonly)
		[18]: QRCodeLoadingView_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 49 start (CF ANALYSIS FAILED)
	if FFlagQRCodeCallRefreshSessionIXP_upvr or FFlagQRCodeCallRefreshSessionEnabledForAll_upvr then
	else
	end
	if useShortUrl_upvr() == nil then
		-- KONSTANTWARNING: GOTO [20] #20
	end
	-- KONSTANTERROR: [0] 1. Error Block 49 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [19] 19. Error Block 53 start (CF ANALYSIS FAILED)
	if useLoadingState_upvr() ~= NetworkStatus_upvr.Failed then
		-- KONSTANTWARNING: GOTO [27] #25
	end
	-- KONSTANTERROR: [19] 19. Error Block 53 end (CF ANALYSIS FAILED)
end