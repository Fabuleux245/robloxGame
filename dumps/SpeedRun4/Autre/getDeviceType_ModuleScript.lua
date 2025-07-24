-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:55:41
-- Luau version 6, Types version 3
-- Time taken: 0.001397 seconds

local RobloxAppEnums = require(script:FindFirstAncestor("AppCommonLib").Parent.RobloxAppEnums)
local IsVRAppBuild_upvr = require(script.Parent.IsVRAppBuild)
local DeviceType_upvr = RobloxAppEnums.DeviceType
local GuiService_upvr = game:GetService("GuiService")
local UserInputService_upvr = game:GetService("UserInputService")
local DeviceOrientationMode_upvr = RobloxAppEnums.DeviceOrientationMode
return function(arg1) -- Line 16, Named "getDeviceType"
	--[[ Upvalues[5]:
		[1]: IsVRAppBuild_upvr (readonly)
		[2]: DeviceType_upvr (readonly)
		[3]: GuiService_upvr (readonly)
		[4]: UserInputService_upvr (readonly)
		[5]: DeviceOrientationMode_upvr (readonly)
	]]
	if IsVRAppBuild_upvr() then
		return DeviceType_upvr.VR
	end
	if GuiService_upvr:IsTenFootInterface() then
		return DeviceType_upvr.Console
	end
	local None_upvw = Enum.Platform.None
	pcall(function() -- Line 26
		--[[ Upvalues[2]:
			[1]: None_upvw (read and write)
			[2]: UserInputService_upvr (copied, readonly)
		]]
		None_upvw = UserInputService_upvr:GetPlatform()
	end)
	if None_upvw == Enum.Platform.Windows or None_upvw == Enum.Platform.OSX or None_upvw == Enum.Platform.UWP then
		return DeviceType_upvr.Desktop
	end
	if None_upvw == Enum.Platform.IOS or None_upvw == Enum.Platform.Android then
		if arg1 == DeviceOrientationMode_upvr.Landscape then
			return DeviceType_upvr.Tablet
		end
		if arg1 == DeviceOrientationMode_upvr.Portrait then
			return DeviceType_upvr.Phone
		end
	end
	return DeviceType_upvr.Unknown
end