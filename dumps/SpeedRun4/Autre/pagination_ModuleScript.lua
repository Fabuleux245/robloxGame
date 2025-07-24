-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:44:22
-- Luau version 6, Types version 3
-- Time taken: 0.010924 seconds

local module = {}
local LuauPolyfill = require(script.Parent.Parent.Parent.Parent.LuauPolyfill)
local Array_upvr = LuauPolyfill.Array
local Object_upvr = LuauPolyfill.Object
local function __rest_upvr(arg1, arg2) -- Line 21, Named "__rest"
	--[[ Upvalues[2]:
		[1]: Array_upvr (readonly)
		[2]: Object_upvr (readonly)
	]]
	local module_upvr = {}
	Array_upvr.forEach(arg2, function(arg1_2) -- Line 23
		--[[ Upvalues[2]:
			[1]: module_upvr (readonly)
			[2]: Object_upvr (copied, readonly)
		]]
		module_upvr[arg1_2] = Object_upvr.None
	end)
	return Object_upvr.assign({}, arg1, module_upvr)
end
function module.concatPagination(arg1) -- Line 47
	--[[ Upvalues[1]:
		[1]: Array_upvr (readonly)
	]]
	if arg1 == nil then
	end
	local module_4 = {
		keyArgs = false;
	}
	local function merge(arg1_3, arg2, arg3) -- Line 53
		--[[ Upvalues[1]:
			[1]: Array_upvr (copied, readonly)
		]]
		if arg2 then
			return Array_upvr.concat(arg2, arg3)
		end
		return arg3
	end
	module_4.merge = merge
	return module_4
end
function module.offsetLimitPagination(arg1) -- Line 65
	--[[ Upvalues[1]:
		[1]: Array_upvr (readonly)
	]]
	if arg1 == nil then
	end
	local module_2 = {
		keyArgs = false;
	}
	local function merge(arg1_4, arg2, arg3, arg4) -- Line 72
		--[[ Upvalues[1]:
			[1]: Array_upvr (copied, readonly)
		]]
		-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
		local args = arg4.args
		local var14
		if arg2 ~= nil then
			var14 = Array_upvr.slice(arg2, 1)
			local _ = var14
		else
		end
		if args ~= nil then
			var14 = nil
			if args.offset == nil then
				var14 = 0
			else
				var14 = args.offset
			end
			for i = 1, #arg3 do
				({})[var14 + i] = arg3[i]
			end
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect
			return {}
		end
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		return Array_upvr.concat({}, arg3)
	end
	module_2.merge = merge
	return module_2
