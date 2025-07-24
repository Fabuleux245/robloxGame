-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:02:02
-- Luau version 6, Types version 3
-- Time taken: 0.001437 seconds

local RoduxCall = script:FindFirstAncestor("RoduxCall")
local t = require(RoduxCall.Parent.t)
local module_upvr = {}
function module_upvr.new(arg1) -- Line 10
	--[[ Upvalues[1]:
		[1]: module_upvr (readonly)
	]]
	assert(module_upvr.isValid(arg1))
	module_upvr.__index = module_upvr
	setmetatable(arg1, module_upvr)
	return arg1
end
local Status_upvr = require(RoduxCall.Enums).Status
function module_upvr.mock(arg1) -- Line 22
	--[[ Upvalues[2]:
		[1]: module_upvr (readonly)
		[2]: Status_upvr (readonly)
	]]
	local var5 = arg1
	if not var5 then
		var5 = {}
	end
	local var6 = var5
	local module = {}
	local status = var6.status
	if not status then
		status = Status_upvr.Active
	end
	module.status = status
	module.callerId = var6.callerId or 123
	module.calleeId = var6.calleeId or 456
	module.placeId = var6.placeId or 789
	module.reservedServerAccessCode = var6.reservedServerAccessCode or nil
	module.callId = var6.callId or nil
	module.callerCombinedName = var6.callerCombinedName or nil
	module.calleeCombinedName = var6.calleeCombinedName or nil
	module.instanceId = var6.instanceId or nil
	module.createdUtc = var6.createdUtc or 0
	module.activeUtc = var6.activeUtc or 0
	return module_upvr.new(module)
end
function module_upvr.format(arg1) -- Line 42
	--[[ Upvalues[1]:
		[1]: module_upvr (readonly)
	]]
	return module_upvr.new({
		status = arg1.status;
		callerId = arg1.callerId;
		calleeId = arg1.calleeId;
		placeId = arg1.placeId;
		reservedServerAccessCode = arg1.reservedServerAccessCode;
		callId = arg1.callId;
		callerCombinedName = arg1.callerCombinedName;
		calleeCombinedName = arg1.calleeCombinedName;
		instanceId = arg1.instanceId;
		createdUtc = arg1.createdUtc;
		activeUtc = arg1.activeUtc;
	})
end
module_upvr.isValid = t.strictInterface({
	status = t.string;
	callerId = t.optional(t.number);
	calleeId = t.optional(t.number);
	placeId = t.optional(t.number);
	reservedServerAccessCode = t.optional(t.string);
	callId = t.optional(t.string);
	callerCombinedName = t.optional(t.string);
	calleeCombinedName = t.optional(t.string);
	instanceId = t.optional(t.string);
	createdUtc = t.optional(t.number);
	activeUtc = t.optional(t.number);
})
return module_upvr