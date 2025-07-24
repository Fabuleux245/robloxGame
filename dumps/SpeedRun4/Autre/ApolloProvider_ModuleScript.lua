-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:43:55
-- Luau version 6, Types version 3
-- Time taken: 0.001349 seconds

local Parent = script.Parent.Parent.Parent
local getApolloContext_upvr = require(script.Parent.ApolloContext).getApolloContext
local React_upvr = require(Parent.Parent.React)
local invariant_upvr = require(Parent.jsutils.invariant).invariant
function ApolloProvider(arg1) -- Line 29
	--[[ Upvalues[3]:
		[1]: getApolloContext_upvr (readonly)
		[2]: React_upvr (readonly)
		[3]: invariant_upvr (readonly)
	]]
	local getApolloContext_upvr_result1_upvr = getApolloContext_upvr()
	return React_upvr.createElement(getApolloContext_upvr_result1_upvr.Consumer, nil, function(arg1_2) -- Line 31
		--[[ Upvalues[4]:
			[1]: arg1 (readonly)
			[2]: invariant_upvr (copied, readonly)
			[3]: React_upvr (copied, readonly)
			[4]: getApolloContext_upvr_result1_upvr (readonly)
		]]
		if arg1_2 == nil then
			local tbl = {}
		end
		if arg1.client and tbl.client ~= arg1.client then
			tbl.client = arg1.client
		end
		invariant_upvr(tbl.client, "ApolloProvider was not passed a client instance. Make ".."sure you pass in your client via the \"client\" prop.")
		return React_upvr.createElement(getApolloContext_upvr_result1_upvr.Provider, {
			value = tbl;
		}, arg1.children)
	end)
end
return {
	ApolloProvider = ApolloProvider;
}