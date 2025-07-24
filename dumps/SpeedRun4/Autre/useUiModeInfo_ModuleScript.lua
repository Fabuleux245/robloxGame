-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:19:15
-- Luau version 6, Types version 3
-- Time taken: 0.001201 seconds

local Parent = script:FindFirstAncestor("RobloxAppHooks").Parent
local RobloxAppEnums = require(Parent.RobloxAppEnums)
local DeviceType = RobloxAppEnums.DeviceType
local UiMode_upvr = RobloxAppEnums.UiMode
local tbl_upvr = {
	[DeviceType.Desktop] = UiMode_upvr.Unknown;
	[DeviceType.Tablet] = UiMode_upvr.Unknown;
	[DeviceType.Phone] = UiMode_upvr.Unknown;
	[DeviceType.Console] = UiMode_upvr.TenFoot;
	[DeviceType.VR] = UiMode_upvr.VR;
}
local useDeviceType_upvr = require(script.Parent.useDeviceType)
local React_upvr = require(Parent.React)
local dependencyArray_upvr = require(Parent.RoactUtils).Hooks.dependencyArray
return function() -- Line 36, Named "useUiModeInfo"
	--[[ Upvalues[5]:
		[1]: useDeviceType_upvr (readonly)
		[2]: tbl_upvr (readonly)
		[3]: UiMode_upvr (readonly)
		[4]: React_upvr (readonly)
		[5]: dependencyArray_upvr (readonly)
	]]
	local useDeviceType_upvr_result1_upvr = useDeviceType_upvr()
	local var10_upvr = tbl_upvr[useDeviceType_upvr_result1_upvr]
	if not var10_upvr then
		var10_upvr = UiMode_upvr.Unknown
	end
	return React_upvr.useMemo(function() -- Line 40
		--[[ Upvalues[2]:
			[1]: useDeviceType_upvr_result1_upvr (readonly)
			[2]: var10_upvr (readonly)
		]]
		return {
			deviceType = useDeviceType_upvr_result1_upvr;
			uiMode = var10_upvr;
		}
	end, dependencyArray_upvr(useDeviceType_upvr_result1_upvr, var10_upvr))
end