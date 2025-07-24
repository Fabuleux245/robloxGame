-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:22:17
-- Luau version 6, Types version 3
-- Time taken: 0.000430 seconds

local FFlagEnableWideModeForCommunityProfilePage = require(script.Parent.FFlagEnableWideModeForCommunityProfilePage)
if FFlagEnableWideModeForCommunityProfilePage then
	FFlagEnableWideModeForCommunityProfilePage = game:DefineFastFlag("FixCommunityHeaderForWideMode", false)
end
return FFlagEnableWideModeForCommunityProfilePage