-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:09:54
-- Luau version 6, Types version 3
-- Time taken: 0.001140 seconds

local module = {}
module.__index = module
module.aggregate = {
	queued = 0;
	nameLookup = 0;
	connect = 0;
	sslHandshake = 0;
	makeRequest = 0;
	receiveResponse = 0;
}
function module.track(arg1, arg2) -- Line 24
	arg1.aggregate.queued = arg1.aggregate.queued + arg2.queued
	if 0 <= arg2.nameLookup then
		arg1.aggregate.nameLookup = arg1.aggregate.nameLookup + arg2.nameLookup
	end
	if 0 <= arg2.connect then
		arg1.aggregate.connect = arg1.aggregate.connect + arg2.connect
	end
	if 0 <= arg2.sslHandshake then
		arg1.aggregate.sslHandshake = arg1.aggregate.sslHandshake + arg2.sslHandshake
	end
	if 0 <= arg2.makeRequest then
		arg1.aggregate.makeRequest = arg1.aggregate.makeRequest + arg2.makeRequest
	end
	if 0 <= arg2.receiveResponse then
		arg1.aggregate.receiveResponse = arg1.aggregate.receiveResponse + arg2.receiveResponse
	end
end
local tonumber_result1_upvr = tonumber(settings():GetFVariable("PercentReportingNetworkProfileAfterStartup"))
function module.report(arg1, arg2) -- Line 43
	--[[ Upvalues[1]:
		[1]: tonumber_result1_upvr (readonly)
	]]
	arg2("NetworkProfileDuringStartup", "Queued", arg1.aggregate.queued, tonumber_result1_upvr)
	arg2("NetworkProfileDuringStartup", "NameLookup", arg1.aggregate.nameLookup, tonumber_result1_upvr)
	arg2("NetworkProfileDuringStartup", "Connect", arg1.aggregate.connect, tonumber_result1_upvr)
	arg2("NetworkProfileDuringStartup", "SSLHandshake", arg1.aggregate.sslHandshake, tonumber_result1_upvr)
	arg2("NetworkProfileDuringStartup", "MakeRequest", arg1.aggregate.makeRequest, tonumber_result1_upvr)
	arg2("NetworkProfileDuringStartup", "ReceiveResponse", arg1.aggregate.receiveResponse, tonumber_result1_upvr)
end
return module