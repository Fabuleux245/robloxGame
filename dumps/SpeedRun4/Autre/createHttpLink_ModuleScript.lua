-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:43:29
-- Luau version 6, Types version 3
-- Time taken: 0.007590 seconds

local Parent = script.Parent.Parent.Parent.Parent
local LuauPolyfill = require(Parent.LuauPolyfill)
local module = {}
local selectHttpOptionsAndBody = require(script.Parent.selectHttpOptionsAndBody)
local Object_upvr = LuauPolyfill.Object
local checkFetcher_upvr = require(script.Parent.checkFetcher).checkFetcher
local Boolean_upvr = LuauPolyfill.Boolean
local ApolloLink_upvr = require(script.Parent.Parent.core).ApolloLink
local selectURI_upvr = require(script.Parent.selectURI).selectURI
local selectHttpOptionsAndBody_2_upvr = selectHttpOptionsAndBody.selectHttpOptionsAndBody
local fallbackHttpConfig_upvr = selectHttpOptionsAndBody.fallbackHttpConfig
local Set_upvr = LuauPolyfill.Set
local visit_upvr = require(Parent.GraphQL).visit
local createSignalIfSupported_upvr = require(script.Parent.createSignalIfSupported).createSignalIfSupported
local Array_upvr = LuauPolyfill.Array
local rewriteURIForGET_upvr = require(script.Parent.rewriteURIForGET).rewriteURIForGET
local fromError_upvr = require(script.Parent.Parent.utils).fromError
local serializeFetchParameter_upvr = require(script.Parent.serializeFetchParameter).serializeFetchParameter
local Observable_upvr = require(script.Parent.Parent.Parent.utilities).Observable
local parseAndCheckHttpResponse_upvr = require(script.Parent.parseAndCheckHttpResponse).parseAndCheckHttpResponse
function module.createHttpLink(arg1) -- Line 41
	--[[ Upvalues[16]:
		[1]: Object_upvr (readonly)
		[2]: checkFetcher_upvr (readonly)
		[3]: Boolean_upvr (readonly)
		[4]: ApolloLink_upvr (readonly)
		[5]: selectURI_upvr (readonly)
		[6]: selectHttpOptionsAndBody_2_upvr (readonly)
		[7]: fallbackHttpConfig_upvr (readonly)
		[8]: Set_upvr (readonly)
		[9]: visit_upvr (readonly)
		[10]: createSignalIfSupported_upvr (readonly)
		[11]: Array_upvr (readonly)
		[12]: rewriteURIForGET_upvr (readonly)
		[13]: fromError_upvr (readonly)
		[14]: serializeFetchParameter_upvr (readonly)
		[15]: Observable_upvr (readonly)
		[16]: parseAndCheckHttpResponse_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local var21 = arg1
	if var21 == nil then
		var21 = {}
	end
	if var21.uri == nil or not var21.uri then
	end
	local fetch = var21.fetch
	if var21.includeUnusedVariables == nil or not var21.includeUnusedVariables then
	end
	local any_assign_result1 = Object_upvr.assign({}, var21, {
		uri = Object_upvr.None;
		fetch = Object_upvr.None;
		includeExtensions = Object_upvr.None;
		useGETForQueries = Object_upvr.None;
		includeUnusedVariables = Object_upvr.None;
	})
	checkFetcher_upvr(fetch)
	if not Boolean_upvr.toJSBoolean(fetch) then
	end
	local tbl_4_upvr = {
		http = {
			includeExtensions = var21.includeExtensions;
		};
		options = any_assign_result1.fetchOptions;
		credentials = any_assign_result1.credentials;
		headers = any_assign_result1.headers;
	}
	local const_string_upvr = "/graphql"
	local var29_upvr = false
	local useGETForQueries_upvr = var21.useGETForQueries
	local fetch_upvw = _G.fetch
	return ApolloLink_upvr.new(function(arg1_2, arg2) -- Line 78
		--[[ Upvalues[19]:
			[1]: selectURI_upvr (copied, readonly)
			[2]: const_string_upvr (readonly)
			[3]: Boolean_upvr (copied, readonly)
			[4]: Object_upvr (copied, readonly)
			[5]: selectHttpOptionsAndBody_2_upvr (copied, readonly)
			[6]: fallbackHttpConfig_upvr (copied, readonly)
			[7]: tbl_4_upvr (readonly)
			[8]: var29_upvr (readonly)
			[9]: Set_upvr (copied, readonly)
			[10]: visit_upvr (copied, readonly)
			[11]: createSignalIfSupported_upvr (copied, readonly)
			[12]: useGETForQueries_upvr (readonly)
			[13]: Array_upvr (copied, readonly)
			[14]: rewriteURIForGET_upvr (copied, readonly)
			[15]: fromError_upvr (copied, readonly)
			[16]: serializeFetchParameter_upvr (copied, readonly)
			[17]: Observable_upvr (copied, readonly)
			[18]: fetch_upvw (read and write)
			[19]: parseAndCheckHttpResponse_upvr (copied, readonly)
		]]
		local any_getContext_result1 = arg2:getContext()
		local tbl = {}
		local var59_upvw
		if Boolean_upvr.toJSBoolean(any_getContext_result1.clientAwareness) then
			local name_2 = any_getContext_result1.clientAwareness.name
			local version_2 = any_getContext_result1.clientAwareness.version
			if Boolean_upvr.toJSBoolean(name_2) then
				tbl["apollographql-client-name"] = name_2
			end
			if Boolean_upvr.toJSBoolean(version_2) then
				tbl["apollographql-client-version"] = version_2
			end
		end
		var59_upvw = tbl_4_upvr
		local selectHttpOptionsAndBody_2_upvr_result1 = selectHttpOptionsAndBody_2_upvr(arg2, fallbackHttpConfig_upvr, var59_upvw, {
			http = any_getContext_result1.http;
			options = any_getContext_result1.fetchOptions;
			credentials = any_getContext_result1.credentials;
			headers = Object_upvr.assign({}, tbl, any_getContext_result1.headers);
		})
		local options_upvr_2 = selectHttpOptionsAndBody_2_upvr_result1.options
		local body_upvr = selectHttpOptionsAndBody_2_upvr_result1.body
		var59_upvw = body_upvr.variables
		if var59_upvw ~= nil then
			var59_upvw = var29_upvr
			if not var59_upvw then
				var59_upvw = Set_upvr.new(Object_upvr.keys(body_upvr.variables))
				visit_upvr(arg2.query, {
					Variable = function(arg1_10, arg2_3, arg3, arg4) -- Line 122, Named "Variable"
						--[[ Upvalues[2]:
							[1]: Boolean_upvr (copied, readonly)
							[2]: var59_upvw (readonly)
						]]
						if Boolean_upvr.toJSBoolean(arg4) and arg4.kind ~= "VariableDefinition" then
							var59_upvw:delete(arg2_3.name.value)
						end
					end;
				})
				if Boolean_upvr.toJSBoolean(var59_upvw.size) then
					body_upvr.variables = Object_upvr.assign({}, body_upvr.variables)
					var59_upvw:forEach(function(arg1_11) -- Line 139
						--[[ Upvalues[1]:
							[1]: body_upvr (readonly)
						]]
						body_upvr.variables[arg1_11] = nil
					end)
				end
			end
		end
		var59_upvw = nil
		if not Boolean_upvr.toJSBoolean(options_upvr_2.signal) then
			local createSignalIfSupported_upvr_result1_2 = createSignalIfSupported_upvr()
			var59_upvw = createSignalIfSupported_upvr_result1_2.controller
			if Boolean_upvr.toJSBoolean(var59_upvw) then
				options_upvr_2.signal = createSignalIfSupported_upvr_result1_2.signal
			end
		end
		local var70_upvw
		if Boolean_upvr.toJSBoolean(useGETForQueries_upvr) and not Array_upvr.some(arg2.query.definitions, function(arg1_12) -- Line 156, Named "definitionIsMutation"
			local var69 = false
			if arg1_12.kind == "OperationDefinition" then
				if arg1_12.operation ~= "mutation" then
					var69 = false
				else
					var69 = true
				end
			end
			return var69
		end) then
			options_upvr_2.method = "GET"
		end
		if options_upvr_2.method == "GET" then
			local var16_result1_2 = rewriteURIForGET_upvr(var70_upvw, body_upvr)
			local parseError = var16_result1_2.parseError
			if Boolean_upvr.toJSBoolean(parseError) then
				return fromError_upvr(parseError)
			end
			var70_upvw = var16_result1_2.newURI
		else
			local pcall_result1_2, pcall_result2_2 = pcall(function() -- Line 174
				--[[ Upvalues[3]:
					[1]: options_upvr_2 (readonly)
					[2]: serializeFetchParameter_upvr (copied, readonly)
					[3]: body_upvr (readonly)
				]]
				options_upvr_2.body = serializeFetchParameter_upvr(body_upvr, "Payload")
			end)
			if not pcall_result1_2 then
				return fromError_upvr(pcall_result2_2)
			end
		end
		return Observable_upvr.new(function(arg1_13) -- Line 181
			--[[ Upvalues[7]:
				[1]: fetch_upvw (copied, read and write)
				[2]: var70_upvw (read and write)
				[3]: options_upvr_2 (readonly)
				[4]: arg2 (readonly)
				[5]: parseAndCheckHttpResponse_upvr (copied, readonly)
				[6]: Boolean_upvr (copied, readonly)
				[7]: var59_upvw (read and write)
			]]
			fetch_upvw(var70_upvw, options_upvr_2):andThen(function(arg1_14) -- Line 183
				--[[ Upvalues[1]:
					[1]: arg2 (copied, readonly)
				]]
				local tbl_7 = {}
				tbl_7.response = arg1_14
				arg2:setContext(tbl_7)
				return arg1_14
			end):andThen(parseAndCheckHttpResponse_upvr(arg2)):andThen(function(arg1_15) -- Line 188
				--[[ Upvalues[1]:
					[1]: arg1_13 (readonly)
				]]
				arg1_13:next(arg1_15)
				arg1_13:complete()
				return arg1_15
			end):catch(function(arg1_16) -- Line 194
				--[[ Upvalues[2]:
					[1]: Boolean_upvr (copied, readonly)
					[2]: arg1_13 (readonly)
				]]
				if arg1_16.name == "AbortError" then
				else
					if Boolean_upvr.toJSBoolean(arg1_16.result) and Boolean_upvr.toJSBoolean(arg1_16.result.errors) and Boolean_upvr.toJSBoolean(arg1_16.result.data) then
						arg1_13:next(arg1_16.result)
					end
					arg1_13:error(arg1_16)
				end
			end)
			return function() -- Line 241
				--[[ Upvalues[2]:
					[1]: Boolean_upvr (copied, readonly)
					[2]: var59_upvw (copied, read and write)
				]]
				if Boolean_upvr.toJSBoolean(var59_upvw) then
					var59_upvw:abort()
				end
			end
		end)
	end)
end
return module