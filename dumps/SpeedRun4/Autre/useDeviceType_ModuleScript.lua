-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:19:10
-- Luau version 6, Types version 3
-- Time taken: 0.000434 seconds

local Parent = script:FindFirstAncestor("RobloxAppHooks").Parent
local useSelector_upvr = require(Parent.RoactUtils).Hooks.RoactRodux.useSelector
local getDeviceType_upvr = require(Parent.AppCommonLib).getDeviceType
return function() -- Line 15, Named "useDeviceType"
	--[[ Upvalues[2]:
		[1]: useSelector_upvr (readonly)
		[2]: getDeviceType_upvr (readonly)
	]]
	return getDeviceType_upvr(useSelector_upvr(function(arg1) -- Line 16
		return arg1.DeviceOrientation
	end))
end