-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:01:00
-- Luau version 6, Types version 3
-- Time taken: 0.001623 seconds

local Logger_upvr = require(script:FindFirstAncestor("CrossExperience").Logger)
local module_upvr = {}
module_upvr.__index = module_upvr
local function _(arg1) -- Line 40, Named "getFirstKeyInTable"
	local var8
	if arg1 then
		for i, _ in pairs(arg1) do
			var8 = i
			return var8
		end
	end
	return var8
end
function module_upvr.new(arg1) -- Line 51
	--[[ Upvalues[1]:
		[1]: module_upvr (readonly)
	]]
	local module = {
		queues = {};
	}
	module.requiresEventsInOrder = arg1
	setmetatable(module, module_upvr)
	return module
end
function module_upvr.processNextEvent(arg1, arg2, arg3) -- Line 60
	--[[ Upvalues[1]:
		[1]: Logger_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	local var13 = arg1.queues[arg2]
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [4] 4. Error Block 2 start (CF ANALYSIS FAILED)
	Logger_upvr:error("EventQueue: queue not found for origin {} abort processing", arg2)
	do
		return
	end
	-- KONSTANTERROR: [4] 4. Error Block 2 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [11] 10. Error Block 3 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [11] 10. Error Block 3 end (CF ANALYSIS FAILED)
end
function module_upvr.reset(arg1) -- Line 98
	arg1.queues = {}
end
function module_upvr.process(arg1, arg2, arg3, arg4) -- Line 102
	--[[ Upvalues[1]:
		[1]: Logger_upvr (readonly)
	]]
	if not arg3 then
		Logger_upvr:error("EventQueue: invalid event {} params missing", arg2.NOTIFY)
	else
		local _origin = arg3._origin
		local _seq = arg3._seq
		if not _origin or not _seq or not arg1.requiresEventsInOrder then
			Logger_upvr:info("EventQueue: event {} processing immediately", arg2.NOTIFY)
			if arg4 then
				arg4(arg3)
			end
			return
		end
		if not arg1.queues[_origin] then
			Logger_upvr:info("EventQueue: initiating queue {}", _origin)
			arg1.queues[_origin] = {
				nextSequenceNumber = nil;
				events = {};
			}
		end
		Logger_upvr:info("EventQueue: new event {} seq {} current seq {}", arg2.NOTIFY, _seq, arg1.queues[_origin].nextSequenceNumber)
		local tbl = {}
		tbl.event = arg2
		tbl.params = arg3
		tbl.callback = arg4
		arg1.queues[_origin].events[_seq] = tbl
		arg1:processNextEvent(_origin, tbl)
	end
end
return module_upvr