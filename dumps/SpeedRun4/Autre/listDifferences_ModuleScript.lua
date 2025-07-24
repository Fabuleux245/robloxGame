-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:07:49
-- Luau version 6, Types version 3
-- Time taken: 0.002016 seconds

local function _(arg1) -- Line 8, Named "membershipTable"
	local module = {}
	for i = 1, #arg1 do
		module[arg1[i]] = true
	end
	return module
end
local function _(arg1) -- Line 20, Named "listOfKeys"
	local module_2 = {}
	for i_2, _ in pairs(arg1) do
		table.insert(module_2, i_2)
	end
	return module_2
end
local tableDifference_upvr = require(script.Parent.tableDifference)
return function(arg1, arg2) -- Line 33
	--[[ Upvalues[1]:
		[1]: tableDifference_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local tbl = {}
	for i_3 = 1, #arg1 do
		tbl[arg1[i_3]] = true
	end
	for i_4 = 1, #arg2 do
		({})[arg2[i_4]] = true
		local var32
	end
	for i_5, _ in pairs(tableDifference_upvr(tbl, var32)) do
		table.insert({}, i_5)
		local var37
	end
	return var37
end