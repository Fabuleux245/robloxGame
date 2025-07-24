-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:10:02
-- Luau version 6, Types version 3
-- Time taken: 0.002530 seconds

local Http = script:FindFirstAncestor("Http")
local Parent = Http.Parent
local function _(arg1) -- Line 15, Named "convertToId"
	return tostring(arg1)
end
local module = {}
local function var4_upvr(arg1) -- Line 21
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local var5
	local function INLINED() -- Internal function, doesn't exist in bytecode
		var5 = '.'..arg1.iconSize
		return var5
	end
	if not arg1.iconSize or not INLINED() then
		var5 = ""
	end
	if not arg1.requestName or not '.'..arg1.requestName then
	end
	return "luaapp.thumbnails."..tostring(arg1.targetId)..var5..""
end
module.KeyMapper = var4_upvr
local Cryo_upvr = require(Parent.Cryo)
local function subdivideIdsArray_upvr(arg1, arg2) -- Line 30, Named "subdivideIdsArray"
	--[[ Upvalues[1]:
		[1]: Cryo_upvr (readonly)
	]]
	local module_2 = {}
	for i = 1, #arg1, arg2 do
		table.insert(module_2, Cryo_upvr.List.getRange(arg1, i, i + arg2 - 1))
	end
	return module_2
end
local ArgCheck_upvr = require(Parent.ArgCheck)
local FetchSubdividedThumbnails_upvr = require(script.Parent.FetchSubdividedThumbnails)
local PromiseUtilities_upvr = require(Parent.AppCommonLib).Utils.PromiseUtilities
function module.Fetch(arg1, arg2, arg3, arg4, arg5, arg6, arg7) -- Line 39
	--[[ Upvalues[5]:
		[1]: ArgCheck_upvr (readonly)
		[2]: subdivideIdsArray_upvr (readonly)
		[3]: FetchSubdividedThumbnails_upvr (readonly)
		[4]: var4_upvr (readonly)
		[5]: PromiseUtilities_upvr (readonly)
	]]
	local var21 = arg3 or "150x150"
	ArgCheck_upvr.isType(arg2, "table", "targetIds")
	ArgCheck_upvr.isType(arg4, "string", "requestName")
	ArgCheck_upvr.isNonNegativeNumber(#arg2, "targetIds count")
	local tbl_2 = {}
	local module_3 = {}
	for _, v in pairs(arg2) do
		local tbl = {
			targetId = v;
			iconSize = var21;
		}
		tbl.requestName = arg4
		table.insert(tbl_2, tbl)
	end
	for _, v_2 in ipairs(subdivideIdsArray_upvr(tbl_2, 100)) do
		table.insert(module_3, arg7:dispatch(FetchSubdividedThumbnails_upvr.Fetch(arg1, v_2, var4_upvr, arg4, arg5, arg6)))
	end
	return PromiseUtilities_upvr.Batch(module_3)
end
local PerformFetch_upvr = require(Http.PerformFetch)
function module.GetFetchingStatus(arg1, arg2, arg3, arg4) -- Line 75
	--[[ Upvalues[1]:
		[1]: PerformFetch_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local module_4 = {}
	module_4.targetId = arg2
	module_4.requestName = arg4
	module_4.iconSize = arg3
	local var33
	local function INLINED_2() -- Internal function, doesn't exist in bytecode
		var33 = '.'..module_4.iconSize
		return var33
	end
	if not module_4.iconSize or not INLINED_2() then
		var33 = ""
	end
	if not module_4.requestName or not '.'..module_4.requestName then
	end
	return PerformFetch_upvr.GetStatus(arg1, "luaapp.thumbnails."..tostring(module_4.targetId)..var33.."")
end
return module