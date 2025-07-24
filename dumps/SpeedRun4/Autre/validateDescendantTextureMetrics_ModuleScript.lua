-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:10:08
-- Luau version 6, Types version 3
-- Time taken: 0.001298 seconds

local Parent = script.Parent.Parent
local FailureReasonsAccumulator_upvr = require(Parent.util.FailureReasonsAccumulator)
local ParseContentIds_upvr = require(Parent.util.ParseContentIds)
local Constants_upvr = require(Parent.Constants)
local getEditableImageFromContext_upvr = require(Parent.util.getEditableImageFromContext)
local validateTextureSize_upvr = require(Parent.validation.validateTextureSize)
return function(arg1, arg2) -- Line 16, Named "validateDescendantTextureMetrics"
	--[[ Upvalues[5]:
		[1]: FailureReasonsAccumulator_upvr (readonly)
		[2]: ParseContentIds_upvr (readonly)
		[3]: Constants_upvr (readonly)
		[4]: getEditableImageFromContext_upvr (readonly)
		[5]: validateTextureSize_upvr (readonly)
	]]
	local tbl_2 = {}
	for _, v in ParseContentIds_upvr.parse(arg1, Constants_upvr.TEXTURE_CONTENT_ID_FIELDS, arg2), nil do
		local tbl_4 = {
			fullName = v.instance:GetFullName();
			fieldName = v.fieldName;
			contentId = v.instance[v.fieldName];
		}
		local getEditableImageFromContext_upvr_result1, getEditableImageFromContext_upvr_result2 = getEditableImageFromContext_upvr(v.instance, v.fieldName, arg2)
		if not getEditableImageFromContext_upvr_result1 then
			return false, {"Failed to load texture data"}
		end
		tbl_4.editableImage = getEditableImageFromContext_upvr_result2
		if not tbl_2[v.id] then
			FailureReasonsAccumulator_upvr.new():updateReasons(validateTextureSize_upvr(tbl_4, nil, arg2))
			if v.id then
				tbl_2[v.id] = true
			end
		end
	end
	return FailureReasonsAccumulator_upvr.new():getFinalResults()
end