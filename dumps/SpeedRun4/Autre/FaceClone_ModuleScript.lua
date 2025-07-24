-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:05:06
-- Luau version 6, Types version 3
-- Time taken: 0.022345 seconds

local CorePackages = game:GetService("CorePackages")
local ModelUtils_upvr = require(script.Parent.Parent.Utils.ModelUtils)
local var3_upvw
local game_DefineFastFlag_result1_upvr_2 = game:DefineFastFlag("SelfViewLookUpHumanoidByType", false)
local GetFFlagSelfieViewMoreFixMigration_upvr = require(CorePackages.Workspace.Packages.SharedFlags).GetFFlagSelfieViewMoreFixMigration
local GetFFlagSelfViewAssertFix_upvr = require(CorePackages.Workspace.Packages.SharedFlags).GetFFlagSelfViewAssertFix
local GetFFlagSelfViewVisibilityFix_upvr = require(CorePackages.Workspace.Packages.SharedFlags).GetFFlagSelfViewVisibilityFix
local const_number_upvw_2 = 1.31
local var9_upvw = 0
local var10_upvw
local var11_upvw
local var12_upvw
local tbl_upvw_2 = {}
local var14_upvw
local var15_upvw
local var16_upvw
local var17_upvw
local const_vector_upvw = Vector3.new(1.17209, 1.18110, 1.15779)
local var19_upvw
local var20_upvw
local var21_upvw
local var22_upvw
local var23_upvw
local var24_upvw
local var25_upvw
local var26_upvw
local var27_upvw = false
local tbl_upvr_2 = {}
local tbl_upvr = {
	AnimationPlayed = "AnimationPlayed";
	AnimationPlayedCoreScript = "AnimationPlayedCoreScript";
	DescendantAdded = "DescendantAdded";
	DescendantRemoving = "DescendantRemoving";
	HeadSize = "HeadSize";
	Color = "Color";
	CharacterAdded = "CharacterAdded";
	CharacterRemoving = "CharacterRemoving";
	HumanoidStateChanged = "HumanoidStateChanged";
}
local Players_upvr = game:GetService("Players")
if not Players_upvr.LocalPlayer then
	warn("Players.LocalPlayer does not exist")
end
local LocalPlayer_upvr = Players_upvr.LocalPlayer
local var32_upvw = false
function setCloneDirty(arg1) -- Line 98
	--[[ Upvalues[1]:
		[1]: var9_upvw (read and write)
	]]
	if arg1 then
		var9_upvw = 0.35
	else
		var9_upvw = 0
	end
end
function createCloneAnchor() -- Line 106
	--[[ Upvalues[2]:
		[1]: var19_upvw (read and write)
		[2]: var16_upvw (read and write)
	]]
	if var19_upvw ~= nil then
		var19_upvw:Destroy()
		var19_upvw = nil
	end
	local WorldModel = Instance.new("WorldModel")
	WorldModel.Parent = var16_upvw
	var19_upvw = WorldModel
end
local function _(arg1) -- Line 118, Named "clearObserver"
	--[[ Upvalues[1]:
		[1]: tbl_upvr_2 (readonly)
	]]
	if tbl_upvr_2[arg1] then
		tbl_upvr_2[arg1]:Disconnect()
		tbl_upvr_2[arg1] = nil
	end
end
function clearCloneCharacter() -- Line 125
	--[[ Upvalues[2]:
		[1]: var20_upvw (read and write)
		[2]: var19_upvw (read and write)
	]]
	local var34
	if var20_upvw then
		var20_upvw:Destroy()
		var20_upvw = nil
	end
	if not var19_upvw then
		var34 = "cloneAnchor is nil, this shouldn't be possible"
		warn(var34)
	else
		if var19_upvw == nil then
			var34 = false
		else
			var34 = true
		end
		assert(var34)
		local SelfAvatar = var19_upvw:FindFirstChild("SelfAvatar")
		if SelfAvatar then
			var34 = SelfAvatar:Destroy
			var34()
		end
		var34 = createCloneAnchor
		var34()
	end
end
local function clearClone_upvr() -- Line 144, Named "clearClone"
	--[[ Upvalues[4]:
		[1]: tbl_upvr (readonly)
		[2]: tbl_upvr_2 (readonly)
		[3]: var12_upvw (read and write)
		[4]: tbl_upvw_2 (read and write)
	]]
	stopRenderStepped()
	local AnimationPlayed_2 = tbl_upvr.AnimationPlayed
	if tbl_upvr_2[AnimationPlayed_2] then
		tbl_upvr_2[AnimationPlayed_2]:Disconnect()
		tbl_upvr_2[AnimationPlayed_2] = nil
	end
	local AnimationPlayedCoreScript_3 = tbl_upvr.AnimationPlayedCoreScript
	if tbl_upvr_2[AnimationPlayedCoreScript_3] then
		tbl_upvr_2[AnimationPlayedCoreScript_3]:Disconnect()
		tbl_upvr_2[AnimationPlayedCoreScript_3] = nil
	end
	var12_upvw = nil
	tbl_upvw_2 = {}
	clearCloneCharacter()
