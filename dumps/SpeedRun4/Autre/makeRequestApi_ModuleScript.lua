-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:03:29
-- Luau version 6, Types version 3
-- Time taken: 0.004293 seconds

local Parent = script.Parent
local NetworkStatus_upvr = require(Parent.NetworkStatus)
local makeActionCreator_upvr = require(Parent.makeActionCreator)
local Promise_upvr = require(Parent.Promise)
local RequestBuilder_upvr = require(Parent.RequestBuilder)
return function(arg1, arg2) -- Line 12
	--[[ Upvalues[4]:
		[1]: NetworkStatus_upvr (readonly)
		[2]: makeActionCreator_upvr (readonly)
		[3]: Promise_upvr (readonly)
		[4]: RequestBuilder_upvr (readonly)
	]]
	local NetworkStatus_upvr_result1_upvr = NetworkStatus_upvr({
		keyPath = arg1.keyPath;
		killRequestWithFilteredIds = arg1.killRequestWithFilteredIds;
	})
	return function(arg1_2, arg2_2) -- Line 21
		--[[ Upvalues[6]:
			[1]: makeActionCreator_upvr (copied, readonly)
			[2]: Promise_upvr (copied, readonly)
			[3]: RequestBuilder_upvr (copied, readonly)
			[4]: NetworkStatus_upvr_result1_upvr (readonly)
			[5]: arg1 (readonly)
			[6]: arg2 (readonly)
		]]
		local makeActionCreator_upvr_result1_upvr = makeActionCreator_upvr(arg1_2)
		local var13_upvw
		local function var12_upvr(arg1_3, arg2_3) -- Line 25
			--[[ Upvalues[2]:
				[1]: var13_upvw (read and write)
				[2]: Promise_upvr (copied, readonly)
			]]
			if arg2_3.mockNetworkImpl then
				error("Request already mocked - you may need to call `Mock.clear` between tests/uses")
			end
			if type(arg1_3) ~= "function" and type(arg1_3) ~= arg2_3.defaultType then
				error(arg2_3.argumentName.." must be a "..arg2_3.defaultType.." or function")
			end
			function var13_upvw(...) -- Line 39
				--[[ Upvalues[3]:
					[1]: arg1_3 (readonly)
					[2]: Promise_upvr (copied, readonly)
					[3]: arg2_3 (readonly)
				]]
				local var14
				local function INLINED() -- Internal function, doesn't exist in bytecode
					var14 = arg1_3(...)
					return var14
				end
				if type(arg1_3) ~= "function" or not INLINED() then
					var14 = arg1_3
				end
				return Promise_upvr[arg2_3.defaultResolveMethod](var14)
			end
		end
		return {
			Mock = {
				reply = function(arg1_12) -- Line 84, Named "reply"
					--[[ Upvalues[2]:
						[1]: var12_upvr (readonly)
						[2]: var13_upvw (read and write)
					]]
					return var12_upvr(arg1_12, {
						defaultResolveMethod = "resolve";
						argumentName = "mockResponse";
						defaultType = "table";
						mockNetworkImpl = var13_upvw;
					})
				end;
				replyWithError = function(arg1_13) -- Line 93, Named "replyWithError"
					--[[ Upvalues[2]:
						[1]: var12_upvr (readonly)
						[2]: var13_upvw (read and write)
					]]
					return var12_upvr(arg1_13, {
						defaultResolveMethod = "reject";
						argumentName = "mockError";
						defaultType = "string";
						mockNetworkImpl = var13_upvw;
					})
				end;
				clear = function() -- Line 102, Named "clear"
					--[[ Upvalues[1]:
						[1]: var13_upvw (read and write)
					]]
					var13_upvw = nil
				end;
			};
			getStatus = function(arg1_10, arg2_6) -- Line 72
				--[[ Upvalues[3]:
					[1]: arg2_2 (readonly)
					[2]: RequestBuilder_upvr (copied, readonly)
					[3]: NetworkStatus_upvr_result1_upvr (copied, readonly)
				]]
				return NetworkStatus_upvr_result1_upvr.getStatus(arg1_10, arg2_2(function(arg1_11, arg2_7) -- Line 73
					--[[ Upvalues[1]:
						[1]: RequestBuilder_upvr (copied, readonly)
					]]
					return RequestBuilder_upvr.new(arg1_11, arg2_7)
				end, arg2_6):makeKeyMapper()(arg2_6))
			end;
			API = function(arg1_4, ...) -- Line 46
				--[[ Upvalues[8]:
					[1]: arg2_2 (readonly)
					[2]: RequestBuilder_upvr (copied, readonly)
					[3]: NetworkStatus_upvr_result1_upvr (copied, readonly)
					[4]: var13_upvw (read and write)
					[5]: arg1 (copied, readonly)
					[6]: arg2 (copied, readonly)
					[7]: makeActionCreator_upvr_result1_upvr (readonly)
					[8]: Promise_upvr (copied, readonly)
				]]
				local arg2_2_result1_upvr = arg2_2(function(arg1_5, arg2_4) -- Line 47
					--[[ Upvalues[1]:
						[1]: RequestBuilder_upvr (copied, readonly)
					]]
					return RequestBuilder_upvr.new(arg1_5, arg2_4)
				end, arg1_4, ...)
				return function(arg1_6) -- Line 51
					--[[ Upvalues[7]:
						[1]: NetworkStatus_upvr_result1_upvr (copied, readonly)
						[2]: arg2_2_result1_upvr (readonly)
						[3]: var13_upvw (copied, read and write)
						[4]: arg1 (copied, readonly)
						[5]: arg2 (copied, readonly)
						[6]: makeActionCreator_upvr_result1_upvr (copied, readonly)
						[7]: Promise_upvr (copied, readonly)
					]]
					return NetworkStatus_upvr_result1_upvr.setStatus(arg1_6, arg2_2_result1_upvr:getIds(), arg2_2_result1_upvr:makeKeyMapper(), function(arg1_7, arg2_5) -- Line 52
						--[[ Upvalues[6]:
							[1]: var13_upvw (copied, read and write)
							[2]: arg1 (copied, readonly)
							[3]: arg2_2_result1_upvr (copied, readonly)
							[4]: arg2 (copied, readonly)
							[5]: makeActionCreator_upvr_result1_upvr (copied, readonly)
							[6]: Promise_upvr (copied, readonly)
						]]
						local var20 = var13_upvw
						if not var20 then
							var20 = arg1.networkImpl
						end
						local any_makeOptions_result1_upvr = arg2_2_result1_upvr:makeOptions()
						local any_getNamedIds_result1_upvr = arg2_2_result1_upvr:getNamedIds()
						return var20(arg2_2_result1_upvr:makeUrl(arg2_5), arg2, any_makeOptions_result1_upvr):andThen(function(arg1_8) -- Line 58
							--[[ Upvalues[6]:
								[1]: arg1_7 (readonly)
								[2]: makeActionCreator_upvr_result1_upvr (copied, readonly)
								[3]: arg2_5 (readonly)
								[4]: any_getNamedIds_result1_upvr (readonly)
								[5]: any_makeOptions_result1_upvr (readonly)
								[6]: arg2_2_result1_upvr (copied, readonly)
							]]
							arg1_7:dispatch(makeActionCreator_upvr_result1_upvr.Succeeded(arg2_5, arg1_8.responseBody, any_getNamedIds_result1_upvr, any_makeOptions_result1_upvr, arg2_2_result1_upvr:getAdditionalData()))
							return arg1_8
						end, function(arg1_9) -- Line 62
							--[[ Upvalues[7]:
								[1]: arg1_7 (readonly)
								[2]: makeActionCreator_upvr_result1_upvr (copied, readonly)
								[3]: arg2_5 (readonly)
								[4]: any_getNamedIds_result1_upvr (readonly)
								[5]: any_makeOptions_result1_upvr (readonly)
								[6]: arg2_2_result1_upvr (copied, readonly)
								[7]: Promise_upvr (copied, readonly)
							]]
							arg1_7:dispatch(makeActionCreator_upvr_result1_upvr.Failed(arg2_5, arg1_9, any_getNamedIds_result1_upvr, any_makeOptions_result1_upvr, arg2_2_result1_upvr:getAdditionalData()))
							return Promise_upvr.reject(arg1_9)
						end)
					end)
				end
			end;
			Succeeded = makeActionCreator_upvr_result1_upvr.Succeeded;
			Failed = makeActionCreator_upvr_result1_upvr.Failed;
		}
	end
end