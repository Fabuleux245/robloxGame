-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:00:31
-- Luau version 6, Types version 3
-- Time taken: 0.009842 seconds

local CorePackages = game:GetService("CorePackages")
local GuiService_upvr = game:GetService("GuiService")
local Players = game:GetService("Players")
local RunService_upvr = game:GetService("RunService")
local LocalizationService_upvr = game:GetService("LocalizationService")
local StarterGui_upvr = game:GetService("StarterGui")
local RobloxGui_upvr = game:GetService("CoreGui"):WaitForChild("RobloxGui")
local LocalPlayer_upvw = Players.LocalPlayer
if not LocalPlayer_upvw then
	Players:GetPropertyChangedSignal("LocalPlayer"):Wait()
	LocalPlayer_upvw = Players.LocalPlayer
end
local Roact_upvr = require(CorePackages.Packages.Roact)
local Parent = script.Parent
local Parent_2 = Parent.Parent
local Actions = Parent.Actions
local CanPlayEmotes_upvr = require(Parent.Utility.CanPlayEmotes)
local SetLocale_upvr = require(Actions.SetLocale)
local module_upvr = {}
module_upvr.__index = module_upvr
local function _() -- Line 63, Named "isClient"
	--[[ Upvalues[1]:
		[1]: RunService_upvr (readonly)
	]]
	local any_IsClient_result1 = RunService_upvr:IsClient()
	if any_IsClient_result1 then
		any_IsClient_result1 = not RunService_upvr:IsEdit()
		if any_IsClient_result1 then
			any_IsClient_result1 = not RunService_upvr:IsRunMode()
		end
	end
	return any_IsClient_result1
end
function module_upvr.isOpen(arg1) -- Line 67
	return arg1.store:getState().displayOptions.menuVisible
end
function module_upvr.isEmotesLoaded(arg1) -- Line 71
	local var18
	if 0 >= arg1.store:getState().emotesPage.numberEmotesLoaded then
		var18 = false
	else
		var18 = true
	end
	return var18
end
local OpenMenu_upvr = require(Parent.Thunks.OpenMenu)
function module_upvr.open(arg1) -- Line 75
	--[[ Upvalues[1]:
		[1]: OpenMenu_upvr (readonly)
	]]
	arg1.store:dispatch(OpenMenu_upvr())
end
local HideMenu_upvr = require(Actions.HideMenu)
function module_upvr.close(arg1) -- Line 79
	--[[ Upvalues[1]:
		[1]: HideMenu_upvr (readonly)
	]]
	arg1.store:dispatch(HideMenu_upvr())
end
function module_upvr.setTopBarEnabled(arg1, arg2) -- Line 83
	--[[ Upvalues[1]:
		[1]: StarterGui_upvr (readonly)
	]]
	arg1.topBarEnabled = arg2
	if arg2 and StarterGui_upvr:GetCoreGuiEnabled(Enum.CoreGuiType.EmotesMenu) and arg1.canPlayEmotes then
		arg1:_mount()
	else
		arg1:_unmount()
	end
end
local BackpackScript_upvr = require(Parent_2.BackpackScript)
local ChatSelector_upvr = require(Parent_2.ChatSelector)
local getFFlagAppChatCoreUIConflictFix_upvr = require(CorePackages.Workspace.Packages.SharedFlags).getFFlagAppChatCoreUIConflictFix
local InExperienceAppChatModal_upvr = require(CorePackages.Workspace.Packages.AppChat).App.InExperienceAppChatModal
function module_upvr._connectCoreGuiListeners(arg1) -- Line 94
	--[[ Upvalues[4]:
		[1]: BackpackScript_upvr (readonly)
		[2]: ChatSelector_upvr (readonly)
		[3]: getFFlagAppChatCoreUIConflictFix_upvr (readonly)
		[4]: InExperienceAppChatModal_upvr (readonly)
	]]
	BackpackScript_upvr.StateChanged.Event:Connect(function(arg1_2) -- Line 95
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		if not arg1_2 then
		elseif arg1:isOpen() then
			arg1:close()
		end
	end)
	ChatSelector_upvr.VisibilityStateChanged:connect(function(arg1_3) -- Line 105
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		if not arg1_3 then
		elseif arg1:isOpen() then
			arg1:close()
		end
	end)
	if getFFlagAppChatCoreUIConflictFix_upvr() then
		InExperienceAppChatModal_upvr.default.visibilitySignal.Event:Connect(function(arg1_4) -- Line 116
			--[[ Upvalues[1]:
				[1]: arg1 (readonly)
			]]
			if arg1_4 and arg1:isOpen() then
				arg1:close()
			end
		end)
	end
