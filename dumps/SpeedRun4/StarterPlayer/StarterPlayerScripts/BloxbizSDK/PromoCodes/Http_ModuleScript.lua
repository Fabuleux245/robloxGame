-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:42:34
-- Luau version 6, Types version 3
-- Time taken: 0.001282 seconds

local module_upvr = {}
local BatchHTTP_upvr = require(script.Parent.Parent.BatchHTTP)
function module_upvr.getUrl(arg1) -- Line 9
	--[[ Upvalues[1]:
		[1]: BatchHTTP_upvr (readonly)
	]]
	return BatchHTTP_upvr.getNewUrl("promocodes/"..arg1)
end
local ApiKey_upvr = require(script.Parent.Parent.BatchHTTP.ApiKey)
function module_upvr.getHeaders() -- Line 13
	--[[ Upvalues[1]:
		[1]: ApiKey_upvr (readonly)
	]]
	return {
		["API-KEY"] = ApiKey_upvr.getApiKey();
		["Content-Type"] = "application/json";
	}
end
local Utils_upvr = require(script.Parent.Parent.Utils)
local HttpService_upvr = game:GetService("HttpService")
function module_upvr.post(arg1, arg2) -- Line 20
	--[[ Upvalues[3]:
		[1]: Utils_upvr (readonly)
		[2]: HttpService_upvr (readonly)
		[3]: module_upvr (readonly)
	]]
	local var8 = arg2
	if not var8 then
		var8 = {}
	end
	local any_RequestAsync_result1_upvr = HttpService_upvr:RequestAsync({
		Url = module_upvr.getUrl(arg1);
		Body = HttpService_upvr:JSONEncode(Utils_upvr.merge({
			game_id = game.GameId;
		}, var8));
		Method = "POST";
		Headers = module_upvr.getHeaders();
	})
	local pcall_result1, pcall_result2 = pcall(function() -- Line 35
		--[[ Upvalues[2]:
			[1]: HttpService_upvr (copied, readonly)
			[2]: any_RequestAsync_result1_upvr (readonly)
		]]
		return HttpService_upvr:JSONDecode(any_RequestAsync_result1_upvr.Body)
	end)
	if not pcall_result1 then
		error(any_RequestAsync_result1_upvr.StatusMessage)
	end
	if not any_RequestAsync_result1_upvr.Success then
		local message = pcall_result2.message
		if not message then
			message = any_RequestAsync_result1_upvr.StatusMessage
		end
		error(message)
	end
	return pcall_result2
end
return module_upvr