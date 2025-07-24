-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:09:35
-- Luau version 6, Types version 3
-- Time taken: 0.001607 seconds

local Parent = script.Parent.Parent
local pcallDeferred_upvr = require(Parent.util.pcallDeferred)
local UGCValidationService_upvr = game:GetService("UGCValidationService")
local function getVerts_upvr(arg1, arg2, arg3) -- Line 14, Named "getVerts"
	--[[ Upvalues[2]:
		[1]: pcallDeferred_upvr (readonly)
		[2]: UGCValidationService_upvr (readonly)
	]]
	local pcallDeferred_upvr_result1, var2_result2 = pcallDeferred_upvr(function() -- Line 19
		--[[ Upvalues[2]:
			[1]: UGCValidationService_upvr (copied, readonly)
			[2]: arg1 (readonly)
		]]
		return UGCValidationService_upvr:GetEditableMeshVerts(arg1.editableMesh)
	end, arg3)
	if not pcallDeferred_upvr_result1 then
		local var7 = "Failed to read mesh: "..arg1.fullName
		if arg2 then
			error(var7)
		end
		return false, {var7}
	end
	return true, nil, var2_result2
end
local calculateMinMax_upvr = require(Parent.util.calculateMinMax)
local function getBoundsInfo_upvr(arg1, arg2) -- Line 36, Named "getBoundsInfo"
	--[[ Upvalues[1]:
		[1]: calculateMinMax_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local var21
	for _, v in pairs(arg1) do
		if arg2 then
			var21 = v * arg2
		else
			var21 = v
		end
		local calculateMinMax_upvr_result1, calculateMinMax_upvr_result2 = calculateMinMax_upvr(nil, nil, var21, var21)
	end
	return calculateMinMax_upvr_result1, calculateMinMax_upvr_result2
end
return function(arg1, arg2) -- Line 47, Named "getMeshMinMax"
	--[[ Upvalues[2]:
		[1]: getVerts_upvr (readonly)
		[2]: getBoundsInfo_upvr (readonly)
	]]
	local getVerts_upvr_result1, getVerts_upvr_result2, getVerts_upvr_result3 = getVerts_upvr(arg1, arg2.isServer, arg2)
	if not getVerts_upvr_result1 then
		return getVerts_upvr_result1, getVerts_upvr_result2
	end
	if not getVerts_upvr_result3 or #getVerts_upvr_result3 == 0 then
		return false, {"Mesh: "..arg1.fullName.." contains no verts"}
	end
	local getBoundsInfo_result1, getBoundsInfo_result2 = getBoundsInfo_upvr(getVerts_upvr_result3, arg1.scale)
	return true, nil, getBoundsInfo_result1, getBoundsInfo_result2
end