-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:55:31
-- Luau version 6, Types version 3
-- Time taken: 0.002906 seconds

-- KONSTANTERROR: [0] 1. Error Block 16 start (CF ANALYSIS FAILED)
local CorePackages_2 = game:GetService("CorePackages")
local isInExperienceUIVREnabled = require(CorePackages_2.Workspace.Packages.SharedExperimentDefinition).isInExperienceUIVREnabled
local module_2 = {
	OverflowMenu = require(script.OverflowMenu);
	Chat = require(script.Chat);
	ConnectUnibar = require(script.Connect.ConnectIconUnibar);
	ConnectDropdown = require(script.Connect.ConnectIconDropdown);
	UnibarMenuToggleButton = require(script.UnibarMenuToggleButtonV2);
	TrustAndSafety = require(script.TrustAndSafety);
	DummyWindow = require(script.DummyWindow);
	DummyWindow2 = require(script.DummyWindow2);
	DummyContainer = require(script.DummyContainer);
	ToggleMic = require(script.ToggleMic);
	JoinVoice = require(script.JoinVoice);
	SelfieView = require(script.SelfieView);
	CapturesEntrypoint = require(script.Captures.CapturesEntrypoint);
	MusicEntrypoint = require(script.MusicUtility.MusicEntrypoint);
	PartyMic = require(script.Party.PartyMic);
}
local var8
if isInExperienceUIVREnabled and require(CorePackages_2.Workspace.Packages.AppCommonLib).isSpatial() then
	var8 = require(script.VRToggleButton)
else
	var8 = nil
end
module_2.VRToggleButton = var8
-- KONSTANTERROR: [0] 1. Error Block 16 end (CF ANALYSIS FAILED)
-- KONSTANTERROR: [191] 111. Error Block 17 start (CF ANALYSIS FAILED)
-- KONSTANTERROR: Expression was reused, decompilation is incorrect
if require(CorePackages_2.Workspace.Packages.AppCommonLib).isSpatial() then
	var8 = require(script.VRSafeBubble)
else
	-- KONSTANTERROR: [202] 119. Error Block 9 start (CF ANALYSIS FAILED)
	var8 = nil
	-- KONSTANTERROR: [202] 119. Error Block 9 end (CF ANALYSIS FAILED)
end
module_2.VRSafeBubble = var8
do
	return module_2
end
-- KONSTANTERROR: [191] 111. Error Block 17 end (CF ANALYSIS FAILED)