-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:55:34
-- Luau version 6, Types version 3
-- Time taken: 0.000584 seconds

local symbols_upvr = require(script.Parent.symbols)
return function(arg1) -- Line 3
	--[[ Upvalues[1]:
		[1]: symbols_upvr (readonly)
	]]
	local var3
	if type(arg1) ~= "function" then
		var3 = false
	else
		var3 = true
	end
	assert(var3, "Mock Error: Mock.predicate must be given a function")
	var3 = {}
	var3[symbols_upvr.isPredicate] = true
	var3.predicate = arg1
	return setmetatable(var3, {
		__tostring = function() -- Line 10, Named "__tostring"
			return "<Predicate>"
		end;
	})
end