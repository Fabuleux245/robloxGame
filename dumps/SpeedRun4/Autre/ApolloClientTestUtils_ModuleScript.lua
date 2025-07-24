-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:08:57
-- Luau version 6, Types version 3
-- Time taken: 0.003370 seconds

local HttpService_upvr = game:GetService("HttpService")
local Parent = script:FindFirstAncestor("GraphQLServer").Parent
local ApolloClient = require(Parent.ApolloClient)
local Server_upvr = require(script.Parent.Server)
local buildFetch_upvr = require(Parent.Fetch).buildFetch
local ApolloClient_2_upvr = ApolloClient.ApolloClient
local InMemoryCache_upvr = ApolloClient.InMemoryCache
local typePolicies_upvr = require(Parent.ApolloLocalState).typePolicies
local HttpLink_upvr = ApolloClient.HttpLink
local Object_upvr = require(Parent.LuauPolyfill).Object
return {
	mockApolloClient = function(arg1) -- Line 53, Named "mockApolloClient"
		--[[ Upvalues[7]:
			[1]: HttpService_upvr (readonly)
			[2]: Server_upvr (readonly)
			[3]: buildFetch_upvr (readonly)
			[4]: ApolloClient_2_upvr (readonly)
			[5]: InMemoryCache_upvr (readonly)
			[6]: typePolicies_upvr (readonly)
			[7]: HttpLink_upvr (readonly)
		]]
		local module_2 = {
			cache = InMemoryCache_upvr.new({
				typePolicies = typePolicies_upvr;
			});
		}
		local tbl_4 = {
			uri = "/api";
		}
		local any_new_result1_upvr = Server_upvr.new({
			mockResolvers = arg1.mockResolvers;
			fetchImpl = buildFetch_upvr({
				RequestInternal = function(arg1_4, arg2) -- Line 25, Named "RequestInternal"
					--[[ Upvalues[2]:
						[1]: arg1 (readonly)
						[2]: HttpService_upvr (copied, readonly)
					]]
					return {
						Start = function(arg1_5, arg2_3) -- Line 27, Named "Start"
							--[[ Upvalues[3]:
								[1]: arg1 (copied, readonly)
								[2]: arg2 (readonly)
								[3]: HttpService_upvr (copied, readonly)
							]]
							-- KONSTANTERROR: [0] 1. Error Block 41 start (CF ANALYSIS FAILED)
							local var18
							if arg1.responseMap and arg1.responseMap[arg2.Url] then
								var18 = arg1.responseMap[arg2.Url]
							else
								local defaultResponse = arg1.defaultResponse
								if not defaultResponse then
									defaultResponse = {}
								end
								var18 = defaultResponse
							end
							local tbl_3 = {}
							local any_JSONEncode_result1 = HttpService_upvr:JSONEncode(var18.Body)
							tbl_3.Body = any_JSONEncode_result1
							if var18.Success ~= nil then
								any_JSONEncode_result1 = var18.Success
							else
								any_JSONEncode_result1 = true
							end
							tbl_3.Success = any_JSONEncode_result1
							if var18.StatusCode then
								-- KONSTANTWARNING: GOTO [56] #41
							end
							-- KONSTANTERROR: [0] 1. Error Block 41 end (CF ANALYSIS FAILED)
							-- KONSTANTERROR: [55] 40. Error Block 44 start (CF ANALYSIS FAILED)
							tbl_3.StatusCode = 200
							if var18.StatusMessage then
								-- KONSTANTWARNING: GOTO [65] #47
							end
							-- KONSTANTERROR: [55] 40. Error Block 44 end (CF ANALYSIS FAILED)
						end;
					}
				end;
			});
		})
		function tbl_4.fetch(arg1_6, arg2) -- Line 65
			--[[ Upvalues[1]:
				[1]: any_new_result1_upvr (readonly)
			]]
			return any_new_result1_upvr:fetchLocal(arg2)
		end
		module_2.link = HttpLink_upvr.new(tbl_4)
		return ApolloClient_2_upvr.new(module_2)
	end;
	mockHttpService = function(arg1) -- Line 23, Named "mockHttpService"
		--[[ Upvalues[1]:
			[1]: HttpService_upvr (readonly)
		]]
		local module = {}
		local function RequestInternal(arg1_2, arg2) -- Line 25
			--[[ Upvalues[2]:
				[1]: arg1 (readonly)
				[2]: HttpService_upvr (copied, readonly)
			]]
			local module_3 = {}
			local function Start(arg1_3, arg2_2) -- Line 27
				--[[ Upvalues[3]:
					[1]: arg1 (copied, readonly)
					[2]: arg2 (readonly)
					[3]: HttpService_upvr (copied, readonly)
				]]
				-- KONSTANTERROR: [0] 1. Error Block 41 start (CF ANALYSIS FAILED)
				local var6
				if arg1.responseMap and arg1.responseMap[arg2.Url] then
					var6 = arg1.responseMap[arg2.Url]
				else
					local defaultResponse_2 = arg1.defaultResponse
					if not defaultResponse_2 then
						defaultResponse_2 = {}
					end
					var6 = defaultResponse_2
				end
				local tbl_2 = {}
				local any_JSONEncode_result1_2 = HttpService_upvr:JSONEncode(var6.Body)
				tbl_2.Body = any_JSONEncode_result1_2
				if var6.Success ~= nil then
					any_JSONEncode_result1_2 = var6.Success
				else
					any_JSONEncode_result1_2 = true
				end
				tbl_2.Success = any_JSONEncode_result1_2
				if var6.StatusCode then
					-- KONSTANTWARNING: GOTO [56] #41
				end
				-- KONSTANTERROR: [0] 1. Error Block 41 end (CF ANALYSIS FAILED)
				-- KONSTANTERROR: [55] 40. Error Block 44 start (CF ANALYSIS FAILED)
				tbl_2.StatusCode = 200
				if var6.StatusMessage then
					-- KONSTANTWARNING: GOTO [65] #47
				end
				-- KONSTANTERROR: [55] 40. Error Block 44 end (CF ANALYSIS FAILED)
			end
			module_3.Start = Start
			return module_3
		end
		module.RequestInternal = RequestInternal
		return module
	end;
	appendApolloClientToReducer = function(arg1, arg2) -- Line 74, Named "appendApolloClientToReducer"
		--[[ Upvalues[1]:
			[1]: Object_upvr (readonly)
		]]
		return function(arg1_7, arg2_4) -- Line 75
			--[[ Upvalues[3]:
				[1]: arg1 (readonly)
				[2]: Object_upvr (copied, readonly)
				[3]: arg2 (readonly)
			]]
			local var29 = arg1_7
			if not var29 then
				var29 = {}
			end
			local module_4 = {}
			local tbl = {}
			tbl.apolloClient = arg2
			module_4.ApolloClient = tbl
			return Object_upvr.assign(table.clone(arg1(var29, arg2_4)), module_4)
		end
	end;
}