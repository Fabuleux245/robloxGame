-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:49:12
-- Luau version 6, Types version 3
-- Time taken: 0.000489 seconds

local Roact_upvr = require(game:GetService("CorePackages").Workspace.Packages.PurchasePromptDeps).Roact
local LocalizationContextProvider_upvr = require(script.Parent.LocalizationContextProvider)
local getLocalizationContext_upvr = require(script.Parent.Parent.Parent.Localization.getLocalizationContext)
local LocalizationService_upvr = game:GetService("LocalizationService")
return function(arg1) -- Line 17
	--[[ Upvalues[4]:
		[1]: Roact_upvr (readonly)
		[2]: LocalizationContextProvider_upvr (readonly)
		[3]: getLocalizationContext_upvr (readonly)
		[4]: LocalizationService_upvr (readonly)
	]]
	return Roact_upvr.createElement(LocalizationContextProvider_upvr, {
		localizationContext = getLocalizationContext_upvr(LocalizationService_upvr.RobloxLocaleId);
	}, {
		PurchasePromptApp = arg1();
	})
end