end
local Boolean_upvr = LuauPolyfill.Boolean
local getExtras_upvw
local makeEmptyData_upvw
local mergeDeep_upvr = require(script.Parent.Parent.common.mergeDeep).mergeDeep
function module.relayStylePagination(arg1) -- Line 139
	--[[ Upvalues[6]:
		[1]: Array_upvr (readonly)
		[2]: Boolean_upvr (readonly)
		[3]: Object_upvr (readonly)
		[4]: getExtras_upvw (read and write)
		[5]: makeEmptyData_upvw (read and write)
		[6]: mergeDeep_upvr (readonly)
	]]
	if arg1 == nil then
	end
	return {
		keyArgs = false;
		read = function(arg1_5, arg2, arg3) -- Line 146, Named "read"
			--[[ Upvalues[4]:
				[1]: Array_upvr (copied, readonly)
				[2]: Boolean_upvr (copied, readonly)
				[3]: Object_upvr (copied, readonly)
				[4]: getExtras_upvw (copied, read and write)
			]]
			if not arg2 then return end
			local tbl_2_upvr = {}
			local var22_upvw = ""
			local var23_upvw = ""
			local function var24(arg1_6) -- Line 158
				--[[ Upvalues[5]:
					[1]: arg3 (readonly)
					[2]: tbl_2_upvr (readonly)
					[3]: var22_upvw (read and write)
					[4]: Boolean_upvr (copied, readonly)
					[5]: var23_upvw (read and write)
				]]
				if arg3:canRead(arg3:readField("node", arg1_6)) then
					table.insert(tbl_2_upvr, arg1_6)
					local var26
					if var26 then
						local function INLINED_3() -- Internal function, doesn't exist in bytecode
							var26 = var22_upvw
							return var26
						end
						if not Boolean_upvr.toJSBoolean(var22_upvw) or not INLINED_3() then
							var26 = arg1_6.cursor
							if not var26 then
								var26 = ""
							end
						end
						var22_upvw = var26
						local function INLINED_4() -- Internal function, doesn't exist in bytecode
							var26 = arg1_6.cursor
							return var26
						end
						if not Boolean_upvr.toJSBoolean(arg1_6.cursor) or not INLINED_4() then
							var26 = var23_upvw
						end
						var23_upvw = var26
					end
				end
			end
			Array_upvr.forEach(arg2.edges, var24)
			local pageInfo_3 = arg2.pageInfo
			local var28 = pageInfo_3
			if var28 then
				var28 = pageInfo_3.startCursor
			end
			var24 = pageInfo_3
			local var29 = var24
			if var29 then
				var29 = pageInfo_3.endCursor
			end
			local module_3 = {
				edges = tbl_2_upvr;
			}
			local tbl = {}
			if not Boolean_upvr.toJSBoolean(var28) or not var28 then
			end
			tbl.startCursor = var22_upvw
			if not Boolean_upvr.toJSBoolean(var29) or not var29 then
			end
			tbl.endCursor = var23_upvw
			module_3.pageInfo = Object_upvr.assign({}, arg2.pageInfo, tbl)
			return Object_upvr.assign({}, getExtras_upvw(arg2), module_3)
		end;
		merge = function(arg1_7, arg2, arg3, arg4) -- Line 199, Named "merge"
			--[[ Upvalues[6]:
				[1]: makeEmptyData_upvw (copied, read and write)
				[2]: Array_upvr (copied, readonly)
				[3]: Object_upvr (copied, readonly)
				[4]: mergeDeep_upvr (copied, readonly)
				[5]: Boolean_upvr (copied, readonly)
				[6]: getExtras_upvw (copied, read and write)
			]]
			-- KONSTANTERROR: [0] 1. Error Block 84 start (CF ANALYSIS FAILED)
			if arg2 == nil then
			end
			local makeEmptyData_upvw_result1 = makeEmptyData_upvw()
			local args_2_upvr = arg4.args
			if arg3.edges then
				local _ = Array_upvr.map(arg3.edges, function(arg1_8) -- Line 210
					--[[ Upvalues[2]:
						[1]: Object_upvr (copied, readonly)
						[2]: arg4 (readonly)
					]]
					local any_assign_result1_2 = Object_upvr.assign({
						cursor = "";
					}, arg1_8)
					if arg4:isReference(any_assign_result1_2) then
						any_assign_result1_2.cursor = arg4:readField("cursor", any_assign_result1_2)
					end
					return any_assign_result1_2
				end)
			else
			end
			if arg3.pageInfo then
				local pageInfo_2 = arg3.pageInfo
				local startCursor_2 = pageInfo_2.startCursor
				local endCursor = pageInfo_2.endCursor
				local _1 = ({})[1]
				-- KONSTANTERROR: Expression was reused, decompilation is incorrect (x2)
				local var42 = ({})[#{}]
				if _1 and startCursor_2 then
					_1.cursor = startCursor_2
					local var43
				end
				if var42 and endCursor then
					var42.cursor = endCursor
				end
				var43 = _1
				if var43 then
					var43 = _1.cursor
					local var44
				end
				if var43 and not startCursor_2 then
					var44 = mergeDeep_upvr
					var44 = var44(arg3, {
						pageInfo = {
							startCursor = var43;
						};
					})
				end
				var44 = var42
				if var44 then
					var44 = var42.cursor
				end
				if var44 and not endCursor then
					local var19_result1 = mergeDeep_upvr(var44, {
						pageInfo = {
							endCursor = var44;
						};
					})
				end
			end
			if args_2_upvr ~= nil and args_2_upvr.after then
				if 1 <= Array_upvr.findIndex(makeEmptyData_upvw_result1.edges, function(arg1_9) -- Line 262
					--[[ Upvalues[1]:
						[1]: args_2_upvr (readonly)
					]]
					local var52
					if arg1_9.cursor ~= args_2_upvr.after then
						var52 = false
					else
						var52 = true
					end
					return var52
				end) then
					var43 = 1
					local var54
					-- KONSTANTWARNING: GOTO [145] #111
				end
				-- KONSTANTWARNING: GOTO [145] #111
			end
			-- KONSTANTERROR: [0] 1. Error Block 84 end (CF ANALYSIS FAILED)
			-- KONSTANTERROR: [105] 81. Error Block 82 start (CF ANALYSIS FAILED)
			if args_2_upvr ~= nil and Boolean_upvr.toJSBoolean(args_2_upvr.before) then
				local any_findIndex_result1 = Array_upvr.findIndex(var54, function(arg1_10) -- Line 273
					--[[ Upvalues[1]:
						[1]: args_2_upvr (readonly)
					]]
					local var56
					if arg1_10.cursor ~= args_2_upvr.before then
						var56 = false
					else
						var56 = true
					end
					return var56
				end)
				if any_findIndex_result1 < 0 then
					local _ = var54
				else
					var43 = any_findIndex_result1
				end
				var54 = {}
			elseif Boolean_upvr.toJSBoolean(var19_result1.edges) then
				var54 = {}
			end
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect
			local any_assign_result1 = Object_upvr.assign({}, var19_result1.pageInfo, makeEmptyData_upvw_result1.pageInfo)
			if var19_result1.pageInfo then
				local pageInfo = var19_result1.pageInfo
				local hasPreviousPage = pageInfo.hasPreviousPage
				local hasNextPage = pageInfo.hasNextPage
				local startCursor = pageInfo.startCursor
				local endCursor_2 = pageInfo.endCursor
				Object_upvr.assign(any_assign_result1, Object_upvr.assign({}, pageInfo, {
					hasPreviousPage = Object_upvr.None;
					hasNextPage = Object_upvr.None;
					startCursor = Object_upvr.None;
					endCursor = Object_upvr.None;
				}))
				if not Boolean_upvr.toJSBoolean(#var54) then
					if hasPreviousPage ~= nil then
						any_assign_result1.hasPreviousPage = hasPreviousPage
					end
					if startCursor ~= nil then
						any_assign_result1.startCursor = startCursor
					end
				end
				-- KONSTANTERROR: Expression was reused, decompilation is incorrect
				if not Boolean_upvr.toJSBoolean(#Array_upvr.slice(var54, var43)) then
					if hasNextPage ~= nil then
						any_assign_result1.hasNextPage = hasNextPage
					end
					if endCursor_2 ~= nil then
						any_assign_result1.endCursor = endCursor_2
					end
				end
			end
			do
				return Object_upvr.assign({}, getExtras_upvw(makeEmptyData_upvw_result1), getExtras_upvw(var19_result1), {
					edges = Array_upvr.concat(var54, {}, Array_upvr.slice(var54, var43));
					pageInfo = any_assign_result1;
				})
			end
			-- KONSTANTERROR: [105] 81. Error Block 82 end (CF ANALYSIS FAILED)
		end;
	}
end
local var67_upvw
function getExtras_upvw(arg1) -- Line 358, Named "getExtras"
	--[[ Upvalues[2]:
		[1]: __rest_upvr (readonly)
		[2]: var67_upvw (read and write)
	]]
	return __rest_upvr(arg1, var67_upvw)
end
var67_upvw = {"edges", "pageInfo"}
function makeEmptyData_upvw() -- Line 363, Named "makeEmptyData"
	return {
		edges = {};
		pageInfo = {
			hasPreviousPage = false;
			hasNextPage = true;
			startCursor = "";
			endCursor = "";
		};
	}
end
return module