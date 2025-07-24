-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:43:29
-- Luau version 6, Types version 3
-- Time taken: 0.000879 seconds

local Parent = script.Parent.Parent.Parent
local module = {}
local Boolean_upvr = require(Parent.Parent.LuauPolyfill).Boolean
local InvariantError_upvr = require(Parent.jsutils.invariant).InvariantError
function module.checkFetcher(arg1) -- Line 22
	--[[ Upvalues[2]:
		[1]: Boolean_upvr (readonly)
		[2]: InvariantError_upvr (readonly)
	]]
	if not Boolean_upvr.toJSBoolean(arg1) and typeof(_G.fetch) == "nil" then
		error(InvariantError_upvr.new("\n\"fetch\" has not been found globally and no fetcher has been configured. To fix this, install a fetch package (like https://www.npmjs.com/package/cross-fetch), instantiate the fetcher, and pass it into your HttpLink constructor. For example:\n\nimport fetch from 'cross-fetch';\nimport { ApolloClient, HttpLink } from '@apollo/client';\nconst client = new ApolloClient({\n  link: new HttpLink({ uri: '/graphql', fetch })\n});\n    "))
	end
end
return module