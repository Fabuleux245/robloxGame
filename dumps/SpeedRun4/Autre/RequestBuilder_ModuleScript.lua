-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:03:38
-- Luau version 6, Types version 3
-- Time taken: 0.006232 seconds

local Cryo_upvr = require(script.Parent.Cryo)
local tbl_upvr = {}
tbl_upvr.__index = tbl_upvr
local function new(arg1, arg2, arg3) -- Line 7
	--[[ Upvalues[1]:
		[1]: tbl_upvr (readonly)
	]]
	local module_2 = {
		ids = tbl_upvr.makeArray(arg2);
	}
	module_2.delimiter = arg3
	return setmetatable(module_2, arg1)
end
tbl_upvr.new = new
function tbl_upvr.setIds(arg1, arg2) -- Line 14
	--[[ Upvalues[1]:
		[1]: tbl_upvr (readonly)
	]]
	arg1.ids = tbl_upvr.makeArray(arg2)
end
function tbl_upvr.makeArray(arg1) -- Line 18
	if type(arg1) == "table" then
		return arg1
	end
	local module = {}
	module[1] = arg1
	return module
end
function tbl_upvr.__tostring(arg1) -- Line 25
	return table.concat(arg1.ids, arg1.delimiter)
end
local module_3_upvr = {}
module_3_upvr.__index = module_3_upvr
function module_3_upvr.new(arg1, arg2) -- Line 54
	--[[ Upvalues[1]:
		[1]: module_3_upvr (readonly)
	]]
	local module_4 = {
		baseUrl = arg1:gsub("/*$", "");
		args = {};
		pathElements = {};
		configurableIds = nil;
		namedIds = {};
		idsDelimiter = ',';
		options = {
			queryArgs = nil;
			postBody = nil;
			headers = nil;
		};
		useExpandedForm = {};
		statusIds = nil;
	}
	local var8 = arg2
	if not var8 then
		var8 = {}
	end
	module_4.additionalData = var8
	setmetatable(module_4, module_3_upvr)
	return module_4
end
function module_3_upvr.path(arg1, arg2) -- Line 80
	table.insert(arg1.pathElements, arg2:gsub("^/", ""):gsub("/$", ""))
	return arg1
