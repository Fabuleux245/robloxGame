-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:57:21
-- Luau version 6, Types version 3
-- Time taken: 0.000708 seconds

local module_upvr = {}
module_upvr.__index = module_upvr
function module_upvr.GetPropertyChangedSignal(arg1, arg2) -- Line 4
	if arg2 == "VRDeviceAvailable" then
		return arg1._vrDeviceAvailableChanged.Event
	end
	error("%s is not a valid property name":format(tostring(arg2)))
end
function module_upvr.toggleHeadsetConnectionState(arg1) -- Line 11
	local var2 = not arg1.VRDeviceAvailable
	arg1.VRDeviceAvailable = var2
	arg1._vrDeviceAvailableChanged:Fire(var2)
end
function module_upvr.new() -- Line 18
	--[[ Upvalues[1]:
		[1]: module_upvr (readonly)
	]]
	local module = {
		VRDeviceAvailable = true;
		_vrDeviceAvailableChanged = Instance.new("BindableEvent");
	}
	setmetatable(module, {
		__index = module_upvr;
	})
	return module
end
return module_upvr