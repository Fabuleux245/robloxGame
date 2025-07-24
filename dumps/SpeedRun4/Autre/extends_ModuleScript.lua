-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:54:57
-- Luau version 6, Types version 3
-- Time taken: 0.001444 seconds

return function(arg1, arg2, arg3) -- Line 30
	local module_2_upvr = {}
	module_2_upvr.__index = module_2_upvr
	function module_2_upvr.__tostring(arg1_2) -- Line 33
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		return getmetatable(arg1).__tostring(arg1_2)
	end
	local tbl = {}
	function module_2_upvr.new(...) -- Line 39
		--[[ Upvalues[2]:
			[1]: arg3 (readonly)
			[2]: module_2_upvr (readonly)
		]]
		local module = {}
		arg3(module, ...)
		return setmetatable(module, module_2_upvr)
	end
	if typeof(getmetatable(arg1)) == "table" and getmetatable(arg1).__call then
		function tbl.__call(arg1_3, ...) -- Line 46
			--[[ Upvalues[1]:
				[1]: module_2_upvr (readonly)
			]]
			return module_2_upvr.new(...)
		end
	end
	tbl.__index = arg1
	function tbl.__tostring(arg1_4) -- Line 52
		--[[ Upvalues[3]:
			[1]: module_2_upvr (readonly)
			[2]: arg2 (readonly)
			[3]: arg1 (readonly)
		]]
		if arg1_4 == module_2_upvr then
			return tostring(arg2)
		end
		return getmetatable(arg1).__tostring(arg1_4)
	end
	setmetatable(module_2_upvr, tbl)
	return module_2_upvr
end