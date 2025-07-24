-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:09:12
-- Luau version 6, Types version 3
-- Time taken: 0.001261 seconds

local HttpRbxApiService_upvr = game:GetService("HttpRbxApiService")
local module = {}
local ContentProvider_upvr = game:GetService("ContentProvider")
function module.getBaseDomain() -- Line 10
	--[[ Upvalues[1]:
		[1]: ContentProvider_upvr (readonly)
	]]
	local BaseUrl = ContentProvider_upvr.BaseUrl
	if string.sub(BaseUrl, #BaseUrl) ~= '/' then
		BaseUrl = BaseUrl..'/'
	end
	local _, string_find_result2_2 = string.find(BaseUrl, "://")
	local string_find_result1, string_find_result2 = string.find(BaseUrl, "%.", string_find_result2_2 + 1)
	return string.sub(BaseUrl, string_find_result2 + 1)
end
local function requestAndRetry_upvr(arg1, arg2) -- Line 21, Named "requestAndRetry"
	--[[ Upvalues[1]:
		[1]: requestAndRetry_upvr (readonly)
	]]
	if arg2 == nil then
		local const_number = 0
	end
	local pcall_result1, pcall_result2 = pcall(arg1)
	if pcall_result1 then
		return true, pcall_result2
	end
	if 2 <= const_number then
		return false, pcall_result2
	end
	wait(2 ^ (const_number - 1))
	return requestAndRetry_upvr(arg1, const_number + 1)
end
function module.requestAndRetryPost(arg1, arg2) -- Line 39
	--[[ Upvalues[2]:
		[1]: requestAndRetry_upvr (readonly)
		[2]: HttpRbxApiService_upvr (readonly)
	]]
	return requestAndRetry_upvr(function() -- Line 40
		--[[ Upvalues[3]:
			[1]: HttpRbxApiService_upvr (copied, readonly)
			[2]: arg1 (readonly)
			[3]: arg2 (readonly)
		]]
		return HttpRbxApiService_upvr:PostAsyncFullUrl(arg1, arg2)
	end)
end
function module.requestAndRetryGet(arg1) -- Line 45
	--[[ Upvalues[2]:
		[1]: requestAndRetry_upvr (readonly)
		[2]: HttpRbxApiService_upvr (readonly)
	]]
	return requestAndRetry_upvr(function() -- Line 46
		--[[ Upvalues[2]:
			[1]: HttpRbxApiService_upvr (copied, readonly)
			[2]: arg1 (readonly)
		]]
		return HttpRbxApiService_upvr:GetAsyncFullUrl(arg1)
	end)
end
return module