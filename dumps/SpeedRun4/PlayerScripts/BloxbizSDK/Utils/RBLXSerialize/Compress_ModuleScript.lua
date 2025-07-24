-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:39:43
-- Luau version 6, Types version 3
-- Time taken: 0.010703 seconds

local char_upvr = string.char
local type_upvr = type
local sub_upvr = string.sub
local concat_upvr = table.concat
local tbl_7_upvr = {}
local tbl_6_upvr = {}
for i = 0, 255 do
	local char_upvr_result1 = char_upvr(i)
	local var3_result1 = char_upvr(i, 0)
	tbl_7_upvr[char_upvr_result1] = var3_result1
	tbl_6_upvr[var3_result1] = char_upvr_result1
end
local function _(arg1, arg2, arg3, arg4) -- Line 16, Named "dictAddA"
	--[[ Upvalues[1]:
		[1]: char_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local var15
	if 256 <= var15 then
		var15 = 0
		if 256 <= arg4 + 1 then
			local module_4 = {}
			local var17 = 1
		end
	end
	module_4[arg1] = char_upvr(var15, var17)
	var15 += 1
	return module_4, var15, var17
end
local function _(arg1, arg2, arg3, arg4) -- Line 74, Named "dictAddB"
	--[[ Upvalues[1]:
		[1]: char_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local var53
	if 256 <= var53 then
		var53 = 0
		if 256 <= arg4 + 1 then
			local module_6 = {}
			local var55 = 1
		end
	end
	module_6[char_upvr(var53, var55)] = arg1
	var53 += 1
	return module_6, var53, var55
end
return {
	compress = function(arg1) -- Line 29, Named "compress"
		--[[ Upvalues[5]:
			[1]: type_upvr (readonly)
			[2]: sub_upvr (readonly)
			[3]: tbl_7_upvr (readonly)
			[4]: char_upvr (readonly)
			[5]: concat_upvr (readonly)
		]]
		-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
		local var40
		if type_upvr(arg1) ~= "string" then
			return nil, "string expected, got "..type_upvr(arg1)
		end
		local len_4 = #arg1
		if len_4 <= 1 then
			return 'u'..arg1
		end
		local tbl_2 = {}
		local module_3 = {'c'}
		local var44 = 2
		var40 = ""
		for i_2 = 1, len_4 do
			local sub_upvr_result1 = sub_upvr(arg1, i_2, i_2)
			local var46 = var40..sub_upvr_result1
			if not tbl_7_upvr[var46] and not tbl_2[var46] then
				local var47 = tbl_7_upvr[var40]
				if not var47 then
					var47 = tbl_2[var40]
				end
				if not var47 then
					return nil, "algorithm error, could not fetch word"
				end
				module_3[var44] = var47
				local var48 = var44 + 1
				if len_4 <= 1 + #var47 then
					return 'u'..arg1
				end
				local var49 = tbl_2
				local var50 = 0
				local var51 = 1
				if 256 <= var50 then
					var50 = 0
					var51 += 1
					if 256 <= var51 then
						var49 = {}
						var51 = 1
					end
				end
				var49[var46] = char_upvr(var50, var51)
				var40 = sub_upvr_result1
			else
				var40 = var46
			end
		end
		local var52 = tbl_7_upvr[var40]
		if not var52 then
			var52 = var49[var40]
		end
		module_3[var48] = var52
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		if len_4 <= 1 + #var47 + #module_3[var48] then
			i_2 = arg1
			return 'u'..i_2
		end
		return concat_upvr(module_3)
	end;
	decompress = function(arg1) -- Line 87, Named "decompress"
		--[[ Upvalues[5]:
			[1]: type_upvr (readonly)
			[2]: sub_upvr (readonly)
			[3]: tbl_6_upvr (readonly)
			[4]: char_upvr (readonly)
			[5]: concat_upvr (readonly)
		]]
		if type_upvr(arg1) ~= "string" then
			return nil, "string expected, got "..type_upvr(arg1)
		end
		if #arg1 < 1 then
			return nil, "invalid input - not a compressed string"
		end
		local sub_upvr_result1_6 = sub_upvr(arg1, 1, 1)
		if sub_upvr_result1_6 == 'u' then
			return sub_upvr(arg1, 2)
		end
		if sub_upvr_result1_6 ~= 'c' then
			return nil, "invalid input - not a compressed string"
		end
		local sub_upvr_result1_4 = sub_upvr(arg1, 2)
		local len_3 = #sub_upvr_result1_4
		if len_3 < 2 then
			return nil, "invalid input - not a compressed string"
		end
		local tbl_3 = {}
		local module = {}
		local var87 = 1
		local sub_upvr_result1_3 = sub_upvr(sub_upvr_result1_4, 1, 2)
		local var89 = tbl_6_upvr[sub_upvr_result1_3]
		if not var89 then
			var89 = tbl_3[sub_upvr_result1_3]
		end
		module[var87] = var89
		local var90 = var87 + 1
		for i_3 = 3, len_3, 2 do
			local var5_result1_2 = sub_upvr(sub_upvr_result1_4, i_3, i_3 + 1)
			local var92 = tbl_6_upvr[sub_upvr_result1_3]
			if not var92 then
				var92 = tbl_3[sub_upvr_result1_3]
			end
			if not var92 then
				return nil, "could not find last from dict. Invalid input?"
			end
			local var93 = tbl_6_upvr[var5_result1_2]
			if not var93 then
				var93 = tbl_3[var5_result1_2]
			end
			if var93 then
				module[var90] = var93
				local var94 = tbl_3
				local var95 = 0
				local var96 = 1
				if 256 <= var95 then
					var95 = 0
					var96 += 1
					if 256 <= var96 then
						var94 = {}
						var96 = 1
					end
				end
				var94[char_upvr(var95, var96)] = var92..sub_upvr(var93, 1, 1)
			else
				local var97 = var92..sub_upvr(var92, 1, 1)
				module[var90 + 1] = var97
				-- KONSTANTERROR: Expression was reused, decompilation is incorrect
				local var98 = var94
				local var99 = var95 + 1
				var96 = var96
				local var100 = var96
				if 256 <= var99 then
					var99 = 0
					var100 += 1
					if 256 <= var100 then
						var98 = {}
						var100 = 1
					end
				end
				var98[char_upvr(var99, var100)] = var97
			end
		end
		return concat_upvr(module)
	end;
}