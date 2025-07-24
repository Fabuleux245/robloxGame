-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:55:29
-- Luau version 6, Types version 3
-- Time taken: 0.000722 seconds

local Spy_upvr = require(script.Parent.Spy)
local symbols_upvr = require(script.Parent.symbols)
return function(arg1) -- Line 4
	--[[ Upvalues[2]:
		[1]: Spy_upvr (readonly)
		[2]: symbols_upvr (readonly)
	]]
	if type(arg1) == "function" then
		local any_lookup_result1 = Spy_upvr.lookup(arg1)
		if any_lookup_result1 then
			return any_lookup_result1[symbols_upvr.Calls]
		end
		error("Calling getCalls on a non-spy function")
	end
	local rawget_result1 = rawget(arg1, symbols_upvr.Calls)
	if rawget_result1 == nil then
		rawget_result1 = getmetatable(arg1)[symbols_upvr.Calls]
	end
	if rawget_result1 == nil then
		error("Calling getCalls on a non-mock")
	end
	return rawget_result1
end