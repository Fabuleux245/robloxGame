-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:25:52
-- Luau version 6, Types version 3
-- Time taken: 0.000380 seconds

game:DefineFastFlag("HideConnectPageWebViewItemsForVRV2", false)
return function() -- Line 3
	if game:GetFastFlag("HideConnectPageWebViewItemsForVRV2") or game:GetEngineFeature("EnableMaquettesSupport") then
		return true
	end
	return false
end