end
function module_upvr._connectApiListeners(arg1) -- Line 124
	--[[ Upvalues[2]:
		[1]: StarterGui_upvr (readonly)
		[2]: GuiService_upvr (readonly)
	]]
	StarterGui_upvr.CoreGuiChangedSignal:connect(function(arg1_5, arg2) -- Line 125
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		if not arg1.topBarEnabled then
		else
			if not arg1.canPlayEmotes then return end
			if arg1_5 == Enum.CoreGuiType.EmotesMenu or arg1_5 == Enum.CoreGuiType.All then
				if arg2 then
					arg1:_mount()
					return
				end
				arg1:_unmount()
			end
		end
	end)
	GuiService_upvr.EmotesMenuOpenChanged:Connect(function(arg1_6) -- Line 143
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [6] 6. Error Block 3 start (CF ANALYSIS FAILED)
		arg1:open()
		do
			return
		end
		-- KONSTANTERROR: [6] 6. Error Block 3 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [11] 10. Error Block 7 start (CF ANALYSIS FAILED)
		if arg1:isOpen() then
			arg1:close()
		end
		-- KONSTANTERROR: [11] 10. Error Block 7 end (CF ANALYSIS FAILED)
	end)
end
local EquippedEmotesChanged_upvr = require(Actions.EquippedEmotesChanged)
function module_upvr._onEquippedEmotesChanged(arg1, arg2) -- Line 156
	--[[ Upvalues[1]:
		[1]: EquippedEmotesChanged_upvr (readonly)
	]]
	arg1.store:dispatch(EquippedEmotesChanged_upvr(arg2))
end
local EmotesChanged_upvr = require(Actions.EmotesChanged)
function module_upvr._onEmotesChanged(arg1, arg2) -- Line 160
	--[[ Upvalues[1]:
		[1]: EmotesChanged_upvr (readonly)
	]]
	arg1.store:dispatch(EmotesChanged_upvr(arg2))
end
local NumberEmotesLoadedChanged_upvr = require(Actions.NumberEmotesLoadedChanged)
function module_upvr._onNumberEmotesLoadedChanged(arg1, arg2) -- Line 164
	--[[ Upvalues[1]:
		[1]: NumberEmotesLoadedChanged_upvr (readonly)
	]]
	local var32_result1 = NumberEmotesLoadedChanged_upvr(arg2)
	arg1.store:dispatch(var32_result1)
	if 0 >= arg2 then
		var32_result1 = false
	else
		var32_result1 = true
	end
	arg1.EmotesLoaded:Fire(var32_result1)
