-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:10:36
-- Luau version 6, Types version 3
-- Time taken: 0.001540 seconds

local Parent = script.Parent.Parent
local Constants_upvr = require(Parent.Constants)
local Analytics_upvr = require(Parent.Analytics)
local pcallDeferred_upvr = require(Parent.util.pcallDeferred)
local UGCValidationService_upvr = game:GetService("UGCValidationService")
return function(arg1, arg2, arg3, arg4) -- Line 11, Named "validateTextureSize"
	--[[ Upvalues[4]:
		[1]: Constants_upvr (readonly)
		[2]: Analytics_upvr (readonly)
		[3]: pcallDeferred_upvr (readonly)
		[4]: UGCValidationService_upvr (readonly)
	]]
	local isServer = arg3.isServer
	local var7
	if var7 then
	else
		var7 = Constants_upvr.MAX_TEXTURE_SIZE
	end
	assert(var7, "maxTextureSize is required for validateTextureSize")
	if not arg1.editableImage then
		if arg2 then
			return true
		end
		Analytics_upvr.reportFailure(Analytics_upvr.ErrorType.validateTextureSize_InvalidTextureId, nil, arg3)
		return false, {string.format("Invalid textureID used in mesh '%s'. Make sure the texture exists and try again.", arg1.fullName)}
	end
	local pcallDeferred_upvr_result1, var4_result2 = pcallDeferred_upvr(function() -- Line 38
		--[[ Upvalues[2]:
			[1]: UGCValidationService_upvr (copied, readonly)
			[2]: arg1 (readonly)
		]]
		return UGCValidationService_upvr:GetEditableImageSize(arg1.editableImage)
	end, arg3)
	if not pcallDeferred_upvr_result1 then
		if isServer ~= nil and isServer then
			error(string.format("Failed to load texture data for '%s'. Make sure the texture exists and try again.", arg1.fullName))
		end
		Analytics_upvr.reportFailure(Analytics_upvr.ErrorType.validateTextureSize_FailedToLoadTexture, nil, arg3)
		return false, {string.format("Failed to load texture data for '%s'. Make sure the texture exists and try again.", arg1.fullName)}
	end
	if var7 < var4_result2.X or var7 < var4_result2.Y then
		Analytics_upvr.reportFailure(Analytics_upvr.ErrorType.validateTextureSize_TextureTooBig, nil, arg3)
		return false, {string.format("Texture resolution %dx%d px found in '%s' is higher than max size supported value of %dx%d px. You need to reduce the texture resolution", var4_result2.X, var4_result2.Y, arg1.fullName, var7, var7)}
	end
	Analytics_upvr.recordScriptTime(script.Name, tick(), arg3)
	return true
end