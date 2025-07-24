-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:42:38
-- Luau version 6, Types version 3
-- Time taken: 0.006905 seconds

local ReplicatedStorage = game:GetService("ReplicatedStorage")
local RunService_upvr = game:GetService("RunService")
local UserInputService = game:GetService("UserInputService")
local module_upvr = require(ReplicatedStorage:WaitForChild("CommonData"))
local Modules = ReplicatedStorage:WaitForChild("Modules")
local module_upvr_2 = require(Modules:WaitForChild("ClientData"))
module_upvr_2.ClientDataYieldUntilInitialized()
local MemepointsDisplay_upvr = script.Parent.MemepointsDisplay
local MemeFace_upvr = MemepointsDisplay_upvr:WaitForChild("MemeFace")
local var9_upvr = MemepointsDisplay_upvr.AbsoluteSize.X * 1.5 / 60
local tbl_upvw = {}
local var11 = not UserInputService.KeyboardEnabled
if var11 then
	var11 = UserInputService.TouchEnabled
end
if var11 then
	MemepointsDisplay_upvr.Position = UDim2.new(0.025, 0, 0.21, 0)
end
local function _() -- Line 44, Named "MoveMemePoints"
	--[[ Upvalues[4]:
		[1]: tbl_upvw (read and write)
		[2]: MemeFace_upvr (readonly)
		[3]: var9_upvr (readonly)
		[4]: RunService_upvr (readonly)
	]]
	tbl_upvw = {}
	local var13_upvw = 0.06
	spawn(function() -- Line 48
		--[[ Upvalues[5]:
			[1]: MemeFace_upvr (copied, readonly)
			[2]: tbl_upvw (readonly)
			[3]: var13_upvw (read and write)
			[4]: var9_upvr (copied, readonly)
			[5]: RunService_upvr (copied, readonly)
		]]
		while 0 < #tbl_upvw do
			for i = #tbl_upvw, 1, -1 do
				local var15 = MemeFace_upvr.AbsolutePosition + MemeFace_upvr.AbsoluteSize / 2 - tbl_upvw[i][2]
				local Magnitude = var15.Magnitude
				tbl_upvw[i][3] = (var15 / Magnitude * var13_upvw + tbl_upvw[i][3]).unit
				tbl_upvw[i][2] = tbl_upvw[i][2] + tbl_upvw[i][3] * var9_upvr
				if Magnitude <= MemeFace_upvr.AbsoluteSize.X * 0.5 / 2 then
					tbl_upvw[i][1]:Destroy()
					table.remove(tbl_upvw, i)
				else
					tbl_upvw[i][1].Position = UDim2.new(0, tbl_upvw[i][2].X, 0, tbl_upvw[i][2].Y)
				end
			end
			RunService_upvr.RenderStepped:Wait()
			var13_upvw += 0.001
		end
	end)
