-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:51:47
-- Luau version 6, Types version 3
-- Time taken: 0.003988 seconds

local HttpRbxApiService_upvr = game:GetService("HttpRbxApiService")
local HttpService_upvr = game:GetService("HttpService")
local Extreme_upvr = Enum.ThrottlingPriority.Extreme
local function _(arg1, arg2) -- Line 9, Named "doHttpGet"
	--[[ Upvalues[2]:
		[1]: HttpRbxApiService_upvr (readonly)
		[2]: Extreme_upvr (readonly)
	]]
	return pcall(function() -- Line 10
		--[[ Upvalues[4]:
			[1]: HttpRbxApiService_upvr (copied, readonly)
			[2]: arg1 (readonly)
			[3]: arg2 (readonly)
			[4]: Extreme_upvr (copied, readonly)
		]]
		local throttlingPriority_3 = arg2.throttlingPriority
		if not throttlingPriority_3 then
			throttlingPriority_3 = Extreme_upvr
		end
		return HttpRbxApiService_upvr:GetAsyncFullUrl(arg1, throttlingPriority_3, arg2.httpRequestType or nil)
	end)
end
local ApplicationJson_upvr = Enum.HttpContentType.ApplicationJson
local function doHttpPost_upvr(arg1, arg2) -- Line 19, Named "doHttpPost"
	--[[ Upvalues[4]:
		[1]: HttpService_upvr (readonly)
		[2]: HttpRbxApiService_upvr (readonly)
		[3]: Extreme_upvr (readonly)
		[4]: ApplicationJson_upvr (readonly)
	]]
	local var7_upvw
	assert(arg2.postBody, "Expected a postBody to be specified with this request")
	if type(arg2.postBody) == "table" then
		var7_upvw = HttpService_upvr:JSONEncode(arg2.postBody)
	elseif type(arg2.postBody) == "string" then
		var7_upvw = arg2.postBody
	else
		error("Expected postBody to be a string or table")
	end
	return pcall(function() -- Line 30
		--[[ Upvalues[6]:
			[1]: HttpRbxApiService_upvr (copied, readonly)
			[2]: arg1 (readonly)
			[3]: var7_upvw (read and write)
			[4]: arg2 (readonly)
			[5]: Extreme_upvr (copied, readonly)
			[6]: ApplicationJson_upvr (copied, readonly)
		]]
		local throttlingPriority = arg2.throttlingPriority
		if not throttlingPriority then
			throttlingPriority = Extreme_upvr
		end
		local contentType = arg2.contentType
		if not contentType then
			contentType = ApplicationJson_upvr
		end
		return HttpRbxApiService_upvr:PostAsyncFullUrl(arg1, var7_upvw, throttlingPriority, contentType, arg2.httpRequestType or nil)
	end)
end
local StatusCode_upvr = require(script.Parent.Parent.StatusCode)
local function createResponse_upvr(arg1) -- Line 41, Named "createResponse"
	--[[ Upvalues[2]:
		[1]: StatusCode_upvr (readonly)
		[2]: HttpService_upvr (readonly)
	]]
	local OK = StatusCode_upvr.OK
	local pcall_result1, _ = pcall(function() -- Line 44
		--[[ Upvalues[2]:
			[1]: HttpService_upvr (copied, readonly)
			[2]: arg1 (readonly)
		]]
		return HttpService_upvr:JSONDecode(arg1)
	end)
	if not pcall_result1 then
		OK = tonumber(arg1:sub(6, 8))
	end
	local module = {}
	module.Body = arg1
	module.StatusCode = OK
	module.Headers = {}
	return module
end
return function(arg1, arg2, arg3) -- Line 61
	--[[ Upvalues[4]:
		[1]: HttpRbxApiService_upvr (readonly)
		[2]: Extreme_upvr (readonly)
		[3]: doHttpPost_upvr (readonly)
		[4]: createResponse_upvr (readonly)
	]]
	return {
		Start = function(arg1_2, arg2_2) -- Line 63, Named "Start"
			--[[ Upvalues[7]:
				[1]: arg2 (readonly)
				[2]: arg1 (readonly)
				[3]: arg3 (readonly)
				[4]: HttpRbxApiService_upvr (copied, readonly)
				[5]: Extreme_upvr (copied, readonly)
				[6]: doHttpPost_upvr (copied, readonly)
				[7]: createResponse_upvr (copied, readonly)
			]]
			local var19
			local var20
			if arg2 == "GET" then
				local pcall_result1_2, pcall_result2 = pcall(function() -- Line 10
					--[[ Upvalues[4]:
						[1]: HttpRbxApiService_upvr (copied, readonly)
						[2]: arg1 (readonly)
						[3]: arg3 (readonly)
						[4]: Extreme_upvr (copied, readonly)
					]]
					local throttlingPriority_2 = arg3.throttlingPriority
					if not throttlingPriority_2 then
						throttlingPriority_2 = Extreme_upvr
					end
					return HttpRbxApiService_upvr:GetAsyncFullUrl(arg1, throttlingPriority_2, arg3.httpRequestType or nil)
				end)
				var19 = pcall_result1_2
				var20 = pcall_result2
			elseif arg2 == "POST" then
				local doHttpPost_upvr_result1, doHttpPost_upvr_result2 = doHttpPost_upvr(arg1, arg3)
				var19 = doHttpPost_upvr_result1
				var20 = doHttpPost_upvr_result2
			else
				error("Unsupported method: "..arg2)
			end
			arg2_2(var19, createResponse_upvr(var20))
		end;
		Cancel = function() -- Line 77, Named "Cancel"
		end;
	}
end