-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:10:35
-- Luau version 6, Types version 3
-- Time taken: 0.001907 seconds

local Parent = script.Parent.Parent
local tbl_4_upvr = {
	ColorMap = true;
	NormalMap = true;
}
local FailureReasonsAccumulator_upvr = require(Parent.util.FailureReasonsAccumulator)
local Analytics_upvr = require(Parent.Analytics)
local ParseContentIds_upvr = require(Parent.util.ParseContentIds)
local Constants_upvr = require(Parent.Constants)
local getEditableImageFromContext_upvr = require(Parent.util.getEditableImageFromContext)
local validateTextureTransparency_upvr = require(Parent.validation.validateTextureTransparency)
return function(arg1, arg2) -- Line 22, Named "validateSurfaceAppearanceTransparency"
	--[[ Upvalues[7]:
		[1]: FailureReasonsAccumulator_upvr (readonly)
		[2]: Analytics_upvr (readonly)
		[3]: ParseContentIds_upvr (readonly)
		[4]: Constants_upvr (readonly)
		[5]: tbl_4_upvr (readonly)
		[6]: getEditableImageFromContext_upvr (readonly)
		[7]: validateTextureTransparency_upvr (readonly)
	]]
	local descendants_2 = arg1:GetDescendants()
	table.insert(descendants_2, arg1)
	for _, v in descendants_2 do
		if v:IsA("MeshPart") then
			local class_SurfaceAppearance_2 = v:FindFirstChildWhichIsA("SurfaceAppearance")
			if class_SurfaceAppearance_2 then
				if class_SurfaceAppearance_2.AlphaMode ~= Enum.AlphaMode.Overlay then
					Analytics_upvr.reportFailure(Analytics_upvr.ErrorType.validateSurfaceAppearances_InvalidAlphaMode, nil, arg2)
					FailureReasonsAccumulator_upvr.new():updateReasons(false, {`SurfaceAppearance ({v:GetFullName()}) has an invalid AlphaMode. Expected Enum.AlphaMode.Overlay`})
				end
				for _, v_2 in ParseContentIds_upvr.parse(class_SurfaceAppearance_2, Constants_upvr.TEXTURE_CONTENT_ID_FIELDS, arg2), nil do
					if tbl_4_upvr[v_2.fieldName] then
						local tbl_2 = {
							fullName = v_2.instance:GetFullName();
							fieldName = v_2.fieldName;
							contentId = v_2.instance[v_2.fieldName];
						}
						local getEditableImageFromContext_upvr_result1, var7_result2 = getEditableImageFromContext_upvr(v_2.instance, v_2.fieldName, arg2)
						if not getEditableImageFromContext_upvr_result1 then
							return false, {"Failed to load texture data"}
						end
						tbl_2.editableImage = var7_result2
						FailureReasonsAccumulator_upvr.new():updateReasons(validateTextureTransparency_upvr(tbl_2, arg2))
					end
				end
			end
		end
	end
	Analytics_upvr.recordScriptTime(script.Name, tick(), arg2)
	return FailureReasonsAccumulator_upvr.new():getFinalResults()
end