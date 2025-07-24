-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:51:16
-- Luau version 6, Types version 3
-- Time taken: 0.002467 seconds

local Parent = script.Parent.Parent
local jsutils = Parent.jsutils
local LuauPolyfill = require(Parent.Parent.LuauPolyfill)
local Kind_upvr = require(Parent.language.kinds).Kind
local null_upvr = require(Parent.luaUtils.null)
local Array_upvr = LuauPolyfill.Array
local coerceToTable_upvr = LuauPolyfill.coerceToTable
local keyValMap_upvr = require(jsutils.keyValMap).keyValMap
local invariant_upvr = require(jsutils.invariant).invariant
local inspect_upvr = require(jsutils.inspect).inspect
local function valueFromASTUntyped_upvr(arg1, arg2) -- Line 48, Named "valueFromASTUntyped"
	--[[ Upvalues[8]:
		[1]: Kind_upvr (readonly)
		[2]: null_upvr (readonly)
		[3]: Array_upvr (readonly)
		[4]: valueFromASTUntyped_upvr (readonly)
		[5]: coerceToTable_upvr (readonly)
		[6]: keyValMap_upvr (readonly)
		[7]: invariant_upvr (readonly)
		[8]: inspect_upvr (readonly)
	]]
	if arg1.kind == Kind_upvr.NULL then
		return null_upvr
	end
	if arg1.kind == Kind_upvr.INT then
		return tonumber(arg1.value, 10)
	end
	if arg1.kind == Kind_upvr.FLOAT then
		return tonumber(arg1.value)
	end
	if arg1.kind == Kind_upvr.STRING or arg1.kind == Kind_upvr.ENUM or arg1.kind == Kind_upvr.BOOLEAN then
		return arg1.value
	end
	if arg1.kind == Kind_upvr.LIST then
		return Array_upvr.map(arg1.values, function(arg1_2) -- Line 66
			--[[ Upvalues[2]:
				[1]: valueFromASTUntyped_upvr (copied, readonly)
				[2]: arg2 (readonly)
			]]
			return valueFromASTUntyped_upvr(arg1_2, arg2)
		end)
	end
	if arg1.kind == Kind_upvr.OBJECT then
		return coerceToTable_upvr(keyValMap_upvr(arg1.fields, function(arg1_3) -- Line 71
			return arg1_3.name.value
		end, function(arg1_4) -- Line 73
			--[[ Upvalues[2]:
				[1]: valueFromASTUntyped_upvr (copied, readonly)
				[2]: arg2 (readonly)
			]]
			return valueFromASTUntyped_upvr(arg1_4.value, arg2)
		end))
	end
	if arg1.kind == Kind_upvr.VARIABLE then
		local var15 = arg2
		if var15 then
			var15 = arg2[arg1.name.value]
		end
		return var15
	end
	invariant_upvr(false, "Unexpected value node: "..inspect_upvr(arg1))
	error("Unexpected value node: "..inspect_upvr(arg1))
end
return {
	valueFromASTUntyped = valueFromASTUntyped_upvr;
}