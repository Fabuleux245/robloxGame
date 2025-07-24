-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:51:11
-- Luau version 6, Types version 3
-- Time taken: 0.001147 seconds

local Parent = script.Parent.Parent
local Object_upvr = require(Parent.Parent.LuauPolyfill).Object
local parse_upvr = require(Parent.language.parser).parse
local getIntrospectionQuery_upvr = require(script.Parent.getIntrospectionQuery).getIntrospectionQuery
local executeSync_upvr = require(Parent.execution.execute).executeSync
local invariant_upvr = require(Parent.jsutils.invariant).invariant
return {
	introspectionFromSchema = function(arg1, arg2) -- Line 37, Named "introspectionFromSchema"
		--[[ Upvalues[5]:
			[1]: Object_upvr (readonly)
			[2]: parse_upvr (readonly)
			[3]: getIntrospectionQuery_upvr (readonly)
			[4]: executeSync_upvr (readonly)
			[5]: invariant_upvr (readonly)
		]]
		local tbl = {}
		tbl.schema = arg1
		tbl.document = parse_upvr(getIntrospectionQuery_upvr(Object_upvr.assign({
			specifiedByUrl = true;
			directiveIsRepeatable = true;
			schemaDescription = true;
			inputValueDeprecation = true;
		}, arg2)))
		local executeSync_upvr_result1 = executeSync_upvr(tbl)
		local var10 = not executeSync_upvr_result1.errors
		if var10 then
			var10 = executeSync_upvr_result1.data
		end
		invariant_upvr(var10)
		return executeSync_upvr_result1.data
	end;
}