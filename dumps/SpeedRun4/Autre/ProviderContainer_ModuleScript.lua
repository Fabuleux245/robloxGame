-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:18:33
-- Luau version 6, Types version 3
-- Time taken: 0.000920 seconds

local React_upvr = require(script:FindFirstAncestor("RoactUtils").Parent.React)
return function(arg1) -- Line 17, Named "ProviderContainer"
	--[[ Upvalues[1]:
		[1]: React_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local providers = arg1.providers
	if not providers then
		providers = {}
	end
	local tbl = {
		PageWrapper = React_upvr.createElement("Folder", {}, arg1.children);
	}
	for i = #providers, 1, -1 do
		local var8 = providers[i]
		tbl = {
			ProviderChildren = React_upvr.createElement(var8.class, var8.props, tbl);
		}
		local var10
	end
	return React_upvr.createElement("Folder", nil, var10)
end