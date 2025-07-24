-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:19:21
-- Luau version 6, Types version 3
-- Time taken: 0.000442 seconds

local Sounds = require(script:FindFirstAncestor("RobloxAppInteractionFeedbackConfig").Parent.SoundManager).Sounds
return {
	Default = {
		Release = {
			Sound = Sounds.AppSelect.Name;
		};
	};
	PlayExperienceButton = {
		Release = {
			Sound = Sounds.NotificationHigh.Name;
		};
	};
	MakePurchase = {
		Press = {
			Sound = Sounds.Purchase.Name;
			Haptic = Enum.HapticEffectType.UIClick;
		};
	};
}