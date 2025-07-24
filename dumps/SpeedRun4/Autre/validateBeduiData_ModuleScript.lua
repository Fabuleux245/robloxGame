-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:35:16
-- Luau version 6, Types version 3
-- Time taken: 0.001184 seconds

local GenericAbuseReporting = script:FindFirstAncestor("GenericAbuseReporting")
local t_upvr = require(GenericAbuseReporting.Parent.t)
local function _(arg1, arg2) -- Line 15, Named "validateInterface"
	--[[ Upvalues[1]:
		[1]: t_upvr (readonly)
	]]
	return t_upvr.interface(arg2)(arg1)
end
local function validateStepId_upvr(arg1) -- Line 24, Named "validateStepId"
	local tbl = {}
	local var8
	for _, v in arg1.nodes do
		if v.stepId == arg1.rootStepId then
			if var8 then
				return false, "Bedui data contains multiple steps with the same rootStepId"
			end
			var8 = true
		end
		if table.find(tbl, v.stepId) then
			return false, "Bedui data contains duplicate stepId: "..tostring(v.stepId)
		end
		table.insert(tbl, v.stepId)
	end
	if var8 then
		return true, nil
	end
	return false, "Bedui data does not contain a step with the rootStepId"
end
local BeduiDataTypeInterface_upvr = require(GenericAbuseReporting.Bedui.Provider.AbuseReportBeduiTypes).BeduiDataTypeInterface
return function(arg1) -- Line 51, Named "validateBeduiData"
	--[[ Upvalues[3]:
		[1]: BeduiDataTypeInterface_upvr (readonly)
		[2]: t_upvr (readonly)
		[3]: validateStepId_upvr (readonly)
	]]
	if arg1 == nil then
		return false, "Bedui data is nil"
	end
	if not t_upvr.interface(BeduiDataTypeInterface_upvr)(arg1) then
		return false, "Bedui data does not conform to the expected structure"
	end
	return validateStepId_upvr(arg1)
end