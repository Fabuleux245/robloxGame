-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:01:29
-- Luau version 6, Types version 3
-- Time taken: 0.002802 seconds

local src = script.src
local request_upvr = require(src.request)
local form = require(src.form)
local util = require(src.util)
local module_upvr = {
	VERSION = "0.5.4";
	Request = request_upvr.new;
	Session = require(src.session).new;
	FormData = form.FormData.new;
	File = form.File.new;
	cache = require(src.cache);
	request = function(arg1, arg2, arg3) -- Line 32, Named "request"
		--[[ Upvalues[1]:
			[1]: request_upvr (readonly)
		]]
		local var10 = arg3
		if not var10 then
			var10 = {}
		end
		return request_upvr.new(arg1, arg2, var10):send()
	end;
	send = util.deprecate(module_upvr.request, "0.5", "http.send");
	promise_request = function(arg1, arg2, arg3) -- Line 50, Named "promise_request"
		--[[ Upvalues[1]:
			[1]: request_upvr (readonly)
		]]
		local var11 = arg3
		if not var11 then
			var11 = {}
		end
		return request_upvr.new(arg1, arg2, var11):send(true)
	end;
	promise_send = util.deprecate(module_upvr.promise_request, "0.5", "http.promise_send");
	fetch = require(src.fetch)(module_upvr.promise_request);
}
for _, v_upvr in pairs({"GET", "POST", "HEAD", "OPTIONS", "PUT", "DELETE", "PATCH"}) do
	module_upvr[v_upvr:lower()] = function(arg1, arg2) -- Line 65
		--[[ Upvalues[2]:
			[1]: module_upvr (readonly)
			[2]: v_upvr (readonly)
		]]
		return module_upvr.request(v_upvr, arg1, arg2)
	end
	module_upvr["promise_"..v_upvr:lower()] = function(arg1, arg2) -- Line 69
		--[[ Upvalues[2]:
			[1]: module_upvr (readonly)
			[2]: v_upvr (readonly)
		]]
		return module_upvr.promise_request(v_upvr, arg1, arg2)
	end
end
local ratelimit_upvr = require(src.ratelimit)
function module_upvr.set_ratelimit(arg1, arg2) -- Line 74
	--[[ Upvalues[1]:
		[1]: ratelimit_upvr (readonly)
	]]
	local any_get_result1 = ratelimit_upvr.get("http", arg1, arg2)
	print("[http] RateLimiter settings changed: ", any_get_result1.rate, "reqs /", any_get_result1.window_size, "secs")
end
local html_upvr = require(script.lib.html)
function module_upvr.parse_html(arg1, arg2) -- Line 81
	--[[ Upvalues[1]:
		[1]: html_upvr (readonly)
	]]
	return html_upvr.parse(arg1, 100000, arg2)
end
module_upvr.parse_xml = module_upvr.parse_html
return module_upvr