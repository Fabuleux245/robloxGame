-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:01:16
-- Luau version 6, Types version 3
-- Time taken: 0.001976 seconds

local module_2_upvr = {}
module_2_upvr.__index = module_2_upvr
local Signal_2_upvr = require(script.Parent.Parent.Parent.Signal)
function module_2_upvr.new() -- Line 13
	--[[ Upvalues[2]:
		[1]: module_2_upvr (readonly)
		[2]: Signal_2_upvr (readonly)
	]]
	local module = {}
	setmetatable(module, module_2_upvr)
	module._serverStatsUpdated = Signal_2_upvr.new()
	module._serverStatsData = {}
	module._isRunning = false
	return module
end
function module_2_upvr.Signal(arg1) -- Line 23
	return arg1._serverStatsUpdated
end
function module_2_upvr.getCurrentData(arg1) -- Line 27
	return arg1._serverStatsData
end
function module_2_upvr.isRunning(arg1) -- Line 31
	return arg1._isRunning
end
local getClientReplicator_upvr = require(script.Parent.Parent.Parent.Util.getClientReplicator)
local HttpService_upvr = game:GetService("HttpService")
function module_2_upvr.start(arg1) -- Line 35
	--[[ Upvalues[2]:
		[1]: getClientReplicator_upvr (readonly)
		[2]: HttpService_upvr (readonly)
	]]
	local var4_result1 = getClientReplicator_upvr()
	if var4_result1 and not arg1._statsListenerConnection then
		arg1._statsListenerConnection = var4_result1.StatsReceived:connect(function(arg1_2) -- Line 38
			--[[ Upvalues[2]:
				[1]: arg1 (readonly)
				[2]: HttpService_upvr (copied, readonly)
			]]
			if arg1_2 and arg1_2.ServerLuauHeapData and 0 < #arg1_2.ServerLuauHeapData then
				arg1._serverStatsData = HttpService_upvr:JSONDecode(arg1_2.ServerLuauHeapData)
				arg1._serverStatsUpdated:Fire(arg1._serverStatsData)
			end
		end)
		var4_result1:RequestServerStats(true)
		arg1._isRunning = true
	end
end
function module_2_upvr.stop(arg1) -- Line 49
	if arg1._statsListenerConnection then
		arg1._statsListenerConnection:Disconnect()
		arg1._statsListenerConnection = nil
	end
	arg1._isRunning = false
end
return module_2_upvr