end
function module_upvr._onHumanoidDescriptionChanged(arg1, arg2) -- Line 169
	if arg1.equippedEmotesChangedConn then
		arg1.equippedEmotesChangedConn:Disconnect()
		arg1.equippedEmotesChangedConn = nil
	end
	if arg1.emotesChangedConn then
		arg1.emotesChangedConn:Disconnect()
		arg1.emotesChangedConn = nil
	end
	if arg1.numberEmotesLoadedChangedConn then
		arg1.numberEmotesLoadedChangedConn:Disconnect()
		arg1.numberEmotesLoadedChangedConn = nil
	end
	if arg1.humanoidDescriptionAncestryConn then
		arg1.humanoidDescriptionAncestryConn:Disconnect()
		arg1.humanoidDescriptionAncestryConn = nil
	end
	if arg2 then
		arg1.equippedEmotesChangedConn = arg2.EquippedEmotesChanged:Connect(function(arg1_7) -- Line 191
			--[[ Upvalues[1]:
				[1]: arg1 (readonly)
			]]
			arg1:_onEquippedEmotesChanged(arg1_7)
		end)
		arg1:_onEquippedEmotesChanged(arg2:GetEquippedEmotes())
		arg1.emotesChangedConn = arg2.EmotesChanged:Connect(function(arg1_8) -- Line 196
			--[[ Upvalues[1]:
				[1]: arg1 (readonly)
			]]
			arg1:_onEmotesChanged(arg1_8)
		end)
		arg1:_onEmotesChanged(arg2:GetEmotes())
		arg1.numberEmotesLoadedChangedConn = arg2:GetPropertyChangedSignal("NumberEmotesLoaded"):Connect(function(arg1_9) -- Line 203
			--[[ Upvalues[1]:
				[1]: arg1 (readonly)
			]]
			arg1:_onNumberEmotesLoadedChanged(arg1_9)
		end)
		arg1:_onNumberEmotesLoadedChanged(arg2.NumberEmotesLoaded)
		arg1.humanoidDescriptionAncestryConn = arg2.AncestryChanged:Connect(function(arg1_10, arg2_2) -- Line 208
			--[[ Upvalues[2]:
				[1]: arg2 (readonly)
				[2]: arg1 (readonly)
			]]
			if arg1_10 == arg2 and arg2_2 == nil then
				arg1:_onHumanoidDescriptionChanged(nil)
			end
		end)
	else
		arg1:_onEquippedEmotesChanged({})
		arg1:_onEmotesChanged({})
		arg1:_onNumberEmotesLoadedChanged(-1)
	end
end
function module_upvr._onHumanoidChanged(arg1, arg2) -- Line 220
	if arg1.humanoidChildAddedConn then
		arg1.humanoidChildAddedConn:Disconnect()
		arg1.humanoidChildAddedConn = nil
	end
	if arg1.humanoidAncestryChangedConn then
		arg1.humanoidAncestryChangedConn:Disconnect()
		arg1.humanoidAncestryChangedConn = nil
	end
	if arg2 then
		arg1.humanoidChildAddedConn = arg2.ChildAdded:Connect(function(arg1_11) -- Line 232
			--[[ Upvalues[1]:
				[1]: arg1 (readonly)
			]]
			if arg1_11:IsA("HumanoidDescription") then
				arg1:_onHumanoidDescriptionChanged(arg1_11)
			end
		end)
		local class_HumanoidDescription = arg2:FindFirstChildOfClass("HumanoidDescription")
		if class_HumanoidDescription then
			arg1:_onHumanoidDescriptionChanged(class_HumanoidDescription)
		end
		arg1.humanoidAncestryChangedConn = arg2.AncestryChanged:Connect(function(arg1_12, arg2_3) -- Line 243
			--[[ Upvalues[2]:
				[1]: arg2 (readonly)
				[2]: arg1 (readonly)
			]]
			if arg1_12 == arg2 and arg2_3 == nil then
				arg1:_onHumanoidChanged(nil)
			end
		end)
	else
		arg1:_onHumanoidDescriptionChanged(nil)
	end
end
function module_upvr._onCharacterAdded(arg1, arg2) -- Line 253
	if arg1.characterChildAddedConn then
		arg1.characterChildAddedConn:Disconnect()
		arg1.characterChildAddedConn = nil
	end
	arg1.characterChildAddedConn = arg2.ChildAdded:Connect(function(arg1_13) -- Line 259
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		if arg1_13:IsA("Humanoid") then
			arg1:_onHumanoidChanged(arg1_13)
		end
	end)
	local class_Humanoid = arg2:FindFirstChildWhichIsA("Humanoid")
	if class_Humanoid then
		arg1:_onHumanoidChanged(class_Humanoid)
	end