end
local PointsSpawn_upvr = MemepointsDisplay_upvr:WaitForChild("PointsSpawn")
local function SpawnMemePoint_upvr() -- Line 70, Named "SpawnMemePoint"
	--[[ Upvalues[4]:
		[1]: PointsSpawn_upvr (readonly)
		[2]: MemeFace_upvr (readonly)
		[3]: MemepointsDisplay_upvr (readonly)
		[4]: tbl_upvw (read and write)
	]]
	local var18 = PointsSpawn_upvr.AbsolutePosition + Vector2.new(PointsSpawn_upvr.AbsoluteSize.X * math.random(), PointsSpawn_upvr.AbsoluteSize.Y * math.random())
	local clone = MemeFace_upvr:Clone()
	clone.Position = UDim2.new(0, var18.X, 0, var18.Y)
	clone.AnchorPoint = Vector2.new(0.5, 0.5)
	clone.Size = UDim2.new(0, MemeFace_upvr.AbsoluteSize.X * 0.5, 0, MemeFace_upvr.AbsoluteSize.Y * 0.5)
	clone.Parent = MemepointsDisplay_upvr.Parent
	tbl_upvw[#tbl_upvw + 1] = {clone, var18, ((MemeFace_upvr.AbsolutePosition + MemeFace_upvr.AbsoluteSize / 2 - var18).unit + Vector2.new(0, (0.5 + 2.5 * math.random()) * ((math.random(0, 1) - 0.5) * 2))).unit}
end
local var21_upvw = 0
local Bar_upvr = MemepointsDisplay_upvr:WaitForChild("NumberBackground"):WaitForChild("Numbers"):WaitForChild("Bar")
local Place_upvr = MemepointsDisplay_upvr:WaitForChild("Place"):WaitForChild("Place")
local module_upvr_3 = require(Modules:WaitForChild("Utility"))
local LevelUp_upvr = MemepointsDisplay_upvr:WaitForChild("LevelUp")
local function AnimateMemepointsChange_upvr(arg1, arg2, arg3, arg4) -- Line 85, Named "AnimateMemepointsChange"
	--[[ Upvalues[6]:
		[1]: var21_upvw (read and write)
		[2]: Bar_upvr (readonly)
		[3]: Place_upvr (readonly)
		[4]: module_upvr_3 (readonly)
		[5]: MemepointsDisplay_upvr (readonly)
		[6]: LevelUp_upvr (readonly)
	]]
	local var29
	if arg1 == var21_upvw then
	else
		local var27 = arg1 - var21_upvw
		var21_upvw = arg1
		var29 = math.clamp(arg3, 0, 1)
		Bar_upvr.Size = UDim2.new(var29, 0, 1, 0)
		var29 = module_upvr_3
		var29 = arg2
		Place_upvr.Text = var29.FormatNumber(var29)
		var29 = MemepointsDisplay_upvr.NumberBackground
		var29 = module_upvr_3
		var29 = arg1
		var29.Numbers.TextLabel.Text = var29.FormatNumber(var29)
		if not MemepointsDisplay_upvr.Visible then return end
		if arg4 then
			LevelUp_upvr.Visible = true
		end
		local clone_2_upvr = script.FloatyNum:Clone()
		if 0 <= var27 then
			var29 = '+'
		else
			var29 = '-'
		end
		clone_2_upvr.Text = var29..module_upvr_3.FormatNumber(var27)
		var29 = MemepointsDisplay_upvr.NumberBackground
		clone_2_upvr.Parent = var29.Numbers
		clone_2_upvr:TweenPosition(clone_2_upvr.Position + UDim2.new(0, 0, 0, -25), Enum.EasingDirection.Out, Enum.EasingStyle.Quint, 0.5, true)
		function var29() -- Line 115
			--[[ Upvalues[3]:
				[1]: clone_2_upvr (readonly)
				[2]: arg4 (readonly)
				[3]: LevelUp_upvr (copied, readonly)
			]]
			wait(0.5)
			clone_2_upvr:Destroy()
			if arg4 then
				LevelUp_upvr.Visible = false
			end
		end
		spawn(var29)
		var29 = MemepointsDisplay_upvr
		var29.NumberBackground:TweenSize(UDim2.new(0.825, 0, 0.5, 3), Enum.EasingDirection.Out, Enum.EasingStyle.Elastic, 0.1, true)
		var29 = MemepointsDisplay_upvr.NumberBackground
		var29.Numbers:TweenSize(UDim2.new(1, -10, 1, -13), Enum.EasingDirection.Out, Enum.EasingStyle.Elastic, 0.1, true)
		var29 = 0.11
		wait(var29)
		var29 = MemepointsDisplay_upvr
		var29.NumberBackground:TweenSize(UDim2.new(0.825, 0, 0.5, 0), Enum.EasingDirection.Out, Enum.EasingStyle.Elastic, 0.1)
		var29 = MemepointsDisplay_upvr.NumberBackground
		var29.Numbers:TweenSize(UDim2.new(1, -10, 1, -10), Enum.EasingDirection.Out, Enum.EasingStyle.Elastic, 0.1)
	end
end
local var31_upvw = false
local MemepointsBar_upvr = script.Parent.MemepointsDisplay.MemepointsBar
require(Modules:WaitForChild("MemeSoundManager")).MemePointBarCallBack = function(arg1, arg2) -- Line 134
	--[[ Upvalues[8]:
		[1]: var31_upvw (read and write)
		[2]: MemepointsDisplay_upvr (readonly)
		[3]: MemepointsBar_upvr (readonly)
		[4]: tbl_upvw (read and write)
		[5]: SpawnMemePoint_upvr (readonly)
		[6]: MemeFace_upvr (readonly)
		[7]: var9_upvr (readonly)
		[8]: RunService_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 31 start (CF ANALYSIS FAILED)
	while var31_upvw do
		wait()
	end
	if not MemepointsDisplay_upvr.Visible then return end
	var31_upvw = true
	MemepointsBar_upvr.Visible = true
	MemepointsBar_upvr.TextLabel.Text = '+'..arg1.." Memepoints"
	MemepointsBar_upvr.LoadingBar.Size = UDim2.new(0, 0, 1, -10)
	MemepointsBar_upvr:TweenSize(UDim2.new(2, 0, 0.5, 0), Enum.EasingDirection.Out, Enum.EasingStyle.Bounce, 0.2)
	MemepointsBar_upvr.LoadingBar:TweenSize(UDim2.new(1, -10, 1, -10), Enum.EasingDirection.Out, Enum.EasingStyle.Quad, arg2)
	-- KONSTANTERROR: [0] 1. Error Block 31 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [124] 97. Error Block 27 start (CF ANALYSIS FAILED)
	if tick() + arg2 <= tick() then
		-- KONSTANTWARNING: GOTO [130] #101
	end
	-- KONSTANTERROR: [124] 97. Error Block 27 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [76] 59. Error Block 29 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [129.197627]
	if tick() < Enum.EasingDirection.Out then
		-- KONSTANTWARNING: GOTO [99] #77
	end
	-- KONSTANTERROR: [76] 59. Error Block 29 end (CF ANALYSIS FAILED)
end
module_upvr_2.Signals.DanceChanged:Connect(function(arg1) -- Line 165
	--[[ Upvalues[1]:
		[1]: MemepointsDisplay_upvr (readonly)
	]]
	local var35
	if arg1 == nil then
		var35 = false
	else
		var35 = true
	end
	MemepointsDisplay_upvr.Visible = var35
end)
module_upvr_2.Signals.CurrencyChanged:Connect(function(arg1, arg2) -- Line 169
	--[[ Upvalues[3]:
		[1]: module_upvr (readonly)
		[2]: module_upvr_2 (readonly)
		[3]: AnimateMemepointsChange_upvr (readonly)
	]]
	if arg1 == module_upvr.CurrencyType.MemePoints then
		local MemePointsExp = module_upvr_2.LocalSaveData.MemePointsExp
		if module_upvr_2.MemePointsRankupsLastAction == 0 then
			MemePointsExp = false
		else
			MemePointsExp = true
		end
		AnimateMemepointsChange_upvr(arg2, module_upvr_2.LocalSaveData.MemePointsRank, MemePointsExp / module_upvr_2.MemePointsRankCost, MemePointsExp)
	end
end)
local function ProcessSaveData(arg1) -- Line 184
	--[[ Upvalues[3]:
		[1]: module_upvr (readonly)
		[2]: module_upvr_2 (readonly)
		[3]: AnimateMemepointsChange_upvr (readonly)
	]]
	local MemePointsExp_2 = arg1.MemePointsExp
	if module_upvr_2.MemePointsRankupsLastAction == 0 then
		MemePointsExp_2 = false
	else
		MemePointsExp_2 = true
	end
	AnimateMemepointsChange_upvr(module_upvr.SaveDataGetCurrency(arg1, module_upvr.CurrencyType.MemePoints), arg1.MemePointsRank, MemePointsExp_2 / module_upvr_2.MemePointsRankCost, MemePointsExp_2)
end
if not module_upvr_2.Flags.LocalSaveDataLoaded then
	module_upvr_2.Signals.SaveDataLoaded:Connect(ProcessSaveData)
end
task.spawn(ProcessSaveData, module_upvr_2.LocalSaveData)