-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:35:35
-- Luau version 6, Types version 3
-- Time taken: 0.000378 seconds

local Parent = script:FindFirstAncestor("GenericAbuseReporting").Parent
local React_upvr = require(Parent.React)
local LocalizationKeysContext_upvr = require(script.Parent.LocalizationKeysContext)
local useLocalization_upvr = require(Parent.Localization).Hooks.useLocalization
return function() -- Line 8, Named "useLocalizedStrings"
	--[[ Upvalues[3]:
		[1]: React_upvr (readonly)
		[2]: LocalizationKeysContext_upvr (readonly)
		[3]: useLocalization_upvr (readonly)
	]]
	return useLocalization_upvr(React_upvr.useContext(LocalizationKeysContext_upvr))
end