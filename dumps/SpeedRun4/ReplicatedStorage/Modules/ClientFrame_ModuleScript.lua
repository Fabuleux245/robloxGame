-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:06:22
-- Luau version 6, Types version 3
-- Time taken: 0.008201 seconds

local ReplicatedStorage = game:GetService("ReplicatedStorage")
local RunService = game:GetService("RunService")
local module_upvr_11 = require(ReplicatedStorage:WaitForChild("Settings"))
local module_upvr_2 = require(ReplicatedStorage:WaitForChild("BUA"))
local Modules = ReplicatedStorage:WaitForChild("Modules")
local module_upvr_35 = require(Modules:WaitForChild("Audio"))
local module_upvr_56 = require(Modules:WaitForChild("BUPGameClient"))
local module_upvr_52 = require(Modules:WaitForChild("ClientData"))
local module_upvr_37 = require(Modules:WaitForChild("EnergyHandler"))
local module_upvr_3 = require(Modules:WaitForChild("LocalPlayerManager"))
local module_upvr_26 = require(Modules:WaitForChild("PlayerInteract"))
local module_upvr_45 = require(Modules:WaitForChild("TutorialTracker"))
local module_upvr_15 = require(Modules:WaitForChild("UIEffects"))
local module_upvr_38 = require(Modules:WaitForChild("UIShared"))
local LevelLoader = Modules.LevelLoader
local module_upvr_34 = require(LevelLoader:WaitForChild("LevelAssetLogic"))
local module_upvr_41 = require(LevelLoader:WaitForChild("DimensionManager"))
local module_upvr_12 = require(LevelLoader:WaitForChild("FlyingChaserNPCManager"))
local module_upvr_17 = require(LevelLoader:WaitForChild("LevelLogic"))
local module_upvr_53 = require(LevelLoader:WaitForChild("PathChaserNPCManager"))
local module_upvr_18 = require(LevelLoader:WaitForChild("SellerNPCManager"))
local ToolTracker = Modules:WaitForChild("ToolTracker")
local UserInterface = Modules:WaitForChild("UserInterface")
local tbl_upvr = {
	CameraState = nil;
	CurrencyVoucherCleanAt = os.clock() + module_upvr_11.CurrencyVoucherExpiredCleanPeriod;
}
module_upvr_35.SetSteppingManagement(true)
if module_upvr_11.BUAEnabled then
	module_upvr_2.Init()
