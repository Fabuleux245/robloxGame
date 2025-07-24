-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:01:44
-- Luau version 6, Types version 3
-- Time taken: 0.001921 seconds

local function prettyPrint_upvr(arg1, arg2) -- Line 3, Named "prettyPrint"
	--[[ Upvalues[1]:
		[1]: prettyPrint_upvr (readonly)
	]]
	arg2 = arg2 or 0
	local var5 = arg2
	local module = {}
	if typeof(arg1) == "table" then
		table.insert(module, "{\n")
		for i, v in pairs(arg1) do
			table.insert(module, "    ":rep(var5 + 1))
			table.insert(module, tostring(i))
			table.insert(module, " = ")
			table.insert(module, prettyPrint_upvr(v, var5 + 1))
			table.insert(module, '\n')
		end
		table.insert(module, "    ":rep(var5))
		table.insert(module, '}')
	elseif typeof(arg1) == "string" then
		table.insert(module, string.format("%q", arg1))
		table.insert(module, " (string)")
	else
		table.insert(module, tostring(arg1))
		table.insert(module, " (")
		table.insert(module, typeof(arg1))
		table.insert(module, ')')
	end
	return table.concat(module, "")
end
return prettyPrint_upvr