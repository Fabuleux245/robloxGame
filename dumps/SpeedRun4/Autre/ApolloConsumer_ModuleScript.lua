-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:43:54
-- Luau version 6, Types version 3
-- Time taken: 0.000681 seconds

local Parent = script.Parent.Parent.Parent
local getApolloContext_upvr = require(script.Parent.ApolloContext).getApolloContext
local React_upvr = require(Parent.Parent.React)
local invariant_upvr = require(Parent.jsutils.invariant).invariant
function ApolloConsumer(arg1) -- Line 21
	--[[ Upvalues[3]:
		[1]: getApolloContext_upvr (readonly)
		[2]: React_upvr (readonly)
		[3]: invariant_upvr (readonly)
	]]
	return React_upvr.createElement(getApolloContext_upvr().Consumer, nil, function(arg1_2) -- Line 23
		--[[ Upvalues[2]:
			[1]: invariant_upvr (copied, readonly)
			[2]: arg1 (readonly)
		]]
		local var6 = arg1_2
		if var6 then
			var6 = arg1_2.client
		end
		invariant_upvr(var6, "Could not find \"client\" in the context of ApolloConsumer. ".."Wrap the root component in an <ApolloProvider>.")
		return arg1.children(arg1_2.client)
	end)
end
return {
	ApolloConsumer = ApolloConsumer;
}