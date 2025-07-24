-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:00:41
-- Luau version 6, Types version 3
-- Time taken: 0.002558 seconds

return function(arg1) -- Line 8, Named "createSpy"
	local module_2_upvr = {
		callCount = 0;
		values = {};
		valuesLength = 0;
	}
	function module_2_upvr.value(...) -- Line 15
		--[[ Upvalues[2]:
			[1]: module_2_upvr (readonly)
			[2]: arg1 (readonly)
		]]
		module_2_upvr.callCount += 1
		module_2_upvr.values = {...}
		module_2_upvr.valuesLength = select('#', ...)
		if arg1 ~= nil then
			return arg1(...)
		end
	end
	function module_2_upvr.assertCalledWith(arg1_2, ...) -- Line 27
		--[[ Upvalues[1]:
			[1]: module_2_upvr (readonly)
		]]
		local arg_count_2 = select('#', ...)
		if module_2_upvr.valuesLength ~= arg_count_2 then
			error("Expected %d arguments, but was called with %d arguments":format(module_2_upvr.valuesLength, arg_count_2), 2)
		end
		for i = 1, arg_count_2 do
			local var8 = ...
			local selected = select(i, var8)
			if module_2_upvr.values[i] ~= selected then
				var8 = false
			else
				var8 = true
			end
			assert(var8, "value differs; got "..tostring(module_2_upvr.values[i])..", expected "..tostring(selected))
		end
	end
	function module_2_upvr.captureValues(arg1_3, ...) -- Line 44
		--[[ Upvalues[1]:
			[1]: module_2_upvr (readonly)
		]]
		local arg_count = select('#', ...)
		local module = {}
		local var15
		if module_2_upvr.valuesLength ~= arg_count then
			var15 = false
		else
			var15 = true
		end
		assert(var15, "length of expected values differs from stored values")
		var15 = 1
		for i_2 = 1, arg_count, var15 do
			module[select(i_2, ...)] = module_2_upvr.values[i_2]
		end
		return module
	end
	setmetatable(module_2_upvr, {
		__index = function(arg1_4, arg2) -- Line 59, Named "__index"
			error("%q is not a valid member of spy":format(arg2))
		end;
	})
	return module_2_upvr
end