-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:47:55
-- Luau version 6, Types version 3
-- Time taken: 0.013579 seconds

local RobloxReplicatedStorage_upvr = game:GetService("RobloxReplicatedStorage")
local CorePackages = game:GetService("CorePackages")
local Players_upvr = game:GetService("Players")
local Cryo_upvr = require(CorePackages.Packages.Cryo)
local Parent = script.Parent.Parent.Parent
local FormatStatString_upvr = require(Parent.FormatStatString)
local any_extend_result1 = require(CorePackages.Packages.Roact).PureComponent:extend("LeaderstatsConnector")
local FFlagLeaderstatsWithASideOfClient_upvr = require(Parent.Flags.FFlagLeaderstatsWithASideOfClient)
local function isValidStat_upvr(arg1) -- Line 44, Named "isValidStat"
	local children_2 = arg1:IsA("StringValue")
	if not children_2 then
		children_2 = arg1:IsA("IntValue")
		if not children_2 then
			children_2 = arg1:IsA("BoolValue")
			if not children_2 then
				children_2 = arg1:IsA("NumberValue")
				if not children_2 then
					children_2 = arg1:IsA("DoubleConstrainedValue")
					if not children_2 then
						children_2 = arg1:IsA("IntConstrainedValue")
					end
				end
			end
		end
	end
	return children_2
end
local function _(arg1) -- Line 53, Named "getScoreValue"
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [5] 5. Error Block 15 start (CF ANALYSIS FAILED)
	if arg1:IsA("IntConstrainedValue") then
		-- KONSTANTERROR: [10] 9. Error Block 12 start (CF ANALYSIS FAILED)
		do
			return arg1.ConstrainedValue
		end
		-- KONSTANTERROR: [10] 9. Error Block 12 end (CF ANALYSIS FAILED)
	end
	if arg1:IsA("BoolValue") then
		if arg1.Value then
			return 1
		end
		return 0
	end
	do
		return arg1.Value
	end
	-- KONSTANTERROR: [5] 5. Error Block 15 end (CF ANALYSIS FAILED)
end
local var18_upvw
if FFlagLeaderstatsWithASideOfClient_upvr then
	local BindableEvent_upvw = Instance.new("BindableEvent")
	local LeaderstatsOrder_2 = RobloxReplicatedStorage_upvr:GetAttribute("LeaderstatsOrder")
	if not LeaderstatsOrder_2 then
		LeaderstatsOrder_2 = {}
	end
	var18_upvw = LeaderstatsOrder_2
	RobloxReplicatedStorage_upvr:GetAttributeChangedSignal("LeaderstatsOrder"):Connect(function() -- Line 75
		--[[ Upvalues[3]:
			[1]: var18_upvw (read and write)
			[2]: RobloxReplicatedStorage_upvr (readonly)
			[3]: BindableEvent_upvw (read and write)
		]]
		local LeaderstatsOrder = RobloxReplicatedStorage_upvr:GetAttribute("LeaderstatsOrder")
		if not LeaderstatsOrder then
			LeaderstatsOrder = {}
		end
		var18_upvw = LeaderstatsOrder
		BindableEvent_upvw:Fire(var18_upvw)
	end)
	local HttpService_upvr = game:GetService("HttpService")
	local function mapDispatchToProps_upvr(arg1) -- Line 84, Named "decodeJSON"
		--[[ Upvalues[1]:
			[1]: HttpService_upvr (readonly)
		]]
		return HttpService_upvr:JSONDecode(arg1)
	end
	local function _(arg1) -- Line 88, Named "decodeAddOrder"
		--[[ Upvalues[1]:
			[1]: mapDispatchToProps_upvr (readonly)
		]]
		local pcall_result1_4, pcall_result2 = pcall(mapDispatchToProps_upvr, arg1)
		local var26
		local function INLINED() -- Internal function, doesn't exist in bytecode
			var26 = pcall_result2
			return var26
		end
		if not pcall_result1_4 or not INLINED() then
			var26 = {}
		end
		return var26
	end
	local var27_upvw
	var27_upvw = RobloxReplicatedStorage_upvr.ChildAdded:Connect(function(arg1) -- Line 95, Named "childAdded"
		--[[ Upvalues[4]:
			[1]: var27_upvw (read and write)
			[2]: var18_upvw (read and write)
			[3]: mapDispatchToProps_upvr (readonly)
			[4]: BindableEvent_upvw (read and write)
		]]
		-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [4] 3. Error Block 2 start (CF ANALYSIS FAILED)
		do
			return
		end
		-- KONSTANTERROR: [4] 3. Error Block 2 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [5] 4. Error Block 3 start (CF ANALYSIS FAILED)
		var27_upvw:Disconnect()
		local pcall_result1_3, _ = pcall(mapDispatchToProps_upvr, arg1.Value)
		-- KONSTANTERROR: [5] 4. Error Block 3 end (CF ANALYSIS FAILED)
	end)
	for _, v in ipairs(RobloxReplicatedStorage_upvr:GetChildren()) do
		if v.Name ~= "LeaderstatsOrder" then
		else
			var27_upvw:Disconnect()
			local pcall_result1, pcall_result2_3 = pcall(mapDispatchToProps_upvr, v.Value)
			local function INLINED_2() -- Internal function, doesn't exist in bytecode
				var18_upvw = pcall_result2_3
				return var18_upvw
			end
			if not pcall_result1 or not INLINED_2() then
				var18_upvw = {}
			end
			v.Changed:Connect(function(arg1) -- Line 101
				--[[ Upvalues[3]:
					[1]: var18_upvw (read and write)
					[2]: mapDispatchToProps_upvr (readonly)
					[3]: BindableEvent_upvw (read and write)
				]]
				local pcall_result1_2, pcall_result2_2 = pcall(mapDispatchToProps_upvr, arg1)
				local var38
				local function INLINED_3() -- Internal function, doesn't exist in bytecode
					var38 = pcall_result2_2
					return var38
				end
				if not pcall_result1_2 or not INLINED_3() then
					var38 = {}
				end
				var18_upvw = var38
				var38 = BindableEvent_upvw:Fire
				var38(var18_upvw)
			end)
		end
	end
