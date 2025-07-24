-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:11:49
-- Luau version 6, Types version 3
-- Time taken: 0.000699 seconds

local InExperienceIntervention = script:FindFirstAncestor("InExperienceIntervention")
local module = {require(InExperienceIntervention.InterventionTreatmentConfigs.ChatToastNudgeConfig), require(InExperienceIntervention.InterventionTreatmentConfigs.ChatDialogNudgeConfig), require(InExperienceIntervention.InterventionTreatmentConfigs.ChatTimeoutConfig)}
if require(InExperienceIntervention.Parent.InterventionShared).Flags.getFFlagAppChatEnableIntervention() then
	table.insert(module, require(InExperienceIntervention.InterventionTreatmentConfigs.PartyChatDialogNudgeConfig))
	table.insert(module, require(InExperienceIntervention.InterventionTreatmentConfigs.PartyChatDialogTimeoutConfig))
end
return module