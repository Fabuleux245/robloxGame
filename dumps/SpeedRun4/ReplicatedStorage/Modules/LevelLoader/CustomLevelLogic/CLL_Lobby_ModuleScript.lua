-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:06:08
-- Luau version 6, Types version 3
-- Time taken: 0.008637 seconds

local ReplicatedStorage = game:GetService("ReplicatedStorage")
local module_3_upvr = require(ReplicatedStorage:WaitForChild("CommonData"))
local Modules = ReplicatedStorage:WaitForChild("Modules")
local module_upvr = require(Modules:WaitForChild("ClientData"))
local module_upvr_4 = require(Modules:WaitForChild("ItemDataUtility"))
local module_upvr_6 = require(Modules:WaitForChild("UIButton"))
local module_5_upvr = require(Modules:WaitForChild("UIShared"))
local module_4_upvr = require(Modules:WaitForChild("Utility"))
local LevelLoader = script:FindFirstAncestor("LevelLoader")
local module_upvr_2 = require(LevelLoader:WaitForChild("CustomLevelLogic"))
local module_upvr_5 = require(LevelLoader:WaitForChild("LevelAssetLogic"))
local tbl_4_upvr = {}
local var13_upvr
if game:GetService("GuiService"):IsTenFootInterface() then
	var13_upvr = 1.2222222222222223
else
	var13_upvr = 4
end
tbl_4_upvr.EmScale = var13_upvr
var13_upvr = {}
local module_upvr_7 = require(Modules:WaitForChild("ItemActionHandler"))
function var13_upvr.Create(arg1) -- Line 44
	--[[ Upvalues[5]:
		[1]: module_5_upvr (readonly)
		[2]: module_4_upvr (readonly)
		[3]: module_upvr_6 (readonly)
		[4]: tbl_4_upvr (readonly)
		[5]: module_upvr_7 (readonly)
	]]
	local module = {
		AbsoluteSize = nil;
		HighestMultiplier = nil;
		RewardText = nil;
		Flag = module_5_upvr.TextBoundsFlagCreate();
	}
	local tbl_3 = {}
	tbl_3.Adornee = arg1
	tbl_3.Parent = module_5_upvr.PlayerGui
	module.SurfaceGui = module_4_upvr.I("SurfaceGui", module_5_upvr.Properties.SurfaceGui_Billboard, tbl_3)
	local any_TextBoundsLabelCreate_result1, any_TextBoundsLabelCreate_result2 = module_5_upvr.TextBoundsLabelCreate(module.SurfaceGui, module.RewardText, module.Flag)
	module.RewardLabel = any_TextBoundsLabelCreate_result1
	module.RewardBounds = any_TextBoundsLabelCreate_result2
	module.ClaimButton = module_upvr_6.Button.CreateFancy(module.SurfaceGui, module_upvr_6.Button.Themes.Success, {
		Text = "Claim";
	})
	module.ClaimButton.EmScale = tbl_4_upvr.EmScale * 0.5
	local var21_upvw = false
	module.ClaimButton.Button.Activated:Connect(function() -- Line 77
		--[[ Upvalues[2]:
			[1]: var21_upvw (read and write)
			[2]: module_upvr_7 (copied, readonly)
		]]
		if var21_upvw then
		else
			var21_upvw = true
			module_upvr_7.GroupRewardClaimCurrent(true)
			var21_upvw = false
		end
	end)
	return module
end
function var13_upvr.Destroy(arg1) -- Line 95
	--[[ Upvalues[1]:
		[1]: module_upvr_6 (readonly)
	]]
	module_upvr_6.Button.Destroy(arg1.ClaimButton)
	arg1.SurfaceGui:Destroy()
