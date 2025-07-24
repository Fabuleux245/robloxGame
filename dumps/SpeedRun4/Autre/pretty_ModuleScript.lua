-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:46:37
-- Luau version 6, Types version 3
-- Time taken: 0.011262 seconds

local Parent = script.Parent
local map_upvr = require(Parent.map)
local function _(arg1, arg2) -- Line 45, Named "indentLines"
	--[[ Upvalues[1]:
		[1]: map_upvr (readonly)
	]]
	return map_upvr(arg1, function(arg1_2) -- Line 46
		--[[ Upvalues[1]:
			[1]: arg2 (readonly)
		]]
		return arg2..arg1_2
	end)
end
local assign_upvr = require(Parent.assign)
local cycles_upvr = require(Parent.cycles)
local join_upvr = require(Parent.join)
local includes_upvr = require(Parent.includes)
local append_upvr = require(Parent.append)
local var64_upvw
local keys_upvr = require(Parent.keys)
local sort_upvr = table.sort
local slice_upvr = require(Parent.slice)
local insert_upvr = table.insert
local function prettyLines_upvr(arg1, arg2) -- Line 55, Named "prettyLines"
	--[[ Upvalues[12]:
		[1]: assign_upvr (readonly)
		[2]: cycles_upvr (readonly)
		[3]: join_upvr (readonly)
		[4]: includes_upvr (readonly)
		[5]: prettyLines_upvr (readonly)
		[6]: map_upvr (readonly)
		[7]: append_upvr (readonly)
		[8]: var64_upvw (read and write)
		[9]: keys_upvr (readonly)
		[10]: sort_upvr (readonly)
		[11]: slice_upvr (readonly)
		[12]: insert_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local var30 = arg2
	if not var30 then
		var30 = {}
	end
	local var31 = var30
	local var32
	if type(arg1) == "table" then
		local tbl_2 = {}
		local function INLINED() -- Internal function, doesn't exist in bytecode
			var32 = var31.depth - 1
			return var32
		end
		if not var31.depth or not INLINED() then
			var32 = nil
		end
		tbl_2.depth = var32
		var32 = var31.cycles
		if not var32 then
			var32 = cycles_upvr
			local tbl = {
				visited = {};
				refs = {};
				nextRef = 0;
				depth = var31.depth;
			}
			local omit = var31.omit
			if not omit then
				omit = {}
			end
			tbl.omit = omit
			var32 = var32(arg1, var31.depth, tbl)
		end
		tbl_2.cycles = var32
		local assign_upvr_result1 = assign_upvr({
			visited = {};
			indent = '\t';
			depth = 2;
		}, var31, tbl_2)
		if assign_upvr_result1.depth == -1 then
			return {"..."}
		end
		if assign_upvr_result1.visited[arg1] then
			local module_2 = {}
			var32 = assign_upvr_result1.cycles.refs[arg1]
			module_2[1] = '&'..var32
			return module_2
		end
		assign_upvr_result1.visited[arg1] = true
		if assign_upvr_result1.multiline then
		else
		end
		var32 = assign_upvr_result1.cycles.refs
		local var40 = var32[arg1]
		local function INLINED_2() -- Internal function, doesn't exist in bytecode
			var32 = "<%s>":format(var40)
			return var32
		end
		if not var40 or not INLINED_2() then
			var32 = ""
		end
		local module = {var32..'{'}
		local tbl_3 = {
			noQuotes = true;
			multiline = false;
		}
		for var50, v in ipairs(arg1) do
			if not assign_upvr_result1.omit or not includes_upvr(assign_upvr_result1.omit, var50) then
				if true then
				else
					module[#module] ..= ", "
				end
				if assign_upvr_result1.multiline then
					local indent_upvr = assign_upvr_result1.indent
					indent_upvr = module
					append_upvr(indent_upvr, map_upvr(prettyLines_upvr(v, assign_upvr_result1), function(arg1_3) -- Line 46
						--[[ Upvalues[1]:
							[1]: indent_upvr (readonly)
						]]
						return indent_upvr..arg1_3
					end))
				else
					indent_upvr = module[#module]
					module[#module] = indent_upvr..var64_upvw(v, assign_upvr_result1)
				end
			end
		end
		local var48
		if 0 < #arg1 and assign_upvr_result1.arrayLength then
			var50 = module[1]
			module[1] = "#%d %s":format(#arg1, var50)
		end
		local keys_upvr_result1 = keys_upvr(arg1)
		function var50(arg1_4, arg2_2) -- Line 132
			local var52
			if var52 == "number" then
				var52 = typeof(arg2_2)
				if var52 == "number" then
					if arg1_4 >= arg2_2 then
						var52 = false
					else
						var52 = true
					end
					return var52
				end
			end
			if tostring(arg1_4) >= tostring(arg2_2) then
				var52 = false
			else
			end
			return true
		end
		sort_upvr(keys_upvr_result1, var50)
		local ipairs_result1, ipairs_result2_2, ipairs_result3_2 = ipairs(keys_upvr_result1)
		for i_2, v_2 in ipairs_result1, ipairs_result2_2, ipairs_result3_2 do
			indent_upvr = typeof(v_2)
			local function INLINED_3() -- Internal function, doesn't exist in bytecode
				indent_upvr = v_2 % 1
				return indent_upvr ~= 0
			end
			local function INLINED_4() -- Internal function, doesn't exist in bytecode
				indent_upvr = 1
				return indent_upvr > v_2
			end
			local function INLINED_5() -- Internal function, doesn't exist in bytecode
				indent_upvr = assign_upvr_result1.omit
				return indent_upvr
			end
			local function INLINED_6() -- Internal function, doesn't exist in bytecode
				indent_upvr = includes_upvr(assign_upvr_result1.omit, v_2)
				return indent_upvr
			end
			if indent_upvr ~= "number" or INLINED_3() or INLINED_4() or v_2 > var50 or not INLINED_5() or not INLINED_6() then
				if var48 then
					var48 = false
				else
					indent_upvr = #module
					-- KONSTANTERROR: Expression was reused, decompilation is incorrect
					module[indent_upvr] = module[#module]..", "
				end
				indent_upvr = assign_upvr_result1.multiline
				if indent_upvr then
					indent_upvr = prettyLines_upvr(v_2, join_upvr(assign_upvr_result1, tbl_3))
					local indent_upvr_3 = assign_upvr_result1.indent
					local var2_result1 = map_upvr(indent_upvr, function(arg1_5) -- Line 46
						--[[ Upvalues[1]:
							[1]: indent_upvr_3 (readonly)
						]]
						return indent_upvr_3..arg1_5
					end)
					indent_upvr_3 = prettyLines_upvr(arg1[v_2], assign_upvr_result1)
					local var59 = indent_upvr_3
					local indent_upvr_2 = assign_upvr_result1.indent
					indent_upvr_2 = #var2_result1
					var2_result1[indent_upvr_2] = "%s = %s":format(var2_result1[#var2_result1], var59[1])
					indent_upvr_2 = append_upvr
					indent_upvr_2(module, var2_result1)
					indent_upvr_2 = append_upvr
					indent_upvr_2(module, map_upvr(slice_upvr(var59, 2), function(arg1_6) -- Line 46
						--[[ Upvalues[1]:
							[1]: indent_upvr_2 (readonly)
						]]
						return indent_upvr_2..arg1_6
					end))
				else
					indent_upvr = #module
					indent_upvr_2 = v_2
					-- KONSTANTERROR: Expression was reused, decompilation is incorrect
					indent_upvr_2 = var64_upvw
					-- KONSTANTERROR: Expression was reused, decompilation is incorrect
					indent_upvr_2 = indent_upvr_2(arg1[v_2], assign_upvr_result1)
					module[indent_upvr] = "%s%s = %s":format(module[#module], var64_upvw(indent_upvr_2, join_upvr(assign_upvr_result1, tbl_3)), indent_upvr_2)
				end
			end
		end
		if assign_upvr_result1.multiline then
			if var48 then
				v_2 = #module
				ipairs_result3_2 = module[v_2]
				i_2 = '}'
				module[#module] = ipairs_result3_2..i_2
				return module
			end
			ipairs_result3_2 = '}'
			insert_upvr(module, ipairs_result3_2)
			return module
		end
		module[#module] = "%s}":format(module[#module])
		return module
	end
	if type(arg1) == "string" and not var31.noQuotes then
		return {"\"%s\"":format(arg1)}
	end
	return {tostring(arg1)}
end
local concat_upvr = table.concat
function var64_upvw(arg1, arg2) -- Line 192
	--[[ Upvalues[2]:
		[1]: concat_upvr (readonly)
		[2]: prettyLines_upvr (readonly)
	]]
	return concat_upvr(prettyLines_upvr(arg1, arg2), '\n')
end
return var64_upvw