-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:05:45
-- Luau version 6, Types version 3
-- Time taken: 0.000848 seconds

local module = {
	UserFixGamepadMaxZoom = true;
	UserFixCameraOffsetJitter = false;
	UserResetTouchStateOnMenuOpen = true;
	UserClearPanOnCameraDisable = true;
	UserRemoveVRReferences = false;
	UserExcludeNonCollidableForPathfinding = true;
	UserClickToMoveSupportAgentCanClimb2 = true;
	UserFixTouchJumpBug = false;
	UserDynamicThumbstickSafeAreaUpdate = true;
	UserVRAvatarGestures = false;
	UserDynamicThumbstickMoveOverButtons2 = true;
	UserResizeAwareTouchControls = true;
	UserClampClassicThumbstick = true;
	UserVRVehicleCamera2 = false;
}
if require(game:GetService("ReplicatedStorage"):WaitForChild("Settings")).DebugMonitorFFlagValues then
	for i_upvr, v in pairs(module) do
		local pcall_result1, pcall_result2 = pcall(function() -- Line 75
			--[[ Upvalues[1]:
				[1]: i_upvr (readonly)
			]]
			return UserSettings():IsUserFeatureEnabled(i_upvr)
		end)
		local var10 = pcall_result1 and pcall_result2
		if v ~= var10 then
			warn("FFlag '%s' value has changed from '%s' to '%s'":format(i_upvr, tostring(v), tostring(var10)))
		end
		if not pcall_result1 then
			warn("FFlag '%s' error when checking: '%s'":format(i_upvr, tostring(pcall_result2)))
		end
	end
end
return module