-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:09:54
-- Luau version 6, Types version 3
-- Time taken: 0.007276 seconds

local HttpService_upvw = game:GetService("HttpService")
local Http = script:FindFirstAncestor("Http")
local Parent = Http.Parent
local StatusCodes_upvr = require(Http.StatusCodes)
local HttpCanceller_upvr = require(Http.NetworkLayers.HttpCanceller)
local GetFFlagEnableCounterLoggingForAPICalls_upvr = require(Parent.SharedFlags).GetFFlagEnableCounterLoggingForAPICalls
local GreenlistedEndpointsForLogging_upvr = require(Http.Logger.GreenlistedEndpointsForLogging)
local tbl_upvr_2 = {
	[StatusCodes_upvr.REQUEST_TIMEOUT] = true;
	[StatusCodes_upvr.SERVICE_UNAVAILABLE] = true;
	[StatusCodes_upvr.GATEWAY_TIMEOUT] = true;
}
local tbl_upvr = {}
tbl_upvr.__index = tbl_upvr
local function _(arg1) -- Line 40, Named "parseResponseBody"
	--[[ Upvalues[2]:
		[1]: StatusCodes_upvr (readonly)
		[2]: HttpService_upvw (readonly)
	]]
	if arg1.StatusCode == StatusCodes_upvr.NO_CONTENT then
		return true, nil
	end
	local pcall_result1, pcall_result2_3 = pcall(HttpService_upvw.JSONDecode, HttpService_upvw, arg1.Body)
	return pcall_result1, pcall_result2_3
