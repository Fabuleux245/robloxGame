-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:59:21
-- Luau version 6, Types version 3
-- Time taken: 0.000742 seconds

local Parent = script.Parent.Parent
local FFlagUseRbxstorageInGallery_upvr = require(Parent.Flags.FFlagUseRbxstorageInGallery)
local CaptureType_upvr = require(Parent.Enums.CaptureType)
local getCaptureUploadData_upvr = require(Parent.Utils.getCaptureUploadData)
local game_DefineFastFlag_result1_upvr_2 = game:DefineFastFlag("AllowDeveloperCapturePosting", false)
local game_DefineFastFlag_result1_upvr = game:DefineFastFlag("AllowVisibleGuisCapturePosting", false)
local FIntCapturesMinimumPostableSigningAlgorithmVersion_upvr = require(Parent.Flags.FIntCapturesMinimumPostableSigningAlgorithmVersion)
return function(arg1) -- Line 13, Named "getIsCapturePostable"
	--[[ Upvalues[6]:
		[1]: FFlagUseRbxstorageInGallery_upvr (readonly)
		[2]: CaptureType_upvr (readonly)
		[3]: getCaptureUploadData_upvr (readonly)
		[4]: game_DefineFastFlag_result1_upvr_2 (readonly)
		[5]: game_DefineFastFlag_result1_upvr (readonly)
		[6]: FIntCapturesMinimumPostableSigningAlgorithmVersion_upvr (readonly)
	]]
	if FFlagUseRbxstorageInGallery_upvr and arg1.type == CaptureType_upvr.Video then
		return false
	end
	local var4_result1 = getCaptureUploadData_upvr(arg1)
	if not var4_result1 then
		return false
	end
	if not game_DefineFastFlag_result1_upvr_2 and var4_result1.isDeveloperCapture then
		return false
	end
	if not game_DefineFastFlag_result1_upvr and not var4_result1.areGuisHidden then
		return false
	end
	if var4_result1.signingAlgorithmVersion < FIntCapturesMinimumPostableSigningAlgorithmVersion_upvr then
		return false
	end
	return true
end