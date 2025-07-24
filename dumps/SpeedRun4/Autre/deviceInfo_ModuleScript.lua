-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:45:40
-- Luau version 6, Types version 3
-- Time taken: 0.001060 seconds

local CorePackages = game:GetService("CorePackages")
local ShareGame = game:GetService("CoreGui").RobloxGui.Modules.Settings.Pages.ShareGame
local Constants_upvr = require(ShareGame.Constants)
local SetDeviceOrientation_upvr = require(CorePackages.Workspace.Packages.DeviceOrientationRodux).Actions.SetDeviceOrientation
local Immutable_upvr = require(CorePackages.Workspace.Packages.AppCommonLib).Immutable
local SetDeviceLayout_upvr = require(ShareGame.Actions.SetDeviceLayout)
local SetIsSmallTouchScreen_upvr = require(ShareGame.Actions.SetIsSmallTouchScreen)
return function(arg1, arg2) -- Line 14
	--[[ Upvalues[5]:
		[1]: Constants_upvr (readonly)
		[2]: SetDeviceOrientation_upvr (readonly)
		[3]: Immutable_upvr (readonly)
		[4]: SetDeviceLayout_upvr (readonly)
		[5]: SetIsSmallTouchScreen_upvr (readonly)
	]]
	local var9
	if not arg1 then
	end
	var9 = {
		DeviceLayout = Constants_upvr.DeviceLayout.DESKTOP;
		DeviceOrientation = Constants_upvr.DeviceOrientation.INVALID;
		IsSmallTouchScreen = false;
	}
	if arg2.type == SetDeviceOrientation_upvr.name then
		var9 = Immutable_upvr.Set(var9, "DeviceOrientation", arg2.deviceOrientation)
		return var9
	end
	if arg2.type == SetDeviceLayout_upvr.name then
		var9 = Immutable_upvr.Set(var9, "DeviceLayout", arg2.deviceLayout)
		return var9
	end
	if arg2.type == SetIsSmallTouchScreen_upvr.name then
		var9 = Immutable_upvr.Set(var9, "IsSmallTouchScreen", arg2.isSmallTouchScreen)
	end
	return var9
end