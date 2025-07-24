-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:30:32
-- Luau version 6, Types version 3
-- Time taken: 0.000456 seconds

local dependencies = require(script:FindFirstAncestor("FriendsLanding").dependencies)
local Context = dependencies.SocialLibraries.Context
local Context_upvr = require(script.Context)
local module = {
	Context = Context_upvr;
	Provider = Context_upvr.Provider;
	Consumer = Context_upvr.Consumer;
	with = Context.getWith(Context_upvr);
	connect = Context.getConnect(Context_upvr);
}
local React_upvr = dependencies.React
function module.useContext() -- Line 14
	--[[ Upvalues[2]:
		[1]: React_upvr (readonly)
		[2]: Context_upvr (readonly)
	]]
	return React_upvr.useContext(Context_upvr)
end
return module