-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:09:43
-- Luau version 6, Types version 3
-- Time taken: 0.001551 seconds

local Parent = script.Parent.Parent
local UGCValidationService_upvr = game:GetService("UGCValidationService")
local Analytics_upvr = require(Parent.Analytics)
local getFFlagUGCValidatePartMass_upvr = require(Parent.flags.getFFlagUGCValidatePartMass)
local getFIntUGCValidationPartMaxMass_upvr = require(Parent.flags.getFIntUGCValidationPartMaxMass)
return function(arg1, arg2) -- Line 15, Named "resetPhysicsData"
	--[[ Upvalues[4]:
		[1]: UGCValidationService_upvr (readonly)
		[2]: Analytics_upvr (readonly)
		[3]: getFFlagUGCValidatePartMass_upvr (readonly)
		[4]: getFIntUGCValidationPartMaxMass_upvr (readonly)
	]]
	local var14
	if not var14 then
		var14 = false
		return var14, "EngineResetCollisionFidelity is not enabled"
	end
	if arg2.bypassFlags then
		var14 = arg2.bypassFlags.skipPhysicsDataReset
	else
		var14 = false
	end
	for _, v in arg1 do
		local descendants = v:GetDescendants()
		table.insert(descendants, 1, v)
		for _, v_2_upvr in descendants do
			if v_2_upvr:IsA("MeshPart") and not var14 then
				if not pcall(function() -- Line 32
					--[[ Upvalues[2]:
						[1]: UGCValidationService_upvr (copied, readonly)
						[2]: v_2_upvr (readonly)
					]]
					UGCValidationService_upvr:ResetCollisionFidelity(v_2_upvr, v_2_upvr.CollisionFidelity)
				end) then
					if arg2.isServer then
						error("Failed to load mesh data")
					end
					Analytics_upvr.reportFailure(Analytics_upvr.ErrorType.resetPhysicsData_FailedToLoadMesh, nil, arg2)
					return false, "Failed to load mesh data"
				end
				if getFFlagUGCValidatePartMass_upvr() and getFIntUGCValidationPartMaxMass_upvr() < v_2_upvr:GetMass() then
					Analytics_upvr.reportFailure(Analytics_upvr.ErrorType.resetPhysicsData_LargeMass, nil, arg2)
					return false, string.format("%s has a mass of %d while the limit is %d.", v_2_upvr.Name, v_2_upvr:GetMass(), getFIntUGCValidationPartMaxMass_upvr())
				end
			end
		end
	end
	Analytics_upvr.recordScriptTime(script.Name, tick(), arg2)
	return true
end