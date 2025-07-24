-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:55:09
-- Luau version 6, Types version 3
-- Time taken: 0.052775 seconds

-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
local ChromeShared_2 = script:FindFirstAncestor("ChromeShared")
local CorePackages_2 = game:GetService("CorePackages")
local GuiService_upvr_2 = game:GetService("GuiService")
local React_upvr = require(CorePackages_2.Packages.React)
local SharedFlags = require(CorePackages_2.Workspace.Packages.SharedFlags)
local GetFFlagUsePolishedAnimations_upvr = SharedFlags.GetFFlagUsePolishedAnimations
local GetFFlagChromeCentralizedConfiguration = SharedFlags.GetFFlagChromeCentralizedConfiguration
local FFlagTiltIconUnibarFocusNav_upvr_2 = SharedFlags.FFlagTiltIconUnibarFocusNav
local FFlagHideTopBarConsole_upvr_2 = SharedFlags.FFlagHideTopBarConsole
local FFlagAddUILessMode_upvr_2 = SharedFlags.FFlagAddUILessMode
local FIntAddUILessModeVariant_upvr = SharedFlags.FIntAddUILessModeVariant
local FFlagUnibarMenuOpenSubmenu_upvr_2 = require(script.Parent.Parent.Parent.Flags.FFlagUnibarMenuOpenSubmenu)
local useStyle_upvr = require(CorePackages_2.Packages.UIBlox).Core.Style.useStyle
local Service_upvr_2 = require(ChromeShared_2.Service)
local var235_upvw
if GetFFlagChromeCentralizedConfiguration() then
else
end
local SubMenu_upvr_2 = require(ChromeShared_2.Unibar.SubMenu)
local Constants_upvr_4 = require(ChromeShared_2.Unibar.Constants)
local useChromeMenuItems_upvr_2 = require(ChromeShared_2.Hooks.useChromeMenuItems)
local useObservableValue_upvr = require(ChromeShared_2.Hooks.useObservableValue)
local useMappedObservableValue_upvr = require(ChromeShared_2.Hooks.useMappedObservableValue)
local IconHost_upvr = require(ChromeShared_2.Unibar.ComponentHosts.IconHost)
local ReactOtter_upvr_2 = require(CorePackages_2.Packages.ReactOtter)
local isSpatial_upvr_2 = require(CorePackages_2.Workspace.Packages.AppCommonLib).isSpatial
local FFlagEnableChromeShortcutBar_upvr_2 = SharedFlags.FFlagEnableChromeShortcutBar
local Stores_upvr = require(CorePackages_2.Workspace.Packages.CoreGuiCommon).Stores
local createEffect_upvr_2 = require(CorePackages_2.Packages.Signals).createEffect
var235_upvw = ChromeShared_2.Parent
var235_upvw = ChromeShared_2.Parent.Integrations
local isConnectDropdownEnabled_upvr = var235_upvw.Connect.isConnectDropdownEnabled
if FFlagHideTopBarConsole_upvr_2 then
	isConnectDropdownEnabled_upvr = require
	var235_upvw = ChromeShared_2.Parent.Parent.TopBar.Components
	isConnectDropdownEnabled_upvr = isConnectDropdownEnabled_upvr(var235_upvw.GamepadConnector)
else
	isConnectDropdownEnabled_upvr = nil
end
var235_upvw = require(CorePackages_2.Workspace.Packages.SharedExperimentDefinition)
local isInExperienceUIVREnabled_upvr_2 = var235_upvw.isInExperienceUIVREnabled
var235_upvw = nil
if isInExperienceUIVREnabled_upvr_2 then
	local VrSpatialUi = require(CorePackages_2.Workspace.Packages.VrSpatialUi)
	var235_upvw = VrSpatialUi.Panel3DInSpatialUI