end
function module_3_upvr.id(arg1, arg2, arg3) -- Line 87
	--[[ Upvalues[1]:
		[1]: tbl_upvr (readonly)
	]]
	if not arg3 and #arg1.pathElements < 1 then
		warn("Cannot name id or ids because there is no leading path segment and no name is provided")
	end
	local var9 = arg3
	if not var9 then
		var9 = arg1.pathElements[#arg1.pathElements]
	end
	arg1.namedIds[var9] = arg2
	arg1.configurableIds = tbl_upvr:new(arg2, arg1.idsDelimiter)
	table.insert(arg1.pathElements, arg1.configurableIds)
	return arg1
end
function module_3_upvr.queryArgWithIds(arg1, arg2, arg3) -- Line 99
	--[[ Upvalues[2]:
		[1]: Cryo_upvr (readonly)
		[2]: tbl_upvr (readonly)
	]]
	local var10 = arg1.namedIds[arg2]
	if not var10 then
		var10 = {}
	end
	local any_join_result1 = Cryo_upvr.List.join(arg3, var10)
	arg1.namedIds[arg2] = any_join_result1
	arg1.configurableIds = tbl_upvr:new(any_join_result1, arg1.idsDelimiter)
	arg1.args = Cryo_upvr.Dictionary.join(arg1.args, {
		[arg2] = arg1.configurableIds;
	})
	return arg1
end
function module_3_upvr.expandedQueryArgsWithIds(arg1, arg2, arg3) -- Line 109
	arg1.useExpandedForm[arg2] = true
	arg1:queryArgWithIds(arg2, arg3)
	return arg1
end
function module_3_upvr.queryArgs(arg1, arg2) -- Line 115
	--[[ Upvalues[1]:
		[1]: Cryo_upvr (readonly)
	]]
	arg1.args = Cryo_upvr.Dictionary.join(arg1.args, arg2)
	local queryArgs_2 = arg1.options.queryArgs
	if not queryArgs_2 then
		queryArgs_2 = {}
	end
	arg1.options.queryArgs = Cryo_upvr.Dictionary.join(arg2, queryArgs_2)
	return arg1
end
function module_3_upvr.body(arg1, arg2) -- Line 121
	arg1.options.postBody = arg2
	return arg1
end
function module_3_upvr.headers(arg1, arg2) -- Line 126
	arg1.options.headers = arg2
	return arg1
end
function module_3_upvr.makeKeyMapper(arg1) -- Line 131
	return function(arg1_2) -- Line 132
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		local var15
		local function INLINED() -- Internal function, doesn't exist in bytecode
			var15 = arg1:makeStatusUrl(arg1_2)
			return var15
		end
		if not arg1:getStatusIds() or not INLINED() then
			var15 = arg1:makeNamedIdsUrl(arg1_2)
		end
		return var15
	end
end
function module_3_upvr._normalize(arg1, arg2) -- Line 139
	return arg2:gsub("/+", '/')
end
function module_3_upvr.makeUri(arg1) -- Line 143
	local var20 = ""
	for _, v in ipairs(arg1.pathElements) do
		var20 = var20..'/'..tostring(v)
	end
	return arg1:_normalize(var20)
end
local function concatArguments_upvr(arg1, arg2, arg3, arg4) -- Line 151, Named "concatArguments"
	--[[ Upvalues[1]:
		[1]: concatArguments_upvr (readonly)
	]]
	if arg4 then
		for _, v_2 in pairs(arg3.ids) do
			local concatArguments_result1 = concatArguments_upvr(arg1, arg2, v_2)
		end
		return concatArguments_result1
	end
	local var32 = tostring(arg2)..'='..tostring(arg3)
	if 1 < concatArguments_result1:len() then
		return concatArguments_result1..'&'..var32
	end
	return var32
end
function module_3_upvr.makeQueryArgs(arg1, arg2, arg3) -- Line 168
	--[[ Upvalues[1]:
		[1]: concatArguments_upvr (readonly)
	]]
	arg1:_plugInConfigurableIds(arg2)
	local var40
	for i_3, v_3 in pairs(arg1.args) do
		if arg3 and arg1.namedIds[i_3] or not arg3 then
			var40 = concatArguments_upvr(var40, i_3, v_3, arg1.useExpandedForm[i_3])
		end
	end
	if 1 < var40:len() then
		return '?'..var40
	end
	return ""
end
function module_3_upvr.makeUrl(arg1, arg2, arg3) -- Line 184
	arg1:_plugInConfigurableIds(arg2)
	return arg1.baseUrl..arg1:makeUri()..arg1:makeQueryArgs(arg2, arg3)
end
function module_3_upvr.makeStatusUrl(arg1, arg2) -- Line 190
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local var49 = arg1.baseUrl..arg1:makeUri()
	local var50
	if not arg2 then
		return var49
	end
	local function INLINED_2() -- Internal function, doesn't exist in bytecode
		var50 = arg2
		return var50
	end
	if type(arg2) ~= "table" or not INLINED_2() then
		var50 = {}
		var50[1] = arg2
	end
	for i_4, v_4 in pairs(var50) do
		local var54
		local function INLINED_3() -- Internal function, doesn't exist in bytecode
			var54 = ""..'&'..v_4
			return var54
		end
		if 1 >= i_4 or not INLINED_3() then
			var54 = v_4
		end
	end
	return var49..'?'..var54
end
function module_3_upvr.makeNamedIdsUrl(arg1, arg2) -- Line 205
	return arg1:makeUrl(arg2, true)
end
function module_3_upvr.makeOptions(arg1) -- Line 209
	return arg1.options
end
function module_3_upvr._plugInConfigurableIds(arg1, arg2) -- Line 213
	if arg2 ~= nil and arg1.configurableIds then
		arg1.configurableIds:setIds(arg2)
	end
end
function module_3_upvr.getIds(arg1) -- Line 219
	if arg1.configurableIds and arg1.configurableIds.ids then
		return arg1.configurableIds.ids
	end
	if arg1.statusIds then
		return arg1.statusIds
	end
	return {}
end
function module_3_upvr.getNamedIds(arg1) -- Line 229
	return arg1.namedIds
end
function module_3_upvr.setStatusIds(arg1, arg2) -- Line 233
	--[[ Upvalues[1]:
		[1]: Cryo_upvr (readonly)
	]]
	if arg1.configurableIds then
		warn("Cannot set statusIds because ids already provided in URl")
		return arg1
	end
	local statusIds = arg1.statusIds
	if not statusIds then
		statusIds = {}
	end
	arg1.statusIds = Cryo_upvr.List.join(statusIds, arg2)
	return arg1
end
function module_3_upvr.getStatusIds(arg1) -- Line 242
	if arg1.configurableIds then
		return nil
	end
	return arg1.statusIds
end
function module_3_upvr.getAdditionalData(arg1) -- Line 250
	local additionalData = arg1.additionalData
	if not additionalData then
		additionalData = {}
	end
	return additionalData
end
return module_3_upvr