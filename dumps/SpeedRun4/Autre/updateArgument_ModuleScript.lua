-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:15:44
-- Luau version 6, Types version 3
-- Time taken: 0.001368 seconds

local Parent = script.Parent.Parent
local LuauPolyfill = require(Parent.LuauPolyfill)
local Array_upvr = LuauPolyfill.Array
local Object_upvr = LuauPolyfill.Object
local module = {}
local Kind_upvr = require(Parent.GraphQL).Kind
local astFromType_upvr = require(script.Parent.astFromType).astFromType
function module.updateArgument(arg1, arg2, arg3, arg4, arg5, arg6, arg7) -- Line 22
	--[[ Upvalues[4]:
		[1]: Kind_upvr (readonly)
		[2]: astFromType_upvr (readonly)
		[3]: Array_upvr (readonly)
		[4]: Object_upvr (readonly)
	]]
	local tbl_4 = {
		kind = Kind_upvr.ARGUMENT;
	}
	local tbl_2 = {
		kind = Kind_upvr.NAME;
	}
	tbl_2.value = arg4
	tbl_4.name = tbl_2
	local tbl_7 = {
		kind = Kind_upvr.VARIABLE;
	}
	local tbl_3 = {
		kind = Kind_upvr.NAME;
	}
	tbl_3.value = arg5
	tbl_7.name = tbl_3
	tbl_4.value = tbl_7
	arg1[tostring(arg4)] = tbl_4
	local tbl_5 = {
		kind = Kind_upvr.VARIABLE_DEFINITION;
	}
	local tbl = {
		kind = Kind_upvr.VARIABLE;
	}
	local tbl_6 = {
		kind = Kind_upvr.NAME;
	}
	tbl_6.value = arg5
	tbl.name = tbl_6
	tbl_5.variable = tbl
	tbl_5.type = astFromType_upvr(arg6)
	arg2[tostring(arg5)] = tbl_5
	if arg7 ~= nil then
		arg3[tostring(arg5)] = arg7
	elseif Array_upvr.indexOf(Object_upvr.keys(arg3), tostring(arg5)) ~= -1 then
		arg3[tostring(arg5)] = nil
	end
end
function module.createVariableNameGenerator(arg1) -- Line 55
	--[[ Upvalues[2]:
		[1]: Array_upvr (readonly)
		[2]: Object_upvr (readonly)
	]]
	local var16_upvw = 0
	return function(arg1_2) -- Line 59
		--[[ Upvalues[4]:
			[1]: var16_upvw (read and write)
			[2]: Array_upvr (copied, readonly)
			[3]: Object_upvr (copied, readonly)
			[4]: arg1 (readonly)
		]]
		local var17
		repeat
			var17 = "_v%s_%s":format(tostring(var16_upvw), arg1_2)
			var16_upvw += 1
		until Array_upvr.indexOf(Object_upvr.keys(arg1), tostring(var17)) == -1
		return var17
	end
end
return module