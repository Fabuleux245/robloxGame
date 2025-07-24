-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:09:27
-- Luau version 6, Types version 3
-- Time taken: 0.002905 seconds

local GraphQLServer = script:FindFirstAncestor("GraphQLServer")
local Parent = GraphQLServer.Parent
local collectSubFields_upvr = require(Parent.GraphqlToolsUtils).collectSubFields
local LuauPolyfill_upvr = require(Parent.LuauPolyfill)
local UserProfileNestedFields_upvr = require(GraphQLServer.graphql.enums.UserProfileNestedFields)
return function(arg1, arg2) -- Line 8
	--[[ Upvalues[3]:
		[1]: collectSubFields_upvr (readonly)
		[2]: LuauPolyfill_upvr (readonly)
		[3]: UserProfileNestedFields_upvr (readonly)
	]]
	if arg2 then
		local _ = arg2
	else
	end
	local var4_result1 = collectSubFields_upvr(arg1.schema, arg1.fragments, arg1.variableValues, arg1.returnType, arg1.fieldNodes)
	local function _(arg1_3) -- Line 20
		--[[ Upvalues[1]:
			[1]: LuauPolyfill_upvr (copied, readonly)
		]]
		local var35 = true
		if arg1_3 ~= nil then
			var35 = true
			if arg1_3 ~= "id" then
				var35 = LuauPolyfill_upvr.String.endsWith(arg1_3, "__typename")
			end
		end
		return var35
	end
	for _, v in var4_result1 do
		local _1 = v[1]
		local var37
		if var37 then
			var37 = collectSubFields_upvr(arg1.schema, arg1.fragments, arg1.variableValues, arg1.returnType, var4_result1[_1])
			for _, v_2 in var37 do
				local formatted_2 = `{_1}.{v_2[1]}`
				local var39 = true
				if formatted_2 ~= nil then
					var39 = true
					if formatted_2 ~= "id" then
						var39 = LuauPolyfill_upvr.String.endsWith(formatted_2, "__typename")
					end
				end
				if not var39 then
					table.insert({}, formatted_2)
				end
			end
		else
			var37 = true
			if _1 ~= nil then
				var37 = true
				if _1 ~= "id" then
					var37 = LuauPolyfill_upvr.String.endsWith(_1, "__typename")
				end
			end
			if not var37 then
				var37 = table.insert
				-- KONSTANTERROR: Expression was reused, decompilation is incorrect
				var37({}, _1)
			end
		end
	end
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	return {}
end