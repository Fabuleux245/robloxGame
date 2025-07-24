-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:09:52
-- Luau version 6, Types version 3
-- Time taken: 0.001555 seconds

local Parent = script.Parent.Parent
local Analytics_upvr = require(Parent.Analytics)
local tbl_2_upvr = {"InnerCage", "OuterCage"}
local tbl_upvr = {"ReferenceMeshId", "CageMeshId"}
local tbl_upvr_2 = {Analytics_upvr.ErrorType.validateLayeredClothingAccessory_NoInnerCageId, Analytics_upvr.ErrorType.validateLayeredClothingAccessory_NoOuterCageId}
local getEditableMeshFromContext_upvr = require(Parent.util.getEditableMeshFromContext)
return function(arg1, arg2) -- Line 17, Named "getCageMeshInfos"
	--[[ Upvalues[5]:
		[1]: tbl_upvr (readonly)
		[2]: tbl_2_upvr (readonly)
		[3]: Analytics_upvr (readonly)
		[4]: tbl_upvr_2 (readonly)
		[5]: getEditableMeshFromContext_upvr (readonly)
	]]
	local class_WrapLayer = arg1:FindFirstChild("Handle"):FindFirstChildOfClass("WrapLayer")
	local module = {}
	if not class_WrapLayer then
		return false, {"Missing wraplayer"}, nil
	end
	for i, v in tbl_upvr do
		local tbl = {
			fullName = string.format("%s %s", class_WrapLayer:GetFullName(), tbl_2_upvr[i]);
			fieldName = v;
			contentId = ({class_WrapLayer.ReferenceMeshId, class_WrapLayer.CageMeshId})[i];
			context = arg1.Name;
		}
		local var16
		local function INLINED() -- Internal function, doesn't exist in bytecode
			var16 = true
			return tbl.contentId == nil
		end
		if tbl.contentId == "" or INLINED() then
			var16 = arg2.allowEditableInstances
		end
		if not var16 then
			Analytics_upvr.reportFailure(tbl_upvr_2[i], nil, arg2)
			table.insert(module, string.format("Missing %s (i.e. invalid %s) on layered clothing accessory '%s'. Make sure you are using a valid meshId and try again.\n", tbl_2_upvr[i], v, arg1.Name))
		else
			local getEditableMeshFromContext_upvr_result1, var6_result2 = getEditableMeshFromContext_upvr(class_WrapLayer, v, arg2)
			if not getEditableMeshFromContext_upvr_result1 then
				table.insert(module, string.format("Failed to %s for layered clothing accessory '%s'. Make sure mesh exists and try again.", tbl_2_upvr[i], arg1.Name))
			else
				tbl.editableMesh = var6_result2
				table.insert({}, tbl)
			end
		end
	end
	if 0 < #module then
		return false, module, nil
	end
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	return true, nil, {}
end