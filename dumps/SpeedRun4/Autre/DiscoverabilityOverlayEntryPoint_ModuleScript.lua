-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:26:44
-- Luau version 6, Types version 3
-- Time taken: 0.000377 seconds

local Parent = script.Parent.Parent.Parent
local React_upvr = require(Parent.dependencies).React
local DiscoverabilityContext_upvr = require(Parent.Components.DiscoverabilityContext.DiscoverabilityContext)
local DiscoverabilityOverlayContainer_upvr = require(Parent.Components.DiscoverabilityOverlay.DiscoverabilityOverlayContainer)
return function(arg1) -- Line 10, Named "DiscoverabilityOverlayEntryPoint"
	--[[ Upvalues[3]:
		[1]: React_upvr (readonly)
		[2]: DiscoverabilityContext_upvr (readonly)
		[3]: DiscoverabilityOverlayContainer_upvr (readonly)
	]]
	return React_upvr.createElement(DiscoverabilityContext_upvr(DiscoverabilityOverlayContainer_upvr), arg1)
end