end
if not GetFFlagChromeCentralizedConfiguration() then
	local var247_2_upvr = require(isConnectDropdownEnabled_upvr)
	local GetFFlagEnableChromePinIntegrations_upvr = SharedFlags.GetFFlagEnableChromePinIntegrations
	local ChromeAnalytics_upvr_2 = require(ChromeShared_2.Analytics.ChromeAnalytics)
	local GetFFlagEnableJoinVoiceOnUnibar_upvr_2 = SharedFlags.GetFFlagEnableJoinVoiceOnUnibar
	local GetFFlagDebugEnableUnibarDummyIntegrations_upvr_2 = SharedFlags.GetFFlagDebugEnableUnibarDummyIntegrations
	local isConnectUnibarEnabled_upvr_2 = require(var235_upvw.Integrations.Connect.isConnectUnibarEnabled)
	local Constants_upvr = require(ChromeShared_2.Parent.Integrations.Party.Constants)
	local GetFFlagEnableSongbirdInChrome_upvr = require(ChromeShared_2.Parent.Flags.GetFFlagEnableSongbirdInChrome)
	function configureUnibar() -- Line 84
		--[[ Upvalues[12]:
			[1]: var247_2_upvr (readonly)
			[2]: GetFFlagEnableChromePinIntegrations_upvr (readonly)
			[3]: Service_upvr_2 (readonly)
			[4]: ChromeAnalytics_upvr_2 (readonly)
			[5]: GetFFlagEnableJoinVoiceOnUnibar_upvr_2 (readonly)
			[6]: GetFFlagDebugEnableUnibarDummyIntegrations_upvr_2 (readonly)
			[7]: isConnectUnibarEnabled_upvr_2 (readonly)
			[8]: Constants_upvr (readonly)
			[9]: isInExperienceUIVREnabled_upvr_2 (readonly)
			[10]: isSpatial_upvr_2 (readonly)
			[11]: GuiService_upvr_2 (readonly)
			[12]: GetFFlagEnableSongbirdInChrome_upvr (readonly)
		]]
		local tbl_35 = {"leaderboard", "emotes", "backpack"}
		table.insert(tbl_35, "respawn")
		table.insert(tbl_35, 1, "trust_and_safety")
		local var259
		if var247_2_upvr() then
			var259 = 1
			table.insert(tbl_35, var259, "connect_dropdown")
		end
		if GetFFlagEnableChromePinIntegrations_upvr() then
			var259 = "trust_and_safety"
			if not Service_upvr_2:isUserPinned(var259) then
				var259 = "trust_and_safety"
				Service_upvr_2:setUserPin(var259, true)
				var259 = "trust_and_safety"
				ChromeAnalytics_upvr_2.default:setPin(var259, true, Service_upvr_2:userPins())
			end
		end
		local tbl_22 = {}
		var259 = "chat"
		tbl_22[1] = "toggle_mic_mute"
		tbl_22[2] = var259
		tbl_22[3] = "nine_dot"
		if GetFFlagEnableJoinVoiceOnUnibar_upvr_2() then
			var259 = tbl_22
			table.insert(var259, 2, "join_voice")
		end
		if GetFFlagDebugEnableUnibarDummyIntegrations_upvr_2() then
			var259 = tbl_22
			table.insert(var259, 1, "dummy_window")
			var259 = tbl_22
			table.insert(var259, 1, "dummy_window_2")
			var259 = tbl_22
			table.insert(var259, 1, "dummy_container")
		end
		if isConnectUnibarEnabled_upvr_2() then
			var259 = tbl_22
			table.insert(var259, 1, "connect_unibar")
		end
		var259 = tbl_22
		local table_find_result1 = table.find(var259, "toggle_mic_mute")
		if table_find_result1 then
			var259 = table.insert
			var259(tbl_22, table_find_result1 + 1, Constants_upvr.TOGGLE_MIC_INTEGRATION_ID)
		end
		var259 = isInExperienceUIVREnabled_upvr_2
		if var259 then
			var259 = isSpatial_upvr_2()
			if var259 then
				var259 = {}
				var259[1] = "vr_toggle_button"
				var259[2] = "vr_safety_bubble"
				Service_upvr_2:configureMenu({var259, tbl_22})
				-- KONSTANTWARNING: GOTO [163] #127
			end
		end
		var259 = Service_upvr_2
		var259 = var259:configureMenu
		var259({tbl_22})
		var259 = isInExperienceUIVREnabled_upvr_2
		if var259 then
			var259 = isSpatial_upvr_2()
			if not var259 then
				var259 = table.insert
				var259(tbl_35, 2, "camera_entrypoint")
				var259 = table.insert
				var259(tbl_35, 2, "selfie_view")
				-- KONSTANTWARNING: GOTO [201] #157
			end
		else
			var259 = table.insert
			var259(tbl_35, 2, "camera_entrypoint")
			var259 = table.insert
			var259(tbl_35, 2, "selfie_view")
		end
		var259 = not isSpatial_upvr_2()
		if var259 then
			var259 = not GuiService_upvr_2:IsTenFootInterface()
		end
		if GetFFlagEnableSongbirdInChrome_upvr() and var259 then
			table.insert(tbl_35, 4, "music_entrypoint")
		end
		Service_upvr_2:configureSubMenu("nine_dot", tbl_35)
	end
	configureUnibar()
	if FFlagEnableChromeShortcutBar_upvr_2 then
		require(script.Parent.Parent.Shortcuts.ConfigureShortcuts)()
	end
end
function IconDivider(arg1) -- Line 169
	--[[ Upvalues[4]:
		[1]: useStyle_upvr (readonly)
		[2]: React_upvr (readonly)
		[3]: Constants_upvr_4 (readonly)
		[4]: GetFFlagUsePolishedAnimations_upvr (readonly)
	]]
	local var233_result1_upvr = useStyle_upvr()
	local module_12 = {}
	local tbl_33 = {
		Position = Constants_upvr_4.ICON_DIVIDER_POSITION;
		AnchorPoint = Vector2.new(0, 0.5);
		Size = Constants_upvr_4.ICON_DIVIDER_SIZE;
		BorderSizePixel = 0;
		BackgroundColor3 = var233_result1_upvr.Theme.Divider.Color;
	}
	local var268
	if GetFFlagUsePolishedAnimations_upvr() and arg1.toggleTransition then
		var268 = arg1.toggleTransition
		var268 = var268:map(function(arg1_8) -- Line 185
			--[[ Upvalues[1]:
				[1]: var233_result1_upvr (readonly)
			]]
			return var233_result1_upvr.Theme.Divider.Transparency + (1 - arg1_8) * (1 - var233_result1_upvr.Theme.Divider.Transparency)
		end)
	else
		var268 = var233_result1_upvr.Theme.Divider.Transparency
	end
	tbl_33.BackgroundTransparency = var268
	var268 = arg1.visible or true
	tbl_33.Visible = var268
	module_12.DividerBar = React_upvr.createElement("Frame", tbl_33)
	return React_upvr.createElement("Frame", {
		Position = arg1.position;
		Size = UDim2.new(0, Constants_upvr_4.DIVIDER_CELL_WIDTH, 1, 0);
		BorderSizePixel = 0;
		BackgroundTransparency = 1;
	}, module_12)
