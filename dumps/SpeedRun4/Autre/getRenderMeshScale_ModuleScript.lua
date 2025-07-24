-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:09:38
-- Luau version 6, Types version 3
-- Time taken: 0.001178 seconds

local Parent = script.Parent.Parent
local getFFlagUGCValidationConsolidateGetMeshInfos_upvr = require(Parent.flags.getFFlagUGCValidationConsolidateGetMeshInfos)
local getMeshInfo_upvr = require(Parent.util.getMeshInfo)
local Constants_upvr = require(Parent.Constants)
local getMeshMinMax_upvr = require(Parent.util.getMeshMinMax)
local getExpectedPartSize_upvr = require(Parent.util.getExpectedPartSize)
return function(arg1, arg2) -- Line 14, Named "getRenderMeshScale"
	--[[ Upvalues[5]:
		[1]: getFFlagUGCValidationConsolidateGetMeshInfos_upvr (readonly)
		[2]: getMeshInfo_upvr (readonly)
		[3]: Constants_upvr (readonly)
		[4]: getMeshMinMax_upvr (readonly)
		[5]: getExpectedPartSize_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local var7
	local var8
	if getFFlagUGCValidationConsolidateGetMeshInfos_upvr() then
		local getMeshInfo_upvr_result1, getMeshInfo_upvr_result2, var3_result3 = getMeshInfo_upvr(arg1, Constants_upvr.MESH_CONTENT_TYPE.RENDER_MESH, arg2)
		var7 = getMeshInfo_upvr_result1
		var8 = var3_result3
	else
		local getMeshInfo_upvr_result1_2, var3_result2, getMeshInfo_upvr_result3 = getMeshInfo_upvr(arg1, arg2)
		var7 = getMeshInfo_upvr_result1_2
		var8 = getMeshInfo_upvr_result3
	end
	if not var7 then
		return var7, var3_result2
	end
	local getMeshMinMax_upvr_result1, getMeshMinMax_upvr_result2, getMeshMinMax_upvr_result3, getMeshMinMax_upvr_result4 = getMeshMinMax_upvr(var8, arg2)
	var7 = getMeshMinMax_upvr_result1
	if not var7 then
		return var7, getMeshMinMax_upvr_result2
	end
	return true, nil, getExpectedPartSize_upvr(arg1, arg2) / (getMeshMinMax_upvr_result4 - getMeshMinMax_upvr_result3)
end