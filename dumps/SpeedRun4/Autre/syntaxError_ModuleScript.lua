-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:50:20
-- Luau version 6, Types version 3
-- Time taken: 0.000514 seconds

local GraphQLError_upvr = require(script.Parent.GraphQLError).GraphQLError
return {
	syntaxError = function(arg1, arg2, arg3) -- Line 16, Named "syntaxError"
		--[[ Upvalues[1]:
			[1]: GraphQLError_upvr (readonly)
		]]
		local module = {}
		module[1] = arg2
		return GraphQLError_upvr.new("Syntax Error: "..arg3, nil, arg1, module)
	end;
}