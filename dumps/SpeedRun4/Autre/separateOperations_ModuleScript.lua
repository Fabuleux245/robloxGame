-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:51:12
-- Luau version 6, Types version 3
-- Time taken: 0.003756 seconds

local Parent = script.Parent.Parent
local LuauPolyfill = require(Parent.Parent.LuauPolyfill)
local Kind_upvr = require(Parent.language.kinds).Kind
local collectDependencies_upvw
local Set_upvr = LuauPolyfill.Set
local collectTransitiveDependencies_upvw
local Array_upvr = LuauPolyfill.Array
function collectTransitiveDependencies_upvw(arg1, arg2, arg3) -- Line 95, Named "collectTransitiveDependencies"
	--[[ Upvalues[1]:
		[1]: collectTransitiveDependencies_upvw (read and write)
	]]
	if not arg1:has(arg3) then
		arg1:add(arg3)
		local var46 = arg2[arg3]
		if var46 ~= nil then
			for _, v_4 in pairs(var46) do
				collectTransitiveDependencies_upvw(arg1, arg2, v_4)
			end
		end
	end
end
local visit_upvr = require(Parent.language.visitor).visit
function collectDependencies_upvw(arg1) -- Line 112, Named "collectDependencies"
	--[[ Upvalues[1]:
		[1]: visit_upvr (readonly)
	]]
	local module_upvr = {}
	visit_upvr(arg1, {
		FragmentSpread = function(arg1_3, arg2) -- Line 116, Named "FragmentSpread"
			--[[ Upvalues[1]:
				[1]: module_upvr (readonly)
			]]
			table.insert(module_upvr, arg2.name.value)
		end;
	})
	return module_upvr
end
return {
	separateOperations = function(arg1) -- Line 38, Named "separateOperations"
		--[[ Upvalues[5]:
			[1]: Kind_upvr (readonly)
			[2]: collectDependencies_upvw (read and write)
			[3]: Set_upvr (readonly)
			[4]: collectTransitiveDependencies_upvw (read and write)
			[5]: Array_upvr (readonly)
		]]
		local tbl = {}
		for _, v in pairs(arg1.definitions) do
			local kind = v.kind
			if kind == Kind_upvr.OPERATION_DEFINITION then
				table.insert({}, v)
			elseif kind == Kind_upvr.FRAGMENT_DEFINITION then
				tbl[v.name.value] = collectDependencies_upvw(v.selectionSet)
			end
		end
		local module = {}
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		for _, v_2_upvr in pairs({}) do
			local any_new_result1_upvr = Set_upvr.new()
			local _, pairs_result2, pairs_result3_5 = pairs(collectDependencies_upvw(v_2_upvr.selectionSet))
			local var33
			for _, v_3 in var33, pairs_result2, pairs_result3_5 do
				collectTransitiveDependencies_upvw(any_new_result1_upvr, tbl, v_3)
			end
			local function INLINED() -- Internal function, doesn't exist in bytecode
				var33 = v_2_upvr.name.value
				return var33
			end
			if not v_2_upvr.name or not INLINED() then
				var33 = ""
			end
			module[var33] = {
				kind = Kind_upvr.DOCUMENT;
				definitions = Array_upvr.filter(arg1.definitions, function(arg1_2) -- Line 81
					--[[ Upvalues[3]:
						[1]: v_2_upvr (readonly)
						[2]: Kind_upvr (copied, readonly)
						[3]: any_new_result1_upvr (readonly)
					]]
					local var37 = true
					if arg1_2 ~= v_2_upvr then
						var37 = false
						if arg1_2.kind == Kind_upvr.FRAGMENT_DEFINITION then
							var37 = any_new_result1_upvr:has(arg1_2.name.value)
						end
					end
					return var37
				end);
			}
		end
		return module
	end;
}