end
local function _(arg1, arg2) -- Line 194, Named "getSelectedChild"
	--[[ Upvalues[1]:
		[1]: Constants_upvr_4 (readonly)
	]]
	return arg1.current:FindFirstChild(Constants_upvr_4.ICON_NAME_PREFIX..tostring(arg2), true)
end
local ContextActionService_upvr_2 = game:GetService("ContextActionService")
local FFlagConsoleChatOnExpControls_upvr_2 = SharedFlags.FFlagConsoleChatOnExpControls
local FFlagChromeFixInitialFocusSubmenu_upvr_2 = SharedFlags.FFlagChromeFixInitialFocusSubmenu
local FFlagSubmenuFocusNavFixes_upvr_2 = SharedFlags.FFlagSubmenuFocusNavFixes
local GetFIntIconSelectionTimeout_upvr = SharedFlags.GetFIntIconSelectionTimeout
function AnimationStateHelper(arg1) -- Line 200
	--[[ Upvalues[16]:
		[1]: useObservableValue_upvr (readonly)
		[2]: Service_upvr_2 (readonly)
		[3]: React_upvr (readonly)
		[4]: FFlagEnableChromeShortcutBar_upvr_2 (readonly)
		[5]: ContextActionService_upvr_2 (readonly)
		[6]: FFlagHideTopBarConsole_upvr_2 (readonly)
		[7]: GuiService_upvr_2 (readonly)
		[8]: FFlagTiltIconUnibarFocusNav_upvr_2 (readonly)
		[9]: FFlagConsoleChatOnExpControls_upvr_2 (readonly)
		[10]: Constants_upvr_4 (readonly)
		[11]: FFlagUnibarMenuOpenSubmenu_upvr_2 (readonly)
		[12]: FFlagChromeFixInitialFocusSubmenu_upvr_2 (readonly)
		[13]: ReactOtter_upvr_2 (readonly)
		[14]: FFlagSubmenuFocusNavFixes_upvr_2 (readonly)
		[15]: GetFFlagUsePolishedAnimations_upvr (readonly)
		[16]: GetFIntIconSelectionTimeout_upvr (readonly)
	]]
	local useObservableValue_upvr_result1_upvr = useObservableValue_upvr(Service_upvr_2:currentSubMenu())
	local var239_result1_upvr_2 = useObservableValue_upvr(Service_upvr_2:selectedItem())
	local var239_result1_upvr = useObservableValue_upvr(Service_upvr_2:inFocusNav())
	React_upvr.useEffect(function() -- Line 206
		--[[ Upvalues[13]:
			[1]: var239_result1_upvr (readonly)
			[2]: FFlagEnableChromeShortcutBar_upvr_2 (copied, readonly)
			[3]: ContextActionService_upvr_2 (copied, readonly)
			[4]: FFlagHideTopBarConsole_upvr_2 (copied, readonly)
			[5]: Service_upvr_2 (copied, readonly)
			[6]: GuiService_upvr_2 (copied, readonly)
			[7]: FFlagTiltIconUnibarFocusNav_upvr_2 (copied, readonly)
			[8]: FFlagConsoleChatOnExpControls_upvr_2 (copied, readonly)
			[9]: arg1 (readonly)
			[10]: var239_result1_upvr_2 (readonly)
			[11]: Constants_upvr_4 (copied, readonly)
			[12]: FFlagUnibarMenuOpenSubmenu_upvr_2 (copied, readonly)
			[13]: FFlagChromeFixInitialFocusSubmenu_upvr_2 (copied, readonly)
		]]
		-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [85] 68. Error Block 16 start (CF ANALYSIS FAILED)
		GuiService_upvr_2:Select(arg1.menuFrameRef.current)
		do
			return
		end
		-- KONSTANTERROR: [85] 68. Error Block 16 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [95] 75. Error Block 21 start (CF ANALYSIS FAILED)
		ContextActionService_upvr_2:UnbindCoreAction("RBXEscapeUnibar")
		if GuiService_upvr_2.SelectedCoreObject and arg1.menuFrameRef.current:IsAncestorOf(GuiService_upvr_2.SelectedCoreObject) then
			GuiService_upvr_2.SelectedCoreObject = nil
		end
		-- KONSTANTERROR: [95] 75. Error Block 21 end (CF ANALYSIS FAILED)
	end, {var239_result1_upvr})
	React_upvr.useEffect(function() -- Line 254
		--[[ Upvalues[7]:
			[1]: useObservableValue_upvr_result1_upvr (readonly)
			[2]: FFlagUnibarMenuOpenSubmenu_upvr_2 (copied, readonly)
			[3]: var239_result1_upvr (readonly)
			[4]: GuiService_upvr_2 (copied, readonly)
			[5]: arg1 (readonly)
			[6]: ReactOtter_upvr_2 (copied, readonly)
			[7]: Constants_upvr_4 (copied, readonly)
		]]
		if useObservableValue_upvr_result1_upvr == "nine_dot" then
			if FFlagUnibarMenuOpenSubmenu_upvr_2 and var239_result1_upvr then
				GuiService_upvr_2:Select(arg1.subMenuHostRef.current)
			end
			arg1.setToggleSubmenuTransition(ReactOtter_upvr_2.spring(1, Constants_upvr_4.MENU_ANIMATION_SPRING))
		else
			arg1.setToggleSubmenuTransition(ReactOtter_upvr_2.spring(0, Constants_upvr_4.MENU_ANIMATION_SPRING))
		end
	end, {useObservableValue_upvr_result1_upvr})
	local tbl_8 = {}
	local var288
	if FFlagEnableChromeShortcutBar_upvr_2 then
		var288 = useObservableValue_upvr_result1_upvr
	else
		var288 = nil
	end
	tbl_8[1] = var239_result1_upvr_2
	tbl_8[2] = var288
	React_upvr.useEffect(function() -- Line 265
		--[[ Upvalues[9]:
			[1]: FFlagSubmenuFocusNavFixes_upvr_2 (copied, readonly)
			[2]: useObservableValue_upvr_result1_upvr (readonly)
			[3]: var239_result1_upvr_2 (readonly)
			[4]: GetFFlagUsePolishedAnimations_upvr (copied, readonly)
			[5]: GetFIntIconSelectionTimeout_upvr (copied, readonly)
			[6]: arg1 (readonly)
			[7]: FFlagTiltIconUnibarFocusNav_upvr_2 (copied, readonly)
			[8]: Constants_upvr_4 (copied, readonly)
			[9]: GuiService_upvr_2 (copied, readonly)
		]]
		if FFlagSubmenuFocusNavFixes_upvr_2 and useObservableValue_upvr_result1_upvr == var239_result1_upvr_2 then
		else
			if GetFFlagUsePolishedAnimations_upvr() then
				coroutine.resume(coroutine.create(function() -- Line 271
					--[[ Upvalues[6]:
						[1]: GetFIntIconSelectionTimeout_upvr (copied, readonly)
						[2]: arg1 (copied, readonly)
						[3]: var239_result1_upvr_2 (copied, readonly)
						[4]: FFlagTiltIconUnibarFocusNav_upvr_2 (copied, readonly)
						[5]: Constants_upvr_4 (copied, readonly)
						[6]: GuiService_upvr_2 (copied, readonly)
					]]
					while 0 < GetFIntIconSelectionTimeout_upvr() do
						task.wait()
						if arg1.menuFrameRef.current then
							local var285
							if var285 then
								var285 = nil
								if FFlagTiltIconUnibarFocusNav_upvr_2 then
									var285 = arg1.menuFrameRef.current:FindFirstChild(Constants_upvr_4.ICON_NAME_PREFIX..tostring(var239_result1_upvr_2), true)
								else
									var285 = arg1.menuFrameRef.current:FindFirstChild("IconHitArea_"..var239_result1_upvr_2, true)
								end
								if var285 then
									GuiService_upvr_2.SelectedCoreObject = var285
									return
								end
							end
						end
					end
				end))
				return
			end
			if arg1.menuFrameRef.current then
				local var286
				if var286 then
					var286 = nil
					if FFlagTiltIconUnibarFocusNav_upvr_2 then
						var286 = arg1.menuFrameRef.current:FindFirstChild(Constants_upvr_4.ICON_NAME_PREFIX..tostring(var239_result1_upvr_2), true)
					else
						var286 = arg1.menuFrameRef.current:FindFirstChild("IconHitArea_"..var239_result1_upvr_2, true)
					end
					if var286 then
						GuiService_upvr_2.SelectedCoreObject = var286
					end
				end
			end
		end
	end, tbl_8)
	return nil
