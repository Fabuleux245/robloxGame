-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:19:09
-- Luau version 6, Types version 3
-- Time taken: 0.001509 seconds

local RobloxAppHooks = script:FindFirstAncestor("RobloxAppHooks")
local Parent = RobloxAppHooks.Parent
local useCurrentCamera_upvr = require(RobloxAppHooks.useCurrentCamera)
local useProperty_upvr = require(Parent.GuiObjectUtils).useProperty
local DeviceOrientationMode_upvr = require(Parent.RobloxAppEnums).DeviceOrientationMode
return function() -- Line 10, Named "useDeviceOrientation"
	--[[ Upvalues[3]:
		[1]: useCurrentCamera_upvr (readonly)
		[2]: useProperty_upvr (readonly)
		[3]: DeviceOrientationMode_upvr (readonly)
	]]
	local var4_result1 = useProperty_upvr(useCurrentCamera_upvr(), "ViewportSize")
	if 1 < var4_result1.X then
		local var9
		if 1 < var9 then
			local function INLINED_2() -- Internal function, doesn't exist in bytecode
				var9 = DeviceOrientationMode_upvr.Landscape
				return var9
			end
			if var4_result1.Y >= var4_result1.X or not INLINED_2() then
				var9 = DeviceOrientationMode_upvr.Portrait
			end
			return var9
		end
	end
	return nil
end