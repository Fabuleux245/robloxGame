-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:01:35
-- Luau version 6, Types version 3
-- Time taken: 0.002856 seconds

local Parent = script.Parent.Parent
local function _(arg1) -- Line 12, Named "maybe_number"
	return tonumber(arg1) or arg1
end
local function trim_upvr(arg1) -- Line 20, Named "trim"
	arg1 = arg1 or ""
	local var2
	while var2:sub(1, 1) == ' ' do
		var2 = var2:sub(2)
	end
	while var2:sub(-1, -1) == ' ' do
		var2 = var2:sub(1, -2)
	end
	return var2
end
local tbl_upvr = {}
tbl_upvr.__index = tbl_upvr
local function new(arg1, arg2, arg3) -- Line 38
	--[[ Upvalues[1]:
		[1]: tbl_upvr (readonly)
	]]
	local setmetatable_result1 = setmetatable({}, tbl_upvr)
	local var5 = arg3
	if not var5 then
		var5 = {}
	end
	local var6 = var5
	setmetatable_result1.name = arg1
	setmetatable_result1.value = arg2
	setmetatable_result1.domain = var6.domain or ""
	setmetatable_result1.path = var6.path or ""
	return setmetatable_result1
end
tbl_upvr.new = new
function tbl_upvr.fromSet(arg1) -- Line 52
	--[[ Upvalues[2]:
		[1]: trim_upvr (readonly)
		[2]: tbl_upvr (readonly)
	]]
	local module = {}
	local any_split_result1_2 = arg1:split(';')
	local any_split_result1 = any_split_result1_2[1]:split('=')
	for i = 2, #any_split_result1_2 do
		local any_split_result1_3 = any_split_result1_2[i]:split('=')
		module[trim_upvr(any_split_result1_3[1]):lower()] = trim_upvr(any_split_result1_3[2])
	end
	return tbl_upvr.new(trim_upvr(any_split_result1[1]), trim_upvr(any_split_result1[2]), module)
end
local url_upvr = require(Parent.lib.url)
function tbl_upvr.matches(arg1, arg2) -- Line 72
	--[[ Upvalues[1]:
		[1]: url_upvr (readonly)
	]]
	if not arg1.domain then
		return true
	end
	local any_parse_result1 = url_upvr.parse(arg2)
	if arg1.domain:sub(1, 1) == '.' then
		if any_parse_result1.host:sub(-(#arg1.domain), -1) ~= arg1.domain and any_parse_result1.host ~= arg1.domain:sub(2) then
			do
				return false
			end
			-- KONSTANTWARNING: GOTO [54] #38
		end
	elseif any_parse_result1.host ~= arg1.domain then
		return false
	end
	if arg1.path and not any_parse_result1.path:sub(1, #arg1.path) == arg1.path then
		return false
	end
	return true
end
local module_2_upvr = {}
module_2_upvr.__index = module_2_upvr
function module_2_upvr.new() -- Line 104
	--[[ Upvalues[1]:
		[1]: module_2_upvr (readonly)
	]]
	local setmetatable_result1_2 = setmetatable({}, module_2_upvr)
	setmetatable_result1_2.__cookiejar = true
	setmetatable_result1_2.cookies = {}
	return setmetatable_result1_2
end
function module_2_upvr.insert(arg1, arg2, arg3, arg4) -- Line 114
	--[[ Upvalues[1]:
		[1]: tbl_upvr (readonly)
	]]
	arg1.cookies[arg2] = tbl_upvr.new(arg2, arg3, arg4)
	return arg1
end
function module_2_upvr.SetCookie(arg1, arg2) -- Line 122
	--[[ Upvalues[1]:
		[1]: tbl_upvr (readonly)
	]]
	local any_fromSet_result1 = tbl_upvr.fromSet(arg2)
	arg1.cookies[any_fromSet_result1.name] = any_fromSet_result1
end
function module_2_upvr.delete(arg1, arg2) -- Line 130
	arg1.cookies[arg2] = nil
end
function module_2_upvr.string(arg1, arg2) -- Line 134
	local var25
	for _, v in pairs(arg1.cookies) do
		if var25 then
			var25 = var25.."; "
		end
		var25 = var25.."%s=%s":format(v.name, v.value)
	end
	return var25
end
local json_upvr = require(Parent.src.json)
function module_2_upvr.__tostring(arg1) -- Line 149
	--[[ Upvalues[1]:
		[1]: json_upvr (readonly)
	]]
	return json_upvr.enc(arg1.domains)
end
return module_2_upvr