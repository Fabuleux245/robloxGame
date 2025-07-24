-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:01:39
-- Luau version 6, Types version 3
-- Time taken: 0.004410 seconds

local src = script.Parent.Parent.src
local ratelimit_upvr = require(src.ratelimit)
local util = require(src.util)
local function randomString_upvr(arg1) -- Line 15, Named "randomString"
	local var11 = ""
	for _ = 1, arg1 do
		var11 = var11..string.char(math.random(97, 122))
	end
	return var11
end
local module_upvr = {}
module_upvr.__index = module_upvr
local cookies_upvr = require(src.cookies)
function module_upvr.new(arg1) -- Line 28
	--[[ Upvalues[2]:
		[1]: module_upvr (readonly)
		[2]: cookies_upvr (readonly)
	]]
	local setmetatable_result1 = setmetatable({}, module_upvr)
	setmetatable_result1.headers = {}
	setmetatable_result1.cookies = cookies_upvr.new()
	setmetatable_result1.base_url = arg1 or ""
	setmetatable_result1._ratelimit = nil
	setmetatable_result1.ignore_ratelimit = false
	setmetatable_result1.before_request = nil
	setmetatable_result1.after_request = nil
	setmetatable_result1.no_stats = false
	setmetatable_result1.log = true
	return setmetatable_result1
end
function module_upvr.set_ratelimit(arg1, arg2, arg3) -- Line 52
	--[[ Upvalues[2]:
		[1]: ratelimit_upvr (readonly)
		[2]: randomString_upvr (readonly)
	]]
	if not arg2 then
		arg1:disable_ratelimit()
	end
	if arg1._ratelimit then
		ratelimit_upvr.ratelimit[arg1._ratelimit.id] = nil
	end
	arg1._ratelimit = ratelimit_upvr.get("http.session-"..randomString_upvr(12), arg2, arg3 or 60)
end
function module_upvr.disable_ratelimit(arg1) -- Line 70
	--[[ Upvalues[1]:
		[1]: ratelimit_upvr (readonly)
	]]
	if arg1._ratelimit then
		ratelimit_upvr.ratelimit[arg1._ratelimit.id] = nil
		arg1._ratelimit = nil
	end
end
function module_upvr.set_headers(arg1, arg2) -- Line 79
	for i_2, v in pairs(arg2) do
		arg1.headers[i_2] = v
	end
	return arg1
end
local request_2_upvr = require(src.request)
function module_upvr.Request(arg1, arg2, arg3, arg4) -- Line 89
	--[[ Upvalues[1]:
		[1]: request_2_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local var35 = arg4
	if not var35 then
		var35 = {}
	end
	local var36 = var35
	if arg3:sub(1, 7) ~= "http://" then
		if arg3:sub(1, 8) ~= "https://" then
		end
	end
	local log = arg1.log
	if var36.log ~= nil then
		log = var36.log
	end
	local tbl = {
		headers = arg1.headers;
		query = var36.query;
		data = var36.data;
		log = log;
	}
	local cookies_2 = var36.cookies
	if not cookies_2 then
		cookies_2 = arg1.cookies
	end
	tbl.cookies = cookies_2
	cookies_2 = var36.ignore_ratelimit
	local var40 = cookies_2
	if not var40 then
		var40 = arg1.ignore_ratelimit
	end
	tbl.ignore_ratelimit = var40
	tbl.no_stats = arg1.no_stats or false
	local any_new_result1_2 = request_2_upvr.new(arg2, arg1.base_url..arg3, tbl)
	if arg1._ratelimit then
		table.insert(any_new_result1_2._ratelimits, arg1._ratelimit)
	end
	local headers_2 = var36.headers
	if not headers_2 then
		headers_2 = {}
	end
	any_new_result1_2:set_headers(headers_2)
	function any_new_result1_2._callback(arg1_3) -- Line 122
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		for _, v_2 in ipairs(arg1_3.cookies.cookies) do
			table.insert(arg1.cookies.cookies, v_2)
		end
	end
	return any_new_result1_2
end
function module_upvr.request(arg1, arg2, arg3, arg4) -- Line 131
	local var49 = arg4
	if not var49 then
		var49 = {}
	end
	return arg1:Request(arg2, arg3, var49):send()
end
module_upvr.send = util.deprecate(module_upvr.request, "0.5", "Session:send")
function module_upvr.promise_request(arg1, arg2, arg3, arg4) -- Line 149
	local var50 = arg4
	if not var50 then
		var50 = {}
	end
	return arg1:Request(arg2, arg3, var50):send(true)
end
module_upvr.promise_send = util.deprecate(module_upvr.promise_request, "0.5", "Session:promise_send")
for _, v_3_upvr in pairs({"GET", "POST", "HEAD", "OPTIONS", "PUT", "DELETE", "PATCH"}) do
	module_upvr[v_3_upvr:lower()] = function(arg1, arg2, arg3) -- Line 161
		--[[ Upvalues[1]:
			[1]: v_3_upvr (readonly)
		]]
		return arg1:send(v_3_upvr, arg2, arg3)
	end
	module_upvr["promise_"..v_3_upvr:lower()] = function(arg1, arg2, arg3) -- Line 165
		--[[ Upvalues[1]:
			[1]: v_3_upvr (readonly)
		]]
		return arg1:promise_send(v_3_upvr, arg2, arg3)
	end
end
return module_upvr