end
function module_upvr._connectListeners(arg1) -- Line 271
	--[[ Upvalues[5]:
		[1]: LocalPlayer_upvw (read and write)
		[2]: LocalizationService_upvr (readonly)
		[3]: SetLocale_upvr (readonly)
		[4]: CanPlayEmotes_upvr (readonly)
		[5]: StarterGui_upvr (readonly)
	]]
	arg1:_connectCoreGuiListeners()
	arg1:_connectApiListeners()
	LocalPlayer_upvw.CharacterAdded:Connect(function(arg1_14) -- Line 275
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		arg1:_onCharacterAdded(arg1_14)
	end)
	if LocalPlayer_upvw.Character then
		arg1:_onCharacterAdded(LocalPlayer_upvw.Character)
	end
	LocalizationService_upvr:GetPropertyChangedSignal("RobloxLocaleId"):Connect(function() -- Line 283
		--[[ Upvalues[3]:
			[1]: arg1 (readonly)
			[2]: SetLocale_upvr (copied, readonly)
			[3]: LocalizationService_upvr (copied, readonly)
		]]
		arg1.store:dispatch(SetLocale_upvr(LocalizationService_upvr.RobloxLocaleId))
	end)
	CanPlayEmotes_upvr.ChangedEvent.Event:connect(function(arg1_15) -- Line 287
		--[[ Upvalues[2]:
			[1]: arg1 (readonly)
			[2]: StarterGui_upvr (copied, readonly)
		]]
		arg1.canPlayEmotes = arg1_15
		if arg1_15 and arg1.topBarEnabled and StarterGui_upvr:GetCoreGuiEnabled(Enum.CoreGuiType.EmotesMenu) then
			arg1:_mount()
		else
			arg1:_unmount()
		end
	end)
end
function module_upvr._onStateChanged(arg1, arg2, arg3) -- Line 299
	--[[ Upvalues[1]:
		[1]: GuiService_upvr (readonly)
	]]
	if arg3.displayOptions.menuVisible ~= arg2.displayOptions.menuVisible then
		arg1.EmotesMenuToggled:Fire(arg2.displayOptions.menuVisible)
		GuiService_upvr:SetEmotesMenuOpen(arg2.displayOptions.menuVisible)
	end
end
local Constants_upvr_3 = require(CorePackages.Packages.UIBlox).App.Style.Constants
local RoactRodux_upvr = require(CorePackages.Packages.RoactRodux)
local UiModeStyleProvider_upvr = require(CorePackages.Workspace.Packages.Style).UiModeStyleProvider
local EmotesMenu_upvr = require(Parent.Components.EmotesMenu)
function module_upvr._mount(arg1) -- Line 307
	--[[ Upvalues[6]:
		[1]: Constants_upvr_3 (readonly)
		[2]: Roact_upvr (readonly)
		[3]: RoactRodux_upvr (readonly)
		[4]: UiModeStyleProvider_upvr (readonly)
		[5]: EmotesMenu_upvr (readonly)
		[6]: RobloxGui_upvr (readonly)
	]]
	if not arg1.instance then
		arg1.instance = Roact_upvr.mount(Roact_upvr.createElement("Folder", {
			Name = "EmotesMenu";
		}, Roact_upvr.createElement(RoactRodux_upvr.StoreProvider, {
			store = arg1.store;
		}, {
			StyleProvider = Roact_upvr.createElement(UiModeStyleProvider_upvr, {
				style = {
					themeName = Constants_upvr_3.ThemeName.Dark;
					fontName = Constants_upvr_3.FontName.Gotham;
				};
			}, {
				EmotesMenu = Roact_upvr.createElement(EmotesMenu_upvr);
			});
		})), RobloxGui_upvr, "EmotesMenu")
		arg1.MenuIsVisible = true
		arg1.MenuVisibilityChanged:Fire(true)
	end
