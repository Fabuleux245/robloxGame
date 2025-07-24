-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:55:37
-- Luau version 6, Types version 3
-- Time taken: 0.001355 seconds

local symbols_upvr = require(script.Parent.symbols)
return function(...) -- Line 3
	--[[ Upvalues[1]:
		[1]: symbols_upvr (readonly)
	]]
	local args_list_upvr = {...}
	local var4
	if 1 >= #args_list_upvr then
		var4 = false
	else
		var4 = true
	end
	assert(var4, "Mock Error: tuple only accepts more than 1 value.")
	var4 = {}
	var4[symbols_upvr.isTuple] = true
	var4.values = args_list_upvr
	return setmetatable(var4, {
		__tostring = function(arg1) -- Line 11, Named "__tostring"
			--[[ Upvalues[1]:
				[1]: args_list_upvr (readonly)
			]]
			local module = {}
			for _, v in ipairs(args_list_upvr) do
				table.insert(module, tostring(v))
			end
			return "<Tuple values=["..table.concat(module, ", ").."]>"
		end;
	})
end