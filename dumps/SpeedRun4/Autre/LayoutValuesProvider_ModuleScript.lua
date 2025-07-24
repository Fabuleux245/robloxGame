-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:49:07
-- Luau version 6, Types version 3
-- Time taken: 0.000483 seconds

local LayoutValues_upvr = require(script.Parent.Parent.Parent.Services.LayoutValues)
local Roact_upvr = require(game:GetService("CorePackages").Workspace.Packages.PurchasePromptDeps).Roact
local LayoutValuesContext_upvr = require(script.Parent.LayoutValuesContext)
return function(arg1) -- Line 16
	--[[ Upvalues[3]:
		[1]: LayoutValues_upvr (readonly)
		[2]: Roact_upvr (readonly)
		[3]: LayoutValuesContext_upvr (readonly)
	]]
	return Roact_upvr.createElement(LayoutValuesContext_upvr.Provider, {
		value = LayoutValues_upvr.new(arg1.isTenFootInterface).layout;
	}, Roact_upvr.oneChild(arg1[Roact_upvr.Children]))
end