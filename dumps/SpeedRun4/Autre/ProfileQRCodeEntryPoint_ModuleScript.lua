-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:39:20
-- Luau version 6, Types version 3
-- Time taken: 0.000920 seconds

local ProfileQRCode = script:FindFirstAncestor("ProfileQRCode")
local Parent = ProfileQRCode.Parent
local Analytics_upvr = require(ProfileQRCode.Analytics)
local AnalyticsService_upvr = require(ProfileQRCode.Analytics.AnalyticsService)
local useLocalUserId_upvr = require(Parent.RobloxAppHooks).useLocalUserId
local React_upvr = require(Parent.React)
local ProfileQRCodePage_upvr = require(ProfileQRCode.Components.ProfileQRCodePage.ProfileQRCodePage)
return function(arg1) -- Line 22
	--[[ Upvalues[5]:
		[1]: Analytics_upvr (readonly)
		[2]: AnalyticsService_upvr (readonly)
		[3]: useLocalUserId_upvr (readonly)
		[4]: React_upvr (readonly)
		[5]: ProfileQRCodePage_upvr (readonly)
	]]
	local tbl = {}
	local var10
	if arg1.analyticsService then
		var10 = arg1.analyticsService
	else
		var10 = AnalyticsService_upvr
	end
	tbl.analytics = var10
	var10 = {}
	var10.uid = useLocalUserId_upvr()
	var10.source = arg1.source
	tbl.infoForAllEvents = var10
	var10 = React_upvr
	var10 = Analytics_upvr.Context.Provider
	return var10.createElement(var10, {
		value = {
			fireEvent = Analytics_upvr.setupFireEvent(tbl);
		};
	}, {
		Window = React_upvr.createElement(ProfileQRCodePage_upvr, {
			appStorageService = arg1.appStorageService;
			robloxEventReceiver = arg1.robloxEventReceiver;
			onClose = arg1.onClose;
			openQrCodeScanner = arg1.openQrCodeScanner;
		});
	})
end