-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:36:19
-- Luau version 6, Types version 3
-- Time taken: 0.000539 seconds

local module = {
	ApiFetchShowAgeVerificationOverlay = require(script.ApiFetchShowAgeVerificationOverlay);
	ApiPostRecordUserSeenModal = require(script.ApiPostRecordUserSeenModal);
	GetShowAgeVerificationOverlay = require(script.GetShowAgeVerificationOverlay);
	OpenAgeVerificationModal = require(script.OpenAgeVerificationModal);
	OpenCentralOverlayForVerifiedEnableVoice = require(script.OpenCentralOverlayForVerifiedEnableVoice);
	SetShowAgeVerificationOverlay = require(script.SetShowAgeVerificationOverlay);
}
local ShowAgeVerificationOverlay = require(script.ShowAgeVerificationOverlay)
module.ShowAgeVerificationOverlay = ShowAgeVerificationOverlay
if require(script.Parent.Flags.GetFFlagUsePostRecordUserSeenGeneralModal)() then
	ShowAgeVerificationOverlay = require(script.PostRecordUserSeenGeneralModal)
else
	ShowAgeVerificationOverlay = nil
end
module.PostRecordUserSeenGeneralModal = ShowAgeVerificationOverlay
return module