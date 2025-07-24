-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:45:30
-- Luau version 6, Types version 3
-- Time taken: 0.004845 seconds

local Parent = script.Parent.Parent
local Cryo_upvr = require(Parent.Cryo)
local Regex_upvr = require(script.Parent.Regex)
local RegExp_upvr = require(Parent.RegExp)
local StringUtilities = require(Parent.StringUtilities)
local function filterParams_upvr(arg1, arg2) -- Line 19, Named "filterParams"
	--[[ Upvalues[1]:
		[1]: Cryo_upvr (readonly)
	]]
	return Cryo_upvr.List.filter(arg1, function(arg1_2) -- Line 20
		--[[ Upvalues[1]:
			[1]: arg2 (readonly)
		]]
		local var8 = true
		if arg1_2.optional ~= arg2 then
			var8 = not arg2
			if var8 then
				if arg1_2.optional ~= nil then
					var8 = false
				else
					var8 = true
				end
			end
		end
		return var8
	end)
end
local function _(arg1) -- Line 25, Named "requiredParams"
	--[[ Upvalues[1]:
		[1]: filterParams_upvr (readonly)
	]]
	return filterParams_upvr(arg1, false)
end
local function _(arg1) -- Line 29, Named "optionalParams"
	--[[ Upvalues[1]:
		[1]: filterParams_upvr (readonly)
	]]
	return filterParams_upvr(arg1, true)
end
local function _(arg1) -- Line 33, Named "mapValidToArgName"
	--[[ Upvalues[2]:
		[1]: Regex_upvr (readonly)
		[2]: RegExp_upvr (readonly)
	]]
	return function(arg1_3) -- Line 34
		--[[ Upvalues[3]:
			[1]: Regex_upvr (copied, readonly)
			[2]: arg1 (readonly)
			[3]: RegExp_upvr (copied, readonly)
		]]
		local var10 = arg1[arg1_3.name]
		if var10 ~= nil and RegExp_upvr(Regex_upvr.matchWhole(Regex_upvr.oneOrMore(arg1_3.pattern))):exec(var10) then
			return arg1_3.name
		end
		return nil
	end
end
local function validateParams_upvr(arg1, arg2) -- Line 44, Named "validateParams"
	--[[ Upvalues[3]:
		[1]: Cryo_upvr (readonly)
		[2]: Regex_upvr (readonly)
		[3]: RegExp_upvr (readonly)
	]]
	local var11_upvr = arg1
	if not var11_upvr then
		var11_upvr = {}
	end
	local var13_upvr = false
	local any_filter_result1 = Cryo_upvr.List.filter(arg2, function(arg1_4) -- Line 20
		--[[ Upvalues[1]:
			[1]: var13_upvr (readonly)
		]]
		local var14 = true
		if arg1_4.optional ~= var13_upvr then
			var14 = not var13_upvr
			if var14 then
				if arg1_4.optional ~= nil then
					var14 = false
				else
					var14 = true
				end
			end
		end
		return var14
	end)
	var13_upvr = Cryo_upvr.List
	var13_upvr = any_filter_result1
	var13_upvr = #var13_upvr.filterMap(var13_upvr, function(arg1_5) -- Line 34
		--[[ Upvalues[3]:
			[1]: Regex_upvr (copied, readonly)
			[2]: var11_upvr (readonly)
			[3]: RegExp_upvr (copied, readonly)
		]]
		local var17 = var11_upvr[arg1_5.name]
		if var17 ~= nil and RegExp_upvr(Regex_upvr.matchWhole(Regex_upvr.oneOrMore(arg1_5.pattern))):exec(var17) then
			return arg1_5.name
		end
		return nil
	end)
	if var13_upvr ~= #any_filter_result1 then
		var13_upvr = false
		return var13_upvr, {}
	end
	var13_upvr = Cryo_upvr.List.filter
	local var16_upvr = true
	var13_upvr = var13_upvr(arg2, function(arg1_6) -- Line 20
		--[[ Upvalues[1]:
			[1]: var16_upvr (readonly)
		]]
		local var21 = true
		if arg1_6.optional ~= var16_upvr then
			var21 = not var16_upvr
			if var21 then
				if arg1_6.optional ~= nil then
					var21 = false
				else
					var21 = true
				end
			end
		end
		return var21
	end)
	var16_upvr = Cryo_upvr
	function var16_upvr(arg1_5) -- Line 34
		--[[ Upvalues[3]:
			[1]: Regex_upvr (copied, readonly)
			[2]: var11_upvr (readonly)
			[3]: RegExp_upvr (copied, readonly)
		]]
		local var17 = var11_upvr[arg1_5.name]
		if var17 ~= nil and RegExp_upvr(Regex_upvr.matchWhole(Regex_upvr.oneOrMore(arg1_5.pattern))):exec(var17) then
			return arg1_5.name
		end
		return nil
	end
	var16_upvr = Cryo_upvr.List
	var16_upvr = var13_upvr.filterMap(var13_upvr, function(arg1_5) -- Line 34
		--[[ Upvalues[3]:
			[1]: Regex_upvr (copied, readonly)
			[2]: var11_upvr (readonly)
			[3]: RegExp_upvr (copied, readonly)
		]]
		local var17 = var11_upvr[arg1_5.name]
		if var17 ~= nil and RegExp_upvr(Regex_upvr.matchWhole(Regex_upvr.oneOrMore(arg1_5.pattern))):exec(var17) then
			return arg1_5.name
		end
		return nil
	end)
	var16_upvr = Cryo_upvr.List.toSet(var16_upvr.join(var16_upvr, var16_upvr.List.filterMap(var13_upvr, var16_upvr)))
	return true, Cryo_upvr.Dictionary.filter(var11_upvr, function(arg1_7, arg2_2) -- Line 59
		--[[ Upvalues[1]:
			[1]: var16_upvr (readonly)
		]]
		local var23
		if var16_upvr[arg2_2] == nil then
			var23 = false
		else
			var23 = true
		end
		return var23
	end)
