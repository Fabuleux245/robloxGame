-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:00:14
-- Luau version 6, Types version 3
-- Time taken: 0.002336 seconds

local module_2_upvr = {}
module_2_upvr.__index = module_2_upvr
function module_2_upvr.new(arg1, arg2, arg3, arg4, arg5) -- Line 4
	--[[ Upvalues[1]:
		[1]: module_2_upvr (readonly)
	]]
	local module = {
		_browserTrackerLoadingStatus = Enum.IXPLoadingStatus.Initialized;
	}
	local var3
	local function INLINED() -- Internal function, doesn't exist in bytecode
		var3 = Enum.IXPLoadingStatus.Initialized
		return var3
	end
	if not arg3 or not INLINED() then
		var3 = Enum.IXPLoadingStatus.None
	end
	module._userLoadingStatus = var3
	var3 = arg5 or 0
	module._userId = var3
	module._browserTrackerLayerData = arg1
	module._userLayerData = arg2
	var3 = arg4 or 0.1
	module._initializeDelay = var3
	var3 = {}
	module._exposureEventsFired = var3
	var3 = Instance.new("BindableEvent")
	module._browserTrackerBindableEvent = var3
	var3 = module._browserTrackerBindableEvent.Event
	module.OnBrowserTrackerLayerLoadingStatusChanged = var3
	var3 = Instance.new("BindableEvent")
	module._userBindableEvent = var3
	var3 = module._userBindableEvent.Event
	module.OnUserLayerLoadingStatusChanged = var3
	var3 = setmetatable
	var3(module, module_2_upvr)
	return module
end
function module_2_upvr._SetBrowserTrackerIXPLoadingStatus(arg1, arg2) -- Line 32
	if arg1._browserTrackerLoadingStatus ~= arg2 then
		arg1._browserTrackerLoadingStatus = arg2
		arg1._browserTrackerBindableEvent:Fire(arg2)
	end
end
function module_2_upvr._SetUserIXPLoadingStatus(arg1, arg2, arg3) -- Line 39
	if arg1._userLoadingStatus ~= arg2 or arg1._userId ~= arg3 then
		arg1._userLoadingStatus = arg2
		arg1._userId = arg3
		arg1._userBindableEvent:Fire(arg1._userLoadingStatus, arg1._userId)
	end
end
function module_2_upvr.RegisterUserLayers(arg1, arg2) -- Line 47
end
function module_2_upvr.InitializeUserLayers(arg1, arg2) -- Line 49
	if arg1._userLoadingStatus ~= Enum.IXPLoadingStatus.Initialized or arg1._userId ~= 0 and arg2 ~= arg1._userId then
		arg1:_SetUserIXPLoadingStatus(Enum.IXPLoadingStatus.Pending, arg2)
		spawn(function() -- Line 56
			--[[ Upvalues[2]:
				[1]: arg1 (readonly)
				[2]: arg2 (readonly)
			]]
			wait(arg1._initializeDelay)
			arg1:_SetUserIXPLoadingStatus(Enum.IXPLoadingStatus.Initialized, arg2)
		end)
	end
end
function module_2_upvr.GetBrowserTrackerLayerVariables(arg1, arg2) -- Line 63
	if arg1._browserTrackerLoadingStatus == Enum.IXPLoadingStatus.Initialized then
		return arg1._browserTrackerLayerData[arg2]
	end
	return {}
end
function module_2_upvr.GetUserLayerVariables(arg1, arg2) -- Line 70
	if arg1._userLoadingStatus == Enum.IXPLoadingStatus.Initialized then
		return arg1._userLayerData[arg2]
	end
	return {}
end
function module_2_upvr.ClearUserLayers(arg1) -- Line 77
	arg1._userLoadingStatus = Enum.IXPLoadingStatus.None
	arg1._userId = 0
	arg1._userBindableEvent:Fire(arg1._userLoadingStatus, arg1._userId)
end
function module_2_upvr.GetBrowserTrackerLayerLoadingStatus(arg1) -- Line 83
	return arg1._browserTrackerLoadingStatus
end
function module_2_upvr.GetUserLayerLoadingStatus(arg1) -- Line 87
	return arg1._userLoadingStatus
end
function module_2_upvr.GetBrowserTrackerStatusForLayer(arg1, arg2) -- Line 91
	return arg1._browserTrackerLoadingStatus
end
function module_2_upvr.GetUserStatusForLayer(arg1, arg2) -- Line 95
	return arg1._userLoadingStatus
end
function module_2_upvr.LogUserLayerExposure(arg1, arg2) -- Line 99
	table.insert(arg1._exposureEventsFired, arg2)
end
function module_2_upvr.LogBrowserTrackerLayerExposure(arg1, arg2) -- Line 103
	table.insert(arg1._exposureEventsFired, arg2)
end
return module_2_upvr