-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:01:00
-- Luau version 6, Types version 3
-- Time taken: 0.011594 seconds

local Parent = script.Parent
local Parent_2 = Parent.Parent
local Parent_3 = Parent_2.Parent
local LuauPolyfill = require(Parent_3.LuauPolyfill)
local Array_upvr = LuauPolyfill.Array
local pathToRegexp = require(Parent.pathToRegexp)
local module_3_upvr = {}
local decodeURIComponent_upvr = require(Parent.decodeURIComponent)
function module_3_upvr.getParamsFromPath(arg1, arg2, arg3) -- Line 27
	--[[ Upvalues[2]:
		[1]: Array_upvr (readonly)
		[2]: decodeURIComponent_upvr (readonly)
	]]
	return Array_upvr.reduce(Array_upvr.slice(arg2, 2), function(arg1_2, arg2_2, arg3_2) -- Line 31
		--[[ Upvalues[2]:
			[1]: arg3 (readonly)
			[2]: decodeURIComponent_upvr (copied, readonly)
		]]
		local var14 = arg3[arg3_2]
		if not var14 or var14.pattern == ".*" then
			return arg1_2
		end
		local var15
		if arg2_2 then
			local pcall_result1, pcall_result2 = pcall(decodeURIComponent_upvr, arg2_2)
			if pcall_result1 then
				var15 = pcall_result2
			end
		end
		arg1_2[var14.name] = var15 or arg2_2
		return arg1_2
	end, table.clone(arg1))
end
local function _(arg1, arg2) -- Line 59, Named "getRestOfPath"
	--[[ Upvalues[1]:
		[1]: Array_upvr (readonly)
	]]
	return arg1[Array_upvr.findIndex(arg2, function(arg1_3) -- Line 62
		local var19
		if arg1_3.pattern ~= ".*" then
			var19 = false
		else
			var19 = true
		end
		return var19
	end) + 1]
end
local String_upvr = LuauPolyfill.String
local function determineDelimiter_upvr(arg1, arg2) -- Line 69, Named "determineDelimiter"
	--[[ Upvalues[2]:
		[1]: Array_upvr (readonly)
		[2]: String_upvr (readonly)
	]]
	if Array_upvr.isArray(arg2) then
		if #arg2 == 1 then
			return arg2[1]
		end
		for _, v in arg2 do
			if String_upvr.startsWith(arg1, v) then
				return v
			end
		end
		return nil
	end
	return arg2