end
local function validatePathParams_upvr(arg1, arg2) -- Line 65, Named "validatePathParams"
	--[[ Upvalues[2]:
		[1]: Cryo_upvr (readonly)
		[2]: validateParams_upvr (readonly)
	]]
	local var25_upvr = false
	if #arg1 < #Cryo_upvr.List.filter(arg2, function(arg1_8) -- Line 20
		--[[ Upvalues[1]:
			[1]: var25_upvr (readonly)
		]]
		local var26 = true
		if arg1_8.optional ~= var25_upvr then
			var26 = not var25_upvr
			if var26 then
				if arg1_8.optional ~= nil then
					var26 = false
				else
					var26 = true
				end
			end
		end
		return var26
	end) then
		return false, {}
	end
	return validateParams_upvr(Cryo_upvr.Dictionary.map(arg2, function(arg1_9, arg2_3) -- Line 73
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		return arg1[arg2_3], arg1_9.name
	end), arg2)
end
local StringTrim_upvr = StringUtilities.StringTrim
local StringSplit_upvr = StringUtilities.StringSplit
local ParseQuery_upvr = StringUtilities.ParseQuery
local function validateUrlParams_upvr(arg1, arg2) -- Line 79, Named "validateUrlParams"
	--[[ Upvalues[6]:
		[1]: StringTrim_upvr (readonly)
		[2]: StringSplit_upvr (readonly)
		[3]: ParseQuery_upvr (readonly)
		[4]: Cryo_upvr (readonly)
		[5]: validatePathParams_upvr (readonly)
		[6]: validateParams_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local var31
	if arg1.path then
		var31 = StringTrim_upvr(arg1.path, '/')
	else
		var31 = ""
	end
	if var31 ~= "" then
	else
	end
	local function var32(arg1_10) -- Line 84
		if #arg1_10 == 1 then
			return arg1_10[1]
		end
		return arg1_10
	end
	var32 = arg2.pathParams
	local var33 = var32
	if not var33 then
		var33 = {}
	end
	local validatePathParams_result1, validatePathParams_result2 = validatePathParams_upvr({}, var33)
	if not validatePathParams_result1 then
		return false, {}
	end
	local queryParams = arg2.queryParams
	if not queryParams then
		queryParams = {}
	end
	local validateParams_upvr_result1, validateParams_upvr_result2 = validateParams_upvr(Cryo_upvr.Dictionary.map(ParseQuery_upvr(arg1.query), var32), queryParams)
	if not validateParams_upvr_result1 then
		return false, {}
	end
	return true, Cryo_upvr.Dictionary.union(validatePathParams_result2, validateParams_upvr_result2)
end
return {
	validateUrlMatch = function(arg1, arg2) -- Line 101, Named "validateUrlMatch"
		--[[ Upvalues[2]:
			[1]: RegExp_upvr (readonly)
			[2]: validateUrlParams_upvr (readonly)
		]]
		for i, v in arg2 do
			if RegExp_upvr(i, 'i'):test(arg1.matchedPath) then
				local validateUrlParams_result1, validateUrlParams_upvr_result2 = validateUrlParams_upvr(arg1.url, v)
				if validateUrlParams_result1 then
					return validateUrlParams_result1, v.paramCallback(validateUrlParams_upvr_result2)
				end
			end
		end
		return false, nil
	end;
	validateUrlParams = validateUrlParams_upvr;
}