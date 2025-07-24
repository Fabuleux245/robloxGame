-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:51:49
-- Luau version 6, Types version 3
-- Time taken: 0.001023 seconds

local HttpService_upvr = game:GetService("HttpService")
local getPostBody_upvr = require(script.Parent.Util.getPostBody)
local getHeaders_upvr = require(script.Parent.Util.getHeaders)
return function(arg1, arg2, arg3) -- Line 6
	--[[ Upvalues[3]:
		[1]: HttpService_upvr (readonly)
		[2]: getPostBody_upvr (readonly)
		[3]: getHeaders_upvr (readonly)
	]]
	local module = {}
	module.Url = arg1
	module.Method = arg2
	module.Body = getPostBody_upvr(arg3.postBody, arg2)
	module.Timeout = arg3.timeout or 15000
	local cachePolicy = arg3.cachePolicy
	if not cachePolicy then
		cachePolicy = Enum.HttpCachePolicy.None
	end
	module.CachePolicy = cachePolicy
	module.Priority = arg3.priority or 0
	module.Headers = getHeaders_upvr(arg3.headers, arg2)
	module.RequestType = arg3.requestType or nil
	module.AllowSandboxing = arg3.allowSandboxing or nil
	return HttpService_upvr:RequestInternal(module)
end