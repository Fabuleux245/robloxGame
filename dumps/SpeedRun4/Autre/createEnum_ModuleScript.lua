-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:49:21
-- Luau version 6, Types version 3
-- Time taken: 0.001507 seconds

local Parent = script.Parent.Parent
local Symbol_upvr = require(Parent.Symbols.Symbol)
local strict_upvr = require(Parent.strict)
return function(arg1, arg2) -- Line 19, Named "createEnum"
	--[[ Upvalues[2]:
		[1]: Symbol_upvr (readonly)
		[2]: strict_upvr (readonly)
	]]
	local var8
	if typeof(arg1) ~= "string" then
		var8 = false
	else
		var8 = true
	end
	assert(var8, "Bad argument #1, expected string")
	if typeof(arg2) ~= "table" then
		var8 = false
	else
		var8 = true
	end
	assert(var8, "Bad argument #2, expected list of values")
	local module_upvr = {}
	var8 = ipairs(arg2)
	local ipairs_result1, ipairs_result2, ipairs_result3 = ipairs(arg2)
	local var13_upvr
	for _, v in ipairs_result1, ipairs_result2, ipairs_result3 do
		if v == "isMember" then
			var13_upvr = false
		else
			var13_upvr = true
		end
		assert(var13_upvr, "Shadowing 'isMember' function is not allowed")
		if typeof(v) ~= "string" then
			var13_upvr = false
		else
			var13_upvr = true
		end
		assert(var13_upvr, "Only string names are supported for enum types")
		var13_upvr = Symbol_upvr
		var13_upvr = v
		local any_named_result1 = var13_upvr.named(var13_upvr)
		var13_upvr = "%s.%s":format(arg1, v)
		getmetatable(any_named_result1).__tostring = function() -- Line 31
			--[[ Upvalues[1]:
				[1]: var13_upvr (readonly)
			]]
			return var13_upvr
		end
		module_upvr[v] = any_named_result1
	end
	function ipairs_result1(arg1_2) -- Line 38, Named "isMember"
		--[[ Upvalues[1]:
			[1]: module_upvr (readonly)
		]]
		if typeof(arg1_2) ~= "userdata" then
			return false
		end
		for _, v_2 in pairs(module_upvr) do
			if arg1_2 == v_2 then
				return true
			end
		end
		return false
	end
	module_upvr.isMember = ipairs_result1
	ipairs_result1 = newproxy(true)
	getmetatable(ipairs_result1).__index = module_upvr
	return strict_upvr(module_upvr, arg1)
end