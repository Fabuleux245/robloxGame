-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:48:34
-- Luau version 6, Types version 3
-- Time taken: 0.007130 seconds

local function defaultLessThan_upvr(arg1, arg2) -- Line 2, Named "defaultLessThan"
	if arg1 >= arg2 then
	else
	end
	return true
end
local function defaultKeyof_upvr(arg1) -- Line 6, Named "defaultKeyof"
	return arg1
end
local function keyCmp_upvr(arg1, arg2) -- Line 10, Named "keyCmp"
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local stat = arg1.stat
	local stat_3 = arg2.stat
	local var3
	if stat == stat_3 then
		if arg1.name >= arg2.name then
			var3 = false
		else
			var3 = true
		end
		return var3
	end
	if stat == nil then
		var3 = false
		return var3
	end
	if stat_3 == nil then
		var3 = true
		return var3
	end
	if type(stat) ~= type(stat_3) then
		local var4
	end
	if tostring(stat) == tostring(stat_3) then
		if arg1.name >= arg2.name then
			var4 = false
		else
			var4 = true
		end
		return var4
	end
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect (x2)
	if tostring(stat_3) >= tostring(stat) then
		var4 = false
	else
		var4 = true
	end
	return var4
end
local function joinSorted_upvr(arg1, arg2, arg3, arg4) -- Line 35, Named "joinSorted"
	--[[ Upvalues[2]:
		[1]: defaultLessThan_upvr (readonly)
		[2]: defaultKeyof_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local var5 = arg3
	if not var5 then
		var5 = defaultLessThan_upvr
	end
	var5 = arg4
	local var6 = var5
	if not var6 then
		var6 = defaultKeyof_upvr
	end
	local var7 = var6
	local const_number_2 = 1
	local const_number = 1
	local len_2 = #arg1
	local len = #arg2
	if len_2 == 0 then
		return arg2
	end
	if len == 0 then
		return arg1
	end
	local table_create_result1_2 = table.create(len_2 + len, nil)
	local var13 = arg1[const_number_2]
	local var14 = arg2[const_number]
	while var7(var13) ~= nil and var7(var14) ~= nil do
		local var17
		if var17 then
			local var18 = 0 + 1
			table_create_result1_2[var18] = var13
			local var19 = arg1[const_number_2 + 1]
			local function INLINED() -- Internal function, doesn't exist in bytecode
				var17 = var7(var19)
				return var17
			end
			if not var19 or not INLINED() then
				var17 = nil
			end
		else
			table_create_result1_2[var18 + 1] = var14
			local var20 = arg2[const_number + 1]
			local function INLINED_2() -- Internal function, doesn't exist in bytecode
				var17 = var7(var20)
				return var17
			end
			if not var20 or not INLINED_2() then
				var17 = nil
			end
		end
	end
	if var17 ~= nil then
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect (x2)
		table.move(arg1, const_number_2 + 1, len_2, var18 + 1 + 1, table_create_result1_2)
		return table_create_result1_2
	end
	if var17 ~= nil then
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect (x2)
		table.move(arg2, const_number + 1, len, var18 + 1 + 1, table_create_result1_2)
	end
	return table_create_result1_2
end
return {
	keyCmp = keyCmp_upvr;
	joinSorted = joinSorted_upvr;
	getDerivedStateFromProps = function(arg1, arg2) -- Line 84, Named "getDerivedStateFromProps"
		--[[ Upvalues[2]:
			[1]: joinSorted_upvr (readonly)
			[2]: keyCmp_upvr (readonly)
		]]
		-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
		local var33 = arg2
		if not var33 then
			var33 = {}
		end
		local var34 = var33
		if arg1.playerKeys.keys == var34.playerKeys then
			return var34
		end
		local sortedPlayers = var34.sortedPlayers
		if not sortedPlayers then
			sortedPlayers = {}
		end
		local keys_upvr = arg1.playerKeys.keys
		local table_create_result1 = table.create(5, nil)
		if not var34.playerKeys then
		end
		for _, v in pairs(sortedPlayers) do
			local var41 = keys_upvr[v]
			if var41 then
				if var41 ~= ({})[v] then
					table_create_result1[0 + 1] = v
				else
					table.create(#sortedPlayers, nil)[0 + 1] = v
				end
			end
		end
		for i_2 in pairs(keys_upvr) do
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect
			if not ({})[i_2] then
				-- KONSTANTERROR: Expression was reused, decompilation is incorrect
				table_create_result1[0 + 1 + 1] = i_2
			end
		end
		table.sort(table_create_result1, function(arg1_3, arg2_2) -- Line 131
			--[[ Upvalues[1]:
				[1]: keys_upvr (readonly)
			]]
			-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
			local var46 = keys_upvr[arg1_3]
			local var47 = keys_upvr[arg2_2]
			local stat_4 = var46.stat
			local stat_2 = var47.stat
			local var50
			if stat_4 == stat_2 then
				if var46.name >= var47.name then
					var50 = false
				else
					var50 = true
				end
				return var50
			end
			if stat_4 == nil then
				var50 = false
				return var50
			end
			if stat_2 == nil then
				var50 = true
				return var50
			end
			if type(stat_4) ~= type(stat_2) then
			end
			if tostring(stat_4) == tostring(stat_2) then
				if var46.name >= var47.name then
					var50 = false
				else
					var50 = true
				end
				return var50
			end
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect (x2)
			if tostring(stat_2) >= tostring(stat_4) then
				var50 = false
			else
				var50 = true
			end
			return var50
		end)
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		return {
			sortedPlayers = joinSorted_upvr(table.create(#sortedPlayers, nil), table_create_result1, keyCmp_upvr, function(arg1_2) -- Line 127, Named "keyof"
				--[[ Upvalues[1]:
					[1]: keys_upvr (readonly)
				]]
				return keys_upvr[arg1_2]
			end);
			playerKeys = keys_upvr;
		}
	end;
}