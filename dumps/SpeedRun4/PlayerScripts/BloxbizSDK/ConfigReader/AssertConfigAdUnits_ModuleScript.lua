-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:39:36
-- Luau version 6, Types version 3
-- Time taken: 0.002298 seconds

local RunService_upvr = game:GetService("RunService")
local ConfigReader_upvr = require(script.Parent.Parent.ConfigReader)
local function assertAdUnitNames_upvr(arg1) -- Line 8, Named "assertAdUnitNames"
	--[[ Upvalues[1]:
		[1]: RunService_upvr (readonly)
	]]
	local tbl = {}
	for _, v in pairs(arg1) do
		local any_GetFullName_result1 = v:GetFullName()
		if tbl[any_GetFullName_result1] then
			if RunService_upvr:IsServer() then
				error("[Superbiz] There is a duplicate ad unit named: \""..any_GetFullName_result1..'"')
			end
			return true
		end
		tbl[any_GetFullName_result1] = true
	end
	return false
end
local function assertBadStreamingEnabledSetup_upvr() -- Line 28, Named "assertBadStreamingEnabledSetup"
	--[[ Upvalues[2]:
		[1]: ConfigReader_upvr (readonly)
		[2]: RunService_upvr (readonly)
	]]
	if 0 < #ConfigReader_upvr:read("Ads") + #ConfigReader_upvr:read("Ads3D") + #ConfigReader_upvr:read("AdsPortals") and workspace.StreamingEnabled then
		if RunService_upvr:IsServer() then
			error("[SuperBiz] You can't load ads through the config while having StreamingEnabled")
		end
		return true
	end
	return false
end
local any_read_result1_upvr = ConfigReader_upvr:read("Ads")
local any_read_result1_upvr_3 = ConfigReader_upvr:read("Ads3D")
local any_read_result1_upvr_2 = ConfigReader_upvr:read("AdsPortals")
return function() -- Line 42
	--[[ Upvalues[5]:
		[1]: assertBadStreamingEnabledSetup_upvr (readonly)
		[2]: assertAdUnitNames_upvr (readonly)
		[3]: any_read_result1_upvr (readonly)
		[4]: any_read_result1_upvr_3 (readonly)
		[5]: any_read_result1_upvr_2 (readonly)
	]]
	if assertBadStreamingEnabledSetup_upvr() then
		return true
	end
	local assertAdUnitNames_upvr_result1 = assertAdUnitNames_upvr(any_read_result1_upvr)
	if not assertAdUnitNames_upvr_result1 then
		assertAdUnitNames_upvr_result1 = assertAdUnitNames_upvr(any_read_result1_upvr_3)
		if not assertAdUnitNames_upvr_result1 then
			assertAdUnitNames_upvr_result1 = assertAdUnitNames_upvr(any_read_result1_upvr_2)
		end
	end
	if assertAdUnitNames_upvr_result1 then
		return true
	end
	return false
end