end
local var38_upvw
local tbl_upvr_4 = {}
local function syncTrack_upvr(arg1, arg2) -- Line 156, Named "syncTrack"
	--[[ Upvalues[4]:
		[1]: var3_upvw (read and write)
		[2]: var38_upvw (read and write)
		[3]: LocalPlayer_upvr (readonly)
		[4]: tbl_upvr_4 (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 37 start (CF ANALYSIS FAILED)
	if not arg1 or not arg2.Animation then
	else
		if arg2.Animation and arg2.Animation:IsA("Animation") then
			-- KONSTANTWARNING: GOTO [69] #55
		end
		-- KONSTANTERROR: [0] 1. Error Block 37 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [17] 14. Error Block 38 start (CF ANALYSIS FAILED)
		local var40_upvw
		if arg2.Animation and arg2.Animation:IsA("TrackerStreamAnimation") then
			local var41 = "TrackerStreamAnimation"
			var3_upvw = Instance.new(var41)
			if var3_upvw == nil then
				var41 = false
			else
				var41 = true
			end
			assert(var41)
			if game:GetEngineFeature("UseNewLoadStreamAnimationAPI") then
				var38_upvw = arg1:LoadStreamAnimationV2(var3_upvw, LocalPlayer_upvr, false, false)
			else
				var38_upvw = arg1:LoadStreamAnimationForSelfieView_deprecated(var3_upvw, LocalPlayer_upvr)
			end
			var40_upvw = var38_upvw
		else
			warn("No animation to clone in SelfView")
		end
		if var40_upvw then
			var40_upvw:Play()
			var40_upvw.Priority = arg2.Priority
			tbl_upvr_4[arg2] = arg2.Stopped:Connect(function() -- Line 185
				--[[ Upvalues[3]:
					[1]: var40_upvw (read and write)
					[2]: tbl_upvr_4 (copied, readonly)
					[3]: arg2 (readonly)
				]]
				var40_upvw:Stop(0)
				if tbl_upvr_4[arg2] then
					tbl_upvr_4[arg2]:Disconnect()
				end
			end)
		end
		-- KONSTANTERROR: [17] 14. Error Block 38 end (CF ANALYSIS FAILED)
	end
end
local tbl_upvr_3 = {}
local CFrameUtility_upvr = require(CorePackages.Packages.Thumbnailing).CFrameUtility
local CharacterUtility_upvr = require(CorePackages.Packages.Thumbnailing).CharacterUtility
local game_GetEngineFeature_result1_upvr = game:GetEngineFeature("AnimatorAndADFRefactor")
local function updateClone_upvr(arg1) -- Line 194, Named "updateClone"
	--[[ Upvalues[22]:
		[1]: tbl_upvr (readonly)
		[2]: tbl_upvr_2 (readonly)
		[3]: var12_upvw (read and write)
		[4]: tbl_upvw_2 (read and write)
		[5]: ModelUtils_upvr (readonly)
		[6]: var20_upvw (read and write)
		[7]: GetFFlagSelfViewAssertFix_upvr (readonly)
		[8]: GetFFlagSelfieViewMoreFixMigration_upvr (readonly)
		[9]: tbl_upvr_3 (readonly)
		[10]: var19_upvw (read and write)
		[11]: var17_upvw (read and write)
		[12]: CFrameUtility_upvr (readonly)
		[13]: CharacterUtility_upvr (readonly)
		[14]: const_vector_upvw (read and write)
		[15]: const_number_upvw_2 (read and write)
		[16]: var22_upvw (read and write)
		[17]: var23_upvw (read and write)
		[18]: var24_upvw (read and write)
		[19]: game_DefineFastFlag_result1_upvr_2 (readonly)
		[20]: game_GetEngineFeature_result1_upvr (readonly)
		[21]: var3_upvw (read and write)
		[22]: syncTrack_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	-- KONSTANTERROR: [0] 1. Error Block 133 start (CF ANALYSIS FAILED)
	stopRenderStepped()
	local var48
	if var48 then
		var48 = tbl_upvr_2[tbl_upvr.AnimationPlayed]:Disconnect
		var48()
		var48 = tbl_upvr_2
		var48[tbl_upvr.AnimationPlayed] = nil
	end
	var48 = tbl_upvr
	local AnimationPlayedCoreScript = var48.AnimationPlayedCoreScript
	var48 = tbl_upvr_2[AnimationPlayedCoreScript]
	if var48 then
		var48 = tbl_upvr_2[AnimationPlayedCoreScript]:Disconnect
		var48()
		var48 = tbl_upvr_2
		var48[AnimationPlayedCoreScript] = nil
	end
	var12_upvw = nil
	tbl_upvw_2 = {}
	clearCloneCharacter()
	if not arg1 then return end
	if arg1 == nil then
		var48 = false
	else
		var48 = true
	end
	assert(var48)
	var48 = arg1
	startRenderStepped(var48)
	local function INLINED() -- Internal function, doesn't exist in bytecode
		var48 = arg1.Character
		return var48
	end
	if not arg1 or not INLINED() then return end
	local Character_3 = arg1.Character
	-- KONSTANTERROR: [0] 1. Error Block 133 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [63] 51. Error Block 16 start (CF ANALYSIS FAILED)
	do
		return
	end
	-- KONSTANTERROR: [63] 51. Error Block 16 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [64] 52. Error Block 135 start (CF ANALYSIS FAILED)
	if Character_3 == nil then
	else
	end
	var48 = assert
	var48(true)
	var48 = ModelUtils_upvr.getAnimator(Character_3, 10)
	clearCloneCharacter()
	Character_3.Archivable = true
	-- KONSTANTERROR: [64] 52. Error Block 135 end (CF ANALYSIS FAILED)
end
local function _(arg1, arg2) -- Line 412, Named "hasProperty"
end
function updateCachedHeadColor(arg1) -- Line 419
	--[[ Upvalues[2]:
		[1]: var14_upvw (read and write)
		[2]: var15_upvw (read and write)
	]]
	if arg1 == nil then
	else
		if arg1 == nil then
		else
		end
		assert(true)
		if pcall(function() -- Line 425
			--[[ Upvalues[1]:
				[1]: arg1 (readonly)
			]]
		end) then
			var14_upvw = arg1.Color
			if pcall(function() -- Line 431
				--[[ Upvalues[1]:
					[1]: arg1 (readonly)
				]]
			end) then
				var15_upvw = arg1.Size
			end
		end
	end
end
local function _(arg1) -- Line 442, Named "addHumanoidStateChangedObserver"
	--[[ Upvalues[2]:
		[1]: tbl_upvr_2 (readonly)
		[2]: tbl_upvr (readonly)
	]]
	if not arg1 then
	elseif not tbl_upvr_2[tbl_upvr.HumanoidStateChanged] then
		tbl_upvr_2[tbl_upvr.HumanoidStateChanged] = arg1.StateChanged:Connect(function(arg1_2, arg2) -- Line 447
			if arg1_2 == Enum.HumanoidStateType.PlatformStanding and arg2 == Enum.HumanoidStateType.Running then
				setCloneDirty(true)
			end
			if arg2 == Enum.HumanoidStateType.GettingUp then
				setCloneDirty(true)
			end
		end)
	end
end
local game_DefineFastFlag_result1_upvr = game:DefineFastFlag("FixSelfieViewErrorLoop", false)
local function characterAdded_upvr(arg1) -- Line 460, Named "characterAdded"
	--[[ Upvalues[9]:
		[1]: game_DefineFastFlag_result1_upvr (readonly)
		[2]: var16_upvw (read and write)
		[3]: var25_upvw (read and write)
		[4]: var21_upvw (read and write)
		[5]: ModelUtils_upvr (readonly)
		[6]: tbl_upvr (readonly)
		[7]: tbl_upvr_2 (readonly)
		[8]: game_DefineFastFlag_result1_upvr_2 (readonly)
		[9]: var27_upvw (read and write)
	]]
	if game_DefineFastFlag_result1_upvr and (var16_upvw == nil or var25_upvw == nil) then
	else
		if not arg1 then return end
		var21_upvw = ModelUtils_upvr.getHead(arg1)
		updateCachedHeadColor(var21_upvw)
		local DescendantAdded_2 = tbl_upvr.DescendantAdded
		if tbl_upvr_2[DescendantAdded_2] then
			tbl_upvr_2[DescendantAdded_2]:Disconnect()
			tbl_upvr_2[DescendantAdded_2] = nil
		end
		local DescendantRemoving_3 = tbl_upvr.DescendantRemoving
		if tbl_upvr_2[DescendantRemoving_3] then
			tbl_upvr_2[DescendantRemoving_3]:Disconnect()
			tbl_upvr_2[DescendantRemoving_3] = nil
		end
		local HeadSize = tbl_upvr.HeadSize
		if tbl_upvr_2[HeadSize] then
			tbl_upvr_2[HeadSize]:Disconnect()
			tbl_upvr_2[HeadSize] = nil
		end
		local Color = tbl_upvr.Color
		if tbl_upvr_2[Color] then
			tbl_upvr_2[Color]:Disconnect()
			tbl_upvr_2[Color] = nil
		end
		Color = nil
		local var61 = Color
		if game_DefineFastFlag_result1_upvr_2 then
			var61 = arg1:FindFirstChildWhichIsA("Humanoid")
		else
			var61 = arg1:FindFirstChild("Humanoid")
		end
		if var61 then
			local var62 = var61
			if not var62 then
			elseif not tbl_upvr_2[tbl_upvr.HumanoidStateChanged] then
				tbl_upvr_2[tbl_upvr.HumanoidStateChanged] = var62.StateChanged:Connect(function(arg1_3, arg2) -- Line 447
					if arg1_3 == Enum.HumanoidStateType.PlatformStanding and arg2 == Enum.HumanoidStateType.Running then
						setCloneDirty(true)
					end
					if arg2 == Enum.HumanoidStateType.GettingUp then
						setCloneDirty(true)
					end
				end)
			end
		end
		tbl_upvr_2[tbl_upvr.DescendantAdded] = arg1.DescendantAdded:Connect(function(arg1_4) -- Line 491
			--[[ Upvalues[9]:
				[1]: game_DefineFastFlag_result1_upvr (copied, readonly)
				[2]: var16_upvw (copied, read and write)
				[3]: var25_upvw (copied, read and write)
				[4]: var21_upvw (copied, read and write)
				[5]: ModelUtils_upvr (copied, readonly)
				[6]: arg1 (readonly)
				[7]: game_DefineFastFlag_result1_upvr_2 (copied, readonly)
				[8]: tbl_upvr_2 (copied, readonly)
				[9]: tbl_upvr (copied, readonly)
			]]
			if game_DefineFastFlag_result1_upvr and (var16_upvw == nil or var25_upvw == nil) then
			else
				if arg1_4.Name == "Head" then
					var21_upvw = ModelUtils_upvr.getHead(arg1)
					updateCachedHeadColor(var21_upvw)
				end
				if game_DefineFastFlag_result1_upvr_2 then
					if arg1_4:IsA("Humanoid") then
						if not arg1_4 then
						elseif not tbl_upvr_2[tbl_upvr.HumanoidStateChanged] then
							tbl_upvr_2[tbl_upvr.HumanoidStateChanged] = arg1_4.StateChanged:Connect(function(arg1_5, arg2) -- Line 447
								if arg1_5 == Enum.HumanoidStateType.PlatformStanding and arg2 == Enum.HumanoidStateType.Running then
									setCloneDirty(true)
								end
								if arg2 == Enum.HumanoidStateType.GettingUp then
									setCloneDirty(true)
								end
							end)
							-- KONSTANTWARNING: GOTO [78] #61
						end
						-- KONSTANTWARNING: GOTO [78] #61
					end
				elseif arg1_4.Name == "Humanoid" or arg1_4:IsA("Humanoid") then
					if not arg1_4 then
					elseif not tbl_upvr_2[tbl_upvr.HumanoidStateChanged] then
						tbl_upvr_2[tbl_upvr.HumanoidStateChanged] = arg1_4.StateChanged:Connect(function(arg1_6, arg2) -- Line 447
							if arg1_6 == Enum.HumanoidStateType.PlatformStanding and arg2 == Enum.HumanoidStateType.Running then
								setCloneDirty(true)
							end
							if arg2 == Enum.HumanoidStateType.GettingUp then
								setCloneDirty(true)
							end
						end)
					end
				end
				if ModelUtils_upvr.shouldMarkCloneDirtyForDescendant(arg1_4) then
					setCloneDirty(true)
				end
			end
		end)
		tbl_upvr_2[tbl_upvr.DescendantRemoving] = arg1.DescendantRemoving:Connect(function(arg1_7) -- Line 519
			--[[ Upvalues[4]:
				[1]: game_DefineFastFlag_result1_upvr (copied, readonly)
				[2]: var16_upvw (copied, read and write)
				[3]: var25_upvw (copied, read and write)
				[4]: ModelUtils_upvr (copied, readonly)
			]]
			if game_DefineFastFlag_result1_upvr and (var16_upvw == nil or var25_upvw == nil) then
			elseif arg1_7 and (arg1_7:IsA("MeshPart") or arg1_7:IsA("Accessory")) then
				if arg1_7:IsA("MeshPart") and arg1_7.MeshId == "" then return end
				if ModelUtils_upvr.shouldMarkCloneDirtyForDescendant(arg1_7) then
					setCloneDirty(true)
				end
			end
		end)
		setCloneDirty(true)
		var27_upvw = true
	end
end
local function createViewport_upvr() -- Line 543, Named "createViewport"
	--[[ Upvalues[4]:
		[1]: var16_upvw (read and write)
		[2]: var25_upvw (read and write)
		[3]: GetFFlagSelfieViewMoreFixMigration_upvr (readonly)
		[4]: var17_upvw (read and write)
	]]
	if var16_upvw then
		var16_upvw:Destroy()
	end
	var16_upvw = Instance.new("ViewportFrame")
	var16_upvw.Position = UDim2.new(0, 0, 0, 0)
	var16_upvw.Size = UDim2.new(1, 0, 1, 0)
	var16_upvw.BackgroundTransparency = 1
	var16_upvw.Parent = var25_upvw
	var16_upvw.Ambient = Color3.new(0.7529411765, 0.7098039216, 0.7137254902)
	var16_upvw.LightColor = Color3.new(1, 0.9960784314, 0.9960784314)
	var16_upvw.LightDirection = Vector3.new(9.5, -12, 7.5)
	var16_upvw.IsMirrored = true
	Instance.new("UICorner").Parent = var16_upvw
	createCloneAnchor()
	if GetFFlagSelfieViewMoreFixMigration_upvr() and var25_upvw then
		var25_upvw.Destroying:Connect(clearViewportFrame)
	end
	local var68 = "Camera"
	var17_upvw = Instance.new(var68)
	if var17_upvw == nil then
		var68 = false
	else
		var68 = true
	end
	assert(var68)
	var17_upvw.FieldOfView = 70
	var16_upvw.CurrentCamera = var17_upvw
	var17_upvw.Parent = var16_upvw
end
function ReInit(arg1) -- Line 577
	--[[ Upvalues[10]:
		[1]: GetFFlagSelfViewVisibilityFix_upvr (readonly)
		[2]: var26_upvw (read and write)
		[3]: var32_upvw (read and write)
		[4]: var21_upvw (read and write)
		[5]: ModelUtils_upvr (readonly)
		[6]: tbl_upvr (readonly)
		[7]: tbl_upvr_2 (readonly)
		[8]: var12_upvw (read and write)
		[9]: tbl_upvw_2 (read and write)
		[10]: createViewport_upvr (readonly)
	]]
	local var74
	if arg1.Character == nil then
		var74 = false
	else
		var74 = true
	end
	assert(var74)
	if GetFFlagSelfViewVisibilityFix_upvr() and var26_upvw then
		var74 = var26_upvw
		if not var74.Visible then
			var32_upvw = false
			return
		end
	end
	var74 = ModelUtils_upvr
	var74 = arg1.Character
	var21_upvw = var74.getHead(var74)
	var74 = var21_upvw
	updateCachedHeadColor(var74)
	var74 = false
	setCloneDirty(var74)
	var74 = tbl_upvr
	local CharacterAdded_5 = var74.CharacterAdded
	var74 = tbl_upvr_2[CharacterAdded_5]
	if var74 then
		var74 = tbl_upvr_2[CharacterAdded_5]:Disconnect
		var74()
		var74 = tbl_upvr_2
		var74[CharacterAdded_5] = nil
	end
	var74 = tbl_upvr
	local CharacterRemoving = var74.CharacterRemoving
	var74 = tbl_upvr_2[CharacterRemoving]
	if var74 then
		var74 = tbl_upvr_2[CharacterRemoving]:Disconnect
		var74()
		var74 = tbl_upvr_2
		var74[CharacterRemoving] = nil
	end
	stopRenderStepped()
	var74 = tbl_upvr
	local AnimationPlayed_3 = var74.AnimationPlayed
	var74 = tbl_upvr_2[AnimationPlayed_3]
	if var74 then
		var74 = tbl_upvr_2[AnimationPlayed_3]:Disconnect
		var74()
		var74 = tbl_upvr_2
		var74[AnimationPlayed_3] = nil
	end
	var74 = tbl_upvr
	local AnimationPlayedCoreScript_5 = var74.AnimationPlayedCoreScript
	var74 = tbl_upvr_2[AnimationPlayedCoreScript_5]
	if var74 then
		var74 = tbl_upvr_2[AnimationPlayedCoreScript_5]:Disconnect
		var74()
		var74 = tbl_upvr_2
		var74[AnimationPlayedCoreScript_5] = nil
	end
	var12_upvw = nil
	tbl_upvw_2 = {}
	clearCloneCharacter()
	createViewport_upvr()
	var74 = arg1
	playerAdded(var74)
	var74 = arg1
	startRenderStepped(var74)
end
local function onCharacterAdded_upvr(arg1) -- Line 599, Named "onCharacterAdded"
	--[[ Upvalues[7]:
		[1]: var11_upvw (read and write)
		[2]: var27_upvw (read and write)
		[3]: characterAdded_upvr (readonly)
		[4]: LocalPlayer_upvr (readonly)
		[5]: tbl_upvr (readonly)
		[6]: tbl_upvr_2 (readonly)
		[7]: game_DefineFastFlag_result1_upvr_2 (readonly)
	]]
	local var79
	if var79 then
		var79 = var11_upvw:Disconnect
		var79()
	end
	var79 = var27_upvw
	if not var79 then
		var79 = characterAdded_upvr
		var79(arg1)
	else
		var79 = ReInit
		var79(LocalPlayer_upvr)
	end
	var79 = tbl_upvr.HumanoidStateChanged
	if tbl_upvr_2[var79] then
		tbl_upvr_2[var79]:Disconnect()
		tbl_upvr_2[var79] = nil
	end
	var79 = nil
	if game_DefineFastFlag_result1_upvr_2 then
		var79 = arg1:FindFirstChildWhichIsA("Humanoid")
	else
		var79 = arg1:FindFirstChild("Humanoid")
	end
	if var79 then
		local var80 = var79
		if not var80 then return end
		if not tbl_upvr_2[tbl_upvr.HumanoidStateChanged] then
			tbl_upvr_2[tbl_upvr.HumanoidStateChanged] = var80.StateChanged:Connect(function(arg1_8, arg2) -- Line 447
				if arg1_8 == Enum.HumanoidStateType.PlatformStanding and arg2 == Enum.HumanoidStateType.Running then
					setCloneDirty(true)
				end
				if arg2 == Enum.HumanoidStateType.GettingUp then
					setCloneDirty(true)
				end
			end)
		end
	end
end
local function _(arg1) -- Line 621, Named "FindInParents"
	--[[ Upvalues[1]:
		[1]: var25_upvw (read and write)
	]]
	if not arg1 then
		return nil
	end
	if not var25_upvw then
		return nil
	end
	if var25_upvw == nil then
	else
	end
	assert(true, "Wrapper Frame cannot be nil")
	if arg1 == nil then
	else
	end
	assert(true, "Frame name cannot be nil ")
	return var25_upvw:FindFirstAncestor(arg1)
end
function clearViewportFrame() -- Line 636
	--[[ Upvalues[3]:
		[1]: var16_upvw (read and write)
		[2]: GetFFlagSelfieViewMoreFixMigration_upvr (readonly)
		[3]: var25_upvw (read and write)
	]]
	if var16_upvw then
		var16_upvw:Destroy()
	end
	if GetFFlagSelfieViewMoreFixMigration_upvr() then
		var25_upvw = nil
		stopRenderStepped()
	end
end
local function onOuterContainerVisibilityChanged_upvr() -- Line 646, Named "onOuterContainerVisibilityChanged"
	--[[ Upvalues[3]:
		[1]: var26_upvw (read and write)
		[2]: var27_upvw (read and write)
		[3]: var32_upvw (read and write)
	]]
	if var26_upvw then
		if var26_upvw.Visible then
			if not var27_upvw then
			else
				var32_upvw = true
			end
		end
		var32_upvw = false
	end
end
function playerAdded(arg1) -- Line 665
	--[[ Upvalues[7]:
		[1]: LocalPlayer_upvr (readonly)
		[2]: var11_upvw (read and write)
		[3]: tbl_upvr (readonly)
		[4]: tbl_upvr_2 (readonly)
		[5]: onCharacterAdded_upvr (readonly)
		[6]: characterAdded_upvr (readonly)
		[7]: updateClone_upvr (readonly)
	]]
	if arg1 ~= nil and arg1 == LocalPlayer_upvr then
		if var11_upvw ~= nil then
			var11_upvw:Disconnect()
			var11_upvw = nil
			local CharacterAdded_3 = tbl_upvr.CharacterAdded
			if tbl_upvr_2[CharacterAdded_3] then
				tbl_upvr_2[CharacterAdded_3]:Disconnect()
				tbl_upvr_2[CharacterAdded_3] = nil
			end
		end
		local Character = arg1.Character
		var11_upvw = arg1.CharacterAdded:Connect(onCharacterAdded_upvr)
		if Character then
			characterAdded_upvr(Character)
		end
		tbl_upvr_2[tbl_upvr.CharacterAdded] = arg1.CharacterAdded:Connect(characterAdded_upvr)
		tbl_upvr_2[tbl_upvr.CharacterRemoving] = arg1.CharacterRemoving:Connect(function() -- Line 684
			--[[ Upvalues[3]:
				[1]: tbl_upvr (copied, readonly)
				[2]: tbl_upvr_2 (copied, readonly)
				[3]: updateClone_upvr (copied, readonly)
			]]
			local DescendantAdded = tbl_upvr.DescendantAdded
			if tbl_upvr_2[DescendantAdded] then
				tbl_upvr_2[DescendantAdded]:Disconnect()
				tbl_upvr_2[DescendantAdded] = nil
			end
			local DescendantRemoving = tbl_upvr.DescendantRemoving
			if tbl_upvr_2[DescendantRemoving] then
				tbl_upvr_2[DescendantRemoving]:Disconnect()
				tbl_upvr_2[DescendantRemoving] = nil
			end
			local HeadSize_3 = tbl_upvr.HeadSize
			if tbl_upvr_2[HeadSize_3] then
				tbl_upvr_2[HeadSize_3]:Disconnect()
				tbl_upvr_2[HeadSize_3] = nil
			end
			local Color_2 = tbl_upvr.Color
			if tbl_upvr_2[Color_2] then
				tbl_upvr_2[Color_2]:Disconnect()
				tbl_upvr_2[Color_2] = nil
			end
			updateClone_upvr(nil)
			local CharacterRemoving_5 = tbl_upvr.CharacterRemoving
			if tbl_upvr_2[CharacterRemoving_5] then
				tbl_upvr_2[CharacterRemoving_5]:Disconnect()
				tbl_upvr_2[CharacterRemoving_5] = nil
			end
		end)
	end
end
function stopRenderStepped() -- Line 695
	--[[ Upvalues[1]:
		[1]: var10_upvw (read and write)
	]]
	if var10_upvw then
		var10_upvw:Disconnect()
		var10_upvw = nil
	end
end
function updateClonePartsColor(arg1) -- Line 702
	--[[ Upvalues[4]:
		[1]: var21_upvw (read and write)
		[2]: var14_upvw (read and write)
		[3]: LocalPlayer_upvr (readonly)
		[4]: var20_upvw (read and write)
	]]
	if pcall(function() -- Line 703
		--[[ Upvalues[1]:
			[1]: var21_upvw (copied, read and write)
		]]
	end) then
		if var21_upvw then
			local var114
			if var21_upvw.Color ~= var14_upvw then
				local Character_4 = LocalPlayer_upvr.Character
				if not Character_4 then return end
				if Character_4 == nil then
					var114 = false
				else
					var114 = true
				end
				assert(var114)
				if not var20_upvw then return end
				if var20_upvw == nil then
					var114 = false
				else
					var114 = true
				end
				assert(var114)
				var114 = Character_4:GetChildren()
				for _, v in pairs(var114) do
					if v:IsA("MeshPart") then
						local SOME = var20_upvw:FindFirstChild(v.Name)
						if SOME and SOME:IsA("MeshPart") and SOME.Color and v.Color then
							SOME.Color = v.Color
						end
					end
				end
			end
		end
	end
	var14_upvw = arg1
end
local game_DefineFastFlag_result1_upvr_3 = game:DefineFastFlag("DebugSelfViewPerfBenchmark", false)
local RunService_upvr = game:GetService("RunService")
local tbl_upvw = {}
local UserInputService_upvr = game:GetService("UserInputService")
local const_number_upvw = 0
local game_FindService_result1_upvr = game:FindService("FaceAnimatorService")
local game_GetEngineFeature_result1_upvr_2 = game:GetEngineFeature("PlayerViewRemoteEventSupport")
function startRenderStepped(arg1) -- Line 735
	--[[ Upvalues[28]:
		[1]: game_DefineFastFlag_result1_upvr_3 (readonly)
		[2]: RunService_upvr (readonly)
		[3]: var10_upvw (read and write)
		[4]: GetFFlagSelfViewVisibilityFix_upvr (readonly)
		[5]: var20_upvw (read and write)
		[6]: var26_upvw (read and write)
		[7]: var32_upvw (read and write)
		[8]: var12_upvw (read and write)
		[9]: LocalPlayer_upvr (readonly)
		[10]: var21_upvw (read and write)
		[11]: ModelUtils_upvr (readonly)
		[12]: tbl_upvw (read and write)
		[13]: GetFFlagSelfViewAssertFix_upvr (readonly)
		[14]: tbl_upvw_2 (read and write)
		[15]: UserInputService_upvr (readonly)
		[16]: const_number_upvw (read and write)
		[17]: var22_upvw (read and write)
		[18]: var23_upvw (read and write)
		[19]: var24_upvw (read and write)
		[20]: var17_upvw (read and write)
		[21]: const_vector_upvw (read and write)
		[22]: game_FindService_result1_upvr (readonly)
		[23]: game_GetEngineFeature_result1_upvr_2 (readonly)
		[24]: const_number_upvw_2 (read and write)
		[25]: var15_upvw (read and write)
		[26]: var14_upvw (read and write)
		[27]: var9_upvw (read and write)
		[28]: updateClone_upvr (readonly)
	]]
	local stopRenderStepped_3 = stopRenderStepped
	stopRenderStepped_3()
	if game_DefineFastFlag_result1_upvr_3 then
		stopRenderStepped_3 = RunService_upvr.Heartbeat
	else
		stopRenderStepped_3 = RunService_upvr.RenderStepped
	end
	var10_upvw = stopRenderStepped_3:Connect(function(arg1_9) -- Line 742
		--[[ Upvalues[27]:
			[1]: game_DefineFastFlag_result1_upvr_3 (copied, readonly)
			[2]: GetFFlagSelfViewVisibilityFix_upvr (copied, readonly)
			[3]: var20_upvw (copied, read and write)
			[4]: var26_upvw (copied, read and write)
			[5]: var32_upvw (copied, read and write)
			[6]: var12_upvw (copied, read and write)
			[7]: LocalPlayer_upvr (copied, readonly)
			[8]: var21_upvw (copied, read and write)
			[9]: ModelUtils_upvr (copied, readonly)
			[10]: tbl_upvw (copied, read and write)
			[11]: GetFFlagSelfViewAssertFix_upvr (copied, readonly)
			[12]: tbl_upvw_2 (copied, read and write)
			[13]: UserInputService_upvr (copied, readonly)
			[14]: const_number_upvw (copied, read and write)
			[15]: var22_upvw (copied, read and write)
			[16]: var23_upvw (copied, read and write)
			[17]: var24_upvw (copied, read and write)
			[18]: var17_upvw (copied, read and write)
			[19]: const_vector_upvw (copied, read and write)
			[20]: game_FindService_result1_upvr (copied, readonly)
			[21]: game_GetEngineFeature_result1_upvr_2 (copied, readonly)
			[22]: const_number_upvw_2 (copied, read and write)
			[23]: var15_upvw (copied, read and write)
			[24]: var14_upvw (copied, read and write)
			[25]: var9_upvw (copied, read and write)
			[26]: updateClone_upvr (copied, readonly)
			[27]: arg1 (readonly)
		]]
		-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [2] 3. Error Block 2 start (CF ANALYSIS FAILED)
		debug.profilebegin("faceclone")
		-- KONSTANTERROR: [2] 3. Error Block 2 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [6] 6. Error Block 3 start (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [6] 6. Error Block 3 end (CF ANALYSIS FAILED)
	end)
end
local var129_upvw
return function(arg1, arg2, arg3) -- Line 1032, Named "Initialize"
	--[[ Upvalues[13]:
		[1]: var25_upvw (read and write)
		[2]: GetFFlagSelfViewVisibilityFix_upvr (readonly)
		[3]: var129_upvw (read and write)
		[4]: var26_upvw (read and write)
		[5]: onOuterContainerVisibilityChanged_upvr (readonly)
		[6]: createViewport_upvr (readonly)
		[7]: Players_upvr (readonly)
		[8]: LocalPlayer_upvr (readonly)
		[9]: tbl_upvr (readonly)
		[10]: tbl_upvr_2 (readonly)
		[11]: var12_upvw (read and write)
		[12]: tbl_upvw_2 (read and write)
		[13]: clearClone_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 34 start (CF ANALYSIS FAILED)
	if arg2 then
		var25_upvw = arg2
	else
		return
	end
	-- KONSTANTERROR: [0] 1. Error Block 34 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [7] 8. Error Block 6 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [7] 8. Error Block 6 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [21] 21. Error Block 36 start (CF ANALYSIS FAILED)
	assert(true, "Wrapper Frame cannot be nil")
	-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [28.4]
	if nil == nil then
	else
	end
	assert(true, "Frame name cannot be nil ")
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	var26_upvw = var25_upvw:FindFirstAncestor(nil)
	if var26_upvw then
		var26_upvw:GetPropertyChangedSignal("Visible"):Connect(onOuterContainerVisibilityChanged_upvr)
	end
	-- KONSTANTERROR: [21] 21. Error Block 36 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [56] 48. Error Block 24 start (CF ANALYSIS FAILED)
	createViewport_upvr()
	playerAdded(arg1)
	Players_upvr.PlayerAdded:Connect(playerAdded)
	Players_upvr.PlayerRemoving:Connect(function(arg1_10) -- Line 1060
		--[[ Upvalues[5]:
			[1]: LocalPlayer_upvr (copied, readonly)
			[2]: tbl_upvr (copied, readonly)
			[3]: tbl_upvr_2 (copied, readonly)
			[4]: var12_upvw (copied, read and write)
			[5]: tbl_upvw_2 (copied, read and write)
		]]
		if arg1_10 == LocalPlayer_upvr then
			local HumanoidStateChanged = tbl_upvr.HumanoidStateChanged
			if tbl_upvr_2[HumanoidStateChanged] then
				tbl_upvr_2[HumanoidStateChanged]:Disconnect()
				tbl_upvr_2[HumanoidStateChanged] = nil
			end
			local CharacterAdded_4 = tbl_upvr.CharacterAdded
			if tbl_upvr_2[CharacterAdded_4] then
				tbl_upvr_2[CharacterAdded_4]:Disconnect()
				tbl_upvr_2[CharacterAdded_4] = nil
			end
			local CharacterRemoving_3 = tbl_upvr.CharacterRemoving
			if tbl_upvr_2[CharacterRemoving_3] then
				tbl_upvr_2[CharacterRemoving_3]:Disconnect()
				tbl_upvr_2[CharacterRemoving_3] = nil
			end
			stopRenderStepped()
			local AnimationPlayed = tbl_upvr.AnimationPlayed
			if tbl_upvr_2[AnimationPlayed] then
				tbl_upvr_2[AnimationPlayed]:Disconnect()
				tbl_upvr_2[AnimationPlayed] = nil
			end
			local AnimationPlayedCoreScript_4 = tbl_upvr.AnimationPlayedCoreScript
			if tbl_upvr_2[AnimationPlayedCoreScript_4] then
				tbl_upvr_2[AnimationPlayedCoreScript_4]:Disconnect()
				tbl_upvr_2[AnimationPlayedCoreScript_4] = nil
			end
			var12_upvw = nil
			tbl_upvw_2 = {}
			clearCloneCharacter()
		end
	end)
	startRenderStepped(arg1)
	do
		return clearClone_upvr
	end
	-- KONSTANTERROR: [56] 48. Error Block 24 end (CF ANALYSIS FAILED)
end