-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:13:43
-- Luau version 6, Types version 3
-- Time taken: 0.006588 seconds

local createSignalMap_upvr = require(script.Parent.createSignalMap)
local Signals_upvr = require(script.Parent.Parent.Signals)
return function(arg1, arg2) -- Line 38, Named "createTeamStore"
	--[[ Upvalues[2]:
		[1]: createSignalMap_upvr (readonly)
		[2]: Signals_upvr (readonly)
	]]
	local tbl_upvw = {}
	local var4
	local var5
	local var6
	local var1_result1_upvr_2 = createSignalMap_upvr()
	local var1_result1_upvr = createSignalMap_upvr()
	local tbl_upvw_2 = {}
	if arg1 == "Neutral" then
		local any_createSignal_result1, _ = Signals_upvr.createSignal("Neutral")
		var4 = any_createSignal_result1
		local any_createSignal_result1_6, _ = Signals_upvr.createSignal(BrickColor.White().Color)
		var5 = any_createSignal_result1_6
		local any_createSignal_result1_4, _ = Signals_upvr.createSignal(1000)
		var6 = any_createSignal_result1_4
	else
		local any_createSignal_result1_3, any_createSignal_result2_upvw_3 = Signals_upvr.createSignal(arg1.Name)
		var4 = any_createSignal_result1_3
		local any_createSignal_result1_2, any_createSignal_result2_upvw = Signals_upvr.createSignal(arg1.TeamColor.Color)
		var5 = any_createSignal_result1_2
		local any_createSignal_result1_5, any_createSignal_result2_upvw_2 = Signals_upvr.createSignal(arg1.ChildOrder)
		var6 = any_createSignal_result1_5
		tbl_upvw.teamPropChanged = arg1.Changed:Connect(function(arg1_2) -- Line 70
			--[[ Upvalues[4]:
				[1]: any_createSignal_result2_upvw_3 (read and write)
				[2]: arg1 (readonly)
				[3]: any_createSignal_result2_upvw (read and write)
				[4]: any_createSignal_result2_upvw_2 (read and write)
			]]
			if arg1_2 == "Name" then
				any_createSignal_result2_upvw_3(arg1.Name)
			else
				if arg1_2 == "TeamColor" then
					any_createSignal_result2_upvw(arg1.TeamColor.Color)
					return
				end
				if arg1_2 == "ChildOrder" then
					any_createSignal_result2_upvw_2(arg1.ChildOrder)
				end
			end
		end)
	end
	local function _() -- Line 106, Named "updateAllStats"
		--[[ Upvalues[4]:
			[1]: tbl_upvw_2 (read and write)
			[2]: Signals_upvr (copied, readonly)
			[3]: var1_result1_upvr (readonly)
			[4]: var1_result1_upvr_2 (readonly)
		]]
		for i_2_upvr, v_2_upvr in pairs(tbl_upvw_2) do
			var1_result1_upvr_2.setData(i_2_upvr, Signals_upvr.createComputed(function(arg1_5) -- Line 83
				--[[ Upvalues[3]:
					[1]: var1_result1_upvr (copied, readonly)
					[2]: v_2_upvr (readonly)
					[3]: i_2_upvr (readonly)
				]]
				local var44
				local any_getAllData_result1_3 = var1_result1_upvr.getAllData(arg1_5)
				if typeof(any_getAllData_result1_3) == "table" then
					for i_3, _ in pairs(any_getAllData_result1_3) do
						local v_2_result1 = v_2_upvr(i_3, i_2_upvr, arg1_5)
						if v_2_result1 and type(v_2_result1) == "number" then
							if var44 then
								var44 += v_2_result1
							else
								var44 = v_2_result1
							end
						end
					end
				end
				return var44
			end), false)
			tbl_upvw_2[i_2_upvr] = v_2_upvr
		end
	end
	return {
		getName = var4;
		getColor = var5;
		getOrder = var6;
		getStats = var1_result1_upvr_2;
		getPlayers = var1_result1_upvr;
		updateStat = function(arg1_3, arg2_2) -- Line 82, Named "updateStat"
			--[[ Upvalues[4]:
				[1]: Signals_upvr (copied, readonly)
				[2]: var1_result1_upvr (readonly)
				[3]: var1_result1_upvr_2 (readonly)
				[4]: tbl_upvw_2 (read and write)
			]]
			var1_result1_upvr_2.setData(arg1_3, Signals_upvr.createComputed(function(arg1_4) -- Line 83
				--[[ Upvalues[3]:
					[1]: var1_result1_upvr (copied, readonly)
					[2]: arg2_2 (readonly)
					[3]: arg1_3 (readonly)
				]]
				local var28
				local any_getAllData_result1_2 = var1_result1_upvr.getAllData(arg1_4)
				if typeof(any_getAllData_result1_2) == "table" then
					for i, _ in pairs(any_getAllData_result1_2) do
						local arg2_2_result1 = arg2_2(i, arg1_3, arg1_4)
						if arg2_2_result1 and type(arg2_2_result1) == "number" then
							if var28 then
								var28 += arg2_2_result1
							else
								var28 = arg2_2_result1
							end
						end
					end
				end
				return var28
			end), false)
			tbl_upvw_2[arg1_3] = arg2_2
		end;
		removeStat = function(arg1_6) -- Line 113, Named "removeStat"
			--[[ Upvalues[2]:
				[1]: var1_result1_upvr_2 (readonly)
				[2]: tbl_upvw_2 (read and write)
			]]
			var1_result1_upvr_2.removeData(arg1_6, false)
			tbl_upvw_2[arg1_6] = nil
		end;
		addPlayer = function(arg1_7) -- Line 120, Named "addPlayer"
			--[[ Upvalues[4]:
				[1]: var1_result1_upvr (readonly)
				[2]: tbl_upvw_2 (read and write)
				[3]: Signals_upvr (copied, readonly)
				[4]: var1_result1_upvr_2 (readonly)
			]]
			var1_result1_upvr.setData(arg1_7, arg1_7.UserId, false)
			for i_4_upvr, v_4_upvr in pairs(tbl_upvw_2) do
				var1_result1_upvr_2.setData(i_4_upvr, Signals_upvr.createComputed(function(arg1_8) -- Line 83
					--[[ Upvalues[3]:
						[1]: var1_result1_upvr (copied, readonly)
						[2]: v_4_upvr (readonly)
						[3]: i_4_upvr (readonly)
					]]
					local var60
					local any_getAllData_result1_4 = var1_result1_upvr.getAllData(arg1_8)
					if typeof(any_getAllData_result1_4) == "table" then
						for i_5, _ in pairs(any_getAllData_result1_4) do
							local v_4_result1 = v_4_upvr(i_5, i_4_upvr, arg1_8)
							if v_4_result1 and type(v_4_result1) == "number" then
								if var60 then
									var60 += v_4_result1
								else
									var60 = v_4_result1
								end
							end
						end
					end
					return var60
				end), false)
				tbl_upvw_2[i_4_upvr] = v_4_upvr
			end
		end;
		removePlayer = function(arg1_9) -- Line 126, Named "removePlayer"
			--[[ Upvalues[4]:
				[1]: var1_result1_upvr (readonly)
				[2]: tbl_upvw_2 (read and write)
				[3]: Signals_upvr (copied, readonly)
				[4]: var1_result1_upvr_2 (readonly)
			]]
			var1_result1_upvr.removeData(arg1_9, false)
			for i_6_upvr, v_6_upvr in pairs(tbl_upvw_2) do
				var1_result1_upvr_2.setData(i_6_upvr, Signals_upvr.createComputed(function(arg1_10) -- Line 83
					--[[ Upvalues[3]:
						[1]: var1_result1_upvr (copied, readonly)
						[2]: v_6_upvr (readonly)
						[3]: i_6_upvr (readonly)
					]]
					local var76
					local any_getAllData_result1 = var1_result1_upvr.getAllData(arg1_10)
					if typeof(any_getAllData_result1) == "table" then
						for i_7, _ in pairs(any_getAllData_result1) do
							local v_6_upvr_result1 = v_6_upvr(i_7, i_6_upvr, arg1_10)
							if v_6_upvr_result1 and type(v_6_upvr_result1) == "number" then
								if var76 then
									var76 += v_6_upvr_result1
								else
									var76 = v_6_upvr_result1
								end
							end
						end
					end
					return var76
				end), false)
				tbl_upvw_2[i_6_upvr] = v_6_upvr
			end
		end;
		destroy = function() -- Line 132, Named "destroy"
			--[[ Upvalues[2]:
				[1]: tbl_upvw (read and write)
				[2]: tbl_upvw_2 (read and write)
			]]
			for _, v_8 in pairs(tbl_upvw) do
				if v_8.Disconnect then
					v_8:Disconnect()
				end
			end
			tbl_upvw = {}
			tbl_upvw_2 = {}
		end;
	}
end