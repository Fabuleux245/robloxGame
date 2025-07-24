-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:15:18
-- Luau version 6, Types version 3
-- Time taken: 0.001729 seconds

local module_2 = {}
local GraphQL = require(script.Parent.Parent.GraphQL)
local versionInfo_upvr = GraphQL.versionInfo
local GraphQLError_upvr = GraphQL.GraphQLError
local function createGraphQLError_upvr(arg1, arg2) -- Line 37, Named "createGraphQLError"
	--[[ Upvalues[2]:
		[1]: versionInfo_upvr (readonly)
		[2]: GraphQLError_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 41 start (CF ANALYSIS FAILED)
	if 17 <= versionInfo_upvr.major then
		return GraphQLError_upvr.new(arg1, arg2)
	end
	if typeof(arg2) == "table" then
	else
	end
	if typeof(arg2) == "table" then
		-- KONSTANTWARNING: GOTO [39] #30
	end
	-- KONSTANTERROR: [0] 1. Error Block 41 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [38] 29. Error Block 46 start (CF ANALYSIS FAILED)
	if typeof(arg2) == "table" then
		-- KONSTANTWARNING: GOTO [50] #38
	end
	-- KONSTANTERROR: [38] 29. Error Block 46 end (CF ANALYSIS FAILED)
end
module_2.createGraphQLError = createGraphQLError_upvr
function module_2.relocatedError(arg1, arg2) -- Line 55
	--[[ Upvalues[1]:
		[1]: createGraphQLError_upvr (readonly)
	]]
	local module = {
		nodes = arg1.nodes;
		source = arg1.source;
	}
	local positions = arg1.positions
	module.positions = positions
	if arg2 == nil then
		positions = arg1.path
	else
		positions = arg2
	end
	module.path = positions
	module.originalError = arg1
	module.extensions = arg1.extensions
	return createGraphQLError_upvr(arg1.message, module)
end
return module_2