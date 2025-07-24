-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:49:15
-- Luau version 6, Types version 3
-- Time taken: 0.000467 seconds

local React_upvr = require(script:FindFirstAncestor("Foundation").Parent.React)
local PreferencesContext_upvr = require(script.Parent.PreferencesContext)
return function() -- Line 9, Named "usePreferences"
	--[[ Upvalues[2]:
		[1]: React_upvr (readonly)
		[2]: PreferencesContext_upvr (readonly)
	]]
	return React_upvr.useContext(PreferencesContext_upvr)
end