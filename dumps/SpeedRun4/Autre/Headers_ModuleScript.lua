-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:28:31
-- Luau version 6, Types version 3
-- Time taken: 0.001532 seconds

local tbl_upvr = {}
tbl_upvr.__index = tbl_upvr
local Array_upvr = require(script.Parent.Parent.LuauPolyfill).Array
function tbl_upvr.new(arg1) -- Line 36
	--[[ Upvalues[2]:
		[1]: Array_upvr (readonly)
		[2]: tbl_upvr (readonly)
	]]
	local module = {}
	local var8
	local var9
	if var9 then
		var8 = {}
		var9 = arg1
		for _, v in var9 do
			var8[v[1]] = v[2]
		end
	else
		var9 = arg1
		if not var9 then
			var9 = {}
		end
		var8 = var9
	end
	module.headerList = var8
	module.guard = "none"
	setmetatable(module, tbl_upvr)
	return module
end
function tbl_upvr.append(arg1, arg2, arg3) -- Line 56
	if arg1.guard == "immutable" then
		error("TypeError: tried to append header to immutable Headers object")
	end
	arg1.headerList[arg2] = arg3
end
function tbl_upvr.delete(arg1, arg2) -- Line 64
	if arg1.guard == "immutable" then
		error("TypeError: tried to delete key on immutable Headers object")
	end
	if not arg1:has(arg2) then
	else
		arg1.headerList[arg2] = nil
	end
end
function tbl_upvr.get(arg1, arg2) -- Line 76
	return arg1.headerList[arg2]
end
function tbl_upvr.has(arg1, arg2) -- Line 80
	local var10
	if arg1.headerList[arg2] == nil then
		var10 = false
	else
		var10 = true
	end
	return var10
end
function tbl_upvr.set(arg1, arg2, arg3) -- Line 84
	if arg1.guard == "immutable" then
		error("TypeError: tried to set key on immutable Headers object")
	end
	arg1.headerList[arg2] = arg3
end
function tbl_upvr.__iter(arg1) -- Line 91
	return next, arg1.headerList
end
return {
	Headers = tbl_upvr;
}