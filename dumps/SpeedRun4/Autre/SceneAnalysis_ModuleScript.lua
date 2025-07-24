-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:12:57
-- Luau version 6, Types version 3
-- Time taken: 0.014831 seconds

local Players_upvr = game:GetService("Players")
local InGameAssetReporting = script:FindFirstAncestor("InGameAssetReporting")
local random_state_upvw = Random.new()
function getRandomSampleUniformDisk(arg1, arg2, arg3) -- Line 69
	--[[ Upvalues[1]:
		[1]: random_state_upvw (read and write)
	]]
	repeat
		local var4 = random_state_upvw:NextNumber() * 2 * math.pi
		local var5 = math.sqrt(random_state_upvw:NextNumber()) * arg2
		local var6 = arg1.X + math.cos(var4) * var5
		local var7 = arg1.Y + math.sin(var4) * var5
		if 6 < 0 + 1 then
			return arg1
		end
	until 0 > var6 or var6 > arg3.X or 0 > var7 or var7 <= arg3.Y
	return Vector2.new(var6, var7)
end
local GetFIntIGARRaycastTargetCount_upvr = require(InGameAssetReporting.Flags.GetFIntIGARRaycastTargetCount)
function interpretAnnotation(arg1, arg2, arg3) -- Line 88
	--[[ Upvalues[2]:
		[1]: GetFIntIGARRaycastTargetCount_upvr (readonly)
		[2]: Players_upvr (readonly)
	]]
	local var9_upvw = false
	local module_2_upvr = {
		hitCountMap = {};
		stats = {
			targetCount = GetFIntIGARRaycastTargetCount_upvr();
			completedCount = 0;
			hitCount = 0;
			resumptionCount = 0;
			wallTime = 0;
			computeTime = 0;
		};
		highlights = {};
		topLevelObjects = {};
		errorReason = nil;
	}
	local function cancel() -- Line 109
		--[[ Upvalues[1]:
			[1]: var9_upvw (read and write)
		]]
		var9_upvw = true
	end
	module_2_upvr.cancel = cancel
	module_2_upvr.raycastComputation = coroutine.create(function() -- Line 115
		--[[ Upvalues[2]:
			[1]: arg3 (readonly)
			[2]: module_2_upvr (readonly)
		]]
		arg3(module_2_upvr)
	end)
	local CurrentCamera_upvr = workspace.CurrentCamera
	if CurrentCamera_upvr == nil then
		module_2_upvr.errorReason = "No camera"
		return module_2_upvr
	end
	local ViewportSize_upvr = CurrentCamera_upvr.ViewportSize
	if arg1.X < 0 or ViewportSize_upvr.X < arg1.X or arg1.Y < 0 or ViewportSize_upvr.Y < arg1.Y then
		module_2_upvr.errorReason = "Coordinates out of bounds"
		return module_2_upvr
	end
	if arg2 <= 0 or math.max(ViewportSize_upvr.X, ViewportSize_upvr.Y) < arg2 then
		module_2_upvr.errorReason = "Invalid radius"
		return module_2_upvr
	end
	local LocalPlayer = Players_upvr.LocalPlayer
	if LocalPlayer == nil then
		module_2_upvr.errorReason = "No local player"
		return module_2_upvr
	end
	local tbl_13_upvr = {LocalPlayer.Character}
	module_2_upvr.raycastComputation = coroutine.create(function() -- Line 146
		--[[ Upvalues[8]:
			[1]: tbl_13_upvr (readonly)
			[2]: module_2_upvr (readonly)
			[3]: var9_upvw (read and write)
			[4]: arg1 (readonly)
			[5]: arg2 (readonly)
			[6]: ViewportSize_upvr (readonly)
			[7]: CurrentCamera_upvr (readonly)
			[8]: arg3 (readonly)
		]]
		local RaycastParams_new_result1 = RaycastParams.new()
		RaycastParams_new_result1.FilterType = Enum.RaycastFilterType.Exclude
		RaycastParams_new_result1.FilterDescendantsInstances = tbl_13_upvr
		RaycastParams_new_result1.IgnoreWater = true
		local var23
		for _ = 1, module_2_upvr.stats.targetCount do
			local var24
			if var9_upvw then break end
			local function INLINED() -- Internal function, doesn't exist in bytecode
				stats_6.resumptionCount += 1
				local stats_6 = module_2_upvr.stats
				var23 = os.clock()
				task.wait()
				stats_8.computeTime += var24
				var24 = os.clock() - var23
				local stats_8 = module_2_upvr.stats
				return var9_upvw
			end
			if var23 + 0.011111111111111112 >= os.clock() or INLINED() then break end
			var24 = arg2
			local getRandomSampleUniformDisk_result1 = getRandomSampleUniformDisk(arg1, var24, ViewportSize_upvr)
			local any_ViewportPointToRay_result1 = CurrentCamera_upvr:ViewportPointToRay(getRandomSampleUniformDisk_result1.X, getRandomSampleUniformDisk_result1.Y)
			var24 = nil
			for i_2 = 1, 5 do
				var24 = workspace:Raycast(any_ViewportPointToRay_result1.Origin, any_ViewportPointToRay_result1.Direction * 5000, RaycastParams_new_result1)
				if var24 == nil then break end
				local Instance_2 = var24.Instance
				if 0.05 < (1 - Instance_2.Transparency) * (1 - Instance_2.LocalTransparencyModifier) then break end
				table.insert(tbl_13_upvr, Instance_2)
				RaycastParams_new_result1.FilterDescendantsInstances = tbl_13_upvr
				var24 = nil
				local var30
			end
			if var24 then
				local Instance = var24.Instance
				if Instance ~= nil then
					i_2 = module_2_upvr
					var30 = i_2.stats
					i_2 = var30.hitCount
					i_2 += 1
					var30.hitCount = i_2
				end
				var30 = nil
				while Instance ~= nil do
					i_2 = Instance:IsA("PVInstance")
					local function INLINED_2() -- Internal function, doesn't exist in bytecode
						i_2 = Instance:IsA("Accessory")
						return i_2
					end
					if i_2 or not INLINED_2() then break end
					i_2 = workspace
					if Instance == i_2 then break end
					i_2 = module_2_upvr.hitCountMap[Instance]
					if not i_2 then
						i_2 = module_2_upvr.hitCountMap
						i_2[Instance] = {
							raycastHits = 0;
							children = {};
						}
					end
					i_2 = module_2_upvr.hitCountMap[Instance]
					i_2.raycastHits += 1
					if var30 then
						i_2 = module_2_upvr.hitCountMap[Instance].children
						i_2[var30] = true
					end
					var30 = Instance
				end
				if var30 then
					i_2 = module_2_upvr.topLevelObjects
					i_2[var30] = (module_2_upvr.topLevelObjects[var30] or 0) + 1
				end
			end
			local stats_7 = module_2_upvr.stats
			stats_7.completedCount += 1
		end
		module_2_upvr.stats.wallTime = os.clock() - os.clock()
		local stats_11 = module_2_upvr.stats
		stats_11.computeTime += os.clock() - var23
		arg3(module_2_upvr)
	end)
	return module_2_upvr