end
local RegExp_upvr = require(Parent_3.RegExp)
local queryString_upvr = require(Parent.queryString)
function module_3_upvr.urlToPathAndParams(arg1, arg2) -- Line 85
	--[[ Upvalues[3]:
		[1]: RegExp_upvr (readonly)
		[2]: queryString_upvr (readonly)
		[3]: determineDelimiter_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local any_exec_result1 = RegExp_upvr("^(.*)\\?(.*)$"):exec(arg1)
	local var26
	if any_exec_result1 then
		local _2_7 = any_exec_result1[2]
	else
	end
	if any_exec_result1 then
		var26 = any_exec_result1[3]
	else
		var26 = {}
	end
	local determineDelimiter_upvr_result1 = determineDelimiter_upvr(arg1, arg2)
	if determineDelimiter_upvr_result1 == nil or determineDelimiter_upvr_result1 == "" then
	end
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	local _2_8 = string.split(arg1, "://")[2]
	if _2_8 == nil then
		_2_8 = arg1
	end
	if _2_8 == '/' then
	end
	if string.sub("", -1, -1) == '/' then
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	end
	return {
		path = string.sub("", 1, -2);
		params = queryString_upvr.parse(var26);
	}
end
local module_4_upvr = require(Parent:FindFirstChild("NullPathSymbol.roblox"))
local invariant_upvr = require(Parent_2.utils.invariant)
local pathToRegexp_upvr = pathToRegexp.pathToRegexp
local compile_upvr = pathToRegexp.compile
local Object_upvr = LuauPolyfill.Object
local NavigationActions_upvr = require(Parent_2.NavigationActions)
local module_2_upvr = require(Parent:FindFirstChild("ChildIsScreenRouterSymbol.roblox"))
function module_3_upvr.createPathParser(arg1, arg2, arg3) -- Line 112
	--[[ Upvalues[9]:
		[1]: module_4_upvr (readonly)
		[2]: invariant_upvr (readonly)
		[3]: pathToRegexp_upvr (readonly)
		[4]: compile_upvr (readonly)
		[5]: Object_upvr (readonly)
		[6]: Array_upvr (readonly)
		[7]: NavigationActions_upvr (readonly)
		[8]: module_3_upvr (readonly)
		[9]: module_2_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local var42
	if not var42 then
		var42 = {}
	end
	local tbl_8_upvr = {}
	for i_2 in arg1 do
		local var44
		if var42[i_2] ~= nil then
			var44 = var42[i_2]
		elseif type(arg2[i_2]) == "table" then
			var44 = arg2[i_2].path
		end
		if var44 == nil then
			if arg3.disableRouteNamePaths then
				var44 = module_4_upvr
			else
				var44 = i_2
			end
		end
		if var44 ~= module_4_upvr then
			if type(var44) ~= "string" then
			else
			end
		end
		invariant_upvr(true, "Route path for %s must be specified as a string, or RoactNavigation.NoPath.", i_2)
		if var44 == module_4_upvr then
			local _ = false
			-- KONSTANTWARNING: Skipped task `defvar` above
		else
		end
		if true then
		end
		local tbl_3 = {}
		local var47 = true
		if var44 ~= "" then
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect
			var47 = not true
		end
		if var47 then
			local _ = "(.*)"
		else
		end
		local tbl = {
			exactRe = pathToRegexp_upvr(var44, {});
		}
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		tbl.exactReKeys = {}
		tbl.extendedPathRe = pathToRegexp_upvr("%s/(.*)":format(var44), tbl_3)
		tbl.extendedPathReKeys = tbl_3
		tbl.isWildcard = var47
		local function INLINED() -- Internal function, doesn't exist in bytecode
			return function() -- Line 172
				return ""
			end
		end
		if var44 ~= module_4_upvr or not INLINED() then
		end
		tbl.toPath = compile_upvr(var44)
		tbl_8_upvr[i_2] = tbl
	end
	local any_entries_result1_upvw = Object_upvr.entries(tbl_8_upvr)
	return {
		getActionForPathAndParams = function(arg1_4, arg2_3) -- Line 180, Named "getActionForPathAndParams"
			--[[ Upvalues[5]:
				[1]: any_entries_result1_upvw (read and write)
				[2]: arg1 (readonly)
				[3]: Array_upvr (copied, readonly)
				[4]: NavigationActions_upvr (copied, readonly)
				[5]: module_3_upvr (copied, readonly)
			]]
			if arg1_4 == nil then
				local const_string_2 = ""
			end
			if arg2_3 == nil then
				local tbl_7 = {}
			end
			for _, v_2 in any_entries_result1_upvw do
				local _1_5 = v_2[1]
				local _2_4 = v_2[2]
				local var126 = arg1[_1_5]
				local var127 = _2_4.exactRe
				if var127 then
					var127 = _2_4.exactRe:exec(const_string_2)
				end
				if var127 then
					local var128
					if var128 ~= 0 then
						var128 = _2_4.extendedPathRe
						if var128 then
							var128 = _2_4.extendedPathRe:exec(const_string_2)
						end
						local var129
						if var128 and var126 then
							var129 = var126.getActionForPathAndParams(var128[Array_upvr.findIndex(_2_4.extendedPathReKeys, function(arg1_9) -- Line 62
								local var131
								if arg1_9.pattern ~= ".*" then
									var131 = false
								else
									var131 = true
								end
								return var131
							end) + 1], tbl_7)
						end
						return NavigationActions_upvr.navigate({
							routeName = _1_5;
							params = module_3_upvr.getParamsFromPath(tbl_7, var127, _2_4.exactReKeys);
							action = var129;
						})
					end
				end
			end
			for _, v_3 in any_entries_result1_upvw do
				local _1_3 = v_3[1]
				local _2_5 = v_3[2]
				local extendedPathReKeys_2 = _2_5.extendedPathReKeys
				local var138 = _2_5.extendedPathRe
				if var138 then
					var138 = _2_5.extendedPathRe:exec(const_string_2)
				end
				if var138 then
					local var139
					if var138.n ~= 0 then
						var128 = Array_upvr.findIndex(extendedPathReKeys_2, function(arg1_10) -- Line 62
							local var141
							if arg1_10.pattern ~= ".*" then
								var141 = false
							else
								var141 = true
							end
							return var141
						end) + 1
						var139 = var138[var128]
						var139 = nil
						if arg1[_1_3] then
							var128 = arg1[_1_3].getActionForPathAndParams(var139, tbl_7)
							var139 = var128
						end
						if var139 then
							var128 = NavigationActions_upvr.navigate
							var128 = var128({
								routeName = _1_3;
								params = module_3_upvr.getParamsFromPath(tbl_7, var138, extendedPathReKeys_2);
								action = var139;
							})
							return var128
						end
					end
				end
			end
			return nil
		end;
		getPathAndParamsForRoute = function(arg1_11) -- Line 247, Named "getPathAndParamsForRoute"
			--[[ Upvalues[5]:
				[1]: arg1 (readonly)
				[2]: tbl_8_upvr (readonly)
				[3]: Array_upvr (copied, readonly)
				[4]: Object_upvr (copied, readonly)
				[5]: module_2_upvr (copied, readonly)
			]]
			local routeName = arg1_11.routeName
			local params = arg1_11.params
			local var149 = arg1[routeName]
			local var150 = tbl_8_upvr[routeName]
			local any_toPath_result1 = var150.toPath(params)
			local tbl_5 = {}
			if params then
				local exactReKeys_upvr = var150.exactReKeys
				for i_5, v_4 in Array_upvr.filter(Object_upvr.keys(params), function(arg1_12) -- Line 257
					--[[ Upvalues[2]:
						[1]: Array_upvr (copied, readonly)
						[2]: exactReKeys_upvr (readonly)
					]]
					return not Array_upvr.find(exactReKeys_upvr, function(arg1_13) -- Line 258
						--[[ Upvalues[1]:
							[1]: arg1_12 (readonly)
						]]
						local var156
						if arg1_13.name ~= arg1_12 then
							var156 = false
						else
							var156 = true
						end
						return var156
					end)
				end), nil do
					tbl_5[v_4] = params[v_4]
				end
			end
			if var149 and var149 ~= module_2_upvr then
				local any_getPathAndParamsForState_result1 = var149.getPathAndParamsForState(arg1_11)
				local module_5 = {}
				local var159
				if any_toPath_result1 and any_toPath_result1 ~= "" then
					var159 = "%s/%s"
					i_5 = any_toPath_result1
					v_4 = any_getPathAndParamsForState_result1.path
					var159 = var159:format(i_5, v_4)
				else
					var159 = any_getPathAndParamsForState_result1.path
				end
				module_5.path = var159
				if any_getPathAndParamsForState_result1.params then
					var159 = Object_upvr.assign
					i_5 = any_getPathAndParamsForState_result1.params
					var159 = var159(tbl_5, i_5)
				else
					var159 = tbl_5
				end
				module_5.params = var159
				return module_5
			end
			return {
				path = any_toPath_result1;
				params = tbl_5;
			}
		end;
	}
end
return module_3_upvr