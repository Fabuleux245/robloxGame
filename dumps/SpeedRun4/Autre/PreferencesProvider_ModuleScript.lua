-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:49:15
-- Luau version 6, Types version 3
-- Time taken: 0.000553 seconds

local Foundation = script:FindFirstAncestor("Foundation")
local tbl_upvr = {
	preferredTextSize = Enum.PreferredTextSize.Medium;
	preferredTransparency = 1;
	reducedMotion = false;
	scale = 1;
}
local withDefaults_upvr = require(Foundation.Utility.withDefaults)
local React_upvr = require(Foundation.Parent.React)
local PreferencesContext_upvr = require(script.Parent.PreferencesContext)
return function(arg1) -- Line 30, Named "PreferencesProvider"
	--[[ Upvalues[4]:
		[1]: withDefaults_upvr (readonly)
		[2]: tbl_upvr (readonly)
		[3]: React_upvr (readonly)
		[4]: PreferencesContext_upvr (readonly)
	]]
	return React_upvr.createElement(PreferencesContext_upvr.Provider, {
		value = withDefaults_upvr({
			preferredTextSize = arg1.preferredTextSize;
			preferredTransparency = arg1.preferredTransparency;
			reducedMotion = arg1.reducedMotion;
		}, tbl_upvr);
	}, arg1.children)
end