end
RunService:BindToRenderStep("ClientFrame_Input_Early", Enum.RenderPriority.Input.Value - 1, function(arg1) -- Line 111, Named "Input_Early"
	--[[ Upvalues[2]:
		[1]: module_upvr_38 (readonly)
		[2]: tbl_upvr (readonly)
	]]
	debug.profilebegin("CF_Input_Early")
	local Camera_2 = module_upvr_38.Camera
	if tbl_upvr.CameraState then
		Camera_2.CFrame = tbl_upvr.CameraState.Origin
		Camera_2.Focus = tbl_upvr.CameraState.Focus
		tbl_upvr.CameraState = nil
	end
	debug.profileend()
end)
RunService:BindToRenderStep("ClientFrame_Input_Late", Enum.RenderPriority.Input.Value + 1, function(arg1) -- Line 134, Named "Input_Late"
	--[[ Upvalues[1]:
		[1]: module_upvr_3 (readonly)
	]]
	debug.profilebegin("CF_Input_Late")
	module_upvr_3.Input_Late(arg1, os.clock())
	debug.profileend()
end)
RunService:BindToRenderStep("ClientFrame_Camera_Late", Enum.RenderPriority.Camera.Value + 1, function(arg1) -- Line 149, Named "Camera_Late"
	--[[ Upvalues[3]:
		[1]: module_upvr_38 (readonly)
		[2]: tbl_upvr (readonly)
		[3]: module_upvr_3 (readonly)
	]]
	debug.profilebegin("CF_Camera_Late")
	local Camera = module_upvr_38.Camera
	tbl_upvr.CameraState = {
		Focus = Camera.Focus;
		Origin = Camera.CFrame;
	}
	module_upvr_3.Camera_Late(arg1, os.clock())
	debug.profileend()
end)
local module_upvr_19 = require(Modules:WaitForChild("ItemActionHandler"))
local module_upvr_51 = require(UserInterface:WaitForChild("LevelMenuUI"))
local module_upvr_54 = require(UserInterface:WaitForChild("LoadingScreenUI"))
local module_upvr_14 = require(UserInterface:WaitForChild("PetHatchUI"))
local module_upvr_31 = require(Modules:WaitForChild("BUDGameClient"))
local module_upvr_28 = require(Modules:WaitForChild("BUEGameClient"))
local module_upvr_8 = require(Modules:WaitForChild("PlayerStateHandler"))
local module_upvr_7 = require(Modules:WaitForChild("CharacterVisibility"))
local module_upvr_46 = require(Modules:WaitForChild("HighlightGroupManager"))
local module_upvr_39 = require(LevelLoader:WaitForChild("GateLockManager"))
local module_upvr_32 = require(ReplicatedStorage:WaitForChild("BUUI"))
local module_upvr_59 = require(UserInterface:WaitForChild("BackpackUI"))
local module_upvr_33 = require(UserInterface:WaitForChild("BloxBizBridge"))
local module_upvr_47 = require(UserInterface:WaitForChild("PlayerListUI"))
local module_upvr_30 = require(UserInterface:WaitForChild("PlayerInteractUI"))
local module_upvr_42 = require(UserInterface:WaitForChild("SidebarUI"))
local module_upvr_27 = require(UserInterface:WaitForChild("TopbarUI"))
local module_upvr_58 = require(UserInterface:WaitForChild("AlternativeDimensionUI"))
local module_upvr_23 = require(UserInterface:WaitForChild("EnergyExchangeUI"))
local module_upvr_50 = require(UserInterface:WaitForChild("FadeOutUI"))
local module_upvr_21 = require(UserInterface:WaitForChild("IconTextPopupUI"))
local module_upvr_5 = require(UserInterface:WaitForChild("InventoryUI"))
local module_upvr_29 = require(UserInterface:WaitForChild("LevelPurchaseUI"))
local module_upvr_10 = require(UserInterface:WaitForChild("LevelSelectUI"))
local module_upvr_44 = require(UserInterface:WaitForChild("LevelSkipUI"))
local module_upvr_24 = require(UserInterface:WaitForChild("NotificationsUI"))
local module_upvr = require(UserInterface:WaitForChild("SettingsUI"))
local module_upvr_57 = require(UserInterface:WaitForChild("SpecialLevelUI"))
local module_upvr_55 = require(UserInterface:WaitForChild("WorldUI"))
local module_upvr_48 = require(Modules:WaitForChild("UILegacySupport"))
local module_upvr_4 = require(UserInterface:WaitForChild("PromptUI"))
local module_upvr_13 = require(Modules:WaitForChild("AnimatedTextureUtility"))
local module_upvr_9 = require(Modules:WaitForChild("Enemies"))
local module_upvr_49 = require(Modules:WaitForChild("Tutorials"))
RunService:BindToRenderStep("ClientFrame_RenderStepped", Enum.RenderPriority.Last.Value, function(arg1) -- Line 175, Named "RenderStepped"
	--[[ Upvalues[52]:
		[1]: module_upvr_19 (readonly)
		[2]: module_upvr_3 (readonly)
		[3]: module_upvr_26 (readonly)
		[4]: module_upvr_56 (readonly)
		[5]: module_upvr_17 (readonly)
		[6]: module_upvr_51 (readonly)
		[7]: module_upvr_54 (readonly)
		[8]: module_upvr_14 (readonly)
		[9]: module_upvr_52 (readonly)
		[10]: module_upvr_31 (readonly)
		[11]: module_upvr_28 (readonly)
		[12]: module_upvr_34 (readonly)
		[13]: module_upvr_8 (readonly)
		[14]: module_upvr_7 (readonly)
		[15]: module_upvr_46 (readonly)
		[16]: module_upvr_41 (readonly)
		[17]: module_upvr_12 (readonly)
		[18]: module_upvr_39 (readonly)
		[19]: module_upvr_53 (readonly)
		[20]: module_upvr_18 (readonly)
		[21]: module_upvr_32 (readonly)
		[22]: module_upvr_38 (readonly)
		[23]: module_upvr_11 (readonly)
		[24]: module_upvr_2 (readonly)
		[25]: module_upvr_59 (readonly)
		[26]: module_upvr_33 (readonly)
		[27]: module_upvr_47 (readonly)
		[28]: module_upvr_30 (readonly)
		[29]: module_upvr_42 (readonly)
		[30]: module_upvr_27 (readonly)
		[31]: module_upvr_58 (readonly)
		[32]: module_upvr_23 (readonly)
		[33]: module_upvr_50 (readonly)
		[34]: module_upvr_21 (readonly)
		[35]: module_upvr_5 (readonly)
		[36]: module_upvr_29 (readonly)
		[37]: module_upvr_10 (readonly)
		[38]: module_upvr_44 (readonly)
		[39]: module_upvr_24 (readonly)
		[40]: module_upvr (readonly)
		[41]: module_upvr_57 (readonly)
		[42]: module_upvr_45 (readonly)
		[43]: module_upvr_55 (readonly)
		[44]: module_upvr_15 (readonly)
		[45]: module_upvr_48 (readonly)
		[46]: module_upvr_4 (readonly)
		[47]: module_upvr_13 (readonly)
		[48]: module_upvr_35 (readonly)
		[49]: module_upvr_9 (readonly)
		[50]: module_upvr_49 (readonly)
		[51]: module_upvr_37 (readonly)
		[52]: tbl_upvr (readonly)
	]]
	debug.profilebegin("CF_RenderStepped")
	local os_clock_result1 = os.clock()
	debug.profilebegin("Flags_Early")
	module_upvr_19.ResolveState()
	module_upvr_3.ResolveState()
	module_upvr_26.ResolveState()
	debug.profileend()
	debug.profilebegin("Systems")
	module_upvr_56.RenderStepped(arg1, os_clock_result1)
	module_upvr_19.RenderStepped(arg1, os_clock_result1)
	module_upvr_17.RenderStepped(arg1, os_clock_result1)
	local any_IsActive_result1 = module_upvr_54.IsActive()
	local any_IsCovering_result1 = module_upvr_54.IsCovering()
	local var69 = any_IsActive_result1
	if var69 then
		var69 = not any_IsCovering_result1
	end
	module_upvr_52.Flags.LevelMenuOpen = module_upvr_51.IsOpen()
	module_upvr_52.Flags.LoadingScreenActive = any_IsActive_result1
	module_upvr_52.Flags.LoadingScreenCovering = any_IsCovering_result1
	module_upvr_52.Flags.LoadingScreenTransitioning = var69
	module_upvr_52.Flags.PetScreenActive = module_upvr_14.IsOpen()
	module_upvr_31.RenderStepped(os_clock_result1)
	module_upvr_28.RenderStepped(os_clock_result1)
	module_upvr_34.RenderStepped(arg1, os_clock_result1)
	module_upvr_8.RenderStepped(arg1, os_clock_result1)
	module_upvr_7.RenderStepped(arg1, os_clock_result1)
	module_upvr_46.RenderStepped(arg1, os_clock_result1)
	module_upvr_41.RenderStepped(arg1, os_clock_result1)
	module_upvr_12.RenderStepped(arg1, os_clock_result1)
	module_upvr_39.RenderStepped(arg1, os_clock_result1)
	module_upvr_3.RenderStepped(arg1, os_clock_result1)
	module_upvr_53.RenderStepped(arg1, os_clock_result1)
	module_upvr_18.RenderStepped(arg1, os_clock_result1)
	debug.profileend()
	debug.profilebegin("UI")
	module_upvr_32.RenderStepped()
	module_upvr_38.RenderStepped(arg1, os_clock_result1)
	if module_upvr_11.BUAEnabled then
		module_upvr_2.RenderStepped(os_clock_result1)
	end
	module_upvr_59.RenderStepped(arg1, os_clock_result1)
	module_upvr_33.RenderStepped(arg1, os_clock_result1)
	module_upvr_47.RenderStepped(arg1, os_clock_result1)
	module_upvr_30.RenderStepped(arg1, os_clock_result1)
	module_upvr_42.RenderStepped(arg1, os_clock_result1)
	module_upvr_27.RenderStepped(arg1, os_clock_result1)
	module_upvr_14.RenderStepped(arg1, os_clock_result1)
	module_upvr_58.RenderStepped(arg1, os_clock_result1)
	module_upvr_28.RenderStepped_Late(arg1, os_clock_result1)
	module_upvr_23.RenderStepped(arg1, os_clock_result1)
	module_upvr_50.RenderStepped(arg1, os_clock_result1)
	module_upvr_21.RenderStepped(arg1, os_clock_result1)
	module_upvr_5.RenderStepped(arg1, os_clock_result1)
	module_upvr_51.RenderStepped(arg1, os_clock_result1)
	module_upvr_29.RenderStepped(arg1, os_clock_result1)
	module_upvr_10.RenderStepped(arg1, os_clock_result1)
	module_upvr_44.RenderStepped(arg1, os_clock_result1)
	module_upvr_54.RenderStepped(arg1, os_clock_result1)
	module_upvr_24.RenderStepped(arg1, os_clock_result1)
	module_upvr.RenderStepped(arg1, os_clock_result1)
	module_upvr_57.RenderStepped(arg1, os_clock_result1)
	module_upvr_45.RenderStepped(arg1, os_clock_result1)
	module_upvr_55.RenderStepped(arg1, os_clock_result1)
	module_upvr_15.RenderStepped(arg1, os_clock_result1)
	module_upvr_48.RenderStepped(arg1, os_clock_result1)
	module_upvr_4.RenderStepped(arg1, os_clock_result1)
	debug.profileend()
	debug.profilebegin("Misc")
	module_upvr_13.RenderStepped(arg1, os_clock_result1)
	module_upvr_35.RenderStepped(arg1, os_clock_result1)
	debug.profileend()
	debug.profilebegin("Flags_Late")
	module_upvr_52.Flags.CarryDistanceDirty = false
	module_upvr_52.Flags.CurrentLevelsDirty = false
	module_upvr_52.Flags.LocalToolStatesDirty = false
	for i, v in module_upvr_52.PlayerState_ByPlayer do
		v.CurrentLevelDirty = false
		v.PetState.Dirty = false
		module_upvr_9.EnemyStateResolve(v.EnemyState)
		module_upvr_49.TutorialStateResolve(v.TutorialState)
	end
	module_upvr_52.Flags.PromptActive = module_upvr_4.IsOpen()
	module_upvr_37.ResetState()
	module_upvr_19.ResetState()
	module_upvr_26.ResetState()
	if os_clock_result1 <= tbl_upvr.CurrencyVoucherCleanAt then
		module_upvr_52.CurrencyVouchersRedeemExpired(os_clock_result1)
		local var70 = tbl_upvr
		i = module_upvr_11
		var70.CurrencyVoucherCleanAt += i.CurrencyVoucherExpiredCleanPeriod
	end
	debug.profileend()
	debug.profileend()
end)
local module_upvr_25 = require(Modules:WaitForChild("LevelLoader"))
local module_upvr_20 = require(Modules:WaitForChild("PlayerPhysicsEngine"))
RunService.PreSimulation:Connect(function(arg1) -- Line 339
	--[[ Upvalues[6]:
		[1]: module_upvr_25 (readonly)
		[2]: module_upvr_41 (readonly)
		[3]: module_upvr_3 (readonly)
		[4]: module_upvr_18 (readonly)
		[5]: module_upvr_56 (readonly)
		[6]: module_upvr_20 (readonly)
	]]
	debug.profilebegin("CF_PreSimulation")
	local os_clock_result1_3 = os.clock()
	module_upvr_25.PreSimulation(arg1, os_clock_result1_3)
	module_upvr_41.PreSimulation(arg1, arg1)
	module_upvr_3.PreSimulation(arg1, os_clock_result1_3)
	module_upvr_18.PreSimulation(arg1, os_clock_result1_3)
	module_upvr_56.PreSimulation(arg1, os_clock_result1_3)
	module_upvr_20.PreSimulation(arg1, os_clock_result1_3)
	debug.profileend()
end)
local module_upvr_22 = require(Modules:WaitForChild("CharacterStateHandler"))
local module_upvr_6 = require(LevelLoader:WaitForChild("DynamicObjectManager"))
local module_upvr_43 = require(ToolTracker:WaitForChild("CloudHandler"))
local module_upvr_16 = require(ToolTracker:WaitForChild("GunHandler"))
local module_upvr_36 = require(LevelLoader:WaitForChild("OpenSpaceHandler"))
local module_upvr_40 = require(Modules:WaitForChild("TrailTracker"))
RunService.PostSimulation:Connect(function(arg1) -- Line 365
	--[[ Upvalues[17]:
		[1]: module_upvr_52 (readonly)
		[2]: module_upvr_22 (readonly)
		[3]: module_upvr_41 (readonly)
		[4]: module_upvr_6 (readonly)
		[5]: module_upvr_34 (readonly)
		[6]: module_upvr_45 (readonly)
		[7]: module_upvr_17 (readonly)
		[8]: module_upvr_18 (readonly)
		[9]: module_upvr_43 (readonly)
		[10]: module_upvr_37 (readonly)
		[11]: module_upvr_12 (readonly)
		[12]: module_upvr_16 (readonly)
		[13]: module_upvr_36 (readonly)
		[14]: module_upvr_53 (readonly)
		[15]: module_upvr_26 (readonly)
		[16]: module_upvr_40 (readonly)
		[17]: module_upvr_15 (readonly)
	]]
	debug.profilebegin("CF_PostSimulation")
	local os_clock_result1_2 = os.clock()
	module_upvr_52.Now = workspace:GetServerTimeNow()
	debug.profilebegin("Systems")
	for _, v_2 in module_upvr_52.PlayerState_ByPlayer do
		if v_2.CharacterState then
			module_upvr_22.Update(v_2.CharacterState, os_clock_result1_2)
		end
	end
	module_upvr_41.PostSimulation(arg1, os_clock_result1_2)
	module_upvr_6.PostSimulation(arg1, os_clock_result1_2)
	module_upvr_34.PostSimulation(arg1, os_clock_result1_2)
	module_upvr_45.PostSimulation(arg1, os_clock_result1_2)
	module_upvr_17.PostSimulation(arg1, os_clock_result1_2)
	module_upvr_18.PostSimulation(arg1, os_clock_result1_2)
	module_upvr_43.PostSimulation(arg1, os_clock_result1_2)
	module_upvr_37.PostSimulation(arg1, os_clock_result1_2)
	module_upvr_12.PostSimulation(arg1, os_clock_result1_2)
	module_upvr_16.PostSimulation(arg1, os_clock_result1_2)
	module_upvr_36.PostSimulation(arg1, os_clock_result1_2)
	module_upvr_53.PostSimulation(arg1, os_clock_result1_2)
	module_upvr_26.PostSimulation(arg1, os_clock_result1_2)
	module_upvr_40.PostSimulation(arg1, os_clock_result1_2)
	module_upvr_15.PostSimulation(arg1, os_clock_result1_2)
	debug.profileend()
	debug.profileend()
end)
return {}