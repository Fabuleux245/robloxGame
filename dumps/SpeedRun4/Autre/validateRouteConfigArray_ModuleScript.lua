-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:01:05
-- Luau version 6, Types version 3
-- Time taken: 0.004111 seconds

local invariant_upvr = require(script.Parent.Parent.utils.invariant)
local isValidScreenComponent_upvr = require(script.Parent.Parent.utils.isValidScreenComponent)
return function(arg1) -- Line 20
	--[[ Upvalues[2]:
		[1]: invariant_upvr (readonly)
		[2]: isValidScreenComponent_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local var29
	if type(arg1) ~= "table" then
		var29 = false
	else
		var29 = true
	end
	invariant_upvr(var29, "routeConfigs must be an array table")
	var29 = nil
	for i, v in arg1, var29 do
		local var30
		if type(i) ~= "number" then
			var30 = false
		else
			var30 = true
		end
		invariant_upvr(var30, "routeConfigs must be an array table (found non-number key %q of type %q)":format(i, type(i)))
		var30 = v
		local next_result1_2, next_result2_2 = next(var30)
		if next(v, next_result1_2) ~= nil then
		else
		end
		invariant_upvr(true, "only one route must be defined in each entry (found multiple at index %d)":format(i))
		if type(next_result2_2) ~= "table" then
			local var33 = false
		end
		if var33 then
			local _ = next_result2_2
		else
		end
		if not var33 or not next_result2_2.screen then
		end
		if not isValidScreenComponent_upvr(next_result2_2) then
			if type(({}).getScreen) == "function" then
				-- KONSTANTERROR: Expression was reused, decompilation is incorrect
			end
		end
		invariant_upvr(isValidScreenComponent_upvr(({}).getScreen()), "The component for route '%s' must be a Roact Function/Stateful component or table with 'getScreen'.".."getScreen function must return Roact Function/Stateful component.", next_result1_2)
		local var35 = true
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		if ({}).screen ~= nil then
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect
			if ({}).getScreen ~= nil then
				var35 = false
			else
				var35 = true
			end
		end
		invariant_upvr(var35, "Route '%s' should provide 'screen' or 'getScreen', but not both.", next_result1_2)
	end
	if 0 >= #arg1 then
		var29 = false
	else
		var29 = true
	end
	invariant_upvr(var29, "Please specify at least one route when configuring a navigator.")
	return arg1
end