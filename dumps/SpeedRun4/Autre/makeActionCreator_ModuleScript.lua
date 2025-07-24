-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:48:50
-- Luau version 6, Types version 3
-- Time taken: 0.001948 seconds

return function(arg1, ...) -- Line 11, Named "makeActionCreator"
	local args_list_upvr = {...}
	local var4
	if type(arg1) ~= "string" then
		var4 = false
	else
		var4 = true
	end
	assert(var4, "Bad argument #1 to makeActionCreator, expected string")
	var4 = 1
	for i = 1, select('#', ...), var4 do
		local var5
		if typeof(select(i, ...)) ~= "string" then
			var5 = false
		else
			var5 = true
		end
		assert(var5, "Bad argument to makeActionCreator, all arguments must be of type string")
	end
	var4 = {}
	var4.name = arg1
	return setmetatable(var4, {
		__call = function(arg1_2, ...) -- Line 25, Named "__call"
			--[[ Upvalues[2]:
				[1]: arg1 (readonly)
				[2]: args_list_upvr (readonly)
			]]
			local module = {}
			module.type = arg1
			local var12
			if select('#', ...) ~= #args_list_upvr then
				var12 = false
			else
				var12 = true
			end
			assert(var12, "Incorrect number of arguments provided to action creator "..arg1)
			var12 = args_list_upvr
			for i_2, v in ipairs(var12) do
				module[v] = select(i_2, ...)
			end
			return module
		end;
	})
end