end
function HttpService_upvr(arg1) -- Line 115, Named "init"
	arg1.playerConnections = {}
end
any_extend_result1.init = HttpService_upvr
function HttpService_upvr(arg1, arg2) -- Line 119, Named "checkGameStatsExist"
	local tbl_3 = {}
	for _, v_2 in ipairs(arg1.props.gameStats) do
		tbl_3[v_2.name] = false
	end
	for _, v_3 in ipairs(arg1.props.players) do
		if v_3 ~= arg2 then
			local leaderstats_3 = v_3:FindFirstChild("leaderstats")
			if leaderstats_3 then
				for i_4 in pairs(tbl_3) do
					if leaderstats_3:FindFirstChild(i_4) then
						tbl_3[i_4] = true
					end
				end
			end
		end
	end
	for i_5, v_4 in pairs(tbl_3) do
		if not v_4 then
			arg1.props.removeGameStat(i_5)
		end
	end
end
any_extend_result1.checkGameStatsExist = HttpService_upvr
function HttpService_upvr(arg1, arg2) -- Line 144, Named "addGameStat"
	local var95 = false
	local IsPrimary = arg2:FindFirstChild("IsPrimary")
	local var97
	if IsPrimary then
		if IsPrimary:IsA("BoolValue") then
			var95 = IsPrimary.Value
		else
			var95 = true
		end
	end
	local Priority = arg2:FindFirstChild("Priority")
	if Priority then
		if Priority:IsA("IntValue") or Priority:IsA("NumberValue") then
			var97 = Priority.Value
		end
	end
	arg1.props.addGameStat(arg2.Name, var95, var97)
