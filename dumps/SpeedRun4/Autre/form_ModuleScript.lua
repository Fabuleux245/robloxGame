-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:01:36
-- Luau version 6, Types version 3
-- Time taken: 0.004695 seconds

local lib = script.Parent.Parent.lib
local function randomString_upvr(arg1) -- Line 16, Named "randomString"
	local var5 = ""
	for _ = 1, arg1 do
		var5 = var5..string.char(math.random(97, 122))
	end
	return var5
end
local tbl_2_upvr = {}
tbl_2_upvr.__index = tbl_2_upvr
local mimetypes_upvr = require(lib.mimetypes)
local function new(...) -- Line 30
	--[[ Upvalues[2]:
		[1]: tbl_2_upvr (readonly)
		[2]: mimetypes_upvr (readonly)
	]]
	local setmetatable_result1 = setmetatable({}, tbl_2_upvr)
	setmetatable_result1.__IsFile = true
	setmetatable_result1.name = "unknown"
	setmetatable_result1.content = ""
	setmetatable_result1.content_type = nil
	local args_list = {...}
	if #args_list == 1 then
		setmetatable_result1.content = args_list[1]
	elseif 2 <= #args_list then
		setmetatable_result1.name = args_list[1]
		setmetatable_result1.content = args_list[2]
		setmetatable_result1.content_type = args_list[3]
	end
	if not setmetatable_result1.content_type then
		local any_split_result1 = setmetatable_result1.name:split('.')
		setmetatable_result1.content_type = mimetypes_upvr[any_split_result1[#any_split_result1]:lower()] or "text/plain"
	end
	if type(setmetatable_result1.content) ~= "string" then
		error("[http] Invalid file content for file %s":format(setmetatable_result1.name))
	end
	return setmetatable_result1
end
tbl_2_upvr.new = new
function tbl_2_upvr.__tostring(arg1) -- Line 71
	return "File('%s', '%s')":format(arg1.name, arg1.content_type)
end
local tbl_upvr = {}
tbl_upvr.__index = tbl_upvr
function tbl_upvr.new(arg1) -- Line 79
	--[[ Upvalues[2]:
		[1]: tbl_upvr (readonly)
		[2]: randomString_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local setmetatable_result1_2 = setmetatable({}, tbl_upvr)
	setmetatable_result1_2.__FormData = true
	local var21 = arg1
	if not var21 then
		var21 = {}
	end
	setmetatable_result1_2.boundary = "--FormBoundary-"..randomString_upvr(28)
	setmetatable_result1_2.content_type = "application/x-www-form-urlencoded"
	setmetatable_result1_2.fields = {}
	for i_2, v in pairs(var21) do
		setmetatable_result1_2:AddField(i_2, v)
	end
	return setmetatable_result1_2
end
function tbl_upvr.AddField(arg1, arg2, arg3) -- Line 96
	if arg3.__IsFile then
		arg1.content_type = "multipart/form-data; boundary=\""..arg1.boundary..'"'
	end
	local tbl = {}
	tbl.Name = arg2
	tbl.Value = arg3
	table.insert(arg1.fields, tbl)
end
local HttpService_upvr = game:GetService("HttpService")
local b64_upvr = require(lib.b64)
function tbl_upvr.build(arg1) -- Line 108
	--[[ Upvalues[2]:
		[1]: HttpService_upvr (readonly)
		[2]: b64_upvr (readonly)
	]]
	local var63 = ""
	if arg1.content_type == "application/x-www-form-urlencoded" then
		for _, v_2 in ipairs(arg1.fields) do
			if v_2.Value.__IsFile then
				error("[http] URL encoded forms cannot contain any files")
			end
			if v_2.Name:find('=') or v_2.Name:find('&') then
				error("[http] Form field names must not contain '=' or '&'")
			end
			if type(v_2.Value) == "table" then
				for i_4, v_3 in ipairs(v_2.Value) do
					if 0 < #var63 then
						var63 = var63..'&'
					end
					var63 = var63..v_2.Name..'='..HttpService_upvr:UrlEncode(v_3)
				end
			else
				if 0 < #var63 then
					var63 = var63..'&'
				end
				i_4 = HttpService_upvr:UrlEncode(v_2.Value)
				var63 = var63..v_2.Name..'='..i_4
			end
		end
		return var63
	end
	for _, v_4 in pairs(arg1.fields) do
		local Value = v_4.Value
		if v_4.Value.__IsFile then
			Value = v_4.Value.content
			if v_4.Value.content_type:sub(1, 5) ~= "text/" then
				Value = b64_upvr.encode(Value)
			end
		end
	end
	return var63.."--"..arg1.boundary.."\r\n".."Content-Disposition: form-data; name=\"%s\"":format(v_4.Name).."; filename=\"%s\"":format(v_4.Value.name).."\r\nContent-Type: "..v_4.Value.content_type.."\r\nContent-Transfer-Encoding: base64".."\r\n\r\n"..Value.."\r\n".."--"..arg1.boundary.."--"
end
return {
	FormData = tbl_upvr;
	File = tbl_2_upvr;
}