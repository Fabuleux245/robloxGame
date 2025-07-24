-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:16:53
-- Luau version 6, Types version 3
-- Time taken: 0.000558 seconds

local Parent = script:FindFirstAncestor("Ads").Parent
local useLocalization_upvr = require(Parent.Localization).Hooks.useLocalization
local React_upvr = require(Parent.React)
local IconWithTooltip_upvr = require(Parent.AppBlox).IconWithTooltip
local Cryo_upvr = require(Parent.Cryo)
return function(arg1) -- Line 18, Named "SponsoredTooltipHover"
	--[[ Upvalues[4]:
		[1]: useLocalization_upvr (readonly)
		[2]: React_upvr (readonly)
		[3]: IconWithTooltip_upvr (readonly)
		[4]: Cryo_upvr (readonly)
	]]
	return React_upvr.createElement(IconWithTooltip_upvr, Cryo_upvr.Dictionary.join(arg1, {
		hoverText = useLocalization_upvr({
			SponsoredDisclosure = "CoreScripts.Ads.Label.SponsoredAdsDisclosureStatic";
		}).SponsoredDisclosure;
		triggerPointName = "SponsoredTooltip";
	}))
end