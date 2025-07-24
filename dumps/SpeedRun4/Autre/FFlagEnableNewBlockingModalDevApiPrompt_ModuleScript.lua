-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:03:28
-- Luau version 6, Types version 3
-- Time taken: 0.000598 seconds

local FFlagEnableNewBlockingModal = require(script.Parent.FFlagEnableNewBlockingModal)
if FFlagEnableNewBlockingModal then
	FFlagEnableNewBlockingModal = require(script.Parent.FFlagNavigateToBlockingModal)
	if FFlagEnableNewBlockingModal then
		FFlagEnableNewBlockingModal = game:DefineFastFlag("EnableNewBlockingModalDevApiPrompt", false)
	end
end
return FFlagEnableNewBlockingModal