-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:13:41
-- Luau version 6, Types version 3
-- Time taken: 0.006018 seconds

local tbl_2_upvr = {
	PlayerChildAdded = "PlayerChildAdded";
	PlayerChildRemoved = "PlayerChildRemoved";
	LeaderstatNameChanged = "LeaderstatNameChanged";
	StatChanged = "StatChanged";
	StatChildAdded = "StatChildAdded";
	StatChildRemoved = "StatChildRemoved";
}
local Signals_upvr = require(script.Parent.Parent.Signals)
local createSignalMap_upvr = require(script.Parent.createSignalMap)
local createRBXEventSignal_upvr = require(script.Parent.createRBXEventSignal)
local getScoreValue_upvr = require(script.Parent.getScoreValue)
local isValidStat_upvr = require(script.Parent.isValidStat)
return function(arg1, arg2, arg3, arg4, arg5) -- Line 49, Named "createPlayerStore"
	--[[ Upvalues[6]:
		[1]: Signals_upvr (readonly)
		[2]: createSignalMap_upvr (readonly)
		[3]: createRBXEventSignal_upvr (readonly)
		[4]: getScoreValue_upvr (readonly)
		[5]: tbl_2_upvr (readonly)
		[6]: isValidStat_upvr (readonly)
	]]
	local tbl_4_upvw = {}
	local tbl_3_upvw = {}
	local any_createSignal_result1, any_createSignal_result2_upvr = Signals_upvr.createSignal(0)
	local createSignalMap_upvr_result1_upvr = createSignalMap_upvr()
	local var12_upvw = "Neutral"
	local module_upvr = {
		order = any_createSignal_result1;
		stats = createSignalMap_upvr_result1_upvr;
	}
	local function _() -- Line 69, Named "getPlayerTeam"
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		return arg1.Team or "Neutral"
	end
	local function _(arg1_2, arg2_2, arg3_2) -- Line 74, Named "addStatConnection"
		--[[ Upvalues[1]:
			[1]: tbl_3_upvw (read and write)
		]]
		if tbl_3_upvw[arg1_2] == nil then
			tbl_3_upvw[arg1_2] = {}
		end
		tbl_3_upvw[arg1_2][arg2_2] = arg3_2
	end
	local function _(arg1_3, arg2_3) -- Line 81, Named "_removeStatConnection"
		--[[ Upvalues[1]:
			[1]: tbl_3_upvw (read and write)
		]]
		local var14 = tbl_3_upvw[arg1_3]
		if var14 == nil then
		else
			local var15 = var14[arg2_3]
			if var15 then
				if var15.Disconnect then
					var15:Disconnect()
				end
				var14[arg2_3] = nil
			end
		end
	end
	local function onStatAdded_upvr(arg1_4) -- Line 96, Named "onStatAdded"
		--[[ Upvalues[10]:
			[1]: createRBXEventSignal_upvr (copied, readonly)
			[2]: Signals_upvr (copied, readonly)
			[3]: getScoreValue_upvr (copied, readonly)
			[4]: arg2 (readonly)
			[5]: createSignalMap_upvr_result1_upvr (readonly)
			[6]: arg4 (readonly)
			[7]: var12_upvw (read and write)
			[8]: arg5 (readonly)
			[9]: tbl_2_upvr (copied, readonly)
			[10]: tbl_3_upvw (read and write)
		]]
		local createRBXEventSignal_upvr_result1_upvr, createRBXEventSignal_upvr_result2_upvr = createRBXEventSignal_upvr(arg1_4.Changed, arg1_4.Value)
		local any_createComputed_result1_upvr = Signals_upvr.createComputed(function(arg1_5) -- Line 99
			--[[ Upvalues[2]:
				[1]: getScoreValue_upvr (copied, readonly)
				[2]: createRBXEventSignal_upvr_result1_upvr (readonly)
			]]
			return getScoreValue_upvr(createRBXEventSignal_upvr_result1_upvr(arg1_5))
		end)
		arg2(arg1_4)
		createSignalMap_upvr_result1_upvr.setData(arg1_4.Name, any_createComputed_result1_upvr, false)
		local Name = arg1_4.Name
		local tbl = {}
		local any_createEffect_result1_upvr = Signals_upvr.createEffect(function(arg1_6) -- Line 108
			--[[ Upvalues[5]:
				[1]: any_createComputed_result1_upvr (readonly)
				[2]: arg4 (copied, readonly)
				[3]: var12_upvw (copied, read and write)
				[4]: arg1_4 (readonly)
				[5]: arg5 (copied, readonly)
			]]
			any_createComputed_result1_upvr(arg1_6)
			arg4(var12_upvw, arg1_4.Name)
			arg5(var12_upvw, arg1_4.Name)
		end)
		function tbl.Disconnect() -- Line 115
			--[[ Upvalues[2]:
				[1]: any_createEffect_result1_upvr (readonly)
				[2]: createRBXEventSignal_upvr_result2_upvr (readonly)
			]]
			any_createEffect_result1_upvr()
			createRBXEventSignal_upvr_result2_upvr:Disconnect()
		end
		if tbl_3_upvw[Name] == nil then
			tbl_3_upvw[Name] = {}
		end
		tbl_3_upvw[Name][tbl_2_upvr.StatChanged] = tbl
		local Name_2 = arg1_4.Name
		if tbl_3_upvw[Name_2] == nil then
			tbl_3_upvw[Name_2] = {}
		end
		tbl_3_upvw[Name_2][tbl_2_upvr.StatChildAdded] = arg1_4.ChildAdded:Connect(function() -- Line 122
			--[[ Upvalues[2]:
				[1]: arg2 (copied, readonly)
				[2]: arg1_4 (readonly)
			]]
			arg2(arg1_4)
		end)
		local Name_3 = arg1_4.Name
		if tbl_3_upvw[Name_3] == nil then
			tbl_3_upvw[Name_3] = {}
		end
		tbl_3_upvw[Name_3][tbl_2_upvr.StatChildRemoved] = arg1_4.ChildRemoved:Connect(function() -- Line 127
			--[[ Upvalues[2]:
				[1]: arg2 (copied, readonly)
				[2]: arg1_4 (readonly)
			]]
			arg2(arg1_4)
		end)
	end
	local function onStatRemoved_upvr(arg1_7) -- Line 133, Named "onStatRemoved"
		--[[ Upvalues[3]:
			[1]: tbl_3_upvw (read and write)
			[2]: createSignalMap_upvr_result1_upvr (readonly)
			[3]: arg3 (readonly)
		]]
		local var30 = tbl_3_upvw[arg1_7.Name]
		if var30 == nil then
		else
			for _, v_6 in pairs(var30) do
				if v_6.Disconnect then
					v_6:Disconnect()
				end
			end
			tbl_3_upvw[arg1_7.Name] = nil
			createSignalMap_upvr_result1_upvr.removeData(arg1_7.Name, false)
			arg3(arg1_7)
		end
	end
	local function leaderstatsAdded_upvr(arg1_8) -- Line 149, Named "leaderstatsAdded"
		--[[ Upvalues[4]:
			[1]: isValidStat_upvr (copied, readonly)
			[2]: onStatAdded_upvr (readonly)
			[3]: tbl_4_upvw (read and write)
			[4]: onStatRemoved_upvr (readonly)
		]]
		tbl_4_upvw.leaderstatsChildAdded = arg1_8.ChildAdded:Connect(function(arg1_9) -- Line 150
			--[[ Upvalues[2]:
				[1]: isValidStat_upvr (copied, readonly)
				[2]: onStatAdded_upvr (copied, readonly)
			]]
			if isValidStat_upvr(arg1_9) then
				onStatAdded_upvr(arg1_9)
			end
		end)
		tbl_4_upvw.leaderstatsChildRemoved = arg1_8.ChildRemoved:Connect(function(arg1_10) -- Line 157
			--[[ Upvalues[2]:
				[1]: isValidStat_upvr (copied, readonly)
				[2]: onStatRemoved_upvr (copied, readonly)
			]]
			if isValidStat_upvr(arg1_10) then
				onStatRemoved_upvr(arg1_10)
			end
		end)
		for _, v in ipairs(arg1_8:GetChildren()) do
			if isValidStat_upvr(v) then
				onStatAdded_upvr(v)
			end
		end
	end
	local function onPlayerChildAdded_upvr(arg1_11) -- Line 173, Named "onPlayerChildAdded"
		--[[ Upvalues[3]:
			[1]: leaderstatsAdded_upvr (readonly)
			[2]: tbl_4_upvw (read and write)
			[3]: tbl_2_upvr (copied, readonly)
		]]
		-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
		local var44
		if arg1_11.Name ~= "leaderstats" then
			var44 = false
		else
			var44 = true
		end
		if not arg1_11:IsA("ValueBase") then
			if not arg1_11:IsA("Folder") then
			end
		end
		if not var44 and not arg1_11:IsA("Model") then
		else
			tbl_4_upvw[tbl_2_upvr.LeaderstatNameChanged] = arg1_11.Changed:Connect(function(arg1_13) -- Line 180
				--[[ Upvalues[2]:
					[1]: arg1_11 (readonly)
					[2]: leaderstatsAdded_upvr (copied, readonly)
				]]
				if arg1_13 == "Name" and arg1_11.Name == "leaderstats" then
					leaderstatsAdded_upvr(arg1_11)
				end
			end)
			if arg1_11.Name == "leaderstats" then
				leaderstatsAdded_upvr(arg1_11)
			end
		end
	end
	local function onPlayerChildRemoved_upvr(arg1_14) -- Line 194, Named "onPlayerChildRemoved"
		--[[ Upvalues[4]:
			[1]: isValidStat_upvr (copied, readonly)
			[2]: onStatRemoved_upvr (readonly)
			[3]: arg5 (readonly)
			[4]: var12_upvw (read and write)
		]]
		if arg1_14.Name == "leaderstats" then
			for _, v_2 in ipairs(arg1_14:GetChildren()) do
				if isValidStat_upvr(v_2) then
					onStatRemoved_upvr(v_2)
				end
			end
		end
		arg5(var12_upvw)
	end
	var12_upvw = arg1.Team or "Neutral"
	local var59_upvw = var12_upvw
	;(function() -- Line 207, Named "connectPlayerEvents"
		--[[ Upvalues[6]:
			[1]: arg1 (readonly)
			[2]: onPlayerChildAdded_upvr (readonly)
			[3]: tbl_4_upvw (read and write)
			[4]: tbl_2_upvr (copied, readonly)
			[5]: onPlayerChildRemoved_upvr (readonly)
			[6]: leaderstatsAdded_upvr (readonly)
		]]
		tbl_4_upvw[tbl_2_upvr.PlayerChildAdded] = arg1.ChildAdded:Connect(function(arg1_15) -- Line 208
			--[[ Upvalues[1]:
				[1]: onPlayerChildAdded_upvr (copied, readonly)
			]]
			onPlayerChildAdded_upvr(arg1_15)
		end)
		tbl_4_upvw[tbl_2_upvr.PlayerChildRemoved] = arg1.ChildRemoved:Connect(function(arg1_16) -- Line 213
			--[[ Upvalues[1]:
				[1]: onPlayerChildRemoved_upvr (copied, readonly)
			]]
			onPlayerChildRemoved_upvr(arg1_16)
		end)
		local leaderstats = arg1:FindFirstChild("leaderstats")
		if leaderstats then
			leaderstatsAdded_upvr(leaderstats)
		else
			for _, v_7 in ipairs(arg1:GetChildren()) do
				onPlayerChildAdded_upvr(v_7)
			end
		end
	end)()
	return {
		getPlayer = function() -- Line 271, Named "getPlayer"
			--[[ Upvalues[1]:
				[1]: arg1 (readonly)
			]]
			return arg1
		end;
		getPlayerEntry = function() -- Line 274, Named "getPlayerEntry"
			--[[ Upvalues[1]:
				[1]: module_upvr (readonly)
			]]
			return module_upvr
		end;
		getStatValue = function(arg1_17, arg2_4) -- Line 233, Named "getStatValue"
			--[[ Upvalues[1]:
				[1]: createSignalMap_upvr_result1_upvr (readonly)
			]]
			local any_getData_result1 = createSignalMap_upvr_result1_upvr.getData(arg1_17, false)
			if any_getData_result1 then
				return any_getData_result1(arg2_4)
			end
			return nil
		end;
		getTeam = function() -- Line 278, Named "getTeam"
			--[[ Upvalues[1]:
				[1]: var59_upvw (read and write)
			]]
			return var59_upvw
		end;
		setOrder = function(arg1_18) -- Line 241, Named "setOrder"
			--[[ Upvalues[1]:
				[1]: any_createSignal_result2_upvr (readonly)
			]]
			any_createSignal_result2_upvr(arg1_18)
		end;
		setTeam = function(arg1_19) -- Line 245, Named "setTeam"
			--[[ Upvalues[1]:
				[1]: var59_upvw (read and write)
			]]
			var59_upvw = arg1_19
		end;
		destroy = function() -- Line 249, Named "destroy"
			--[[ Upvalues[2]:
				[1]: tbl_3_upvw (read and write)
				[2]: tbl_4_upvw (read and write)
			]]
			for _, v_3 in pairs(tbl_3_upvw) do
				for _, v_4 in pairs(v_3) do
					if v_4.Disconnect then
						v_4:Disconnect()
					end
				end
			end
			tbl_3_upvw = {}
			for _, v_5 in pairs(tbl_4_upvw) do
				if v_5.Disconnect then
					v_5:Disconnect()
				end
			end
			tbl_4_upvw = {}
		end;
	}
end