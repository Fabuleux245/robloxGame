-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:10:34
-- Luau version 6, Types version 3
-- Time taken: 0.001667 seconds

local Parent = script.Parent.Parent
local tbl_2_upvr = {
	ColorMap = 1024;
	MetalnessMap = 256;
	NormalMap = 256;
	RoughnessMap = 256;
}
local FailureReasonsAccumulator_upvr = require(Parent.util.FailureReasonsAccumulator)
local ParseContentIds_upvr = require(Parent.util.ParseContentIds)
local Constants_upvr = require(Parent.Constants)
local getEditableImageFromContext_upvr = require(Parent.util.getEditableImageFromContext)
local validateTextureSize_upvr = require(Parent.validation.validateTextureSize)
local Analytics_upvr = require(Parent.Analytics)
return function(arg1, arg2) -- Line 24, Named "validateSurfaceAppearanceTextureSize"
	--[[ Upvalues[7]:
		[1]: FailureReasonsAccumulator_upvr (readonly)
		[2]: ParseContentIds_upvr (readonly)
		[3]: Constants_upvr (readonly)
		[4]: getEditableImageFromContext_upvr (readonly)
		[5]: validateTextureSize_upvr (readonly)
		[6]: tbl_2_upvr (readonly)
		[7]: Analytics_upvr (readonly)
	]]
	local descendants = arg1:GetDescendants()
	table.insert(descendants, arg1)
	for _, v in descendants do
		if v:IsA("MeshPart") then
			local class_SurfaceAppearance = v:FindFirstChildWhichIsA("SurfaceAppearance")
			if class_SurfaceAppearance then
				for _, v_2 in ParseContentIds_upvr.parse(class_SurfaceAppearance, Constants_upvr.TEXTURE_CONTENT_ID_FIELDS, arg2), nil do
					local tbl_3 = {
						fullName = v_2.instance:GetFullName()..'.'..v_2.fieldName;
						fieldName = v_2.fieldName;
						contentId = v_2.instance[v_2.fieldName];
					}
					local var6_result1, getEditableImageFromContext_upvr_result2 = getEditableImageFromContext_upvr(v_2.instance, v_2.fieldName, arg2)
					if not var6_result1 then
						return false, {"Failed to load texture data"}
					end
					tbl_3.editableImage = getEditableImageFromContext_upvr_result2
					FailureReasonsAccumulator_upvr.new():updateReasons(validateTextureSize_upvr(tbl_3, nil, arg2, tbl_2_upvr[v_2.fieldName]))
				end
			end
		end
	end
	Analytics_upvr.recordScriptTime(script.Name, tick(), arg2)
	return FailureReasonsAccumulator_upvr.new():getFinalResults()
end