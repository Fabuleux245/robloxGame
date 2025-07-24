-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:50:37
-- Luau version 6, Types version 3
-- Time taken: 0.001712 seconds

local tbl_upvr_2 = {}
tbl_upvr_2.__index = tbl_upvr_2
local function new(arg1, arg2, arg3) -- Line 50
	--[[ Upvalues[1]:
		[1]: tbl_upvr_2 (readonly)
	]]
	local module = {
		start = arg1.start;
		_end = arg2._end;
	}
	module.startToken = arg1
	module.endToken = arg2
	module.source = arg3
	return setmetatable(module, tbl_upvr_2)
end
tbl_upvr_2.new = new
local function toJSON(arg1) -- Line 62
	return {
		start = arg1.start;
		_end = arg1._end;
	}
end
tbl_upvr_2.toJSON = toJSON
local tbl_upvr = {}
tbl_upvr.__index = tbl_upvr
function tbl_upvr.new(arg1, arg2, arg3, arg4, arg5, arg6, arg7) -- Line 138
	--[[ Upvalues[1]:
		[1]: tbl_upvr (readonly)
	]]
	local module_2 = {}
	module_2.kind = arg1
	module_2.start = arg2
	module_2._end = arg3
	module_2.line = arg4
	module_2.column = arg5
	module_2.value = arg7
	module_2.prev = arg6
	module_2.next = nil
	return setmetatable(module_2, tbl_upvr)
end
function tbl_upvr.toJSON(arg1) -- Line 161
	return {
		kind = arg1.kind;
		value = arg1.value;
		line = arg1.line;
		column = arg1.column;
	}
end
return {
	Location = tbl_upvr_2;
	Token = tbl_upvr;
	isNode = function(arg1) -- Line 181, Named "isNode"
		local var7 = false
		if typeof(arg1) == "table" then
			if typeof(arg1.kind) ~= "string" then
				var7 = false
			else
				var7 = true
			end
		end
		return var7
	end;
}