-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:10:38
-- Luau version 6, Types version 3
-- Time taken: 0.001335 seconds

local Analytics_upvr = require(script.Parent.Parent.Analytics)
local game_DefineFastFlag_result1_upvr = game:DefineFastFlag("UGCValidationAddThumbnailFrustumCheckingv2", false)
local UGCValidationService_upvr = game:GetService("UGCValidationService")
return function(arg1, arg2, arg3, arg4, arg5) -- Line 14, Named "validateThumbnailConfiguration"
	--[[ Upvalues[3]:
		[1]: Analytics_upvr (readonly)
		[2]: game_DefineFastFlag_result1_upvr (readonly)
		[3]: UGCValidationService_upvr (readonly)
	]]
	local ThumbnailConfiguration_2 = arg1:FindFirstChild("ThumbnailConfiguration")
	if ThumbnailConfiguration_2 then
		local ThumbnailCameraTarget_2 = ThumbnailConfiguration_2:FindFirstChild("ThumbnailCameraTarget")
		if ThumbnailCameraTarget_2.Value ~= arg2 then
			Analytics_upvr.reportFailure(Analytics_upvr.ErrorType.validateThumbnailConfiguration_InvalidTarget, nil, arg5)
			return false, {string.format("Invalid target asset for thumbnail generation. Expected it to be '%s'.", arg2:GetFullName())}
		end
		if game:GetEngineFeature("EngineUGCValidateThumbnailerMeshInFrustum") and game_DefineFastFlag_result1_upvr then
			local CFrame_2 = ThumbnailCameraTarget_2.Value.CFrame
			if UGCValidationService_upvr:CheckEditableMeshInCameraFrustum(arg3.editableMesh, arg4, CFrame_2, CFrame_2 * ThumbnailConfiguration_2:FindFirstChild("ThumbnailCameraValue").Value) == false then
				Analytics_upvr.reportFailure(Analytics_upvr.ErrorType.validateThumbnailConfiguration_OutsideView, nil, arg5)
				return false, {string.format("Asset '%s' is positioned outside the thumbnail camera view. You need to reposition the asset at the center of the camera view and try again.", arg3.fullName)}
			end
		end
	end
	return true
end