-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:09:40
-- Luau version 6, Types version 3
-- Time taken: 0.028155 seconds

local Players_upvr = game:GetService("Players")
local Parent_4 = script.Parent.Parent.Parent
local var3_upvw
local var4_upvw
local var5_upvw
local var6_upvw
local module = require(script.Parent.Parent.Parent:WaitForChild("ConfigReader"))
local Utils = Parent_4:FindFirstChild("Utils")
local Utils_2_upvr = require(Utils)
local module_2_upvr = require(Utils:WaitForChild("Fusion"))
local Value_upvr = module_2_upvr.Value
local Spring_upvr = module_2_upvr.Spring
local Classes = script.Parent.Parent.Classes
local AvatarHandler_upvr = require(Classes.AvatarHandler)
local FetchDescriptionToTable_upvr = require(script.FetchDescriptionToTable)
local tbl_2_upvr = {
	TopTypes = {64, 65, 68};
	BottomTypes = {66, 69, 72};
	LimitTryOn = module:read("CatalogClothingLimits");
	PersistentWear = module:read("CatalogPersistentWear");
	SaveOutfitLimit = 100;
}
local function ExceedsWearLimit_upvr(arg1, arg2, arg3) -- Line 55, Named "ExceedsWearLimit"
	--[[ Upvalues[1]:
		[1]: tbl_2_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	local pairs_result1_2, pairs_result2_13, pairs_result3 = pairs(arg1)
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [57] 45. Error Block 33 start (CF ANALYSIS FAILED)
	-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [57.12]
	local function INLINED() -- Internal function, doesn't exist in bytecode
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		return nil.AssetType == arg3
	end
	if nil.AssetType == arg3 or not table.find(tbl_2_upvr.BottomTypes, arg3) and not table.find(tbl_2_upvr.TopTypes, arg3) and INLINED() then
	end
	-- KONSTANTERROR: [57] 45. Error Block 33 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [23] 19. Error Block 42 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	if table.find(tbl_2_upvr.TopTypes, arg3) then
		-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [69.14]
		-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [69.15]
		for _, _ in nil.AssetType do
			-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [69.18]
			if nil == _ then
			end
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		end
		-- KONSTANTWARNING: GOTO [61] #47
	end
	-- KONSTANTERROR: [23] 19. Error Block 42 end (CF ANALYSIS FAILED)
end
local function GetTableType_upvr(arg1) -- Line 95, Named "GetTableType"
	if next(arg1) == nil then return end
	for i_2, _ in pairs(arg1) do
		if typeof(i_2) ~= "number" or typeof(i_2) == "number" and (i_2 % 1 ~= 0 or i_2 < 0) then
			return "Dictionary"
		end
	end
	return "Array"
end
local function _(arg1) -- Line 108, Named "GetTableSize"
	--[[ Upvalues[1]:
		[1]: GetTableType_upvr (readonly)
	]]
	local GetTableType_upvr_result1 = GetTableType_upvr(arg1)
	if GetTableType_upvr_result1 == "Array" then
		do
			return #arg1
		end
		local var32
	end
	if GetTableType_upvr_result1 == "Dictionary" then
		var32 = 0
		for _ in arg1 do
			var32 += 1
		end
		return var32
	end
	return 0
end
local function GetTableDiff_upvr(arg1, arg2) -- Line 123, Named "GetTableDiff"
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local tbl_9 = {}
	for _, v_3 in pairs(arg1) do
		table.insert(tbl_9, v_3.AssetId)
	end
	for _, v_4 in pairs(arg2) do
		table.insert({}, v_4.AssetId)
		local var73
	end
	for _, v_5 in pairs(var73) do
		if not table.find(tbl_9, v_5) then
			table.insert({}, v_5)
		end
	end
	for _, v_6 in pairs(tbl_9) do
		if not table.find(var73, v_6) then
			table.insert({}, v_6)
		end
	end
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect (x2)
	return {}, {}
end
local function FindItemInTable_upvr(arg1, arg2) -- Line 152, Named "FindItemInTable"
	for i_8, v_7 in pairs(arg1) do
		if i_8 ~= "BodyColors" and tostring(v_7.AssetId) == tostring(arg2.AssetId) then
			return i_8
		end
	end
	return nil
end
local function IsSameOutfit_upvr(arg1, arg2) -- Line 164, Named "IsSameOutfit"
	for i_9, v_8 in pairs(arg2) do
		if not arg1[i_9] then
			return false
		end
		if i_9 == "BodyColors" then
			for i_10, v_9 in pairs(arg2.BodyColors) do
				if v_8[i_10] ~= v_9 then
					return false
				end
			end
		end
	end
	for i_11, v_10 in pairs(arg1) do
		if not arg2[i_11] then
			return false
		end
		if i_11 == "BodyColors" then
			for i_12, v_11 in pairs(arg1.BodyColors) do
				if v_10[i_12] ~= v_11 then
					return false
				end
			end
		end
	end
	return true
end
local Value_upvr_result1_2_upvr = Value_upvr(Vector2.new(1280, 720))
game:GetService("RunService").RenderStepped:Connect(function() -- Line 219
	--[[ Upvalues[1]:
		[1]: Value_upvr_result1_2_upvr (readonly)
	]]
	if workspace.Camera.ViewportSize ~= Value_upvr_result1_2_upvr:get() then
		Value_upvr_result1_2_upvr:set(workspace.Camera.ViewportSize)
	end
end)
local module_upvr = {}
module_upvr.__index = module_upvr
function module_upvr.new(arg1) -- Line 229
	--[[ Upvalues[3]:
		[1]: module_upvr (readonly)
		[2]: Value_upvr (readonly)
		[3]: Spring_upvr (readonly)
	]]
	local setmetatable_result1 = setmetatable({}, module_upvr)
	setmetatable_result1.Container = arg1
	setmetatable_result1.Enabled = false
	setmetatable_result1.Observers = {}
	setmetatable_result1.GuiObjects = {}
	setmetatable_result1.AvatarObjects = {}
	setmetatable_result1.Debounces = {}
	setmetatable_result1.zoom = Value_upvr(0.8)
	setmetatable_result1.zoomSpring = Spring_upvr(setmetatable_result1.zoom, 30)
	setmetatable_result1.HideUI = Value_upvr(false)
	setmetatable_result1.PlayerDescChanged = Value_upvr(false)
	setmetatable_result1.Poses = {}
	setmetatable_result1.PoseIds = {}
	setmetatable_result1.OutfitLoaded = Instance.new("BindableEvent")
	return setmetatable_result1
end
local BloxbizRemotes_upvr = game:GetService("ReplicatedStorage"):WaitForChild("BloxbizRemotes")
local var110_upvw
local AvatarEditorService_upvr = game:GetService("AvatarEditorService")
local LoadingFrame_upvr = require(script.LoadingFrame)
local CatalogChanges_upvr = require(Classes.CatalogChanges)
local UserInputService_upvr = game:GetService("UserInputService")
local ContentProvider_upvr = game:GetService("ContentProvider")
local PreviewFrame_upvr = require(script.PreviewFrame)
local Computed_upvr = module_2_upvr.Computed
local Children_upvr = module_2_upvr.Children
local SceneControls_upvr = require(script.SceneControls)
local PreviewButtons_upvr = require(script.PreviewButtons)
local Observer_upvr = module_2_upvr.Observer
function module_upvr.Init(arg1, arg2) -- Line 255
	--[[ Upvalues[24]:
		[1]: var3_upvw (read and write)
		[2]: BloxbizRemotes_upvr (readonly)
		[3]: var4_upvw (read and write)
		[4]: var5_upvw (read and write)
		[5]: var6_upvw (read and write)
		[6]: var110_upvw (read and write)
		[7]: AvatarEditorService_upvr (readonly)
		[8]: LoadingFrame_upvr (readonly)
		[9]: Value_upvr (readonly)
		[10]: CatalogChanges_upvr (readonly)
		[11]: module_2_upvr (readonly)
		[12]: Utils_2_upvr (readonly)
		[13]: Players_upvr (readonly)
		[14]: UserInputService_upvr (readonly)
		[15]: ContentProvider_upvr (readonly)
		[16]: AvatarHandler_upvr (readonly)
		[17]: PreviewFrame_upvr (readonly)
		[18]: Spring_upvr (readonly)
		[19]: Computed_upvr (readonly)
		[20]: Children_upvr (readonly)
		[21]: SceneControls_upvr (readonly)
		[22]: PreviewButtons_upvr (readonly)
		[23]: IsSameOutfit_upvr (readonly)
		[24]: Observer_upvr (readonly)
	]]
	arg1.Controllers = arg2
	var3_upvw = BloxbizRemotes_upvr:WaitForChild("CatalogItemTryOnEvent")
	var4_upvw = BloxbizRemotes_upvr:WaitForChild("CatalogOnSaveOutfit")
	var5_upvw = BloxbizRemotes_upvr:WaitForChild("CatalogOnResetOutfit")
	var6_upvw = BloxbizRemotes_upvr:WaitForChild("CatalogOnApplyToRealHumanoid")
	var110_upvw = BloxbizRemotes_upvr:WaitForChild("CatalogOnGetPoses")
	local any_GetAvatarRules_result1 = AvatarEditorService_upvr:GetAvatarRules()
	if not any_GetAvatarRules_result1 then
	else
		arg1.AssetWearingLimits = {}
		for _, v_16 in pairs(any_GetAvatarRules_result1.WearableAssetTypes) do
			local MaxNumber = v_16.MaxNumber
			local var131
			if MaxNumber <= 0 then
				var131 = 1
			else
				var131 = MaxNumber
			end
			arg1.AssetWearingLimits[v_16.Id] = var131
		end
		local var112_result1 = LoadingFrame_upvr()
		arg1.GuiObjects.LoadingFrame = var112_result1
		var112_result1.Visible = false
		local Value_upvr_result1 = Value_upvr({})
		arg1.UndoChanges = CatalogChanges_upvr.new()
		arg1.RedoChanges = CatalogChanges_upvr.new()
		arg1.SaveDisabled = module_2_upvr.Value(false)
		arg1.WearingVisible = module_2_upvr.Value(false)
		arg1.SelectedItem = nil
		arg1.EquippedItems = Value_upvr_result1
		arg1.EquippedCount = module_2_upvr.Computed(function() -- Line 291
			--[[ Upvalues[2]:
				[1]: Utils_2_upvr (copied, readonly)
				[2]: arg1 (readonly)
			]]
			return Utils_2_upvr.getArraySize(arg1.EquippedItems:get())
		end)
		arg1.ScreenOrientation = Value_upvr(Players_upvr.LocalPlayer.PlayerGui.ScreenOrientation)
		module_2_upvr.Hydrate(Players_upvr.LocalPlayer.PlayerGui)({
			[module_2_upvr.Out("CurrentScreenOrientation")] = arg1.ScreenOrientation;
		})
		local any_Computed_result1 = module_2_upvr.Computed(function() -- Line 304
			--[[ Upvalues[2]:
				[1]: arg1 (readonly)
				[2]: UserInputService_upvr (copied, readonly)
			]]
			local var137
			if arg1.ScreenOrientation:get() ~= Enum.ScreenOrientation.Portrait then
				var137 = false
			else
				var137 = true
				local var138
			end
			if UserInputService_upvr.TouchEnabled and not var137 then
				var138 = 1.4
			else
				var138 = 1
			end
			return arg1.Controllers.TopBarController.TopBarHeight:get() * var138
		end)
		local PoseAnimations_upvr = BloxbizRemotes_upvr:WaitForChild("PoseAnimations")
		task.spawn(function() -- Line 320
			--[[ Upvalues[2]:
				[1]: ContentProvider_upvr (copied, readonly)
				[2]: PoseAnimations_upvr (readonly)
			]]
			ContentProvider_upvr:PreloadAsync(PoseAnimations_upvr:GetChildren())
		end)
		arg1.Poses = var110_upvw:InvokeServer()
		arg1.PoseAnimIds = Utils_2_upvr.values(arg1.Poses)
		if not Players_upvr.LocalPlayer.Character then
			Players_upvr.LocalPlayer.CharacterAdded:Wait()
		end
		table.insert(arg1.PoseAnimIds, 1, "")
		arg1.PoseIdx = Value_upvr(1)
		arg1._animTrack = nil
		arg1.FullScreen = Value_upvr(false)
		arg1.Scene = Value_upvr({
			Image = "http://www.roblox.com/asset/?id=10393363412";
			Color = Color3.new(1, 1, 1);
		})
		arg1.Scenes = Value_upvr({{
			Image = "http://www.roblox.com/asset/?id=10393363412";
			Color = Color3.new(1, 1, 1);
		}, {
			Image = "";
			Color = Color3.new(0, 1, 0);
		}, {
			Image = "";
			Color = Color3.new(0, 0, 1);
		}, {
			Image = "";
			Color = Color3.new(1, 1, 1);
		}, {
			Image = "";
			Color = Color3.new(0, 0, 0);
		}})
		arg1.ViewportFrameRef = Value_upvr()
		local tbl = {
			Parent = arg1.Container;
			Scene = arg1.Scene;
			Position = Spring_upvr(Computed_upvr(function() -- Line 408
				--[[ Upvalues[1]:
					[1]: arg1 (readonly)
				]]
				if arg1.FullScreen:get() then
					return UDim2.fromScale(0, 0)
				end
				return UDim2.new(0.688, 0, 0.017, 0)
			end), 30);
			Size = Spring_upvr(Computed_upvr(function() -- Line 415
				--[[ Upvalues[1]:
					[1]: arg1 (readonly)
				]]
				if arg1.FullScreen:get() then
					return UDim2.fromScale(1, 1)
				end
				return UDim2.new(0.302, 0, 0.983, 0)
			end), 30);
			ButtonHeight = any_Computed_result1;
			EquippedItems = arg1.EquippedItems;
			ShowItems = arg1.WearingVisible;
			CategoryName = "";
		}
		tbl.AvatarPreviewController = arg1
		local tbl_8 = {}
		local tbl_10 = {
			Visible = Computed_upvr(function() -- Line 434
				--[[ Upvalues[1]:
					[1]: arg1 (readonly)
				]]
				local any_get_result1_2 = arg1.FullScreen:get()
				if any_get_result1_2 then
					any_get_result1_2 = not arg1.HideUI:get()
				end
				return any_get_result1_2
			end);
			ButtonHeight = any_Computed_result1;
		}
		local function OnFullScreen(arg1_3) -- Line 441
			--[[ Upvalues[1]:
				[1]: arg1 (readonly)
			]]
			arg1.WearingVisible:set(false)
			arg1.FullScreen:set(arg1_3)
			if not arg1_3 then
				arg1.Scene:set(arg1.Scenes:get()[1])
				arg1:StopPosing()
			end
		end
		tbl_10.OnFullScreen = OnFullScreen
		tbl_10.FullScreen = arg1.FullScreen
		tbl_10.HideUI = arg1.HideUI
		tbl_10.Scene = arg1.Scene
		tbl_10.Scenes = arg1.Scenes
		function tbl_10.OnPoseChange(arg1_2) -- Line 343, Named "onPose"
			--[[ Upvalues[3]:
				[1]: arg1 (readonly)
				[2]: PoseAnimations_upvr (readonly)
				[3]: AvatarHandler_upvr (copied, readonly)
			]]
			local var144
			if arg1._animTrack then
				arg1._animTrack:Stop()
				arg1._animTrack:Destroy()
			end
			if not var144 then
				var144 = arg1.PoseIdx:get() + 1
				if #arg1.PoseAnimIds < var144 then
					var144 = 1
				end
			end
			local var145 = arg1.PoseAnimIds[var144]
			if var145 ~= "" then
				arg1._animTrack = AvatarHandler_upvr.GetAnimationTrack(arg1.AvatarObjects.Model, PoseAnimations_upvr:FindFirstChild(tostring(var145)) or var145)
				if arg1._animTrack then
					arg1._animTrack:Play()
				end
			end
			arg1.PoseIdx:set(var144)
		end
		tbl_8[1] = arg1.ViewportFrameRef
		tbl_8[2] = arg1.GuiObjects.LoadingFrame
		tbl_8[3] = SceneControls_upvr(tbl_10)
		tbl_8[4] = PreviewButtons_upvr({
			Visible = Computed_upvr(function() -- Line 459
				--[[ Upvalues[1]:
					[1]: arg1 (readonly)
				]]
				return not arg1.FullScreen:get()
			end);
			ButtonHeight = any_Computed_result1;
			FullScreen = arg1.FullScreen;
			OnFullScreen = function(arg1_4) -- Line 465, Named "OnFullScreen"
				--[[ Upvalues[1]:
					[1]: arg1 (readonly)
				]]
				arg1.WearingVisible:set(false)
				arg1.FullScreen:set(arg1_4)
			end;
			UndoDisabled = module_2_upvr.Computed(function() -- Line 470
				--[[ Upvalues[1]:
					[1]: arg1 (readonly)
				]]
				local var163
				if #arg1.UndoChanges.Changes:get() ~= 0 then
					var163 = false
				else
					var163 = true
				end
				return var163
			end);
			RedoDisabled = module_2_upvr.Computed(function() -- Line 473
				--[[ Upvalues[1]:
					[1]: arg1 (readonly)
				]]
				local var165
				if #arg1.RedoChanges.Changes:get() ~= 0 then
					var165 = false
				else
					var165 = true
				end
				return var165
			end);
			SaveDisabled = module_2_upvr.Computed(function() -- Line 476
				--[[ Upvalues[3]:
					[1]: arg1 (readonly)
					[2]: AvatarHandler_upvr (copied, readonly)
					[3]: IsSameOutfit_upvr (copied, readonly)
				]]
				local any_get_result1_7 = arg1.EquippedItems:get()
				local Humanoid_9 = arg1.AvatarObjects.Humanoid
				if not Humanoid_9 then
					return false
				end
				any_get_result1_7.BodyColors = AvatarHandler_upvr.GetCurrentBodyColors(Humanoid_9:GetAppliedDescription())
				for _, v_17 in pairs(arg1.Controllers.OutfitsController.Outfits:get()) do
					local var176 = not v_17.isRoblox:get()
					if var176 then
						var176 = IsSameOutfit_upvr(any_get_result1_7, v_17.data)
					end
					if var176 then
						return true
					end
				end
				return false
			end);
			WearingItems = Value_upvr_result1;
			OnUndo = function() -- Line 499, Named "OnUndo"
				--[[ Upvalues[1]:
					[1]: arg1 (readonly)
				]]
				arg1:ReverseChange(true)
			end;
			OnRedo = function() -- Line 502, Named "OnRedo"
				--[[ Upvalues[1]:
					[1]: arg1 (readonly)
				]]
				arg1:ReverseChange(false)
			end;
			OnReset = function() -- Line 505, Named "OnReset"
				--[[ Upvalues[1]:
					[1]: arg1 (readonly)
				]]
				arg1:ResetChanges()
			end;
			OnSave = function() -- Line 508, Named "OnSave"
				--[[ Upvalues[1]:
					[1]: arg1 (readonly)
				]]
				arg1:SaveChange()
			end;
			OnOpenWearing = function() -- Line 512, Named "OnOpenWearing"
				--[[ Upvalues[1]:
					[1]: arg1 (readonly)
				]]
				arg1.WearingVisible:set(not arg1.WearingVisible:get())
			end;
			WearingSelected = arg1.WearingVisible;
			OnOpenBody = function() -- Line 517, Named "OnOpenBody"
				--[[ Upvalues[1]:
					[1]: arg1 (readonly)
				]]
				arg1.Controllers.NavigationController:SwitchTo("BodyEditor")
			end;
			BodySelected = arg1.Controllers.NavigationController:GetEnabledComputed("BodyEditor");
			OnOpenInventory = function() -- Line 522, Named "OnOpenInventory"
				--[[ Upvalues[1]:
					[1]: arg1 (readonly)
				]]
				arg1.Controllers.NavigationController:SwitchTo("Inventory")
			end;
			InventorySelected = arg1.Controllers.NavigationController:GetEnabledComputed("Inventory");
			OnOpenOutfits = function() -- Line 527, Named "OnOpenOutfits"
				--[[ Upvalues[1]:
					[1]: arg1 (readonly)
				]]
				arg1.Controllers.NavigationController:SwitchTo("Outfits")
			end;
			OutfitsSelected = arg1.Controllers.NavigationController:GetEnabledComputed("Outfits");
		})
		tbl[Children_upvr] = tbl_8
		PreviewFrame_upvr(tbl)
		arg1:RefreshViewportFrame()
		Observer_upvr(arg1.zoomSpring):onChange(function() -- Line 538
			--[[ Upvalues[2]:
				[1]: arg1 (readonly)
				[2]: AvatarHandler_upvr (copied, readonly)
			]]
			AvatarHandler_upvr.UpdateViewportRender(arg1.GuiObjects.ViewportFrame, true, arg1.zoomSpring:get())
		end)
		local var178_upvw
		local function onCharacterAdded(arg1_5) -- Line 548
			--[[ Upvalues[3]:
				[1]: var178_upvw (read and write)
				[2]: arg1 (readonly)
				[3]: Utils_2_upvr (copied, readonly)
			]]
			if var178_upvw then
				var178_upvw:Disconnect()
			end
			local Humanoid_8 = arg1_5:WaitForChild("Humanoid")
			if Humanoid_8 then
				local HumanoidDescription = Humanoid_8:FindFirstChild("HumanoidDescription")
				if HumanoidDescription then
					var178_upvw = HumanoidDescription.Changed:Connect(function() -- Line 558
						--[[ Upvalues[2]:
							[1]: arg1 (copied, readonly)
							[2]: Utils_2_upvr (copied, readonly)
						]]
						arg1.PlayerDescChanged:set(true)
						Utils_2_upvr.pprint("Player's HumanoidDescription changed")
					end)
				end
			end
		end
		local LocalPlayer = Players_upvr.LocalPlayer
		LocalPlayer.CharacterAdded:Connect(onCharacterAdded)
		if LocalPlayer.Character then
			onCharacterAdded(LocalPlayer.Character)
		end
	end
end
function module_upvr.StopPosing(arg1) -- Line 577
	if arg1._animTrack then
		arg1._animTrack:Stop()
		arg1._animTrack:Destroy()
	end
	arg1.PoseIdx:set(1)
end
function module_upvr.LoadCurrentOutfit(arg1, arg2, arg3) -- Line 585
	--[[ Upvalues[3]:
		[1]: AvatarHandler_upvr (readonly)
		[2]: tbl_2_upvr (readonly)
		[3]: Utils_2_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local var194 = arg2
	if not var194 then
		var194 = arg1.AvatarObjects.Humanoid
	end
	local any_GetCurrentOutfit_result1, any_GetCurrentOutfit_result2, any_GetCurrentOutfit_result3_upvr = AvatarHandler_upvr.GetCurrentOutfit(arg1.EquippedItems:get(), var194)
	any_GetCurrentOutfit_result1.BodyColors = AvatarHandler_upvr.GetCurrentBodyColors(var194:GetAppliedDescription())
	for i_13, v_12 in pairs(any_GetCurrentOutfit_result1) do
		if i_13 ~= "BodyColors" then
			({})[tostring(v_12.AssetId)] = v_12
		end
	end
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	arg1.EquippedItems:set({})
	if 0 >= #any_GetCurrentOutfit_result1 then
	else
	end
	if 0 >= #any_GetCurrentOutfit_result2 then
	else
	end
	if table.find(any_GetCurrentOutfit_result2, "BodyColors") then
		if 0 >= #any_GetCurrentOutfit_result2 - 1 then
		else
		end
	end
	if arg1.Controllers and arg1.Controllers.BodyEditorController then
		arg1.Controllers.BodyEditorController:UpdateSliders(any_GetCurrentOutfit_result3_upvr)
	end
	if tbl_2_upvr.PersistentWear then
		task.spawn(function() -- Line 618
			--[[ Upvalues[4]:
				[1]: arg3 (readonly)
				[2]: arg1 (readonly)
				[3]: any_GetCurrentOutfit_result3_upvr (readonly)
				[4]: Utils_2_upvr (copied, readonly)
			]]
			if arg3 then
				arg1:ApplyOutfit(arg1.EquippedItems:get(), any_GetCurrentOutfit_result3_upvr)
			end
			arg1.AvatarObjects.Humanoid:ApplyDescription(any_GetCurrentOutfit_result3_upvr)
			local Parent_2 = arg1.AvatarObjects.Humanoid.Parent
			if not Parent_2:FindFirstChild("Head") and not Parent_2:FindFirstChild("DynamicHead") then
				Utils_2_upvr.pprint("Dynamic head was unable to load due to Roblox bug, reverting to default head")
				any_GetCurrentOutfit_result3_upvr.Head = 2432102561
				arg1.AvatarObjects.Humanoid:ApplyDescription(any_GetCurrentOutfit_result3_upvr)
			end
			arg1.OutfitLoaded:Fire()
		end)
	else
		arg1.OutfitLoaded:Fire()
	end
	return true or true
end
function module_upvr.UpdateEquippedItems(arg1, arg2, arg3) -- Line 641
	--[[ Upvalues[1]:
		[1]: Utils_2_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	local any_get_result1 = arg1.EquippedItems:get()
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [6] 5. Error Block 2 start (CF ANALYSIS FAILED)
	local any_merge_result1 = Utils_2_upvr.merge(arg3, {
		equippedAt = tick();
	})
	-- KONSTANTERROR: [6] 5. Error Block 2 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [18] 14. Error Block 3 start (CF ANALYSIS FAILED)
	any_get_result1[tostring(arg2)] = any_merge_result1
	arg1.EquippedItems:set(any_get_result1)
	-- KONSTANTERROR: [18] 14. Error Block 3 end (CF ANALYSIS FAILED)
end
function module_upvr.IsSavedOutfit(arg1, arg2, arg3) -- Line 680
	--[[ Upvalues[1]:
		[1]: IsSameOutfit_upvr (readonly)
	]]
	arg2.BodyColors = arg3
	for _, v_13 in pairs(arg1.Controllers.OutfitsController.Outfits:get()) do
		local var213 = not v_13.isRoblox:get()
		if var213 then
			var213 = IsSameOutfit_upvr(arg2, v_13.data)
		end
		if var213 then
			return true
		end
	end
	return false
end
function module_upvr.UpdateSaveButton(arg1, arg2) -- Line 699
	--[[ Upvalues[1]:
		[1]: AvatarHandler_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local any_IsSavedOutfit_result1, _ = arg1:IsSavedOutfit(arg1.EquippedItems:get(), AvatarHandler_upvr.GetCurrentBodyColors(arg1.AvatarObjects.Humanoid:GetAppliedDescription()))
	if arg2 then
		any_IsSavedOutfit_result1 = not arg2.CanSaveOutfit
	end
	if any_IsSavedOutfit_result1 then
		arg1.SaveDisabled:set(true)
	else
		arg1.SaveDisabled:set(false)
	end
end
local AvatarViewportFrame_upvr = require(script.AvatarViewportFrame)
function module_upvr.RefreshViewportFrame(arg1) -- Line 717
	--[[ Upvalues[2]:
		[1]: AvatarViewportFrame_upvr (readonly)
		[2]: AvatarHandler_upvr (readonly)
	]]
	arg1.GuiObjects.LoadingFrame.Visible = true
	task.spawn(function() -- Line 720
		--[[ Upvalues[3]:
			[1]: arg1 (readonly)
			[2]: AvatarViewportFrame_upvr (copied, readonly)
			[3]: AvatarHandler_upvr (copied, readonly)
		]]
		if arg1.GuiObjects.ViewportFrame then
			arg1.AvatarObjects.Model:Destroy()
			arg1.GuiObjects.ViewportFrame:Destroy()
		end
		local AvatarViewportFrame_upvr_result1 = AvatarViewportFrame_upvr(arg1.zoom)
		local Viewport = AvatarViewportFrame_upvr_result1.Viewport
		local Model = AvatarViewportFrame_upvr_result1.Model
		arg1.ViewportFrameRef:set(Viewport)
		arg1.AvatarObjects.Model = Model
		arg1.AvatarObjects.Humanoid = Model:WaitForChild("Humanoid")
		Viewport.Visible = true
		arg1.GuiObjects.ViewportFrame = Viewport
		arg1.ResetRotation = AvatarViewportFrame_upvr_result1.ResetRotation
		AvatarHandler_upvr.UpdateViewportRender(Viewport, true, arg1.zoom:get())
	end)
	arg1.GuiObjects.LoadingFrame.Visible = false
end
function module_upvr.GetOutfit(arg1) -- Line 745
	--[[ Upvalues[1]:
		[1]: AvatarHandler_upvr (readonly)
	]]
	local Humanoid_6 = arg1.AvatarObjects.Humanoid
	local any_get_result1_5 = arg1.EquippedItems:get()
	any_get_result1_5.BodyColors = AvatarHandler_upvr.GetCurrentBodyColors(Humanoid_6:GetAppliedDescription())
	return any_get_result1_5, Humanoid_6
end
function module_upvr.SaveChange(arg1) -- Line 755
	--[[ Upvalues[2]:
		[1]: AvatarHandler_upvr (readonly)
		[2]: var4_upvw (read and write)
	]]
	if arg1.Debounces.SaveOutfitDebounce then
	else
		arg1.Debounces.SaveOutfitDebounce = true
		local any_GetCurrentBodyColors_result1 = AvatarHandler_upvr.GetCurrentBodyColors(arg1.AvatarObjects.Humanoid:GetAppliedDescription())
		local any_get_result1_4 = arg1.EquippedItems:get()
		if arg1:IsSavedOutfit(any_get_result1_4, any_GetCurrentBodyColors_result1) then
			arg1.Debounces.SaveOutfitDebounce = false
			return
		end
		if var4_upvw:InvokeServer(any_get_result1_4, any_GetCurrentBodyColors_result1) then
			arg1.SaveDisabled:set(true)
		else
			arg1:UpdateSaveButton()
		end
		arg1.Debounces.SaveOutfitDebounce = false
	end
end
function module_upvr.GetMaxOrder(arg1) -- Line 781
	local var229 = 0
	for _, v_14 in ipairs(arg1.AvatarObjects.Humanoid:GetAppliedDescription():GetAccessories(false)) do
		var229 = math.max(var229, v_14.Order or 0)
	end
	return var229
end
function module_upvr.GetLastEquippedAsset(arg1, arg2, arg3) -- Line 793
	--[[ Upvalues[1]:
		[1]: Utils_2_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local var233_upvw
	if type(arg2) ~= "table" then
		var233_upvw = {var233_upvw or -1}
	end
	if arg3 == nil then
		local const_number = 1
	end
	local any_values_result1 = Utils_2_upvr.values(arg1.EquippedItems:get(), function(arg1_6, arg2_2) -- Line 801
		if arg2_2 == "BodyColors" then
		else
		end
		return true
	end)
	local var238 = any_values_result1
	local any_filter_result1 = Utils_2_upvr.filter(any_values_result1, function(arg1_7) -- Line 803
		--[[ Upvalues[1]:
			[1]: var233_upvw (read and write)
		]]
		return table.find(var233_upvw, arg1_7.AssetType)
	end)
	if const_number <= Utils_2_upvr.getArraySize(any_filter_result1) then
		var238 = any_filter_result1
	end
	Utils_2_upvr.sortByKey(var238, function(arg1_8) -- Line 811
		return -(arg1_8.equippedAt or 0)
	end)
	return var238[const_number]
end
function module_upvr.AddChange(arg1, arg2, arg3) -- Line 815
	--[[ Upvalues[6]:
		[1]: Utils_2_upvr (readonly)
		[2]: AvatarHandler_upvr (readonly)
		[3]: FetchDescriptionToTable_upvr (readonly)
		[4]: ExceedsWearLimit_upvr (readonly)
		[5]: tbl_2_upvr (readonly)
		[6]: var3_upvw (read and write)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	arg1.GuiObjects.LoadingFrame.Visible = true
	local AssetId = arg2.AssetId
	local AssetType = arg2.AssetType
	local var244
	if arg2.BundleId == nil then
		var244 = false
	else
		var244 = true
	end
	local Humanoid_7 = arg1.AvatarObjects.Humanoid
	local any_GetAppliedDescription_result1_4 = Humanoid_7:GetAppliedDescription()
	local tbl_7 = {
		Old = {
			Outfit = Utils_2_upvr.deepCopy(arg1.EquippedItems:get());
			Desc = any_GetAppliedDescription_result1_4;
		};
	}
	if var244 then
		local any_GetHumDescFromBundle_result1, _, _ = AvatarHandler_upvr.GetHumDescFromBundle(any_GetAppliedDescription_result1_4, arg2, false)
		Humanoid_7:ApplyDescription(any_GetHumDescFromBundle_result1)
		local Parent = Humanoid_7.Parent
		if not Parent:FindFirstChild("Head") and not Parent:FindFirstChild("DynamicHead") then
			Utils_2_upvr.pprint("Dynamic head was unable to load due to Roblox bug, reverting to default head")
			any_GetHumDescFromBundle_result1.Head = 2432102561
			Humanoid_7:ApplyDescription(any_GetHumDescFromBundle_result1)
		end
		arg1:LoadCurrentOutfit(Humanoid_7)
		AvatarHandler_upvr.ReplicateBundle(FetchDescriptionToTable_upvr(any_GetHumDescFromBundle_result1))
	else
		local var253
		if arg1:IsItemEquipped(arg2) then
			if AvatarHandler_upvr:Remove(Humanoid_7, AssetId, AssetType) then
				Utils_2_upvr.pprint("reloading outfit with default clothes")
				task.wait()
				arg1:LoadCurrentOutfit(Humanoid_7, false)
			else
				arg1:UpdateEquippedItems(AssetId, nil)
			end
		else
			local any_get_result1_3 = arg1.EquippedItems:get()
			local _, _ = ExceedsWearLimit_upvr(any_get_result1_3, arg1.AssetWearingLimits, AssetType)
			var253 = tbl_2_upvr
			var253 = AssetType
			var253 = tbl_2_upvr.TopTypes
			local function INLINED_2() -- Internal function, doesn't exist in bytecode
				var253 = tbl_2_upvr.BottomTypes
				return var253
			end
			local function INLINED_3() -- Internal function, doesn't exist in bytecode
				var253 = tbl_2_upvr.TopTypes
				return var253
			end
			if not table.find(var253.BottomTypes, var253) or not INLINED_2() or not table.find(var253, AssetType) or not INLINED_3() then
				var253 = {}
				var253[1] = AssetType
			end
			local any_GetLastEquippedAsset_result1 = arg1:GetLastEquippedAsset(var253, 1)
			if not tbl_2_upvr.LimitTryOn then
				if 50 > Utils_2_upvr.getArraySize(any_get_result1_3) then
				else
				end
			end
			if true then
				local AssetId_2 = any_GetLastEquippedAsset_result1.AssetId
				AvatarHandler_upvr:Remove(Humanoid_7, AssetId_2, any_GetLastEquippedAsset_result1.AssetType)
				arg1:UpdateEquippedItems(AssetId_2, nil)
			end
			var3_upvw:FireServer(AssetId, arg2.Name, arg3)
			Utils_2_upvr.pprint("try on fired in", arg3)
			arg2.Order = arg1:GetMaxOrder() + 1
			local any_TryOn_result1 = AvatarHandler_upvr:TryOn(Humanoid_7, AssetId, AssetType, not tbl_2_upvr.PersistentWear, arg2.Order)
			arg1:UpdateEquippedItems(AssetId, arg2)
			if any_TryOn_result1 then
				arg1:UpdateEquippedItems(any_TryOn_result1, nil)
			end
		end
	end
	tbl_7.New = {
		Outfit = Utils_2_upvr.deepCopy(arg1.EquippedItems:get());
		Desc = Humanoid_7:GetAppliedDescription();
	}
	arg1.UndoChanges:AddChange(tbl_7)
	arg1.RedoChanges:DropChanges()
	AvatarHandler_upvr.UpdateViewportRender(arg1.GuiObjects.ViewportFrame, false, arg1.zoom:get())
	arg1.GuiObjects.LoadingFrame.Visible = false
	task.spawn(function() -- Line 913
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		task.wait(0.1)
		arg1.PlayerDescChanged:set(false)
	end)
end
function module_upvr.ReverseChange(arg1, arg2) -- Line 919
	--[[ Upvalues[4]:
		[1]: Utils_2_upvr (readonly)
		[2]: GetTableDiff_upvr (readonly)
		[3]: AvatarHandler_upvr (readonly)
		[4]: FetchDescriptionToTable_upvr (readonly)
	]]
	arg1.GuiObjects.LoadingFrame.Visible = true
	local var270
	if arg2 then
		var270 = arg1.UndoChanges:GetLatestChange()
	else
		var270 = arg1.RedoChanges:GetLatestChange()
	end
	if not var270 then
	else
		if arg1.Debounces.TryItemDebounce then return end
		arg1.Debounces.TryItemDebounce = true
		local var271
		local var272
		if arg2 then
			var272 = var270.Old.Desc
			var271 = var270.Old.Outfit
		else
			var272 = var270.New.Desc
			var271 = var270.New.Outfit
		end
		local any_deepCopy_result1 = Utils_2_upvr.deepCopy(var271)
		local GetTableDiff_upvr_result1, GetTableDiff_upvr_result2_2 = GetTableDiff_upvr(arg1.EquippedItems:get(), any_deepCopy_result1)
		for _, v_18 in pairs(GetTableDiff_upvr_result2_2) do
			arg1:UpdateEquippedItems(v_18, nil)
		end
		for _, v_19 in pairs(any_deepCopy_result1) do
			if table.find(GetTableDiff_upvr_result1, v_19.AssetId) then
				arg1:UpdateEquippedItems(v_19.AssetId, v_19)
			end
		end
		arg1.AvatarObjects.Humanoid:ApplyDescription(var272)
		AvatarHandler_upvr.ReplicateBundle(FetchDescriptionToTable_upvr(var272))
		AvatarHandler_upvr.UpdateViewportRender(arg1.GuiObjects.ViewportFrame, false, arg1.zoom:get())
		if arg2 then
			arg1.RedoChanges:AddChange(var270)
			arg1.UndoChanges:RemoveLatestChange()
		else
			arg1.UndoChanges:AddChange(var270)
			arg1.RedoChanges:RemoveLatestChange()
		end
		arg1.Debounces.TryItemDebounce = false
		arg1.GuiObjects.LoadingFrame.Visible = false
	end
end
function module_upvr.ApplyOutfit(arg1, arg2, arg3) -- Line 979
	--[[ Upvalues[3]:
		[1]: Utils_2_upvr (readonly)
		[2]: AvatarHandler_upvr (readonly)
		[3]: FetchDescriptionToTable_upvr (readonly)
	]]
	arg1.GuiObjects.LoadingFrame.Visible = true
	local var286
	if var286 then
	else
		var286 = arg1.Debounces
		var286.TryItemDebounce = true
		var286 = arg1.AvatarObjects.Humanoid
		repeat
			task.wait()
			var286 = arg1.AvatarObjects.Humanoid
		until var286
		local tbl_3 = {
			Old = {
				Outfit = Utils_2_upvr.deepCopy(arg1.EquippedItems:get());
				Desc = var286:GetAppliedDescription();
			};
		}
		local tbl_5 = {
			BodyColors = arg2.BodyColors;
		}
		local any_GetAppliedDescription_result1 = var286:GetAppliedDescription()
		any_GetAppliedDescription_result1.Shirt = 0
		any_GetAppliedDescription_result1.GraphicTShirt = 0
		any_GetAppliedDescription_result1.Pants = 0
		any_GetAppliedDescription_result1.Head = 0
		any_GetAppliedDescription_result1.LeftArm = 0
		any_GetAppliedDescription_result1.RightArm = 0
		any_GetAppliedDescription_result1.LeftLeg = 0
		any_GetAppliedDescription_result1.RightLeg = 0
		any_GetAppliedDescription_result1.Torso = 0
		var286:ApplyDescription(any_GetAppliedDescription_result1)
		AvatarHandler_upvr:TryOutfit(var286, arg2, false, FetchDescriptionToTable_upvr(arg3))
		for i_21, v_20 in pairs(arg2) do
			if i_21 ~= "BodyColors" then
				tbl_5[tostring(i_21)] = v_20
			end
		end
		arg1.EquippedItems:set(tbl_5)
		tbl_3.New = {
			Outfit = Utils_2_upvr.deepCopy(arg1.EquippedItems:get());
			Desc = var286:GetAppliedDescription();
		}
		arg1.UndoChanges:AddChange(tbl_3)
		arg1.RedoChanges:DropChanges()
		arg1.Debounces.TryItemDebounce = false
		arg1.GuiObjects.LoadingFrame.Visible = false
	end
end
function module_upvr.UpdateColor(arg1, arg2) -- Line 1038
	--[[ Upvalues[2]:
		[1]: Utils_2_upvr (readonly)
		[2]: AvatarHandler_upvr (readonly)
	]]
	local Humanoid_5 = arg1.AvatarObjects.Humanoid
	local tbl_4 = {
		Old = {
			Outfit = Utils_2_upvr.deepCopy(arg1.EquippedItems:get());
			Desc = Humanoid_5:GetAppliedDescription();
		};
	}
	local any_GetAppliedDescription_result1_2 = Humanoid_5:GetAppliedDescription()
	AvatarHandler_upvr.SetBodyColor(any_GetAppliedDescription_result1_2, arg2)
	Humanoid_5:ApplyDescription(any_GetAppliedDescription_result1_2)
	tbl_4.New = {
		Outfit = Utils_2_upvr.deepCopy(arg1.EquippedItems:get());
		Desc = Humanoid_5:GetAppliedDescription();
	}
	arg1.UndoChanges:AddChange(tbl_4)
	arg1.RedoChanges:DropChanges()
	arg1:UpdateSaveButton()
end
function module_upvr.UpdateScale(arg1, arg2, arg3) -- Line 1065
	--[[ Upvalues[1]:
		[1]: AvatarHandler_upvr (readonly)
	]]
	local Humanoid_2 = arg1.AvatarObjects.Humanoid
	if Humanoid_2 then
		local any_GetAppliedDescription_result1_3 = Humanoid_2:GetAppliedDescription()
		AvatarHandler_upvr.SetBodyScale(any_GetAppliedDescription_result1_3, arg2, arg3)
		Humanoid_2:ApplyDescription(any_GetAppliedDescription_result1_3)
	end
end
local BodyScaleValues_upvr = require(Parent_4.CatalogClient.Libraries.BodyScaleValues)
function module_upvr.ApplyScalesToPlayerHumanoid(arg1) -- Line 1075
	--[[ Upvalues[3]:
		[1]: tbl_2_upvr (readonly)
		[2]: BodyScaleValues_upvr (readonly)
		[3]: var6_upvw (read and write)
	]]
	local Humanoid_4 = arg1.AvatarObjects.Humanoid
	if Humanoid_4 and tbl_2_upvr.PersistentWear then
		for i_16, _ in pairs(BodyScaleValues_upvr) do
			({})[i_16] = Humanoid_4:GetAppliedDescription()[i_16]
			local var312
		end
		var6_upvw:FireServer({
			BodyScale = var312;
		})
	end
end
function module_upvr.ResetChanges(arg1) -- Line 1093
	--[[ Upvalues[5]:
		[1]: Utils_2_upvr (readonly)
		[2]: AvatarHandler_upvr (readonly)
		[3]: GetTableDiff_upvr (readonly)
		[4]: tbl_2_upvr (readonly)
		[5]: var5_upvw (read and write)
	]]
	arg1.GuiObjects.LoadingFrame.Visible = true
	if arg1.Debounces.TryItemDebounce then
	else
		arg1.Debounces.TryItemDebounce = true
		local Humanoid_3 = arg1.AvatarObjects.Humanoid
		local tbl_6 = {
			Old = {
				Outfit = Utils_2_upvr.deepCopy(arg1.EquippedItems:get());
				Desc = Humanoid_3:GetAppliedDescription();
			};
		}
		local any_GetRealHumDesc_result1 = AvatarHandler_upvr.GetRealHumDesc()
		Humanoid_3:ApplyDescription(any_GetRealHumDesc_result1)
		local Parent_3 = Humanoid_3.Parent
		if not Parent_3:FindFirstChild("Head") and not Parent_3:FindFirstChild("DynamicHead") then
			Utils_2_upvr.pprint("Dynamic head was unable to load due to Roblox bug, reverting to default head")
			any_GetRealHumDesc_result1.Head = 2432102561
			Humanoid_3:ApplyDescription(any_GetRealHumDesc_result1)
		end
		if not arg1:LoadCurrentOutfit(Humanoid_3, true) then
			arg1.Debounces.TryItemDebounce = false
			return
		end
		local _, GetTableDiff_upvr_result2 = GetTableDiff_upvr(arg1.EquippedItems:get(), arg1.EquippedItems:get())
		for _, v_21 in pairs(GetTableDiff_upvr_result2) do
			arg1:UpdateEquippedItems(v_21, nil)
		end
		tbl_6.New = {
			Outfit = Utils_2_upvr.deepCopy(arg1.EquippedItems:get());
			Desc = Humanoid_3:GetAppliedDescription();
		}
		arg1.UndoChanges:AddChange(tbl_6)
		arg1.RedoChanges:DropChanges()
		if tbl_2_upvr.PersistentWear then
			var5_upvw:FireServer()
		end
		arg1.Debounces.TryItemDebounce = false
		arg1.GuiObjects.LoadingFrame.Visible = false
		arg1.ResetRotation()
		arg1.zoom:set(0.8)
	end
end
function module_upvr.GetCurrentOutfit(arg1) -- Line 1153
	return arg1.EquippedItems:get()
end
function module_upvr.IsItemEquipped(arg1, arg2) -- Line 1157
	--[[ Upvalues[1]:
		[1]: FindItemInTable_upvr (readonly)
	]]
	local any_get_result1_6 = arg1.EquippedItems:get()
	if FindItemInTable_upvr(any_get_result1_6, arg2) == nil then
		any_get_result1_6 = false
	else
		any_get_result1_6 = true
	end
	return any_get_result1_6
end
function module_upvr.GetHumanoid(arg1) -- Line 1163
	return arg1.AvatarObjects.Humanoid
end
function module_upvr.OnClose(arg1) -- Line 1167
	--[[ Upvalues[1]:
		[1]: tbl_2_upvr (readonly)
	]]
	if tbl_2_upvr.PersistentWear then
		arg1:ApplyScalesToPlayerHumanoid()
	end
	arg1.FullScreen:set(false)
	arg1.Scene:set(arg1.Scenes:get()[1])
	arg1:StopPosing()
end
function module_upvr.OnOpen(arg1) -- Line 1177
	--[[ Upvalues[3]:
		[1]: Players_upvr (readonly)
		[2]: tbl_2_upvr (readonly)
		[3]: AvatarHandler_upvr (readonly)
	]]
	local var329_upvr = Players_upvr.LocalPlayer.Character
	if var329_upvr then
		var329_upvr = Players_upvr.LocalPlayer.Character:FindFirstChild("Humanoid")
	end
	task.spawn(function() -- Line 1181
		--[[ Upvalues[4]:
			[1]: arg1 (readonly)
			[2]: tbl_2_upvr (copied, readonly)
			[3]: var329_upvr (readonly)
			[4]: AvatarHandler_upvr (copied, readonly)
		]]
		arg1.GuiObjects.LoadingFrame.Visible = true
		if tbl_2_upvr.PersistentWear then
			arg1:LoadCurrentOutfit(var329_upvr, false)
		else
			arg1:LoadCurrentOutfit()
		end
		AvatarHandler_upvr.UpdateViewportRender(arg1.GuiObjects.ViewportFrame, false, arg1.zoom:get())
		arg1.GuiObjects.LoadingFrame.Visible = false
	end)
end
return module_upvr