end
any_extend_result1.addGameStat = HttpService_upvr
function HttpService_upvr(arg1, arg2, arg3) -- Line 163, Named "onStatAdded"
	--[[ Upvalues[5]:
		[1]: Players_upvr (readonly)
		[2]: FormatStatString_upvr (readonly)
		[3]: FFlagLeaderstatsWithASideOfClient_upvr (readonly)
		[4]: BindableEvent_upvw (read and write)
		[5]: var18_upvw (read and write)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 54 start (CF ANALYSIS FAILED)
	table.insert(arg1.playerConnections[arg2], arg3.Changed:Connect(function() -- Line 164
		--[[ Upvalues[5]:
			[1]: arg1 (readonly)
			[2]: arg2 (readonly)
			[3]: arg3 (readonly)
			[4]: Players_upvr (copied, readonly)
			[5]: FormatStatString_upvr (copied, readonly)
		]]
		-- KONSTANTERROR: [0] 1. Error Block 45 start (CF ANALYSIS FAILED)
		local var100 = arg3
		local var101
		if var100:IsA("DoubleConstrainedValue") or var100:IsA("IntConstrainedValue") then
			var101 = var100.ConstrainedValue
			-- KONSTANTWARNING: GOTO [38] #30
		end
		-- KONSTANTERROR: [0] 1. Error Block 45 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [23] 18. Error Block 49 start (CF ANALYSIS FAILED)
		if var100:IsA("BoolValue") then
			if var100.Value then
				var101 = 1
			else
				var101 = 0
			end
		else
			var101 = var100.Value
		end
		arg1.props.setPlayerLeaderstat(arg2, arg3.Name, var101)
		if arg2 == Players_upvr.LocalPlayer then
			local var102 = arg3
			if var102:IsA("DoubleConstrainedValue") or var102:IsA("IntConstrainedValue") then
			elseif var102:IsA("BoolValue") then
				if var102.Value then
				else
				end
			else
			end
			arg1.props.setGameStatText(arg3.Name, FormatStatString_upvr(var102.Value))
		end
		-- KONSTANTERROR: [23] 18. Error Block 49 end (CF ANALYSIS FAILED)
	end))
	local var103
	if FFlagLeaderstatsWithASideOfClient_upvr then
		if arg2 == Players_upvr.LocalPlayer then
			table.insert(arg1.playerConnections[arg2], arg3:GetPropertyChangedSignal("Name"):Connect(function() -- Line 173
				--[[ Upvalues[3]:
					[1]: arg1 (readonly)
					[2]: arg3 (readonly)
					[3]: FormatStatString_upvr (copied, readonly)
				]]
				-- KONSTANTERROR: [0] 1. Error Block 22 start (CF ANALYSIS FAILED)
				local var105 = arg3
				local var106
				if var105:IsA("DoubleConstrainedValue") or var105:IsA("IntConstrainedValue") then
					var106 = var105.ConstrainedValue
					-- KONSTANTWARNING: GOTO [38] #30
				end
				-- KONSTANTERROR: [0] 1. Error Block 22 end (CF ANALYSIS FAILED)
				-- KONSTANTERROR: [23] 18. Error Block 23 start (CF ANALYSIS FAILED)
				if var105:IsA("BoolValue") then
					if var105.Value then
						var106 = 1
					else
						var106 = 0
					end
				else
					var106 = var105.Value
				end
				arg1.props.setGameStatText(arg3.Name, FormatStatString_upvr(var106))
				-- KONSTANTERROR: [23] 18. Error Block 23 end (CF ANALYSIS FAILED)
			end))
			table.insert(arg1.playerConnections[arg2], BindableEvent_upvw.Event:Connect(function(arg1_2) -- Line 178
				--[[ Upvalues[2]:
					[1]: arg3 (readonly)
					[2]: arg1 (readonly)
				]]
				local Name = arg3.Name
				arg1.props.setGameStatAddId(Name, arg1_2[Name])
			end))
		end
	end
	table.insert(arg1.playerConnections[arg2], arg3.ChildAdded:Connect(function() -- Line 185
		--[[ Upvalues[2]:
			[1]: arg1 (readonly)
			[2]: arg3 (readonly)
		]]
		arg1:addGameStat(arg3)
	end))
	table.insert(arg1.playerConnections[arg2], arg3.ChildRemoved:Connect(function() -- Line 190
		--[[ Upvalues[2]:
			[1]: arg1 (readonly)
			[2]: arg3 (readonly)
		]]
		arg1:addGameStat(arg3)
	end))
	arg1:addGameStat(arg3)
	if arg3:IsA("DoubleConstrainedValue") or arg3:IsA("IntConstrainedValue") then
		var103 = arg3.ConstrainedValue
	elseif arg3:IsA("BoolValue") then
		if arg3.Value then
			var103 = 1
		else
			var103 = 0
		end
	else
		var103 = arg3.Value
	end
	arg1.props.setPlayerLeaderstat(arg2, arg3.Name, var103)
	-- KONSTANTERROR: [0] 1. Error Block 54 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [144] 106. Error Block 55 start (CF ANALYSIS FAILED)
	local Name_2 = arg3.Name
	if FFlagLeaderstatsWithASideOfClient_upvr then
		var103 = var18_upvw[Name_2]
		arg1.props.setGameStatAddId(Name_2, var103)
	end
	var103 = FormatStatString_upvr
	if arg3:IsA("DoubleConstrainedValue") or arg3:IsA("IntConstrainedValue") then
		-- KONSTANTWARNING: GOTO [190] #141
	end
	-- KONSTANTERROR: [144] 106. Error Block 55 end (CF ANALYSIS FAILED)
end
any_extend_result1.onStatAdded = HttpService_upvr
function HttpService_upvr(arg1, arg2, arg3) -- Line 206, Named "leaderstatsAdded"
	--[[ Upvalues[4]:
		[1]: isValidStat_upvr (readonly)
		[2]: Cryo_upvr (readonly)
		[3]: Players_upvr (readonly)
		[4]: FormatStatString_upvr (readonly)
	]]
	table.insert(arg1.playerConnections[arg2], arg3.ChildAdded:Connect(function(arg1_3) -- Line 207
		--[[ Upvalues[3]:
			[1]: isValidStat_upvr (copied, readonly)
			[2]: arg1 (readonly)
			[3]: arg2 (readonly)
		]]
		if isValidStat_upvr(arg1_3) then
			arg1:onStatAdded(arg2, arg1_3)
		end
	end))
	table.insert(arg1.playerConnections[arg2], arg3.ChildRemoved:Connect(function(arg1_4) -- Line 214
		--[[ Upvalues[5]:
			[1]: arg1 (readonly)
			[2]: arg2 (readonly)
			[3]: Cryo_upvr (copied, readonly)
			[4]: Players_upvr (copied, readonly)
			[5]: FormatStatString_upvr (copied, readonly)
		]]
		arg1.props.setPlayerLeaderstat(arg2, arg1_4.Name, Cryo_upvr.None)
		if arg2 == Players_upvr.LocalPlayer then
			arg1.props.setGameStatText(arg1_4.Name, FormatStatString_upvr(nil))
		end
		arg1:checkGameStatsExist()
	end))
	for _, v_5 in ipairs(arg3:GetChildren()) do
		if isValidStat_upvr(v_5) then
			arg1:onStatAdded(arg2, v_5)
		end
	end
end
any_extend_result1.leaderstatsAdded = HttpService_upvr
function HttpService_upvr(arg1, arg2, arg3) -- Line 231, Named "onPlayerChildAdded"
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local var122
	if arg3.Name ~= "leaderstats" then
		var122 = false
	else
		var122 = true
	end
	if not arg3:IsA("ValueBase") then
		if not arg3:IsA("Folder") then
		end
	end
	if not var122 then
		if not arg3:IsA("Model") then return end
	end
	table.insert(arg1.playerConnections[arg2], arg3.Changed:Connect(function(arg1_6) -- Line 238
		--[[ Upvalues[3]:
			[1]: arg3 (readonly)
			[2]: arg1 (readonly)
			[3]: arg2 (readonly)
		]]
		if arg1_6 == "Name" and arg3.Name == "leaderstats" then
			arg1:leaderstatsAdded(arg2, arg3)
		end
	end))
	if arg3.Name == "leaderstats" then
		arg1:leaderstatsAdded(arg2, arg3)
	end
end
any_extend_result1.onPlayerChildAdded = HttpService_upvr
function HttpService_upvr(arg1, arg2) -- Line 251, Named "connectLeaderstatsEvents"
	--[[ Upvalues[3]:
		[1]: Cryo_upvr (readonly)
		[2]: Players_upvr (readonly)
		[3]: FormatStatString_upvr (readonly)
	]]
	arg1.playerConnections[arg2] = {}
	table.insert(arg1.playerConnections[arg2], arg2.ChildAdded:Connect(function(arg1_7) -- Line 253
		--[[ Upvalues[2]:
			[1]: arg1 (readonly)
			[2]: arg2 (readonly)
		]]
		arg1:onPlayerChildAdded(arg2, arg1_7)
	end))
	table.insert(arg1.playerConnections[arg2], arg2.ChildRemoved:Connect(function(arg1_8) -- Line 258
		--[[ Upvalues[5]:
			[1]: arg1 (readonly)
			[2]: arg2 (readonly)
			[3]: Cryo_upvr (copied, readonly)
			[4]: Players_upvr (copied, readonly)
			[5]: FormatStatString_upvr (copied, readonly)
		]]
		if arg1_8.Name == "leaderstats" then
			for _, v_6 in pairs(arg1_8:GetChildren()) do
				arg1.props.setPlayerLeaderstat(arg2, v_6.Name, Cryo_upvr.None)
				if arg2 == Players_upvr.LocalPlayer then
					arg1.props.setGameStatText(v_6.Name, FormatStatString_upvr(nil))
				end
			end
			arg1:checkGameStatsExist()
		end
	end))
	local leaderstats_2 = arg2:FindFirstChild("leaderstats")
	if leaderstats_2 then
		arg1:leaderstatsAdded(arg2, leaderstats_2)
	else
		for _, v_12 in ipairs(arg2:GetChildren()) do
			arg1:onPlayerChildAdded(arg2, v_12)
		end
	end
end
any_extend_result1.connectLeaderstatsEvents = HttpService_upvr
function HttpService_upvr(arg1) -- Line 282, Named "didMount"
	for _, v_7 in ipairs(arg1.props.players) do
		arg1:connectLeaderstatsEvents(v_7)
	end
end
any_extend_result1.didMount = HttpService_upvr
function HttpService_upvr(arg1) -- Line 288, Named "didUpdate"
	local tbl_2 = {}
	for _, v_8 in ipairs(arg1.props.players) do
		tbl_2[v_8] = true
		if not arg1.playerConnections[v_8] then
			arg1:connectLeaderstatsEvents(v_8)
		end
	end
	for i_10 in pairs(arg1.playerConnections) do
		if not tbl_2[i_10] then
			for _, v_9 in ipairs(arg1.playerConnections[i_10]) do
				v_9:Disconnect()
			end
			arg1.playerConnections[i_10] = nil
		end
	end
end
any_extend_result1.didUpdate = HttpService_upvr
function HttpService_upvr(arg1) -- Line 307, Named "render"
	return nil
end
any_extend_result1.render = HttpService_upvr
function HttpService_upvr(arg1) -- Line 311, Named "willUnmount"
	for _, v_10 in pairs(arg1.playerConnections) do
		for _, v_11 in ipairs(v_10) do
			v_11:Disconnect()
		end
	end
	arg1.playerConnections = {}
end
any_extend_result1.willUnmount = HttpService_upvr
function HttpService_upvr(arg1) -- Line 321, Named "mapStateToProps"
	return {
		players = arg1.players;
		gameStats = arg1.gameStats;
	}
end
local AddGameStat_upvr = require(Parent.Actions.AddGameStat)
local RemoveGameStat_upvr = require(Parent.Actions.RemoveGameStat)
local SetPlayerLeaderstat_upvr = require(Parent.Actions.SetPlayerLeaderstat)
local SetGameStatText_upvr = require(Parent.Actions.SetGameStatText)
local SetGameStatAddId_upvr = require(Parent.Actions.SetGameStatAddId)
function mapDispatchToProps_upvr(arg1) -- Line 328, Named "mapDispatchToProps"
	--[[ Upvalues[6]:
		[1]: AddGameStat_upvr (readonly)
		[2]: RemoveGameStat_upvr (readonly)
		[3]: SetPlayerLeaderstat_upvr (readonly)
		[4]: SetGameStatText_upvr (readonly)
		[5]: FFlagLeaderstatsWithASideOfClient_upvr (readonly)
		[6]: SetGameStatAddId_upvr (readonly)
	]]
	local module = {
		addGameStat = function(arg1_9, arg2, arg3) -- Line 330, Named "addGameStat"
			--[[ Upvalues[2]:
				[1]: arg1 (readonly)
				[2]: AddGameStat_upvr (copied, readonly)
			]]
			return arg1(AddGameStat_upvr(arg1_9, arg2, arg3))
		end;
		removeGameStat = function(arg1_10) -- Line 334, Named "removeGameStat"
			--[[ Upvalues[2]:
				[1]: arg1 (readonly)
				[2]: RemoveGameStat_upvr (copied, readonly)
			]]
			return arg1(RemoveGameStat_upvr(arg1_10))
		end;
		setPlayerLeaderstat = function(arg1_11, arg2, arg3) -- Line 338, Named "setPlayerLeaderstat"
			--[[ Upvalues[2]:
				[1]: arg1 (readonly)
				[2]: SetPlayerLeaderstat_upvr (copied, readonly)
			]]
			return arg1(SetPlayerLeaderstat_upvr(arg1_11, arg2, arg3))
		end;
		setGameStatText = function(arg1_12, arg2) -- Line 342, Named "setGameStatText"
			--[[ Upvalues[2]:
				[1]: arg1 (readonly)
				[2]: SetGameStatText_upvr (copied, readonly)
			]]
			return arg1(SetGameStatText_upvr(arg1_12, arg2))
		end;
	}
	local var175
	local function INLINED_4() -- Internal function, doesn't exist in bytecode
		function var175(arg1_13, arg2) -- Line 346
			--[[ Upvalues[2]:
				[1]: arg1 (readonly)
				[2]: SetGameStatAddId_upvr (copied, readonly)
			]]
			return arg1(SetGameStatAddId_upvr(arg1_13, arg2))
		end
		return var175
	end
	if not FFlagLeaderstatsWithASideOfClient_upvr or not INLINED_4() then
		var175 = nil
	end
	module.setGameStatAddId = var175
	return module
end
return require(CorePackages.Packages.RoactRodux).connect(HttpService_upvr, mapDispatchToProps_upvr)(any_extend_result1)