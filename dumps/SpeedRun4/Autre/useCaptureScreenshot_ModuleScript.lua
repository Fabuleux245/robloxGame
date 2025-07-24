-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:02:31
-- Luau version 6, Types version 3
-- Time taken: 0.000749 seconds

local CorePackages = game:GetService("CorePackages")
local React_upvr = require(CorePackages.Packages.React)
local ScreenshotManager_upvr = require(CorePackages.Workspace.Packages.TnSScreenshot).ScreenshotManager
local AvatarIdentification_upvr = require(CorePackages.Workspace.Packages.TnSAvatarIdentification).AvatarIdentification
local AdIdentification_upvr = require(CorePackages.Workspace.Packages.TnSAdIdentification).AdIdentification
return function(arg1, arg2, arg3) -- Line 18
	--[[ Upvalues[4]:
		[1]: React_upvr (readonly)
		[2]: ScreenshotManager_upvr (readonly)
		[3]: AvatarIdentification_upvr (readonly)
		[4]: AdIdentification_upvr (readonly)
	]]
	local module = {}
	module[1] = arg2
	module[2] = arg1
	module[3] = arg3
	return React_upvr.useCallback(function() -- Line 23
		--[[ Upvalues[6]:
			[1]: ScreenshotManager_upvr (copied, readonly)
			[2]: arg2 (readonly)
			[3]: arg1 (readonly)
			[4]: AvatarIdentification_upvr (copied, readonly)
			[5]: AdIdentification_upvr (copied, readonly)
			[6]: arg3 (readonly)
		]]
		ScreenshotManager_upvr:TakeScreenshotWithCallback(arg2, arg1)
		local any_getVisibleAvatars_result1, any_getVisibleAvatars_result2 = AvatarIdentification_upvr.getVisibleAvatars()
		local any_getVisibleAds_result1, any_getVisibleAds_result2 = AdIdentification_upvr.getVisibleAds()
		arg3({
			identifiedAvatars = any_getVisibleAvatars_result1;
			identifiedAds = any_getVisibleAds_result1;
			avatarIDStats = any_getVisibleAvatars_result2;
			adIDStats = any_getVisibleAds_result2;
		})
	end, module)
end