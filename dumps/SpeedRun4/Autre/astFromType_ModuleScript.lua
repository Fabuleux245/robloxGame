-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:15:14
-- Luau version 6, Types version 3
-- Time taken: 0.001499 seconds

local Parent = script.Parent.Parent
local LuauPolyfill = require(Parent.LuauPolyfill)
local module = {}
local GraphQL = require(Parent.GraphQL)
local Boolean_upvr = LuauPolyfill.Boolean
local isNonNullType_upvr = GraphQL.isNonNullType
local Kind_upvr = GraphQL.Kind
local Error_upvr = LuauPolyfill.Error
local inspect_upvr = require(script.Parent.inspect).inspect
local isListType_upvr = GraphQL.isListType
local function astFromType_upvr(arg1) -- Line 25, Named "astFromType"
	--[[ Upvalues[7]:
		[1]: Boolean_upvr (readonly)
		[2]: isNonNullType_upvr (readonly)
		[3]: astFromType_upvr (readonly)
		[4]: Kind_upvr (readonly)
		[5]: Error_upvr (readonly)
		[6]: inspect_upvr (readonly)
		[7]: isListType_upvr (readonly)
	]]
	if Boolean_upvr.toJSBoolean(isNonNullType_upvr(arg1)) then
		local astFromType_result1 = astFromType_upvr(arg1.ofType)
		if astFromType_result1.kind == Kind_upvr.NON_NULL_TYPE then
			error(Error_upvr.new("Invalid type node %s. Inner type of non-null type cannot be a non-null type.":format(tostring(inspect_upvr(arg1)))))
		end
		return {
			kind = Kind_upvr.NON_NULL_TYPE;
			type = astFromType_result1;
		}
	end
	if Boolean_upvr.toJSBoolean(isListType_upvr(arg1)) then
		return {
			kind = Kind_upvr.LIST_TYPE;
			type = astFromType_upvr(arg1.ofType);
		}
	end
	return {
		kind = Kind_upvr.NAMED_TYPE;
		name = {
			kind = Kind_upvr.NAME;
			value = arg1.name;
		};
	}
end
module.astFromType = astFromType_upvr
return module