end
local module_upvr_3 = require(ReplicatedStorage:WaitForChild("Theme"))
function var13_upvr.Update(arg1, arg2, arg3) -- Line 104
	--[[ Upvalues[7]:
		[1]: module_upvr (readonly)
		[2]: module_upvr_4 (readonly)
		[3]: module_4_upvr (readonly)
		[4]: module_5_upvr (readonly)
		[5]: tbl_4_upvr (readonly)
		[6]: module_upvr_3 (readonly)
		[7]: module_upvr_6 (readonly)
	]]
	local var23
	if module_upvr.LocalSaveData.EnergyHighestMultiplier == arg1.HighestMultiplier then
		var23 = false
	else
		var23 = true
	end
	if var23 then
		arg1.HighestMultiplier = module_upvr.LocalSaveData.EnergyHighestMultiplier
		local formatted = string.format("Like the game & join the group for %s!", module_4_upvr.FormatArray_OxfordComma(module_upvr_4.GroupRewardGetCurrentRewardStrings(module_upvr.LocalSaveData)))
		arg1.RewardText = formatted
		arg1.RewardLabel.Text = formatted
	end
	local AbsoluteSize = arg1.SurfaceGui.AbsoluteSize
	local var26 = var23
	if not var26 then
		if arg1.AbsoluteSize == AbsoluteSize then
			var26 = false
		else
			var26 = true
		end
	end
	if module_5_upvr.TextBoundsFlagCheck(arg1.Flag) or var26 then
		arg1.AbsoluteSize = AbsoluteSize
		local X = AbsoluteSize.X
		local Y = AbsoluteSize.Y
		local var29 = module_5_upvr.ComputeEmSizeFromScreenSize(X, Y) * tbl_4_upvr.EmScale // 1
		local var30 = var29 * module_upvr_3.SteppedSizeButtonFancyX // 1
		local var31 = var29 * module_upvr_3.SteppedSizeButtonFancyY // 1
		module_5_upvr.CachedTextBoundsConform(arg1.RewardBounds, arg1.RewardLabel, arg1.RewardText, var29 * 1.25 // 1, X - 2 * 3 * var29 // 1)
		arg1.ClaimButton.Button.Size = UDim2.fromOffset(var30, var31)
		module_upvr_6.Button.AdjustText(arg1.ClaimButton, nil, nil, nil, var29 * module_upvr_3.SteppedSizeButtonFancyText // 1)
		local var32 = arg1.RewardBounds.Y + var29 + var31
		local var33 = X * 0.5
		local var34 = (Y * 0.5 - var32 * 0.5) // 1
		arg1.RewardLabel.Position = UDim2.fromOffset((var33 + -arg1.RewardBounds.X * 0.5) // 1, var34)
		arg1.ClaimButton.Button.Position = UDim2.fromOffset((var33 - var30 * 0.5) // 1, var34 + var32 - var31)
	end
	module_upvr_6.Button.Update(arg1.ClaimButton, arg3)
end
local tbl = {}
local module_2_upvr = require(Modules:WaitForChild("Worlds"))
local module_upvr_8 = require(Modules:WaitForChild("Dimensions"))
function tbl.Load(arg1) -- Line 190
	--[[ Upvalues[9]:
		[1]: module_upvr_5 (readonly)
		[2]: module_3_upvr (readonly)
		[3]: module_2_upvr (readonly)
		[4]: module_upvr (readonly)
		[5]: module_upvr_8 (readonly)
		[6]: module_4_upvr (readonly)
		[7]: module_upvr_4 (readonly)
		[8]: var13_upvr (readonly)
		[9]: module_upvr_2 (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	local any_AssertLoaded_result1, any_AssertLoaded_result2 = module_upvr_5.AssertLoaded(arg1)
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [12] 9. Error Block 79 start (CF ANALYSIS FAILED)
	local tbl_2 = {}
	local tbl_5 = {}
	local WorldName_upvr = any_AssertLoaded_result2.References.WorldName
	if WorldName_upvr and WorldName_upvr:IsA("TextLabel") then
		tbl_5[#tbl_5 + 1] = function(arg1_2) -- Line 206
			--[[ Upvalues[1]:
				[1]: WorldName_upvr (readonly)
			]]
			WorldName_upvr.Text = string.upper(arg1_2.Name)
		end
	else
		warn(module_3_upvr.FormatOutput("Lobby does not have valid WorldName reference", "CCL_Lobby"))
	end
	WorldName_upvr = any_AssertLoaded_result2.References.StarCount
	local var44_upvr = WorldName_upvr
	if var44_upvr and var44_upvr:IsA("TextLabel") then
		tbl_5[#tbl_5 + 1] = function(arg1_3) -- Line 220, Named "UpdateStarCount"
			--[[ Upvalues[3]:
				[1]: module_2_upvr (copied, readonly)
				[2]: module_upvr (copied, readonly)
				[3]: var44_upvr (readonly)
			]]
			local any_StarGetWorldStarCount_result1_2, any_StarGetWorldStarCount_result2_2 = module_2_upvr.StarGetWorldStarCount(arg1_3, module_upvr.LocalPlayerState.PlayerData.Data)
			var44_upvr.Text = string.format("%i / %i", any_StarGetWorldStarCount_result2_2 or 0, any_StarGetWorldStarCount_result1_2)
		end
		tbl_2[#tbl_2 + 1] = module_upvr.Signals.StarsChanged:Connect(function(arg1_4) -- Line 236, Named "ProcessStarCountChange"
			--[[ Upvalues[3]:
				[1]: module_2_upvr (copied, readonly)
				[2]: module_upvr (copied, readonly)
				[3]: var44_upvr (readonly)
			]]
			local any_StarGetWorldStarCount_result1, any_StarGetWorldStarCount_result2 = module_2_upvr.StarGetWorldStarCount(module_2_upvr.Data_ByLevel[arg1_4], module_upvr.LocalPlayerState.PlayerData.Data)
			var44_upvr.Text = string.format("%i / %i", any_StarGetWorldStarCount_result2 or 0, any_StarGetWorldStarCount_result1)
		end)
	else
		warn(module_3_upvr.FormatOutput("Lobby does not have valid StarCount reference", "CCL_Lobby"))
	end
	var44_upvr = #tbl_5
	-- KONSTANTERROR: [12] 9. Error Block 79 end (CF ANALYSIS FAILED)
end
function tbl.Activate(arg1) -- Line 434
	--[[ Upvalues[3]:
		[1]: module_upvr_5 (readonly)
		[2]: module_upvr (readonly)
		[3]: module_3_upvr (readonly)
	]]
	local _, _, any_AssertLoaded_result3 = module_upvr_5.AssertLoaded(arg1)
	local Connections_2 = arg1.Objects.Connections
	if not Connections_2.LobbyActivate then
		local Triggers = any_AssertLoaded_result3.Directories.Triggers
		if Triggers then
			local ChangeLevel = Triggers:FindFirstChild("ChangeLevel")
			if ChangeLevel and ChangeLevel:IsA("BasePart") then
				local var65_upvw
				var65_upvw = ChangeLevel.Touched:Connect(function(arg1_6) -- Line 449
					--[[ Upvalues[3]:
						[1]: var65_upvw (read and write)
						[2]: arg1 (readonly)
						[3]: module_upvr (copied, readonly)
					]]
					if var65_upvw.Connected and arg1.Active and module_upvr.LocalPlayerTouched(arg1_6) and module_upvr.GetLobbyAdjacentWorld().Levels[1] then
						var65_upvw:Disconnect()
						-- KONSTANTERROR: Expression was reused, decompilation is incorrect
						module_upvr.LocalPlayerStateCurrentLevelSet(module_upvr.GetLobbyAdjacentWorld().Levels[1])
					end
				end)
				Connections_2.LobbyActivate = {var65_upvw}
				return
			end
			warn(module_3_upvr.FormatOutput("Lobby is missing change level trigger", "CCL_Lobby"))
		end
	end
end
function tbl.Deactivate(arg1) -- Line 477
	--[[ Upvalues[1]:
		[1]: module_upvr_2 (readonly)
	]]
	module_upvr_2.DisconnectCustomConnections(arg1, "LobbyActivate")
end
function tbl.RenderStepped(arg1, arg2, arg3) -- Line 481
	--[[ Upvalues[1]:
		[1]: var13_upvr (readonly)
	]]
	local GroupClaimUI = arg1.Objects.GroupClaimUI
	if GroupClaimUI then
		var13_upvr.Update(GroupClaimUI, arg2, arg3)
	end
end
function tbl.Unload(arg1) -- Line 489
	--[[ Upvalues[2]:
		[1]: module_upvr_2 (readonly)
		[2]: var13_upvr (readonly)
	]]
	module_upvr_2.DisconnectCustomConnections(arg1, "LobbyLoad")
	if arg1.Objects.GroupClaimUI then
		var13_upvr.Destroy(arg1.Objects.GroupClaimUI)
		arg1.Objects.GroupClaimUI = nil
	end
end
module_upvr_2.LevelMethods_ById.Lobby = tbl
return {}