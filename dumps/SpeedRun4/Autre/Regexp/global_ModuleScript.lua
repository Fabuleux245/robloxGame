-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:00:10
-- Luau version 6, Types version 3
-- Time taken: 0.001602 seconds

local module = {}
local tbl_upvr = {
	__index = module;
	__tostring = function(arg1) -- Line 14, Named "__tostring"
		return tostring(arg1._innerRegEx)
	end;
}
function module.exec(arg1, arg2) -- Line 19
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local any_match_result1 = arg1._innerRegEx:match(arg2)
	if not any_match_result1 then
		return nil
	end
	local any_grouparr_result1 = any_match_result1:grouparr()
	local module_2 = {any_grouparr_result1[0]}
	for i = 1, any_grouparr_result1.n do
		module_2[i + 1] = any_grouparr_result1[i]
		local var10
	end
	module_2.n = var10.n + 1
	module_2.index = any_match_result1:span()
	module_2.input = arg2
	return module_2
end
function module.test(arg1, arg2) -- Line 38
	local var11
	if arg1:exec(arg2) == nil then
		var11 = false
	else
		var11 = true
	end
	return var11
end
local RegEx_upvr = require(script.Parent.RegEx)
return setmetatable(module, {
	__call = function(arg1, arg2, arg3) -- Line 42, Named "new"
		--[[ Upvalues[2]:
			[1]: RegEx_upvr (readonly)
			[2]: tbl_upvr (readonly)
		]]
		-- KONSTANTERROR: [0] 1. Error Block 20 start (CF ANALYSIS FAILED)
		local var13 = arg3 or ""
		local var14 = var13
		local tbl = {}
		tbl.source = arg2
		if var13:find('i') == nil then
			var14 = false
		else
			var14 = true
		end
		tbl.ignoreCase = var14
		if var13:find('g') == nil then
			var14 = false
			-- KONSTANTWARNING: GOTO [28] #22
		end
		-- KONSTANTERROR: [0] 1. Error Block 20 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [27] 21. Error Block 22 start (CF ANALYSIS FAILED)
		var14 = true
		tbl.global = var14
		if var13:find('m') == nil then
			var14 = false
		else
			var14 = true
		end
		tbl.multiline = var14
		tbl._innerRegEx = RegEx_upvr.new(arg2, var14)
		var14 = setmetatable(tbl, tbl_upvr)
		do
			return var14
		end
		-- KONSTANTERROR: [27] 21. Error Block 22 end (CF ANALYSIS FAILED)
	end;
})