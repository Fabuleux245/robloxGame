-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:27:14
-- Luau version 6, Types version 3
-- Time taken: 0.000605 seconds

local DiscoveryOtaPatch = script:FindFirstAncestor("DiscoveryOtaPatch")
local module_2_upvr = {}
module_2_upvr.__index = module_2_upvr
local OtaScriptPatcher_upvr = require(DiscoveryOtaPatch.Parent.OtaPatchLoader).OtaScriptPatcher
function module_2_upvr.new() -- Line 16
	--[[ Upvalues[2]:
		[1]: OtaScriptPatcher_upvr (readonly)
		[2]: module_2_upvr (readonly)
	]]
	local module = {
		patcher = OtaScriptPatcher_upvr.new();
	}
	setmetatable(module, module_2_upvr)
	return module
end
local discoveryOtaPatchInfo_upvr = require(DiscoveryOtaPatch.discoveryOtaPatchInfo)
function module_2_upvr.loadPackages(arg1) -- Line 24
	--[[ Upvalues[1]:
		[1]: discoveryOtaPatchInfo_upvr (readonly)
	]]
	arg1.patcher:load(discoveryOtaPatchInfo_upvr)
end
function module_2_upvr.getScriptPatcher(arg1) -- Line 28
	return arg1.patcher
end
return module_2_upvr.new()