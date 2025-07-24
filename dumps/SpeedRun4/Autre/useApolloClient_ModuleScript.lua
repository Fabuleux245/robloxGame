-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:43:58
-- Luau version 6, Types version 3
-- Time taken: 0.000478 seconds

local Parent = script.Parent.Parent.Parent
local module = {}
local React_upvr = require(Parent.Parent.React)
local getApolloContext_upvr = require(Parent.react.context).getApolloContext
local invariant_upvr = require(Parent.jsutils.invariant).invariant
function useApolloClient() -- Line 21
	--[[ Upvalues[3]:
		[1]: React_upvr (readonly)
		[2]: getApolloContext_upvr (readonly)
		[3]: invariant_upvr (readonly)
	]]
	local client = React_upvr.useContext(getApolloContext_upvr()).client
	invariant_upvr(client, "No Apollo Client instance can be found. Please ensure that you ".."have called `ApolloProvider` higher up in your tree.")
	return client
end
module.useApolloClient = useApolloClient
return module