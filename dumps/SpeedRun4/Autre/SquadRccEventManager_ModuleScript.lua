-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:31:22
-- Luau version 6, Types version 3
-- Time taken: 0.001378 seconds

local SquadsCore = script:FindFirstAncestor("SquadsCore")
local module_upvr = {}
module_upvr.__index = module_upvr
function module_upvr.new() -- Line 29
	--[[ Upvalues[1]:
		[1]: module_upvr (readonly)
	]]
	return setmetatable({
		isLeaveSquadPending = false;
		lastFiredSquadId = "";
	}, module_upvr)
end
function module_upvr.setLeaveSquadPendingAndFireEvent(arg1, arg2, arg3) -- Line 40
	if arg1:_setLeaveSquadPending(arg2) then
		arg1:fireSquadChangeEvent(nil, arg3)
	end
end
local validateSquadId_upvr = require(SquadsCore.Common.validateSquadId)
local SocialService_upvr = game:GetService("SocialService")
local FFlagPartyDevAPIToRespectThirdPartySettingsEnabled_upvr = require(SquadsCore.Parent.SharedFlags).FFlagPartyDevAPIToRespectThirdPartySettingsEnabled
function module_upvr.fireSquadChangeEvent(arg1, arg2, arg3) -- Line 46
	--[[ Upvalues[3]:
		[1]: validateSquadId_upvr (readonly)
		[2]: SocialService_upvr (readonly)
		[3]: FFlagPartyDevAPIToRespectThirdPartySettingsEnabled_upvr (readonly)
	]]
	local var7 = arg2 or ""
	local var8 = true
	if var7 ~= "" then
		var8 = validateSquadId_upvr(var7)
	end
	assert(var8, "Try to fire with wrong squadId")
	if var7 ~= "" then
		arg1:_setLeaveSquadPending(false)
	end
	local var9
	if not arg1.isLeaveSquadPending or var7 ~= "" or arg1.lastFiredSquadId ~= var7 then
		arg1.lastFiredSquadId = var7
		if FFlagPartyDevAPIToRespectThirdPartySettingsEnabled_upvr then
			var9 = not arg3
		else
			var9 = nil
		end
		SocialService_upvr:UpdatePlayerPartyData(var7, var9)
	end
end
function module_upvr._setLeaveSquadPending(arg1, arg2) -- Line 63
	if arg1.isLeaveSquadPending ~= arg2 then
		arg1.isLeaveSquadPending = arg2
		return true
	end
	return false
end
module_upvr.default = module_upvr.new()
return module_upvr.default