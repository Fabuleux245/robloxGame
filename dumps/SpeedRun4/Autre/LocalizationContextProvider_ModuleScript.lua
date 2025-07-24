-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:49:09
-- Luau version 6, Types version 3
-- Time taken: 0.000637 seconds

local Roact_upvr = require(game:GetService("CorePackages").Workspace.Packages.PurchasePromptDeps).Roact
local LocalizationContext_upvr = require(script.Parent.LocalizationContext)
return function(arg1) -- Line 12
	--[[ Upvalues[2]:
		[1]: Roact_upvr (readonly)
		[2]: LocalizationContext_upvr (readonly)
	]]
	return Roact_upvr.createElement(LocalizationContext_upvr.Provider, {
		value = arg1.localizationContext;
	}, Roact_upvr.oneChild(arg1[Roact_upvr.Children]))
end