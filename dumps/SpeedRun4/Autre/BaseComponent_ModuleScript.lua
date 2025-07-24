-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:46:35
-- Luau version 6, Types version 3
-- Time taken: 0.000519 seconds

local Parent = script:FindFirstAncestor("AdPlayer").Parent
local React_upvr = require(Parent.React)
local LocalizationProvider_upvr = require(Parent.Localization).LocalizationProvider
local any_new_result1_upvr = require(Parent.InExperienceLocales).Localization.new(game:GetService("LocalizationService").RobloxLocaleId)
local FoundationProvider_upvr = require(Parent.Foundation).FoundationProvider
return function(arg1) -- Line 14
	--[[ Upvalues[4]:
		[1]: React_upvr (readonly)
		[2]: LocalizationProvider_upvr (readonly)
		[3]: any_new_result1_upvr (readonly)
		[4]: FoundationProvider_upvr (readonly)
	]]
	return React_upvr.createElement(LocalizationProvider_upvr, {
		localization = any_new_result1_upvr;
	}, {
		foundationProvider = React_upvr.createElement(FoundationProvider_upvr, {}, arg1.children);
	})
end