end
function linearInterpolation(arg1, arg2, arg3) -- Line 311
	return arg1 * (1 - arg3) + arg2 * arg3
end
function IconPositionBinding(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9) -- Line 315
	--[[ Upvalues[2]:
		[1]: React_upvr (readonly)
		[2]: Constants_upvr_4 (readonly)
	]]
	local module_8 = {}
	module_8[1] = arg1
	module_8[2] = arg5
	module_8[3] = arg6
	return React_upvr.joinBindings(module_8):map(function(arg1_9) -- Line 327
		--[[ Upvalues[7]:
			[1]: arg9 (readonly)
			[2]: arg3 (readonly)
			[3]: arg2 (readonly)
			[4]: arg4 (readonly)
			[5]: arg8 (readonly)
			[6]: arg7 (readonly)
			[7]: Constants_upvr_4 (copied, readonly)
		]]
		local var291
		if arg9.current then
			var291 = linearInterpolation(arg3, arg2, arg1_9[2])
		else
			var291 = linearInterpolation(arg2, arg3, arg1_9[2])
		end
		local var292
		if arg8 and not arg7 then
			var292 = arg4 - arg1_9[3]
		end
		return UDim2.new(0, Constants_upvr_4.UNIBAR_END_PADDING + var292 + (var291 - var292) * arg1_9[1], 0, 0)
	end)
end
local function onUnibarSelectionChanged_upvr(arg1, arg2, arg3, arg4) -- Line 345, Named "onUnibarSelectionChanged"
	--[[ Upvalues[1]:
		[1]: Service_upvr_2 (readonly)
	]]
	if not arg1:IsAncestorOf(arg4) then
		Service_upvr_2:disableFocusNav()
	end
end
function isLeft(arg1) -- Line 364
	local var293
	if arg1 ~= Enum.HorizontalAlignment.Left then
		var293 = false
	else
		var293 = true
	end
	return var293
