-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:58:29
-- Luau version 6, Types version 3
-- Time taken: 0.006397 seconds

local Parent = script.Parent.Parent
local ReactSymbols = require(Parent.Shared).ReactSymbols
local ReactElement = require(script.Parent.ReactElement)
local isValidElement_upvr = ReactElement.isValidElement
local function _(arg1) -- Line 45, Named "escape"
	return '$'..string.gsub(string.gsub(arg1, '=', "=0"), ':', "=2")
end
local function _(arg1) -- Line 60, Named "escapeUserProvidedKey"
	return arg1
end
local function _(arg1, arg2) -- Line 73, Named "getElementKey"
	if typeof(arg1) == "table" and arg1 ~= nil and arg1.key ~= nil then
		return '$'..string.gsub(string.gsub(tostring(arg1.key), '=', "=0"), ':', "=2")
	end
	return tostring(arg2)
end
local REACT_ELEMENT_TYPE_upvr = ReactSymbols.REACT_ELEMENT_TYPE
local REACT_PORTAL_TYPE_upvr = ReactSymbols.REACT_PORTAL_TYPE
local Array_upvr = require(Parent.LuauPolyfill).Array
local cloneAndReplaceKey_upvr = ReactElement.cloneAndReplaceKey
local getIteratorFn_upvr = ReactSymbols.getIteratorFn
local function mapIntoArray_upvr(arg1, arg2, arg3, arg4, arg5) -- Line 86, Named "mapIntoArray"
	--[[ Upvalues[7]:
		[1]: REACT_ELEMENT_TYPE_upvr (readonly)
		[2]: REACT_PORTAL_TYPE_upvr (readonly)
		[3]: Array_upvr (readonly)
		[4]: mapIntoArray_upvr (readonly)
		[5]: isValidElement_upvr (readonly)
		[6]: cloneAndReplaceKey_upvr (readonly)
		[7]: getIteratorFn_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local typeof_result1 = typeof(arg1)
	local var15
	if typeof_result1 == "nil" or typeof_result1 == "boolean" or typeof_result1 == "userdata" then
		var15 = nil
	end
	if var15 == nil then
	elseif typeof_result1 == "string" or typeof_result1 == "number" then
	else
		local function INLINED() -- Internal function, doesn't exist in bytecode
			local __typeof = var15["$$typeof"]
			return __typeof == REACT_ELEMENT_TYPE_upvr
		end
		if typeof_result1 == "table" and (INLINED() or __typeof == REACT_PORTAL_TYPE_upvr) then
			local var17
		end
	end
	if true then
		local var18 = var15
		var17 = var18
		if arg4 == "" then
			local var19
			if typeof(var18) == "table" and var18 ~= nil and var18.key ~= nil then
				var19 = '$'..string.gsub(string.gsub(tostring(var18.key), '=', "=0"), ':', "=2")
			else
				var19 = tostring(1)
			end
			var17 = '.'..var19
		else
			var17 = arg4
		end
		local var20
		if Array_upvr.isArray(var20) then
			local var21 = ""
			if var17 ~= nil then
				var21 = var17..'/'
			end
			mapIntoArray_upvr(var20, arg2, var21, "", function(arg1_2) -- Line 135
				return arg1_2
			end)
			local var23
		elseif var23 ~= nil then
			if isValidElement_upvr(var23) then
				local key = var23.key
				local var25
				if key and (not var18 or var18.key ~= key) then
					var25 = tostring(key)..'/'
				else
					var25 = ""
				end
				var23 = cloneAndReplaceKey_upvr(var23, arg3..var25..var17)
			end
			table.insert(arg2, var23)
		end
		return 1
	end
	var17 = 0
	if arg4 == "" then
	else
	end
	if Array_upvr.isArray(var15) then
		for i = 1, #var15 do
			local var26 = var15[i]
			local var27 = var26
			local var28
			if typeof(var27) == "table" and var27 ~= nil and var27.key ~= nil then
				var28 = '$'..string.gsub(string.gsub(tostring(var27.key), '=', "=0"), ':', "=2")
			else
				var28 = tostring(i)
			end
			var28 = var26
			var17 += mapIntoArray_upvr(var28, arg2, arg3, arg4..':'..var28, arg5)
		end
		return var17
	end
	local var9_result1 = getIteratorFn_upvr(var15)
	if typeof(var9_result1) == "function" then
		local any_next_result1 = var9_result1(var15).next()
		while not any_next_result1.done do
			local value = any_next_result1.value
			local var34 = value
			local var35
			if typeof(var34) == "table" and var34 ~= nil and var34.key ~= nil then
				var35 = '$'..string.gsub(string.gsub(tostring(var34.key), '=', "=0"), ':', "=2")
			else
				var35 = tostring(1)
			end
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect
			var35 = value
			var17 += mapIntoArray_upvr(var35, arg2, arg3, arg4..':'..var35, arg5)
		end
	end
	return var17
end
local function mapChildren_upvr(arg1, arg2, arg3) -- Line 253, Named "mapChildren"
	--[[ Upvalues[1]:
		[1]: mapIntoArray_upvr (readonly)
	]]
	if arg1 == nil then
		return nil
	end
	local module = {}
	local var38_upvw = 1
	mapIntoArray_upvr(arg1, module, "", "", function(arg1_3) -- Line 263
		--[[ Upvalues[2]:
			[1]: arg2 (readonly)
			[2]: var38_upvw (read and write)
		]]
		var38_upvw += 1
		return arg2(arg1_3, var38_upvw)
	end)
	return module
end
local invariant_upvr = require(Parent.Shared).invariant
return {
	forEach = function(arg1, arg2, arg3) -- Line 305, Named "forEachChildren"
		--[[ Upvalues[1]:
			[1]: mapChildren_upvr (readonly)
		]]
		mapChildren_upvr(arg1, function(...) -- Line 310
			--[[ Upvalues[1]:
				[1]: arg2 (readonly)
			]]
			arg2(...)
		end, arg3)
	end;
	map = mapChildren_upvr;
	count = function(arg1) -- Line 281, Named "countChildren"
		--[[ Upvalues[1]:
			[1]: mapChildren_upvr (readonly)
		]]
		local var39_upvw = 0
		mapChildren_upvr(arg1, function() -- Line 283
			--[[ Upvalues[1]:
				[1]: var39_upvw (read and write)
			]]
			var39_upvw += 1
		end)
		return var39_upvw
	end;
	only = function(arg1) -- Line 345, Named "onlyChild"
		--[[ Upvalues[2]:
			[1]: invariant_upvr (readonly)
			[2]: isValidElement_upvr (readonly)
		]]
		invariant_upvr(isValidElement_upvr(arg1), "React.Children.only expected to receive a single React element child.")
		return arg1
	end;
	toArray = function(arg1) -- Line 324, Named "toArray"
		--[[ Upvalues[1]:
			[1]: mapChildren_upvr (readonly)
		]]
		local mapChildren_result1 = mapChildren_upvr(arg1, function(arg1_4) -- Line 325
			return arg1_4
		end)
		if not mapChildren_result1 then
			mapChildren_result1 = {}
		end
		return mapChildren_result1
	end;
}