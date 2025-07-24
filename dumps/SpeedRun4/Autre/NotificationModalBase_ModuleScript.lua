-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:38:06
-- Luau version 6, Types version 3
-- Time taken: 0.007253 seconds

local Parent = script.Parent.Parent.Parent
local React_upvr = require(Parent.React)
local tbl_4_upvr = {
	stiffness = 400;
	damping = 40;
	mass = 1;
}
local useState_upvr = React_upvr.useState
local GuiService_upvr = game:GetService("GuiService")
local useEffect_upvr = React_upvr.useEffect
local GetFFlagNotificationModalSetMenuIsOpen_upvr = require(Parent.SharedFlags).GetFFlagNotificationModalSetMenuIsOpen
local SettingsShowSignal_upvr = require(Parent.CoreScriptsCommon).SettingsShowSignal
local ReactOtter_upvr = require(Parent.ReactOtter)
local UserInputService_upvr = game:GetService("UserInputService")
local useMemo_upvr = React_upvr.useMemo
local GetFFlagManagerAddDisplayOrderAndBackgroundDismiss_upvr = require(script.Parent.Parent.Flags.GetFFlagManagerAddDisplayOrderAndBackgroundDismiss)
local ReactRoblox_upvr = require(Parent.ReactRoblox)
local LocalizationProvider_upvr = require(Parent.Localization).LocalizationProvider
local GetFFlagEnablePushNotificationsUpsellModal_upvr = require(Parent.SharedFlags).GetFFlagEnablePushNotificationsUpsellModal
local Localization_upvr = require(Parent.InExperienceLocales).Localization
local LocalizationService_upvr = game:GetService("LocalizationService")
local StyleProviderWithDefaultTheme_upvr = require(Parent.Style).StyleProviderWithDefaultTheme
return function(arg1) -- Line 46
	--[[ Upvalues[17]:
		[1]: useState_upvr (readonly)
		[2]: GuiService_upvr (readonly)
		[3]: useEffect_upvr (readonly)
		[4]: GetFFlagNotificationModalSetMenuIsOpen_upvr (readonly)
		[5]: SettingsShowSignal_upvr (readonly)
		[6]: ReactOtter_upvr (readonly)
		[7]: UserInputService_upvr (readonly)
		[8]: useMemo_upvr (readonly)
		[9]: tbl_4_upvr (readonly)
		[10]: React_upvr (readonly)
		[11]: GetFFlagManagerAddDisplayOrderAndBackgroundDismiss_upvr (readonly)
		[12]: ReactRoblox_upvr (readonly)
		[13]: LocalizationProvider_upvr (readonly)
		[14]: GetFFlagEnablePushNotificationsUpsellModal_upvr (readonly)
		[15]: Localization_upvr (readonly)
		[16]: LocalizationService_upvr (readonly)
		[17]: StyleProviderWithDefaultTheme_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local var5_result1_upvr_2, var5_result2_upvr_2 = useState_upvr({})
	local var5_result1_upvr, var5_result2_upvr = useState_upvr(GuiService_upvr.MenuIsOpen)
	useEffect_upvr(function() -- Line 54
		--[[ Upvalues[5]:
			[1]: GetFFlagNotificationModalSetMenuIsOpen_upvr (copied, readonly)
			[2]: SettingsShowSignal_upvr (copied, readonly)
			[3]: arg1 (readonly)
			[4]: var5_result2_upvr (readonly)
			[5]: GuiService_upvr (copied, readonly)
		]]
		local var25_upvw
		local var26_upvr
		if var26_upvr then
			var26_upvr = SettingsShowSignal_upvr
			var26_upvr = var26_upvr:connect(function(arg1_2) -- Line 57
				--[[ Upvalues[2]:
					[1]: arg1 (copied, readonly)
					[2]: var5_result2_upvr (copied, readonly)
				]]
				if arg1_2 then
					if arg1.CloseModal then
						arg1.CloseModal()
					end
					var5_result2_upvr(true)
				else
					var5_result2_upvr(false)
				end
			end)
			var25_upvw = var26_upvr
		else
			var26_upvr = GuiService_upvr.MenuOpened
			var26_upvr = var26_upvr:Connect(function() -- Line 68
				--[[ Upvalues[2]:
					[1]: arg1 (copied, readonly)
					[2]: var5_result2_upvr (copied, readonly)
				]]
				if arg1.CloseModal then
					arg1.CloseModal()
				end
				var5_result2_upvr(true)
			end)
			var25_upvw = var26_upvr
		end
		if GetFFlagNotificationModalSetMenuIsOpen_upvr() then
			var26_upvr = nil
		else
			var26_upvr = GuiService_upvr.MenuClosed
			var26_upvr = var26_upvr:Connect(function() -- Line 77
				--[[ Upvalues[1]:
					[1]: var5_result2_upvr (copied, readonly)
				]]
				var5_result2_upvr(false)
			end)
		end
		return function() -- Line 81
			--[[ Upvalues[3]:
				[1]: GetFFlagNotificationModalSetMenuIsOpen_upvr (copied, readonly)
				[2]: var25_upvw (read and write)
				[3]: var26_upvr (readonly)
			]]
			if GetFFlagNotificationModalSetMenuIsOpen_upvr() then
				var25_upvw:disconnect()
			else
				var25_upvw:Disconnect()
				if var26_upvr ~= nil then
					var26_upvr:Disconnect()
				end
			end
		end
	end, {})
	local any_useAnimatedBinding_result1, any_useAnimatedBinding_result2_upvr = ReactOtter_upvr.useAnimatedBinding(0, function() -- Line 93
		--[[ Upvalues[3]:
			[1]: var5_result1_upvr_2 (readonly)
			[2]: arg1 (readonly)
			[3]: var5_result2_upvr_2 (readonly)
		]]
		if var5_result1_upvr_2 ~= arg1 then
			var5_result2_upvr_2(arg1)
		end
	end)
	local tbl_3 = {}
	tbl_3[1] = arg1
	useEffect_upvr(function() -- Line 102
		--[[ Upvalues[3]:
			[1]: arg1 (readonly)
			[2]: var5_result2_upvr_2 (readonly)
			[3]: UserInputService_upvr (copied, readonly)
		]]
		local var35_upvw
		if arg1.ModalKey then
			var5_result2_upvr_2(arg1)
			var35_upvw = UserInputService_upvr.InputBegan:Connect(function(arg1_3) -- Line 112
				--[[ Upvalues[2]:
					[1]: UserInputService_upvr (copied, readonly)
					[2]: arg1 (copied, readonly)
				]]
				if arg1_3.KeyCode == Enum.KeyCode.Backspace or arg1_3.KeyCode == Enum.KeyCode.ButtonB then
					if UserInputService_upvr:GetFocusedTextBox() == nil and arg1.CloseModal then
						arg1.CloseModal()
					end
				end
			end)
		end
		return function() -- Line 123
			--[[ Upvalues[1]:
				[1]: var35_upvw (read and write)
			]]
			if var35_upvw then
				var35_upvw:Disconnect()
			end
		end
	end, tbl_3)
	local var12_result1_upvr = useMemo_upvr(function() -- Line 130
		--[[ Upvalues[2]:
			[1]: arg1 (readonly)
			[2]: var5_result1_upvr (readonly)
		]]
		if arg1.ModalKey ~= nil and not var5_result1_upvr then
			return 1
		end
		return 0
	end, {arg1.ModalKey, var5_result1_upvr})
	useEffect_upvr(function() -- Line 134
		--[[ Upvalues[7]:
			[1]: any_useAnimatedBinding_result2_upvr (readonly)
			[2]: ReactOtter_upvr (copied, readonly)
			[3]: var12_result1_upvr (readonly)
			[4]: tbl_4_upvr (copied, readonly)
			[5]: GetFFlagNotificationModalSetMenuIsOpen_upvr (copied, readonly)
			[6]: arg1 (readonly)
			[7]: GuiService_upvr (copied, readonly)
		]]
		any_useAnimatedBinding_result2_upvr(ReactOtter_upvr.spring(var12_result1_upvr, tbl_4_upvr))
		if GetFFlagNotificationModalSetMenuIsOpen_upvr() then
			if arg1.Params and arg1.Params.BlockNonCoreUserInput and var12_result1_upvr == 1 then
				GuiService_upvr:SetMenuIsOpen(true, "NotificationModal")
				return
			end
			GuiService_upvr:SetMenuIsOpen(false, "NotificationModal")
		end
	end, {var12_result1_upvr})
	local module = {
		IgnoreGuiInset = true;
		ZIndexBehavior = Enum.ZIndexBehavior.Sibling;
	}
	local var45 = false
	module.ResetOnSpawn = var45
	local var46
	if GetFFlagManagerAddDisplayOrderAndBackgroundDismiss_upvr() then
		local function INLINED() -- Internal function, doesn't exist in bytecode
			var45 = var5_result1_upvr_2.Params.DisplayOrder
			return var45
		end
		if not var5_result1_upvr_2.Params or not INLINED() then
			var45 = 0
			-- KONSTANTWARNING: GOTO [95] #77
		end
	else
		var45 = 0
	end
	module.DisplayOrder = var45
	module.Enabled = any_useAnimatedBinding_result1:map(function(arg1_4) -- Line 152
		local var48
		if 0 >= arg1_4 then
			var48 = false
		else
			var48 = true
		end
		return var48
	end)
	local module_2 = {}
	local tbl = {
		BackgroundColor3 = Color3.new(0, 0, 0);
	}
	var46 = 0
	tbl.Size = UDim2.new(1, 0, 1, var46)
	tbl.BorderSizePixel = 1
	tbl.BackgroundTransparency = any_useAnimatedBinding_result1:map(function(arg1_5) -- Line 160
		return 1 - arg1_5 * 0.5
	end)
	tbl.ZIndex = 0
	module_2.Background = React_upvr.createElement("Frame", tbl)
	local tbl_6 = {
		ZIndex = 1;
		Text = "";
		BackgroundTransparency = 1;
	}
	var46 = 0
	tbl_6.Size = UDim2.new(1, 0, 1, var46)
	tbl_6.Modal = true
	tbl_6.Selectable = false
	tbl_6.Position = any_useAnimatedBinding_result1:map(function(arg1_6) -- Line 173
		return UDim2.new(0, 0, 1 - arg1_6, 0)
	end)
	tbl_6[ReactRoblox_upvr.Event.Activated] = function() -- Line 178
		--[[ Upvalues[3]:
			[1]: GetFFlagManagerAddDisplayOrderAndBackgroundDismiss_upvr (copied, readonly)
			[2]: var5_result1_upvr_2 (readonly)
			[3]: arg1 (readonly)
		]]
		local var55
		if GetFFlagManagerAddDisplayOrderAndBackgroundDismiss_upvr() then
			var55 = var5_result1_upvr_2.Params
			if var55 then
				var55 = var5_result1_upvr_2.Params.DisableBackgroundDismiss
				-- KONSTANTWARNING: GOTO [14] #12
			end
		else
			var55 = nil
		end
		if arg1.CloseModal and not var55 then
			arg1.CloseModal()
		end
	end
	local tbl_5 = {}
	local tbl_7 = {}
	if GetFFlagEnablePushNotificationsUpsellModal_upvr() then
		local function INLINED_2() -- Internal function, doesn't exist in bytecode
			var46 = var5_result1_upvr_2.Params.Localization
			return var46
		end
		if not var5_result1_upvr_2.Params or not INLINED_2() then
			var46 = Localization_upvr.new(LocalizationService_upvr.RobloxLocaleId)
			-- KONSTANTWARNING: GOTO [219] #167
		end
	else
		var46 = Localization_upvr.new(LocalizationService_upvr.RobloxLocaleId)
	end
	tbl_7.localization = var46
	var46 = {}
	local tbl_2 = {}
	local var59
	if var5_result1_upvr_2.Component then
		local function INLINED_3() -- Internal function, doesn't exist in bytecode
			var59 = var5_result1_upvr_2.Params.Props
			return var59
		end
		if not var5_result1_upvr_2.Params or not INLINED_3() then
			var59 = {}
		end
	else
	end
	tbl_2.ModalComponent = nil
	var46.StyleProvider = React_upvr.createElement(StyleProviderWithDefaultTheme_upvr, {}, tbl_2)
	tbl_5.LocalizationProvider = React_upvr.createElement(LocalizationProvider_upvr, tbl_7, var46)
	module_2.Container = React_upvr.createElement("TextButton", tbl_6, tbl_5)
	return React_upvr.createElement("ScreenGui", module, module_2)
end