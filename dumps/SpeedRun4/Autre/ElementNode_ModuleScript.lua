-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:01:30
-- Luau version 6, Types version 3
-- Time taken: 0.011025 seconds

local tbl_3_upvr = {
	mt = {
		__index = tbl_3_upvr;
	};
}
local function new(arg1, arg2) -- Line 5
	--[[ Upvalues[1]:
		[1]: tbl_3_upvr (readonly)
	]]
	local var9
	if getmetatable(arg2) == tbl_3_upvr.mt then
		var9 = true
	end
	local var10
	if type(arg2) == "table" then
		if not var9 and 0 < #arg2 then
			for _, v in ipairs(arg2) do
				var10[v] = true
			end
		else
			for i_2 in pairs(arg2) do
				var10[i_2] = true
			end
		end
	elseif arg2 ~= nil then
		var10 = {
			[arg2] = true;
		}
	end
	return setmetatable(var10, tbl_3_upvr.mt)
end
tbl_3_upvr.new = new
function tbl_3_upvr.add(arg1, arg2) -- Line 22
	if arg2 ~= nil then
		arg1[arg2] = true
	end
	return arg1
end
function tbl_3_upvr.remove(arg1, arg2) -- Line 28
	if arg2 ~= nil then
		arg1[arg2] = nil
	end
	return arg1
end
function tbl_3_upvr.tolist(arg1) -- Line 34
	local module = {}
	for i_3 in pairs(arg1) do
		table.insert(module, i_3)
	end
	return module
end
tbl_3_upvr.to_list = tbl_3_upvr.tolist
tbl_3_upvr.mt.__add = function(arg1, arg2) -- Line 42
	--[[ Upvalues[1]:
		[1]: tbl_3_upvr (readonly)
	]]
	local any_new_result1_2 = tbl_3_upvr:new()
	for i_4 in pairs(tbl_3_upvr:new(arg1)) do
		any_new_result1_2[i_4] = true
	end
	for i_5 in pairs(tbl_3_upvr:new(arg2)) do
		any_new_result1_2[i_5] = true
	end
	return any_new_result1_2
end
tbl_3_upvr.mt.__sub = function(arg1, arg2) -- Line 50
	--[[ Upvalues[1]:
		[1]: tbl_3_upvr (readonly)
	]]
	local any_new_result1_3 = tbl_3_upvr:new()
	for i_6 in pairs(tbl_3_upvr:new(arg1)) do
		any_new_result1_3[i_6] = true
	end
	for i_7 in pairs(tbl_3_upvr:new(arg2)) do
		any_new_result1_3[i_7] = nil
	end
	return any_new_result1_3
end
tbl_3_upvr.mt.__mul = function(arg1, arg2) -- Line 58
	--[[ Upvalues[1]:
		[1]: tbl_3_upvr (readonly)
	]]
	local any_new_result1 = tbl_3_upvr:new()
	local any_new_result1_4 = tbl_3_upvr:new(arg2)
	for i_8 in pairs(tbl_3_upvr:new(arg1)) do
		any_new_result1[i_8] = any_new_result1_4[i_8]
	end
	return any_new_result1
end
tbl_3_upvr.mt.__tostring = function(arg1) -- Line 65
	local var59 = '{'
	local var60 = ""
	for i_9 in pairs(arg1) do
		var59 = var59..var60..tostring(i_9)
		var60 = ", "
	end
	return var59..'}'