end
local FFlagReduceTopBarInsetsWhileHidden_upvr = SharedFlags.FFlagReduceTopBarInsetsWhileHidden
local ContainerHost_upvr = require(ChromeShared_2.Unibar.ComponentHosts.ContainerHost)
local GetFFlagSimpleChatUnreadMessageCount_upvr_2 = SharedFlags.GetFFlagSimpleChatUnreadMessageCount
local GetFFlagChromeUsePreferredTransparency_upvr = SharedFlags.GetFFlagChromeUsePreferredTransparency
function Unibar(arg1) -- Line 368
	--[[ Upvalues[19]:
		[1]: React_upvr (readonly)
		[2]: FFlagAddUILessMode_upvr_2 (readonly)
		[3]: FIntAddUILessModeVariant_upvr (readonly)
		[4]: Stores_upvr (readonly)
		[5]: useChromeMenuItems_upvr_2 (readonly)
		[6]: ReactOtter_upvr_2 (readonly)
		[7]: Service_upvr_2 (readonly)
		[8]: FFlagReduceTopBarInsetsWhileHidden_upvr (readonly)
		[9]: isConnectDropdownEnabled_upvr (readonly)
		[10]: Constants_upvr_4 (readonly)
		[11]: GetFFlagUsePolishedAnimations_upvr (readonly)
		[12]: useMappedObservableValue_upvr (readonly)
		[13]: ContainerHost_upvr (readonly)
		[14]: IconHost_upvr (readonly)
		[15]: GetFFlagSimpleChatUnreadMessageCount_upvr_2 (readonly)
		[16]: createEffect_upvr_2 (readonly)
		[17]: useStyle_upvr (readonly)
		[18]: FFlagUnibarMenuOpenSubmenu_upvr_2 (readonly)
		[19]: GetFFlagChromeUsePreferredTransparency_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	-- KONSTANTERROR: [0] 1. Error Block 149 start (CF ANALYSIS FAILED)
	local var306_upvw
	local var307
	if FFlagAddUILessMode_upvr_2 and FIntAddUILessModeVariant_upvr ~= 0 and Stores_upvr.GetUILessStore then
		var306_upvw = React_upvr.useRef(Stores_upvr.GetUILessStore(false))
	end
	if not React_upvr.useRef({}).current then
	end
	local useChromeMenuItems_upvr_2_result1 = useChromeMenuItems_upvr_2()
	local any_useAnimatedBinding_result1_6, _ = ReactOtter_upvr_2.useAnimatedBinding(1)
	local _, _ = ReactOtter_upvr_2.useAnimatedBinding(1)
	local _, _ = ReactOtter_upvr_2.useAnimatedBinding(1)
	local any_useAnimatedBinding_result1_5, _ = ReactOtter_upvr_2.useAnimatedBinding(0)
	local _, _ = ReactOtter_upvr_2.useAnimatedBinding(1)
	local var319 = 0
	if Service_upvr_2:currentSubMenu():get() ~= "nine_dot" then
		var319 = false
	else
		var319 = true
	end
	if var319 then
		-- KONSTANTWARNING: GOTO [106] #82
	end
	local _, _ = ReactOtter_upvr_2.useAnimatedBinding(0)
	var307 = 0
	local any_useRef_result1_9_upvr = React_upvr.useRef(Vector2.zero)
	local any_useRef_result1_6_upvr = React_upvr.useRef(Vector2.zero)
	local function _(arg1_10) -- Line 407
		--[[ Upvalues[10]:
			[1]: any_useRef_result1_9_upvr (readonly)
			[2]: Service_upvr_2 (copied, readonly)
			[3]: FFlagReduceTopBarInsetsWhileHidden_upvr (copied, readonly)
			[4]: any_useRef_result1_6_upvr (readonly)
			[5]: FFlagAddUILessMode_upvr_2 (copied, readonly)
			[6]: FIntAddUILessModeVariant_upvr (copied, readonly)
			[7]: var306_upvw (read and write)
			[8]: isConnectDropdownEnabled_upvr (copied, readonly)
			[9]: arg1 (readonly)
			[10]: Constants_upvr_4 (copied, readonly)
		]]
		-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
		local zero = Vector2.zero
		-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [32] 22. Error Block 7 start (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [32] 22. Error Block 7 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [34] 24. Error Block 8 start (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [34] 24. Error Block 8 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [37] 26. Error Block 9 start (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [37] 26. Error Block 9 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [58] 41. Error Block 12 start (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [58] 41. Error Block 12 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [63] 44. Error Block 13 start (CF ANALYSIS FAILED)
		any_useRef_result1_6_upvr.current = zero
		-- KONSTANTERROR: [63] 44. Error Block 13 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [66] 46. Error Block 14 start (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [66] 46. Error Block 14 end (CF ANALYSIS FAILED)
	end
	local tbl_24 = {}
	if GetFFlagUsePolishedAnimations_upvr() then
		-- KONSTANTWARNING: GOTO [142] #113
	end
	tbl_24[1] = any_useAnimatedBinding_result1_6
	tbl_24[2] = any_useAnimatedBinding_result1_5
	local const_number_upvw_2 = 0
	local function _(arg1_11) -- Line 458
		--[[ Upvalues[2]:
			[1]: const_number_upvw_2 (read and write)
			[2]: Constants_upvr_4 (copied, readonly)
		]]
		return UDim2.new(0, linearInterpolation(const_number_upvw_2, arg1_11[2], arg1_11[1]), 0, Constants_upvr_4.ICON_CELL_WIDTH)
	end
	for _, v in useChromeMenuItems_upvr_2_result1 do
		if v.integration.availability:get() == Service_upvr_2.AvailabilitySignal.Pinned then
			var307 += 1
		end
	end
	if useMappedObservableValue_upvr(Service_upvr_2:orderAlignment(), isLeft) then
	else
		_ = 0
	end
	-- KONSTANTERROR: [0] 1. Error Block 149 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [497] 385. Error Block 89 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [497] 385. Error Block 89 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [197] 155. Error Block 28 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	-- KONSTANTERROR: [197] 155. Error Block 28 end (CF ANALYSIS FAILED)
end
local function UnibarPills_upvr(arg1) -- Line 717, Named "UnibarPills"
	--[[ Upvalues[7]:
		[1]: useStyle_upvr (readonly)
		[2]: useChromeMenuItems_upvr_2 (readonly)
		[3]: Service_upvr_2 (readonly)
		[4]: ReactOtter_upvr_2 (readonly)
		[5]: React_upvr (readonly)
		[6]: IconHost_upvr (readonly)
		[7]: Constants_upvr_4 (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	-- KONSTANTERROR: [0] 1. Error Block 35 start (CF ANALYSIS FAILED)
	local useStyle_upvr_result1 = useStyle_upvr()
	local var238_result1 = useChromeMenuItems_upvr_2()
	local var340
	if Service_upvr_2:currentSubMenu():get() ~= "nine_dot" then
		var340 = false
	else
		var340 = true
	end
	if var340 then
		-- KONSTANTWARNING: GOTO [22] #19
	end
	-- KONSTANTERROR: [0] 1. Error Block 35 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [21] 18. Error Block 37 start (CF ANALYSIS FAILED)
	local any_useAnimatedBinding_result1_4, any_useAnimatedBinding_result2_2 = ReactOtter_upvr_2.useAnimatedBinding(0)
	if var238_result1 == nil then
	else
	end
	assert(true, "Menu items should not be nil")
	local tbl_21 = {}
	for i_2, v_2 in var238_result1 do
		if v_2.integration and v_2.isDivider == false then
			tbl_21["icon_host"..i_2] = React_upvr.createElement(IconHost_upvr, {
				toggleTransition = any_useAnimatedBinding_result1_4;
				integration = v_2;
			})
		end
		if v_2.isDivider or i_2 == #var238_result1 then
			({})["pill_"..i_2] = React_upvr.createElement("Frame", {
				Size = UDim2.new(0, 0, 0, 0);
				AutomaticSize = Enum.AutomaticSize.XY;
				BorderSizePixel = 0;
				BackgroundColor3 = useStyle_upvr_result1.Theme.BackgroundUIContrast.Color;
				BackgroundTransparency = useStyle_upvr_result1.Theme.BackgroundUIContrast.Transparency * useStyle_upvr_result1.Settings.PreferredTransparency;
			}, {
				UICorner = React_upvr.createElement("UICorner", {
					CornerRadius = UDim.new(1, 0);
				});
				Padding = React_upvr.createElement("UIPadding", {
					PaddingLeft = UDim.new(0, Constants_upvr_4.UNIBAR_END_PADDING);
					PaddingRight = UDim.new(0, Constants_upvr_4.UNIBAR_END_PADDING);
				});
				PillsHorizontalList = React_upvr.createElement("UIListLayout", {
					FillDirection = Enum.FillDirection.Horizontal;
					HorizontalAlignment = Enum.HorizontalAlignment.Center;
					VerticalAlignment = Enum.VerticalAlignment.Center;
				});
			}, tbl_21)
		end
	end
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	do
		return React_upvr.createElement("Frame", {
			BorderSizePixel = 0;
			BackgroundTransparency = 1;
			SelectionGroup = true;
			ref = arg1.menuFrameRef;
			AutomaticSize = Enum.AutomaticSize.XY;
		}, {React_upvr.createElement(AnimationStateHelper, {
			setToggleSubmenuTransition = any_useAnimatedBinding_result2_2;
			menuFrameRef = arg1.menuFrameRef;
			subMenuHostRef = arg1.subMenuHostRef;
		}), React_upvr.createElement("UIListLayout", {
			FillDirection = Enum.FillDirection.Horizontal;
			HorizontalAlignment = Enum.HorizontalAlignment.Center;
			VerticalAlignment = Enum.VerticalAlignment.Center;
			Padding = UDim.new(0, Constants_upvr_4.MENU_SUBMENU_PADDING);
		})}, {})
	end
	-- KONSTANTERROR: [21] 18. Error Block 37 end (CF ANALYSIS FAILED)
end
local any_new_result1_upvw_2 = require(CorePackages_2.Workspace.Packages.Observable).ObservableValue.new(true)
local PanelType_upvw_2 = VrSpatialUi.Constants.PanelType
local function SubMenuWrapper_upvr(arg1) -- Line 798, Named "SubMenuWrapper"
	--[[ Upvalues[9]:
		[1]: isInExperienceUIVREnabled_upvr_2 (readonly)
		[2]: isSpatial_upvr_2 (readonly)
		[3]: var235_upvw (read and write)
		[4]: useObservableValue_upvr (readonly)
		[5]: Service_upvr_2 (readonly)
		[6]: any_new_result1_upvw_2 (read and write)
		[7]: React_upvr (readonly)
		[8]: SubMenu_upvr_2 (readonly)
		[9]: PanelType_upvw_2 (read and write)
	]]
	if isInExperienceUIVREnabled_upvr_2 and isSpatial_upvr_2() then
		local var356
		if var235_upvw then
			if useObservableValue_upvr(Service_upvr_2:currentSubMenu()) == nil then
				var356 = false
			else
				var356 = true
			end
			any_new_result1_upvw_2:set(var356)
		end
	end
	if isInExperienceUIVREnabled_upvr_2 and isSpatial_upvr_2() and var235_upvw then
		return React_upvr.createElement(var235_upvw, {
			panelType = PanelType_upvw_2.ChromeSubMenu;
			renderFunction = React_upvr.useCallback(function() -- Line 803
				--[[ Upvalues[3]:
					[1]: React_upvr (copied, readonly)
					[2]: SubMenu_upvr_2 (copied, readonly)
					[3]: arg1 (readonly)
				]]
				return React_upvr.createElement(SubMenu_upvr_2, {
					subMenuHostRef = arg1.subMenuHostRef;
				})
			end, {arg1.subMenuHostRef});
			visibilityObservable = any_new_result1_upvw_2;
		})
	end
	return React_upvr.createElement(SubMenu_upvr_2, {
		subMenuHostRef = arg1.subMenuHostRef;
	})
end
local ShortcutBar_upvr = require(ChromeShared_2.Shortcuts.ShortcutBar)
local WindowManager_upvr_2 = require(ChromeShared_2.Unibar.WindowManager)
if SharedFlags.GetFFlagAnimateSubMenu() then
	local function _(arg1, arg2) -- Line 948
		return true
	end
else
end
return React_upvr.memo(function(arg1) -- Line 819
	--[[ Upvalues[21]:
		[1]: React_upvr (readonly)
		[2]: FFlagTiltIconUnibarFocusNav_upvr_2 (readonly)
		[3]: FFlagUnibarMenuOpenSubmenu_upvr_2 (readonly)
		[4]: useMappedObservableValue_upvr (readonly)
		[5]: Service_upvr_2 (readonly)
		[6]: FFlagHideTopBarConsole_upvr_2 (readonly)
		[7]: isConnectDropdownEnabled_upvr (readonly)
		[8]: FFlagAddUILessMode_upvr_2 (readonly)
		[9]: FIntAddUILessModeVariant_upvr (readonly)
		[10]: Stores_upvr (readonly)
		[11]: createEffect_upvr_2 (readonly)
		[12]: onUnibarSelectionChanged_upvr (readonly)
		[13]: Constants_upvr_4 (readonly)
		[14]: isInExperienceUIVREnabled_upvr_2 (readonly)
		[15]: isSpatial_upvr_2 (readonly)
		[16]: UnibarPills_upvr (readonly)
		[17]: SubMenuWrapper_upvr (readonly)
		[18]: SubMenu_upvr_2 (readonly)
		[19]: FFlagEnableChromeShortcutBar_upvr_2 (readonly)
		[20]: ShortcutBar_upvr (readonly)
		[21]: WindowManager_upvr_2 (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local var365_upvw
	if FFlagTiltIconUnibarFocusNav_upvr_2 and arg1.menuRef then
		var365_upvw = arg1.menuRef
	end
	local any_useRef_result1_4_upvr = React_upvr.useRef(nil)
	if FFlagUnibarMenuOpenSubmenu_upvr_2 then
		local any_useRef_result1_3 = React_upvr.useRef(nil)
	end
	local function updateSize_upvr() -- Line 833, Named "updateSize"
		--[[ Upvalues[2]:
			[1]: any_useRef_result1_4_upvr (readonly)
			[2]: var365_upvw (read and write)
		]]
		if any_useRef_result1_4_upvr.current and var365_upvw.current then
			any_useRef_result1_4_upvr.current.Size = var365_upvw.current.Size
		end
	end
	local var368_upvw
	if FFlagHideTopBarConsole_upvr_2 and isConnectDropdownEnabled_upvr then
		local _, _ = React_upvr.useBinding(isConnectDropdownEnabled_upvr:getShowTopBar():get())
		var368_upvw = isConnectDropdownEnabled_upvr:getShowTopBar()
	end
	local var371_upvw
	if FFlagAddUILessMode_upvr_2 then
		if FIntAddUILessModeVariant_upvr ~= 0 and Stores_upvr.GetUILessStore then
			var371_upvw = React_upvr.useRef(Stores_upvr.GetUILessStore(false))
			if var371_upvw.current.getUILessModeEnabled(false) then
				local _, any_useBinding_result2_2 = React_upvr.useBinding(true)
				local var374_upvw = any_useBinding_result2_2
			end
		end
	end
	React_upvr.useEffect(function() -- Line 858
		--[[ Upvalues[6]:
			[1]: var365_upvw (read and write)
			[2]: updateSize_upvr (readonly)
			[3]: any_useRef_result1_4_upvr (readonly)
			[4]: FFlagHideTopBarConsole_upvr_2 (copied, readonly)
			[5]: var368_upvw (read and write)
			[6]: var374_upvw (read and write)
		]]
		local var376_upvw
		if var365_upvw and var365_upvw.current then
			var376_upvw = var365_upvw.current:GetPropertyChangedSignal("Size"):Connect(updateSize_upvr)
		end
		if any_useRef_result1_4_upvr.current and var365_upvw.current then
			any_useRef_result1_4_upvr.current.Size = var365_upvw.current.Size
		end
		if FFlagHideTopBarConsole_upvr_2 then
			var368_upvw:connect(function() -- Line 867
				--[[ Upvalues[2]:
					[1]: var374_upvw (copied, read and write)
					[2]: var368_upvw (copied, read and write)
				]]
				var374_upvw(var368_upvw:get())
			end)
		end
		return function() -- Line 872
			--[[ Upvalues[1]:
				[1]: var376_upvw (read and write)
			]]
			if var376_upvw then
				var376_upvw:disconnect()
			end
		end
	end)
	React_upvr.useEffect(function() -- Line 879
		--[[ Upvalues[5]:
			[1]: FFlagAddUILessMode_upvr_2 (copied, readonly)
			[2]: FIntAddUILessModeVariant_upvr (copied, readonly)
			[3]: var371_upvw (read and write)
			[4]: createEffect_upvr_2 (copied, readonly)
			[5]: var374_upvw (read and write)
		]]
		local var380_upvw
		if FFlagAddUILessMode_upvr_2 and FIntAddUILessModeVariant_upvr ~= 0 then
			if var371_upvw.current.getUILessModeEnabled(false) then
				var380_upvw = createEffect_upvr_2(function(arg1_12) -- Line 882
					--[[ Upvalues[2]:
						[1]: var374_upvw (copied, read and write)
						[2]: var371_upvw (copied, read and write)
					]]
					var374_upvw(var371_upvw.current.getUIVisible(arg1_12))
				end)
			end
		end
		return function() -- Line 887
			--[[ Upvalues[1]:
				[1]: var380_upvw (read and write)
			]]
			if var380_upvw then
				var380_upvw()
			end
		end
	end, {})
	local module_5 = {}
	local tbl_12 = {
		Name = "UnibarMenu";
		AutomaticSize = Enum.AutomaticSize.Y;
		BorderSizePixel = 0;
		BackgroundTransparency = 1;
		LayoutOrder = arg1.layoutOrder;
		SelectionGroup = true;
	}
	local Stop_2 = Enum.SelectionBehavior.Stop
	tbl_12.SelectionBehaviorUp = Stop_2
	if FFlagTiltIconUnibarFocusNav_upvr_2 then
		Stop_2 = nil
	else
		Stop_2 = Enum.SelectionBehavior.Stop
	end
	tbl_12.SelectionBehaviorLeft = Stop_2
	tbl_12.SelectionBehaviorRight = Enum.SelectionBehavior.Stop
	tbl_12.ref = any_useRef_result1_4_upvr
	if FFlagTiltIconUnibarFocusNav_upvr_2 then
		-- KONSTANTWARNING: GOTO [175] #135
	end
	tbl_12[React_upvr.Event.SelectionChanged] = nil
	if FFlagHideTopBarConsole_upvr_2 or FFlagAddUILessMode_upvr_2 and FIntAddUILessModeVariant_upvr ~= 0 and var371_upvw.current.getUILessModeEnabled(false) then
	else
	end
	tbl_12.Visible = nil
	local tbl_10 = {}
	local tbl_9 = {
		FillDirection = Enum.FillDirection.Vertical;
	}
	if useMappedObservableValue_upvr(Service_upvr_2:orderAlignment(), isLeft) then
		-- KONSTANTWARNING: GOTO [212] #162
	end
	tbl_9.HorizontalAlignment = Enum.HorizontalAlignment.Right
	local var388
	tbl_9.VerticalAlignment = Enum.VerticalAlignment.Top
	var388 = 0
	tbl_9.Padding = UDim.new(var388, Constants_upvr_4.MENU_SUBMENU_PADDING)
	if isInExperienceUIVREnabled_upvr_2 and isSpatial_upvr_2() then
		local _ = {
			menuFrameRef = var365_upvw;
			subMenuHostRef = any_useRef_result1_3;
		}
		-- KONSTANTWARNING: GOTO [268] #201
	end
	local tbl_14 = {
		menuFrameRef = var365_upvw;
	}
	if FFlagUnibarMenuOpenSubmenu_upvr_2 then
		var388 = any_useRef_result1_3
	else
		var388 = nil
	end
	tbl_14.subMenuHostRef = var388
	var388 = arg1.onAreaChanged
	tbl_14.onAreaChanged = var388
	var388 = arg1.onMinWidthChanged
	tbl_14.onMinWidthChanged = var388
	if isInExperienceUIVREnabled_upvr_2 then
		var388 = {}
		var388.subMenuHostRef = any_useRef_result1_3
	else
		var388 = {}
		var388.subMenuHostRef = any_useRef_result1_3
	end
	var388 = FFlagEnableChromeShortcutBar_upvr_2
	if var388 then
		var388 = React_upvr
		var388 = ShortcutBar_upvr
	else
	end
	var388 = React_upvr.createElement(WindowManager_upvr_2)
	tbl_10[1] = React_upvr.createElement("UIListLayout", tbl_9)
	tbl_10[2] = React_upvr.createElement(Unibar, tbl_14)
	tbl_10[3] = React_upvr.createElement(SubMenu_upvr_2, var388)
	tbl_10[4] = nil
	tbl_10[5] = var388
	module_5[1] = React_upvr.createElement("Frame", tbl_12, tbl_10)
	return module_5
end, nil)