-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:36:44
-- Luau version 6, Types version 3
-- Time taken: 0.003310 seconds

-- KONSTANTERROR: [0] 1. Error Block 44 start (CF ANALYSIS FAILED)
local Parent = script.Parent.Parent
local Constants = require(script.Parent.Constants)
local _ = script.Parent.Flags
local _ = script.Parent.Requests
if require(Parent.SharedFlags).GetFFlagAvatarChatServiceEnabled() then
else
end
if require(Parent.SharedFlags).GetFFlagEnableVoiceChatMuteForVideoCaptures() then
	-- KONSTANTWARNING: GOTO [615] #384
end
-- KONSTANTERROR: [0] 1. Error Block 44 end (CF ANALYSIS FAILED)
-- KONSTANTERROR: [614] 383. Error Block 50 start (CF ANALYSIS FAILED)
local _ = {
	available = nil;
	canUseServicePromise = nil;
	userEligible = false;
	participants = nil;
	localMuted = nil;
	isTalking = false;
	previousGroupId = nil;
	muteAll = false;
	previousMutedState = nil;
	permissionPromise = nil;
}
if require(Parent.SharedFlags).GetFFlagJoinWithoutMicPermissions() then
	-- KONSTANTWARNING: GOTO [654] #411
end
-- KONSTANTERROR: [614] 383. Error Block 50 end (CF ANALYSIS FAILED)