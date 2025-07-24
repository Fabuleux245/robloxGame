-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:09:32
-- Luau version 6, Types version 3
-- Time taken: 0.003398 seconds

local Parent = script:FindFirstAncestor("GraphQLServer").Parent
local GraphQL_upvr = require(Parent.GraphQL)
local Object_upvr = require(Parent.LuauPolyfill).Object
local graphql = require(script.Parent.graphql)
local getFFlagUserProfilesDataLoaderEnabled_upvr = require(Parent.SharedFlags).getFFlagUserProfilesDataLoaderEnabled
local module_upvr = {}
module_upvr.__index = module_upvr
local typeDefs_upvr = graphql.typeDefs
local resolvers_upvr = graphql.resolvers
local addMockResolvers_upvr = require(script.Parent.schemaUtils.addMockResolvers)
local buildRootValue_upvr = require(script.Parent.schemaUtils.buildRootValue)
local buildTypeResolver_upvr = require(script.Parent.schemaUtils.buildTypeResolver)
local buildFieldResolver_upvr = require(script.Parent.schemaUtils.buildFieldResolver)
local fetch_upvr = require(Parent.Fetch).fetch
local dataLoaders_upvr = graphql.dataLoaders
function module_upvr.new(arg1) -- Line 71
	--[[ Upvalues[12]:
		[1]: GraphQL_upvr (readonly)
		[2]: typeDefs_upvr (readonly)
		[3]: resolvers_upvr (readonly)
		[4]: addMockResolvers_upvr (readonly)
		[5]: buildRootValue_upvr (readonly)
		[6]: buildTypeResolver_upvr (readonly)
		[7]: buildFieldResolver_upvr (readonly)
		[8]: fetch_upvr (readonly)
		[9]: getFFlagUserProfilesDataLoaderEnabled_upvr (readonly)
		[10]: Object_upvr (readonly)
		[11]: dataLoaders_upvr (readonly)
		[12]: module_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	-- KONSTANTERROR: [0] 1. Error Block 51 start (CF ANALYSIS FAILED)
	local module = {}
	local var16
	if arg1.port then
		var16 = arg1.port
	else
		var16 = 4000
	end
	module.port = var16
	var16 = false
	if not arg1.typeDefs then
		local pcall_result1, pcall_result2 = pcall(function() -- Line 78
			return require(script.Parent.compiled_schema)
		end)
		var16 = pcall_result1
		local var20 = pcall_result2
		local var21
	end
	if var16 and var20 then
		var21 = GraphQL_upvr.buildASTSchema
		var21 = var21(var20, {
			assumeValid = true;
			assumeValidSDL = true;
		})
		module.schema = var21
		-- KONSTANTWARNING: GOTO [53] #40
	end
	-- KONSTANTERROR: [0] 1. Error Block 51 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [39] 30. Error Block 52 start (CF ANALYSIS FAILED)
	if arg1.typeDefs then
		var21 = arg1.typeDefs
	else
		var21 = typeDefs_upvr
	end
	module.schema = GraphQL_upvr.buildSchema(var21)
	if arg1.resolvers then
		var21 = arg1.resolvers
	else
		var21 = resolvers_upvr
	end
	if type(arg1.mockResolvers) == "table" then
		var21 = addMockResolvers_upvr(var21, arg1.mockResolvers)
	end
	module.rootValue = buildRootValue_upvr(var21)
	module.typeResolver = buildTypeResolver_upvr(var21)
	local buildFieldResolver_upvr_result1 = buildFieldResolver_upvr(var21)
	module.fieldResolver = buildFieldResolver_upvr_result1
	if arg1.fetchImpl then
		buildFieldResolver_upvr_result1 = arg1.fetchImpl
	else
		buildFieldResolver_upvr_result1 = fetch_upvr
	end
	module.fetchImpl = buildFieldResolver_upvr_result1
	if getFFlagUserProfilesDataLoaderEnabled_upvr() then
		local dataLoaderInitializers = arg1.dataLoaderInitializers
		if not dataLoaderInitializers then
			dataLoaderInitializers = {}
		end
		module.clientLoaders = Object_upvr.assign({}, {
			userProfiles = dataLoaders_upvr.userProfilesDataLoader.new();
		}, dataLoaderInitializers)
	end
	setmetatable(module, module_upvr)
	do
		return module
	end
	-- KONSTANTERROR: [39] 30. Error Block 52 end (CF ANALYSIS FAILED)
end
local HttpService_upvr = game:GetService("HttpService")
local Promise_upvr = require(Parent.Promise)
local Response_upvr = require(script.Parent.Response)
function module_upvr.fetchLocal(arg1, arg2) -- Line 115
	--[[ Upvalues[6]:
		[1]: HttpService_upvr (readonly)
		[2]: Promise_upvr (readonly)
		[3]: GraphQL_upvr (readonly)
		[4]: getFFlagUserProfilesDataLoaderEnabled_upvr (readonly)
		[5]: Object_upvr (readonly)
		[6]: Response_upvr (readonly)
	]]
	if arg2 then
	else
	end
	local tbl_2_upvr = {}
	local tbl_3_upvr = {}
	return Promise_upvr.new(function(arg1_2, arg2_2) -- Line 119
		--[[ Upvalues[7]:
			[1]: GraphQL_upvr (copied, readonly)
			[2]: arg1 (readonly)
			[3]: tbl_2_upvr (readonly)
			[4]: getFFlagUserProfilesDataLoaderEnabled_upvr (copied, readonly)
			[5]: Object_upvr (copied, readonly)
			[6]: tbl_3_upvr (readonly)
			[7]: Response_upvr (copied, readonly)
		]]
		local tbl_4 = {
			schema = arg1.schema;
		}
		local query = tbl_2_upvr.query
		if not query then
			query = tbl_2_upvr.mutation
		end
		tbl_4.source = query
		tbl_4.rootValue = arg1.rootValue
		local tbl = {}
		local fetchImpl = arg1.fetchImpl
		tbl.fetchImpl = fetchImpl
		if getFFlagUserProfilesDataLoaderEnabled_upvr() then
			fetchImpl = Object_upvr.assign({}, tbl_3_upvr, arg1.clientLoaders)
		else
			fetchImpl = tbl_3_upvr
		end
		tbl.dataLoaders = fetchImpl
		tbl_4.contextValue = tbl
		tbl_4.typeResolver = arg1.typeResolver
		tbl_4.fieldResolver = arg1.fieldResolver
		tbl_4.variableValues = tbl_2_upvr.variables
		GraphQL_upvr.graphql(tbl_4):andThen(function(arg1_3) -- Line 133
			--[[ Upvalues[2]:
				[1]: arg1_2 (readonly)
				[2]: Response_upvr (copied, readonly)
			]]
			arg1_2(Response_upvr.new(arg1_3))
		end)
	end)
end
return module_upvr