end
function module_upvr._unmount(arg1) -- Line 335
	--[[ Upvalues[1]:
		[1]: Roact_upvr (readonly)
	]]
	if arg1.instance then
		Roact_upvr.unmount(arg1.instance)
		arg1.instance = nil
		arg1.MenuIsVisible = false
		arg1.MenuVisibilityChanged:Fire(false)
	end
end
local Rodux_upvr = require(CorePackages.Packages.Rodux)
local EmotesMenuReducer_upvr = require(Parent.Reducers.EmotesMenuReducer)
local TenFootInterface_upvr = require(Parent_2.TenFootInterface)
local SetLayout_upvr = require(Actions.SetLayout)
local Constants_upvr_2 = require(Parent.Constants)
local Constants_upvr = require(Parent_2.TopBar.Constants)
local SetGuiInset_upvr = require(Actions.SetGuiInset)
function module_upvr.new() -- Line 345
	--[[ Upvalues[13]:
		[1]: module_upvr (readonly)
		[2]: CanPlayEmotes_upvr (readonly)
		[3]: Rodux_upvr (readonly)
		[4]: EmotesMenuReducer_upvr (readonly)
		[5]: RunService_upvr (readonly)
		[6]: SetLocale_upvr (readonly)
		[7]: LocalizationService_upvr (readonly)
		[8]: TenFootInterface_upvr (readonly)
		[9]: SetLayout_upvr (readonly)
		[10]: Constants_upvr_2 (readonly)
		[11]: Constants_upvr (readonly)
		[12]: RobloxGui_upvr (readonly)
		[13]: SetGuiInset_upvr (readonly)
	]]
	local setmetatable_result1_upvr_2 = setmetatable({}, module_upvr)
	setmetatable_result1_upvr_2.canPlayEmotes = CanPlayEmotes_upvr.Value
	setmetatable_result1_upvr_2.topBarEnabled = true
	setmetatable_result1_upvr_2.EmotesMenuToggled = Instance.new("BindableEvent")
	setmetatable_result1_upvr_2.MenuIsVisible = false
	setmetatable_result1_upvr_2.MenuVisibilityChanged = Instance.new("BindableEvent")
	setmetatable_result1_upvr_2.EmotesLoaded = Instance.new("BindableEvent")
	setmetatable_result1_upvr_2.store = Rodux_upvr.Store.new(EmotesMenuReducer_upvr, {}, {Rodux_upvr.thunkMiddleware})
	local any_IsClient_result1_2 = RunService_upvr:IsClient()
	if any_IsClient_result1_2 then
		any_IsClient_result1_2 = not RunService_upvr:IsEdit()
		if any_IsClient_result1_2 then
			any_IsClient_result1_2 = not RunService_upvr:IsRunMode()
		end
	end
	if not any_IsClient_result1_2 then
		return setmetatable_result1_upvr_2
	end
	setmetatable_result1_upvr_2.store.changed:connect(function(arg1, arg2) -- Line 375
		--[[ Upvalues[1]:
			[1]: setmetatable_result1_upvr_2 (readonly)
		]]
		setmetatable_result1_upvr_2:_onStateChanged(arg1, arg2)
	end)
	setmetatable_result1_upvr_2.store:dispatch(SetLocale_upvr(LocalizationService_upvr.RobloxLocaleId))
	if TenFootInterface_upvr:IsEnabled() then
		setmetatable_result1_upvr_2.store:dispatch(SetLayout_upvr(Constants_upvr_2.Layout.TenFoot))
	end
	if not RobloxGui_upvr.IgnoreGuiInset then
		setmetatable_result1_upvr_2.store:dispatch(SetGuiInset_upvr(Constants_upvr.TopBarHeight))
	end
	setmetatable_result1_upvr_2:_mount()
	setmetatable_result1_upvr_2:_connectListeners()
	return setmetatable_result1_upvr_2
end
return module_upvr.new()