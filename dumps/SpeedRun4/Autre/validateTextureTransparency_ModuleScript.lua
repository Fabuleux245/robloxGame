-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:10:37
-- Luau version 6, Types version 3
-- Time taken: 0.000908 seconds

local function getIsOpaque_upvr(arg1) -- Line 10, Named "getIsOpaque"
	local any_ReadPixelsBuffer_result1 = arg1:ReadPixelsBuffer(Vector2.new(0, 0), arg1.Size)
	for i = 0, buffer.len(any_ReadPixelsBuffer_result1) - 1, 4 do
		if buffer.readu8(any_ReadPixelsBuffer_result1, i + 3) < 255 then
			return false
		end
	end
	return true
end
local Analytics_upvr = require(script.Parent.Parent.Analytics)
return function(arg1, arg2) -- Line 22, Named "validateTextureTransparency"
	--[[ Upvalues[2]:
		[1]: Analytics_upvr (readonly)
		[2]: getIsOpaque_upvr (readonly)
	]]
	if not arg1.editableImage then
		Analytics_upvr.reportFailure(Analytics_upvr.ErrorType.validateTextureTransparency_InvalidTextureId, nil, arg2)
		return false, {string.format("Invalid textureID used in mesh '%s'. Make sure the texture exists and try again.", arg1.fullName)}
	end
	if not getIsOpaque_upvr(arg1.editableImage) then
		Analytics_upvr.reportFailure(Analytics_upvr.ErrorType.validateTextureTransparency_TransparentTexture, nil, arg2)
		return false, {string.format("Texture %s is not fully opaque. Please use an opaque texture.", arg1.fullName)}
	end
	Analytics_upvr.recordScriptTime(script.Name, tick(), arg2)
	return true
end