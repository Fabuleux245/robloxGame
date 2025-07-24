-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:21:54
-- Luau version 6, Types version 3
-- Time taken: 0.000506 seconds

local any_GetFFlagEnablePeekViewBackgroundCustomization_result1 = require(script:FindFirstAncestor("AvatarExperienceFlags").Parent.SharedFlags).GetFFlagEnablePeekViewBackgroundCustomization()
if any_GetFFlagEnablePeekViewBackgroundCustomization_result1 then
	any_GetFFlagEnablePeekViewBackgroundCustomization_result1 = game:DefineFastFlag("AXItemDetailsPeekHeaderColor", false)
end
return any_GetFFlagEnablePeekViewBackgroundCustomization_result1