end
local None_upvr = Enum.HttpCachePolicy.None
function tbl_upvr.new(arg1, arg2, arg3, arg4) -- Line 49
	--[[ Upvalues[3]:
		[1]: HttpCanceller_upvr (readonly)
		[2]: None_upvr (readonly)
		[3]: tbl_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local module = {
		resolve = nil;
		reject = nil;
		retryCount = 0;
	}
	local var14
	local function INLINED() -- Internal function, doesn't exist in bytecode
		var14 = arg4.maxRetryCount
		return var14
	end
	if not arg4 or not INLINED() then
		var14 = 4
	end
	module.maxRetryCount = var14
	var14 = nil
	module.httpRequest = var14
	var14 = false
	module.canceled = var14
	module.httpService = arg1
	var14 = HttpCanceller_upvr.currentSession()
	module.session = var14
	var14 = {}
	var14.Url = arg2
	if not arg3 or not arg3 then
	end
	var14.Method = "GET"
	if not arg4 or not arg4.postBody then
	end
	var14.Body = nil
	if not arg4 or not arg4.timeout then
	end
	var14.Timeout = 15000
	if not arg4 or not arg4.cachePolicy then
	end
	var14.CachePolicy = None_upvr
	if not arg4 or not arg4.priority then
	end
	var14.Priority = 0
	if not arg4 or not arg4.headers then
	end
	var14.Headers = nil
	if not arg4 or not arg4.requestType then
	end
	var14.RequestType = nil
	module.internalOptions = var14
	local function INLINED_2() -- Internal function, doesn't exist in bytecode
		var14 = module.internalOptions.Headers
		return var14 == nil
	end
	local function INLINED_3() -- Internal function, doesn't exist in bytecode
		var14 = module.internalOptions.Headers["Content-Type"]
		return var14 == nil
	end
	if arg3 == "POST" or arg3 == "PATCH" or INLINED_2() or INLINED_3() then
		var14 = module.internalOptions
		if not module.internalOptions.Headers then
		end
		var14.Headers = {}
		var14 = module.internalOptions.Headers
		var14["Content-Type"] = "application/json"
	end
	var14 = setmetatable
	var14(module, tbl_upvr)
	return module
end
function tbl_upvr.start(arg1, arg2, arg3) -- Line 83
	arg1.resolve = arg2
	arg1.reject = arg3
	arg1:makeRequest()
end
local game_DefineFastFlag_result1_upvr = game:DefineFastFlag("LuaAppHttpSupportNoContent", false)
local NetworkProfiler_upvr = require(Http.NetworkProfiler)
function tbl_upvr.processResponse(arg1, arg2) -- Line 89
	--[[ Upvalues[6]:
		[1]: game_DefineFastFlag_result1_upvr (readonly)
		[2]: StatusCodes_upvr (readonly)
		[3]: HttpService_upvw (readonly)
		[4]: NetworkProfiler_upvr (readonly)
		[5]: GetFFlagEnableCounterLoggingForAPICalls_upvr (readonly)
		[6]: GreenlistedEndpointsForLogging_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local var17
	local var18
	if var18 then
		if arg2.StatusCode == StatusCodes_upvr.NO_CONTENT then
			var18 = true
		else
			local pcall_result1_3, pcall_result2_2 = pcall(HttpService_upvw.JSONDecode, HttpService_upvw, arg2.Body)
			var18 = pcall_result1_3
		end
		var17 = var18
		local _ = pcall_result2_2
	else
		var18 = pcall(HttpService_upvw.JSONDecode, HttpService_upvw, arg2.Body)
		local pcall_result1_2, pcall_result2 = pcall(HttpService_upvw.JSONDecode, HttpService_upvw, arg2.Body)
		var17 = pcall_result1_2
	end
	if not var17 then
		pcall_result1_2 = arg1.reject
		pcall_result1_2({
			HttpError = Enum.HttpError.OK;
			isJSONValid = false;
		})
	else
		pcall_result1_2 = NetworkProfiler_upvr
		pcall_result1_2 = pcall_result1_2:track
		pcall_result1_2({
			queued = arg2.Stats.DurationInQueue;
			nameLookup = arg2.Stats.DurationNameLookup;
			connect = arg2.Stats.DurationConnect;
			sslHandshake = arg2.Stats.DurationSSLHandshake;
			makeRequest = arg2.Stats.DurationMakeRequest;
			receiveResponse = arg2.Stats.DurationReceiveResponse;
		})
		pcall_result1_2 = arg2.Stats.RoundTripTime * 1000
		if arg2.Body and typeof(arg2.Body) == "string" then
		else
		end
		local tbl = {
			responseCode = arg2.StatusCode;
			requestUrl = arg1.internalOptions.Url;
			responseTimeMs = pcall_result1_2;
			isJSONValid = true;
			
			pcall_result2
		}
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		tbl.responseBody = pcall_result2
		tbl.responseStats = arg2.Stats
		tbl.responseSize = 0
		arg1.resolve(tbl)
		if GetFFlagEnableCounterLoggingForAPICalls_upvr() then
			GreenlistedEndpointsForLogging_upvr.sendStatusCodeCounter(arg1.internalOptions.Url, arg2.StatusCode)
		end
	end
end
function tbl_upvr.retry(arg1, arg2, arg3) -- Line 129
	local var30
	if arg2.Stats and arg2.Stats.WasRequestRetried then
		var30 = false
	end
	if var30 then
		arg1.retryCount += 1
		if arg1.maxRetryCount < arg1.retryCount then
			var30 = false
		end
	end
	if not var30 then
		arg1.reject(arg2)
	else
		if arg1.internalOptions.Headers == nil then
			arg1.internalOptions.Headers = {}
		end
		arg1.internalOptions.Headers["X-Retry-Attempt"] = tostring(arg1.retryCount)
		local var31 = arg3
		if not var31 then
			var31 = math.pow(2, arg1.retryCount)
		end
		delay(var31, function() -- Line 155
			--[[ Upvalues[1]:
				[1]: arg1 (readonly)
			]]
			arg1:makeRequest()
		end)
	end
end
local game_DefineFastFlag_result1_upvr_2 = game:DefineFastFlag("EnableRetryOnPrefetch401", false)
local GreenlistedEndpointsForErrorLogging_upvr = require(Http.Logger.GreenlistedEndpointsForErrorLogging)
local function makeRequest(arg1) -- Line 160
	--[[ Upvalues[7]:
		[1]: HttpCanceller_upvr (readonly)
		[2]: tbl_upvr_2 (readonly)
		[3]: game_DefineFastFlag_result1_upvr_2 (readonly)
		[4]: StatusCodes_upvr (readonly)
		[5]: GetFFlagEnableCounterLoggingForAPICalls_upvr (readonly)
		[6]: GreenlistedEndpointsForLogging_upvr (readonly)
		[7]: GreenlistedEndpointsForErrorLogging_upvr (readonly)
	]]
	if arg1.canceled then
	else
		arg1.httpRequest = arg1.httpService:RequestInternal(arg1.internalOptions)
		arg1.httpRequest:Start(function(arg1_2, arg2) -- Line 167
			--[[ Upvalues[8]:
				[1]: arg1 (readonly)
				[2]: HttpCanceller_upvr (copied, readonly)
				[3]: tbl_upvr_2 (copied, readonly)
				[4]: game_DefineFastFlag_result1_upvr_2 (copied, readonly)
				[5]: StatusCodes_upvr (copied, readonly)
				[6]: GetFFlagEnableCounterLoggingForAPICalls_upvr (copied, readonly)
				[7]: GreenlistedEndpointsForLogging_upvr (copied, readonly)
				[8]: GreenlistedEndpointsForErrorLogging_upvr (copied, readonly)
			]]
			if arg1.session ~= HttpCanceller_upvr.currentSession() then
				warn("Http request aborted", arg1.internalOptions.Url)
			else
				if arg1_2 then
					if 200 <= arg2.StatusCode and arg2.StatusCode < 400 then
						arg1:processResponse(arg2)
					else
						if tbl_upvr_2[arg2.StatusCode] then
							arg1:retry(arg2)
							return
						end
						if game_DefineFastFlag_result1_upvr_2 and arg2.IsPrefetch and arg2.StatusCode == StatusCodes_upvr.UNAUTHORIZED then
							arg1:retry(arg2)
							return
						end
						if arg2.StatusCode == StatusCodes_upvr.TOO_MANY_REQUESTS and arg2.Headers["Retry-After"] then
							local tonumber_result1 = tonumber(arg2.Headers["Retry-After"])
							if tonumber_result1 ~= nil and tonumber_result1 <= 16 then
								arg1:retry(arg2, tonumber_result1)
							else
								if GetFFlagEnableCounterLoggingForAPICalls_upvr() then
									GreenlistedEndpointsForLogging_upvr.sendStatusCodeCounter(arg1.internalOptions.Url, arg2.StatusCode)
								else
									GreenlistedEndpointsForErrorLogging_upvr.sendCounterIfKeyMatchesFetchStatus(arg1.internalOptions.Url, arg2.StatusCode)
								end
								arg1.reject(arg2)
							end
						end
						if GetFFlagEnableCounterLoggingForAPICalls_upvr() then
							GreenlistedEndpointsForLogging_upvr.sendStatusCodeCounter(arg1.internalOptions.Url, arg2.StatusCode)
						else
							GreenlistedEndpointsForErrorLogging_upvr.sendCounterIfKeyMatchesFetchStatus(arg1.internalOptions.Url, arg2.StatusCode)
						end
						arg1.reject(arg2)
					end
				end
				if not arg1.canceled then
					arg1:retry({
						HttpError = arg2.HttpError;
					})
				end
			end
		end)
	end
end
tbl_upvr.makeRequest = makeRequest
local function cancel(arg1) -- Line 224
	arg1.canceled = true
	arg1.reject({
		HttpError = Enum.HttpError.Aborted;
	})
	if arg1.httpRequest then
		arg1.httpRequest:Cancel()
	end
end
tbl_upvr.cancel = cancel
local Promise_upvr = require(Parent.Promise)
return function(arg1) -- Line 232, Named "createRequestInternalWrapper"
	--[[ Upvalues[3]:
		[1]: HttpService_upvw (readonly)
		[2]: tbl_upvr (readonly)
		[3]: Promise_upvr (readonly)
	]]
	if not arg1 then
	end
	return function(arg1_3, arg2, arg3) -- Line 237, Named "makeRequest"
		--[[ Upvalues[3]:
			[1]: tbl_upvr (copied, readonly)
			[2]: HttpService_upvw (read and write)
			[3]: Promise_upvr (copied, readonly)
		]]
		local any_new_result1_upvr = tbl_upvr.new(HttpService_upvw, arg1_3, arg2, arg3)
		return Promise_upvr.new(function(arg1_4, arg2_2) -- Line 240
			--[[ Upvalues[1]:
				[1]: any_new_result1_upvr (readonly)
			]]
			any_new_result1_upvr:start(arg1_4, arg2_2)
		end), function() -- Line 244, Named "cancel"
			--[[ Upvalues[1]:
				[1]: any_new_result1_upvr (readonly)
			]]
			any_new_result1_upvr:cancel()
		end
	end
end