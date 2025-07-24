-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:51:48
-- Luau version 6, Types version 3
-- Time taken: 0.001208 seconds

local HttpService_upvr = game:GetService("HttpService")
local getPostBody_upvr = require(script.Parent.Util.getPostBody)
local getHeaders_upvr = require(script.Parent.Util.getHeaders)
return function(arg1, arg2, arg3) -- Line 6
	--[[ Upvalues[3]:
		[1]: HttpService_upvr (readonly)
		[2]: getPostBody_upvr (readonly)
		[3]: getHeaders_upvr (readonly)
	]]
	return {
		Start = function(arg1_2, arg2_2) -- Line 8, Named "Start"
			--[[ Upvalues[6]:
				[1]: HttpService_upvr (copied, readonly)
				[2]: arg1 (readonly)
				[3]: arg2 (readonly)
				[4]: getPostBody_upvr (copied, readonly)
				[5]: arg3 (readonly)
				[6]: getHeaders_upvr (copied, readonly)
			]]
			local pcall_result1, pcall_result2 = pcall(function() -- Line 9
				--[[ Upvalues[6]:
					[1]: HttpService_upvr (copied, readonly)
					[2]: arg1 (copied, readonly)
					[3]: arg2 (copied, readonly)
					[4]: getPostBody_upvr (copied, readonly)
					[5]: arg3 (copied, readonly)
					[6]: getHeaders_upvr (copied, readonly)
				]]
				local module = {}
				module.Url = arg1
				module.Method = arg2
				module.Body = getPostBody_upvr(arg3.postBody, arg2)
				module.Headers = getHeaders_upvr(arg3.headers, arg2)
				return HttpService_upvr:RequestAsync(module)
			end)
			arg2_2(pcall_result1, pcall_result2)
		end;
		Cancel = function() -- Line 20, Named "Cancel"
		end;
	}
end