-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:29:16
-- Luau version 6, Types version 3
-- Time taken: 0.001289 seconds

local PlatformBuckets_upvr = require(script.Parent.Parent.Enums.PlatformBuckets)
local tbl_upvr = {
	[Enum.Platform.Windows] = PlatformBuckets_upvr.Windows;
	[Enum.Platform.OSX] = PlatformBuckets_upvr.Mac;
	[Enum.Platform.IOS] = PlatformBuckets_upvr.IOS;
	[Enum.Platform.Android] = PlatformBuckets_upvr.Android;
	[Enum.Platform.UWP] = PlatformBuckets_upvr.Windows;
	[Enum.Platform.XBox360] = PlatformBuckets_upvr.XBox;
	[Enum.Platform.XBoxOne] = PlatformBuckets_upvr.XBox;
	[Enum.Platform.PS3] = PlatformBuckets_upvr.Playstation;
	[Enum.Platform.PS4] = PlatformBuckets_upvr.Playstation;
	[Enum.Platform.PS5] = PlatformBuckets_upvr.Playstation;
	[Enum.Platform.None] = PlatformBuckets_upvr.None;
}
local getUserInputService_upvr = require(script.Parent.getUserInputService)
local PlatformSpecificity_upvr = require(script.Parent.Parent.Enums.PlatformSpecificity)
local IsVRAppBuild_upvr = require(script:FindFirstAncestor("SocialLuaAnalytics").Parent.AppCommonLib).IsVRAppBuild
return function(arg1) -- Line 24
	--[[ Upvalues[5]:
		[1]: getUserInputService_upvr (readonly)
		[2]: PlatformSpecificity_upvr (readonly)
		[3]: IsVRAppBuild_upvr (readonly)
		[4]: PlatformBuckets_upvr (readonly)
		[5]: tbl_upvr (readonly)
	]]
	local var7_upvw
	local getUserInputService_upvr_result1_upvr = getUserInputService_upvr()
	pcall(function() -- Line 29
		--[[ Upvalues[2]:
			[1]: var7_upvw (read and write)
			[2]: getUserInputService_upvr_result1_upvr (readonly)
		]]
		local any_GetPlatform_result1 = getUserInputService_upvr_result1_upvr:GetPlatform()
		if not any_GetPlatform_result1 then
			any_GetPlatform_result1 = Enum.Platform.None
		end
		var7_upvw = any_GetPlatform_result1
	end)
	if arg1 == PlatformSpecificity_upvr.All then
		if IsVRAppBuild_upvr() then
			return PlatformBuckets_upvr.Quest
		end
		local any_match_result1 = tostring(var7_upvw):match(".*%.(.*)")
		if not any_match_result1 then
			return PlatformBuckets_upvr.None
		end
		return any_match_result1
	end
	if arg1 == PlatformSpecificity_upvr.BucketsOnly then
		if IsVRAppBuild_upvr() then
			return PlatformBuckets_upvr.Quest
		end
		local var12 = tbl_upvr[var7_upvw]
		if not var12 then
			var12 = PlatformBuckets_upvr.None
		end
		return var12
	end
	return ""
end