end
local module_upvr = {
	mt = {
		__index = module_upvr;
	};
}
function module_upvr.new(arg1, arg2, arg3, arg4, arg5, arg6, arg7) -- Line 77
	--[[ Upvalues[2]:
		[1]: tbl_3_upvr (readonly)
		[2]: module_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local module_2 = {}
	module_2.index = arg2
	module_2.name = arg3
	module_2.level = 0
	module_2.parent = nil
	module_2.root = nil
	module_2.nodes = {}
	module_2._openstart = arg6
	module_2._openend = arg7
	module_2._closestart = arg6
	module_2._closeend = arg7
	module_2.attributes = {}
	module_2.id = nil
	module_2.classes = {}
	module_2.deepernodes = tbl_3_upvr:new()
	module_2.deeperelements = {}
	module_2.deeperattributes = {}
	module_2.deeperids = {}
	module_2.deeperclasses = {}
	module_2.attrs = module_2.attributes
	module_2.children = module_2.nodes
	module_2.descendants = module_2.deepernodes
	module_2.descendant_elements = module_2.deeperelements
	module_2.descendant_attrs = module_2.deeperattributes
	module_2.descendent_ids = module_2.deeperids
	module_2.descendant_classes = module_2.deeperclasses
	if not arg4 then
		module_2.name = "root"
		module_2.root = module_2
		module_2._text = arg3
		local string_len_result1 = string.len(arg3)
		module_2._openstart = 1
		module_2._openend = string_len_result1
		module_2._closestart = 1
		module_2._closeend = string_len_result1
		local var68
	elseif arg5 then
		module_2.root = arg4.root
		module_2.parent = arg4
		var68 = arg4.level
		module_2.level = var68 + 1
		var68 = arg4.nodes
		table.insert(var68, module_2)
	else
		module_2.root = arg4.root
		var68 = arg4.parent
		module_2.parent = var68 or arg4
		module_2.level = arg4.level
		local function INLINED() -- Internal function, doesn't exist in bytecode
			var68 = arg4.parent.nodes
			return var68
		end
		if not arg4.parent or not INLINED() then
			var68 = arg4.nodes
		end
		table.insert(var68, module_2)
	end
	return setmetatable(module_2, module_upvr.mt)
end
function module_upvr.text(arg1) -- Line 128
	return string.sub(arg1.root._text, arg1._openstart, arg1._closeend)
end
module_upvr.gettext = module_upvr.text
function module_upvr.settext(arg1, arg2) -- Line 133
	arg1.root._text = arg2
end
function module_upvr.textonly(arg1) -- Line 135
	return arg1:text():gsub("<[^>]*>", "")
end
function module_upvr.content(arg1) -- Line 137
	return string.sub(arg1.root._text, arg1._openend + 1, arg1._closestart - 1)
end
module_upvr.getcontent = module_upvr.content
function module_upvr.addattribute(arg1, arg2, arg3) -- Line 142
	arg1.attributes[arg2] = arg3
	if string.lower(arg2) == "id" then
		arg1.id = arg3
	elseif string.lower(arg2) == "class" then
		for i_14 in string.gmatch(arg3, "%S+") do
			table.insert(arg1.classes, i_14)
		end
	end
end
function module_upvr.links(arg1) -- Line 154
	for _, v_2 in ipairs(arg1:select("a[href]")) do
		if 0 < #v_2.attributes.href then
			table.insert({}, v_2.attributes.href)
		end
	end
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	return {}
end
function module_upvr.absolutelinks(arg1, arg2) -- Line 166
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local var101 = arg2
	if not var101 then
		var101 = arg1.page_url
		if not var101 then
			var101 = ""
		end
	end
	local _1 = var101:split('?')[1]:split('#')[1]
	local any_split_result1_2 = _1:split("://")
	if not _1:find("://") or not _1:split("://")[1] then
	end
	repeat
	until _1:sub(-1, -1) ~= '/'
	for _, v_3 in ipairs(arg1:select("a[href]")) do
		if 0 < #v_3.attributes.href then
			local href_2 = v_3.attributes.href
			if not href_2:find("://") then
				if href_2:sub(1, 2) == "//" then
					href_2 = "http"..':'..href_2
				elseif href_2:sub(1, 1) == '/' then
					-- KONSTANTERROR: Expression was reused, decompilation is incorrect
					href_2 = "http".."://"..any_split_result1_2[#any_split_result1_2]:split('/')[1]..href_2
				else
					href_2 = _1:sub(1, -2)..'/'..href_2
				end
			end
			table.insert({}, href_2)
		end
	end
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	return {}
end
module_upvr.absolute_links = module_upvr.absolutelinks
local function _(arg1, arg2, arg3) -- Line 208, Named "insert"
	--[[ Upvalues[1]:
		[1]: tbl_3_upvr (readonly)
	]]
	local var108 = arg1[arg2]
	if not var108 then
		var108 = tbl_3_upvr:new()
	end
	arg1[arg2] = var108
	arg1[arg2]:add(arg3)
end
function module_upvr.close(arg1, arg2, arg3) -- Line 213
	--[[ Upvalues[1]:
		[1]: tbl_3_upvr (readonly)
	]]
	if arg2 and arg3 then
		arg1._closestart = arg2
		arg1._closeend = arg3
	end
	while true do
		local parent = arg1.parent
		if not parent then break end
		parent.deepernodes:add(arg1)
		local deeperelements = parent.deeperelements
		local name = arg1.name
		local var118 = deeperelements[name]
		if not var118 then
			var118 = tbl_3_upvr:new()
		end
		deeperelements[name] = var118
		deeperelements[name]:add(arg1)
		local pairs_result1_6, pairs_result2_2, pairs_result3_7 = pairs(arg1.attributes)
		for i_12 in pairs_result1_6, pairs_result2_2, pairs_result3_7 do
			local deeperattributes = parent.deeperattributes
			local var123 = deeperattributes[i_12]
			if not var123 then
				var123 = tbl_3_upvr:new()
			end
			deeperattributes[i_12] = var123
			deeperattributes[i_12]:add(arg1)
		end
		if arg1.id then
			local deeperids = parent.deeperids
			local id = arg1.id
			pairs_result3_7 = deeperids[id]
			local var126 = pairs_result3_7
			if not var126 then
				var126 = tbl_3_upvr:new()
			end
			deeperids[id] = var126
			deeperids[id]:add(arg1)
		end
		for _, v_4 in ipairs(arg1.classes) do
			local deeperclasses = parent.deeperclasses
			local var131 = deeperclasses[v_4]
			if not var131 then
				var131 = tbl_3_upvr:new()
			end
			deeperclasses[v_4] = var131
			deeperclasses[v_4]:add(arg1)
		end
	end
end
local function escape_upvr(arg1) -- Line 234, Named "escape"
	return string.gsub(arg1, "([%^%$%(%)%%%.%[%]%*%+%-%?])", "%%".."%1")
end
local function select(arg1, arg2) -- Line 239
	--[[ Upvalues[2]:
		[1]: tbl_3_upvr (readonly)
		[2]: escape_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 42 start (CF ANALYSIS FAILED)
	if not arg2 or type(arg2) ~= "string" or arg2 == "" then
		return tbl_3_upvr:new()
	end
	local tbl_2_upvr = {
		[""] = arg1.deeperelements;
		['['] = arg1.deeperattributes;
		['#'] = arg1.deeperids;
		['.'] = arg1.deeperclasses;
	}
	local function _(arg1_2, arg2_2) -- Line 247, Named "match"
		--[[ Upvalues[4]:
			[1]: tbl_3_upvr (copied, readonly)
			[2]: tbl_2_upvr (readonly)
			[3]: arg1 (readonly)
			[4]: escape_upvr (copied, readonly)
		]]
		-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [5] 5. Error Block 2 start (CF ANALYSIS FAILED)
		local _, _, string_match_result3, _ = string.match(arg2_2, "([^=|%*~%$!%^]+)".."([|%*~%$!%^]?)".."(=?)".."(.*)")
		-- KONSTANTERROR: [5] 5. Error Block 2 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [18] 17. Error Block 3 start (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [18] 17. Error Block 3 end (CF ANALYSIS FAILED)
	end
	local tbl = {}
	tbl[1] = arg1
	local _, _, _ = tbl_3_upvr:new(tbl)
	local string_gmatch_result1, string_gmatch_result2, string_gmatch_result3 = string.gmatch(arg2, "%S+")
	-- KONSTANTERROR: [0] 1. Error Block 42 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [161] 128. Error Block 31 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [161] 128. Error Block 31 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [53] 37. Error Block 7 start (CF ANALYSIS FAILED)
	-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [161.10]
	-- KONSTANTERROR: [53] 37. Error Block 7 end (CF ANALYSIS FAILED)
end
function module_upvr.select(arg1, arg2) -- Line 371
	--[[ Upvalues[1]:
		[1]: select (readonly)
	]]
	return select(arg1, arg2)
end
module_upvr.mt.__call = select
return module_upvr