end
function createPlayerCharacterReferenceToPlayerMap(arg1) -- Line 237
	for _, v in ipairs(arg1) do
		local Character = v.Character
		if Character then
			({})[Character] = v
		end
	end
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	return {}
end
function descendingOrderBySecondElement(arg1, arg2) -- Line 248
	local var41
	if arg2[2] >= arg1[2] then
		var41 = false
	else
		var41 = true
	end
	return var41
end
local GetFIntIGARSubtreeDivergenceThresholdPerMille_upvr = require(InGameAssetReporting.Flags.GetFIntIGARSubtreeDivergenceThresholdPerMille)
function createTraversalTaskList(arg1, arg2) -- Line 255
	--[[ Upvalues[2]:
		[1]: Players_upvr (readonly)
		[2]: GetFIntIGARSubtreeDivergenceThresholdPerMille_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 41 start (CF ANALYSIS FAILED)
	local _ = createPlayerCharacterReferenceToPlayerMap(Players_upvr:GetPlayers())
	local tbl_5 = {}
	local var52
	for i_4, v_2 in pairs(arg2) do
		nil(tbl_5, {i_4, v_2})
	end
	table.sort(tbl_5, descendingOrderBySecondElement)
	local ipairs_result1, ipairs_result2_2, ipairs_result3_3 = ipairs(tbl_5)
	-- KONSTANTERROR: [0] 1. Error Block 41 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [156] 113. Error Block 28 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [156] 113. Error Block 28 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [46] 33. Error Block 53 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	if i_4 ~= nil then
		-- KONSTANTWARNING: GOTO [156] #113
	end
	-- KONSTANTERROR: [46] 33. Error Block 53 end (CF ANALYSIS FAILED)
end
function mutateMergeExtractedAssets(arg1, arg2, arg3) -- Line 343
	for _, v_3 in ipairs(arg3.Image) do
		if not arg1[v_3] then
			arg1[v_3] = true
			table.insert(arg2.Image, v_3)
		end
	end
	for _, v_4 in ipairs(arg3.Mesh) do
		if not arg1[v_4] then
			arg1[v_4] = true
			table.insert(arg2.Mesh, v_4)
		end
	end
	for _, v_5 in ipairs(arg3.Model) do
		if not arg1[v_5] then
			arg1[v_5] = true
			table.insert(arg2.Model, v_5)
		end
	end
	for _, v_6 in ipairs(arg3.Package) do
		if not arg1[v_6.id] then
			arg1[v_6.id] = true
			table.insert(arg2.Package, v_6)
		end
	end
end
function interpretInstanceListForGUIObjects(arg1) -- Line 378
	local module = {
		hitCountMap = {};
		stats = {
			targetCount = 0;
			completedCount = 0;
			hitCount = 0;
			resumptionCount = 0;
			wallTime = 0;
			computeTime = 0;
		};
		highlights = {};
		topLevelObjects = {};
		errorReason = nil;
	}
	local function cancel() -- Line 392
	end
	module.cancel = cancel
	for _, v_7 in ipairs(arg1) do
		local var86
		while v_7 ~= nil and v_7:IsA("GuiObject") do
			if not module.hitCountMap[v_7] then
				module.hitCountMap[v_7] = {
					raycastHits = 0;
					children = {};
				}
			end
			local var88 = module.hitCountMap[v_7]
			var88.raycastHits += 1
			if var86 then
				module.hitCountMap[v_7].children[var86] = true
			end
			var86 = v_7
			v_7 = v_7.Parent
		end
		if var86 then
			module.topLevelObjects[var86] = (module.topLevelObjects[var86] or 0) + 1
		end
	end
	return module
end
local extractAssetIdsFromInstance_upvr = require(InGameAssetReporting.Analysis.extractAssetIdsFromInstance)
function extractItemsFromInterpretations(arg1, arg2) -- Line 421
	--[[ Upvalues[1]:
		[1]: extractAssetIdsFromInstance_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local var130_upvw = false
	local module_3_upvr = {
		extractedAssets = {
			Package = {};
			Model = {};
			Image = {};
			Mesh = {};
		};
		extractedPlayers = {};
		cancel = function() -- Line 435, Named "cancel"
			--[[ Upvalues[1]:
				[1]: var130_upvw (read and write)
			]]
			var130_upvw = true
		end;
		stats = {
			hitCountMapSize = 0;
			topLevelObjectsSize = 0;
			instancesTraversed = 0;
			traversalTaskListSize = 0;
			traversalTasksCompleted = 0;
			playersCount = 0;
			resumptionCount = 0;
			wallTime = 0;
			computeTime = 0;
			raycastTargetCount = 0;
			raycastCompletedCount = 0;
			raycastResumptionCount = 0;
			raycastComputeTime = 0;
		};
		computation = coroutine.create(function() -- Line 454
			--[[ Upvalues[2]:
				[1]: arg2 (readonly)
				[2]: module_3_upvr (readonly)
			]]
			arg2(module_3_upvr)
		end);
	}
	for _, v_8 in ipairs(arg1) do
		v_8.cancel()
		local stats_18 = module_3_upvr.stats
		stats_18.raycastTargetCount += v_8.stats.targetCount
		local stats_12 = module_3_upvr.stats
		stats_12.raycastCompletedCount += v_8.stats.completedCount
		local stats_3 = module_3_upvr.stats
		stats_3.raycastResumptionCount += v_8.stats.resumptionCount
		local stats_9 = module_3_upvr.stats
		stats_9.raycastComputeTime += v_8.stats.computeTime
	end
	local tbl_3 = {}
	local tbl_7 = {}
	for _, v_9 in ipairs(arg1) do
		for i_12, v_10 in pairs(v_9.hitCountMap) do
			if not tbl_3[i_12] then
				tbl_3[i_12] = {
					raycastHits = 0;
					children = {};
				}
				local stats = module_3_upvr.stats
				stats.hitCountMapSize += 1
			end
			local var152 = tbl_3[i_12]
			var152.raycastHits += v_10.raycastHits
			for i_13, _ in pairs(v_10.children) do
				tbl_3[i_12].children[i_13] = true
				local var156_upvr
			end
		end
		for i_14, v_12 in pairs(v_9.topLevelObjects) do
			local var160 = tbl_7[i_14]
			if not var160 then
				local stats_17 = module_3_upvr.stats
				stats_17.topLevelObjectsSize += 1
			end
			tbl_7[i_14] = (var160 or 0) + v_12
		end
	end
	local createTraversalTaskList_result1_upvr, createTraversalTaskList_result2 = createTraversalTaskList(var156_upvr, tbl_7)
	module_3_upvr.extractedPlayers = createTraversalTaskList_result2
	module_3_upvr.stats.playersCount = #createTraversalTaskList_result2
	module_3_upvr.stats.wallTime = os.clock() - os.clock()
	module_3_upvr.stats.traversalTaskListSize = #createTraversalTaskList_result1_upvr
	module_3_upvr.computation = coroutine.create(function() -- Line 502
		--[[ Upvalues[6]:
			[1]: module_3_upvr (readonly)
			[2]: createTraversalTaskList_result1_upvr (readonly)
			[3]: var130_upvw (read and write)
			[4]: arg2 (readonly)
			[5]: var156_upvr (readonly)
			[6]: extractAssetIdsFromInstance_upvr (copied, readonly)
		]]
		local os_clock_result1_upvw_2 = os.clock()
		local function _() -- Line 505
			--[[ Upvalues[1]:
				[1]: os_clock_result1_upvw_2 (read and write)
			]]
			local var219
			if os_clock_result1_upvw_2 + 0.011111111111111112 >= os.clock() then
				var219 = false
			else
				var219 = true
			end
			return var219
		end
		local function _() -- Line 508
			--[[ Upvalues[2]:
				[1]: module_3_upvr (copied, readonly)
				[2]: os_clock_result1_upvw_2 (read and write)
			]]
			local stats_14 = module_3_upvr.stats
			stats_14.computeTime += os.clock() - os_clock_result1_upvw_2
			task.wait()
			os_clock_result1_upvw_2 = os.clock()
			local stats_19 = module_3_upvr.stats
			stats_19.resumptionCount += 1
		end
		local tbl_12 = {}
		local var227
		for _, v_13 in ipairs(createTraversalTaskList_result1_upvr) do
			local tbl_8 = {}
			local tbl_11 = {}
			table.insert(tbl_8, v_13.instance)
			while true do
				local var230
				if 0 >= var230 then break end
				if var227 + 0.011111111111111112 >= os.clock() then
					var230 = false
				else
					var230 = true
				end
				if var230 then
					var230 = module_3_upvr.stats
					var230.computeTime += os.clock() - var227
					var230 = task.wait
					var230()
					var230 = os.clock()
					var227 = var230
					var230 = module_3_upvr.stats
					var230.resumptionCount += 1
					var230 = var130_upvw
					if var230 then
						var230 = module_3_upvr.stats
						var230.wallTime += os.clock() - os.clock()
						var230 = arg2
						var230(module_3_upvr)
						return
					end
				end
				var230 = table.remove(tbl_8)
				if not tbl_12[var230] then
					table.insert(tbl_11, var230)
					local tbl_6 = {}
					for _, v_14 in pairs(var230:GetChildren()) do
						local tbl = {}
						local var236
						if var156_upvr[v_14] then
							var236 = var156_upvr[v_14].raycastHits
						else
							var236 = 0
						end
						tbl[1] = v_14
						tbl[2] = var236
						table.insert(tbl_6, tbl)
					end
					table.sort(tbl_6, descendingOrderBySecondElement)
					for _, v_15 in ipairs(tbl_6) do
						table.insert(tbl_8, v_15[1])
					end
					tbl_12[var230] = true
				end
			end
			while true do
				var230 = #tbl_11
				if 0 >= var230 then break end
				if var227 + 0.011111111111111112 >= os.clock() then
					var230 = false
				else
					var230 = true
				end
				if var230 then
					var230 = module_3_upvr.stats
					var230.computeTime += os.clock() - var227
					var230 = task.wait
					var230()
					var230 = os.clock()
					var230 = module_3_upvr.stats
					var230.resumptionCount += 1
					var230 = var130_upvw
					if var230 then
						var230 = module_3_upvr.stats
						-- KONSTANTERROR: Expression was reused, decompilation is incorrect
						var230.wallTime += os.clock() - os.clock()
						var230 = arg2
						var230(module_3_upvr)
						return
					end
				end
				var230 = table.remove(tbl_11)
				local var89_result1 = extractAssetIdsFromInstance_upvr(var230)
				if var89_result1 then
					mutateMergeExtractedAssets({}, module_3_upvr.extractedAssets, var89_result1)
				end
				local stats_2 = module_3_upvr.stats
				stats_2.instancesTraversed += 1
			end
			local stats_16 = module_3_upvr.stats
			stats_16.traversalTasksCompleted += 1
		end
		local stats_20 = module_3_upvr.stats
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		stats_20.wallTime += os.clock() - os.clock()
		local stats_15 = module_3_upvr.stats
		stats_15.computeTime += os.clock() - var230
		arg2(module_3_upvr)
	end)
	return module_3_upvr
end
return {
	interpretAnnotation = interpretAnnotation;
	extractItemsFromInterpretations = extractItemsFromInterpretations;
	interpretInstanceListForGUIObjects = interpretInstanceListForGUIObjects;
	__setRandomGenerator = function(arg1) -- Line 600, Named "__setRandomGenerator"
		--[[ Upvalues[1]:
			[1]: random_state_upvw (read and write)
		]]
		random_state_upvw = arg1
	end;
}