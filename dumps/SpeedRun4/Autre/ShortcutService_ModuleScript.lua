-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:54:58
-- Luau version 6, Types version 3
-- Time taken: 0.007967 seconds

local ChromeUtils_upvr = require(script:FindFirstAncestor("ChromeShared").Service.ChromeUtils)
local CorePackages = game:GetService("CorePackages")
local ContextActionService_upvr = game:GetService("ContextActionService")
local AvailabilitySignalState_upvr = ChromeUtils_upvr.AvailabilitySignalState
local SharedFlags = require(CorePackages.Workspace.Packages.SharedFlags)
local FFlagConsoleSinglePressIntegrationExit_upvr = SharedFlags.FFlagConsoleSinglePressIntegrationExit
local FFlagChromeShortcutDisableRespawn_upvr = SharedFlags.FFlagChromeShortcutDisableRespawn
local FFlagChromeUnbindAllShortcuts_upvr = SharedFlags.FFlagChromeUnbindAllShortcuts
local module_upvr = {}
module_upvr.__index = module_upvr
local function _(arg1) -- Line 77, Named "_handleShortcutEvent"
	--[[ Upvalues[1]:
		[1]: FFlagConsoleSinglePressIntegrationExit_upvr (readonly)
	]]
	return function(arg1_2, arg2, arg3) -- Line 78
		--[[ Upvalues[2]:
			[1]: arg1 (readonly)
			[2]: FFlagConsoleSinglePressIntegrationExit_upvr (copied, readonly)
		]]
		if arg2 ~= Enum.UserInputState.Begin then
			return Enum.ContextActionResult.Pass
		end
		for i, v in arg1._shortcuts do
			if v.actionName and v.actionName == arg1_2 then
				if FFlagConsoleSinglePressIntegrationExit_upvr then
					local any_activateShortcut_result1_2 = arg1:activateShortcut(i)
					if not any_activateShortcut_result1_2 then
						any_activateShortcut_result1_2 = Enum.ContextActionResult.Sink
					end
					return any_activateShortcut_result1_2
				end
				arg1:activateShortcut(i)
				return Enum.ContextActionResult.Sink
			end
		end
		return Enum.ContextActionResult.Pass
	end
end
local Signal_upvr = require(CorePackages.Workspace.Packages.AppCommonLib).Signal
function module_upvr.new() -- Line 97
	--[[ Upvalues[2]:
		[1]: Signal_upvr (readonly)
		[2]: module_upvr (readonly)
	]]
	return setmetatable({
		_shortcuts = {};
		_shortcutBarList = {};
		_shortcutBarHiddenOverrides = {};
		onShortcutBarChanged = Signal_upvr.new();
		_boundShortcuts = {};
	}, module_upvr)
end
local any_new_result1_upvr = require(CorePackages.Workspace.Packages.InExperienceLocales).Localization.new(game:GetService("LocalizationService").RobloxLocaleId)
local FFlagShortcutBarUseTokens_upvr = SharedFlags.FFlagShortcutBarUseTokens
local AvailabilitySignal_upvr = ChromeUtils_upvr.AvailabilitySignal
local UserInputService_upvr = game:GetService("UserInputService")
function module_upvr.registerShortcut(arg1, arg2) -- Line 111
	--[[ Upvalues[6]:
		[1]: any_new_result1_upvr (readonly)
		[2]: FFlagShortcutBarUseTokens_upvr (readonly)
		[3]: FFlagChromeShortcutDisableRespawn_upvr (readonly)
		[4]: AvailabilitySignal_upvr (readonly)
		[5]: AvailabilitySignalState_upvr (readonly)
		[6]: UserInputService_upvr (readonly)
	]]
	if arg1._shortcuts[arg2.id] then
		warn(string.format("shortcut "..arg2.id.." already registered", debug.traceback()))
	end
	if arg2.label then
		arg2.label = any_new_result1_upvr:Format(arg2.label)
	end
	if FFlagShortcutBarUseTokens_upvr then
		arg2.displayPriority = arg2.displayPriority or 0
	end
	if FFlagChromeShortcutDisableRespawn_upvr then
		if arg2.availability == nil then
			arg2.availability = AvailabilitySignal_upvr.new(AvailabilitySignalState_upvr.Available)
		end
		arg2.availability:connect(function() -- Line 128
			--[[ Upvalues[2]:
				[1]: arg1 (readonly)
				[2]: arg2 (readonly)
			]]
			arg1:shortcutChanged(arg2)
		end)
	end
	arg2.icon = UserInputService_upvr:GetImageForKeyCode(arg2.keyCode)
	arg1._shortcuts[arg2.id] = arg2
end
function module_upvr.activateShortcut(arg1, arg2) -- Line 138
	if arg1._shortcuts[arg2] then
		local var25 = arg1._shortcuts[arg2]
		if var25.activated then
			return var25.activated()
		end
	end
	return nil
end
function module_upvr.shortcutChanged(arg1, arg2) -- Line 149
	--[[ Upvalues[1]:
		[1]: FFlagChromeShortcutDisableRespawn_upvr (readonly)
	]]
	if FFlagChromeShortcutDisableRespawn_upvr then
		arg1:updateShortcutBar(arg1:getCurrentShortcutBar())
	end
end
local FFlagChromeShortcutBarUseHideOverrides_upvr = SharedFlags.FFlagChromeShortcutBarUseHideOverrides
function module_upvr.updateShortcutBar(arg1, arg2) -- Line 155
	--[[ Upvalues[2]:
		[1]: FFlagChromeUnbindAllShortcuts_upvr (readonly)
		[2]: FFlagChromeShortcutBarUseHideOverrides_upvr (readonly)
	]]
	if FFlagChromeUnbindAllShortcuts_upvr then
		arg1:_unbindAllShortcuts()
	elseif arg1._currentShortcutBar and arg1._shortcutBarList[arg1._currentShortcutBar] then
		arg1:_unbindShortcutBar(arg1._currentShortcutBar)
	end
	arg1._currentShortcutBar = arg2
	if FFlagChromeShortcutBarUseHideOverrides_upvr and arg1._shortcutBarHidden then
		arg1.onShortcutBarChanged:fire(nil)
	else
		arg1.onShortcutBarChanged:fire(arg2)
		if arg2 and arg1._shortcutBarList[arg2] then
			arg1:_bindShortcutBar(arg2)
		end
	end
end
function module_upvr.configureShortcutBar(arg1, arg2, arg3) -- Line 175
	arg1._shortcutBarList[arg2] = arg3
end
function module_upvr.setShortcutBar(arg1, arg2) -- Line 179
	if arg1._currentShortcutBar ~= arg2 then
		arg1:updateShortcutBar(arg2)
	end
end
function module_upvr.setHideShortcutBar(arg1, arg2, arg3) -- Line 185
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [5] 4. Error Block 18 start (CF ANALYSIS FAILED)
	if arg3 then
		arg1._shortcutBarHiddenOverrides[arg2] = arg3
	else
		arg1._shortcutBarHiddenOverrides[arg2] = nil
	end
	local _, _, pairs_result3 = pairs(arg1._shortcutBarHiddenOverrides)
	-- KONSTANTERROR: [5] 4. Error Block 18 end (CF ANALYSIS FAILED)
end
function module_upvr.getHideShortcutBar(arg1) -- Line 206
	return arg1._shortcutBarHidden
end
function module_upvr.getShortcut(arg1, arg2) -- Line 210
	return arg1._shortcuts[arg2]
end
function module_upvr.getShortcutsFromBar(arg1, arg2, arg3) -- Line 214
	--[[ Upvalues[3]:
		[1]: FFlagChromeShortcutDisableRespawn_upvr (readonly)
		[2]: AvailabilitySignalState_upvr (readonly)
		[3]: ChromeUtils_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 18 start (CF ANALYSIS FAILED)
	if not arg2 then
		return {}
	end
	-- KONSTANTERROR: [0] 1. Error Block 18 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [71] 51. Error Block 15 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [71] 51. Error Block 15 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [12] 10. Error Block 4 start (CF ANALYSIS FAILED)
	-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [71.9]
	-- KONSTANTERROR: [12] 10. Error Block 4 end (CF ANALYSIS FAILED)
end
function module_upvr.getCurrentShortcutBar(arg1) -- Line 248
	return arg1._currentShortcutBar
end
function module_upvr._bindShortcutBar(arg1, arg2) -- Line 252
	--[[ Upvalues[2]:
		[1]: FFlagChromeShortcutDisableRespawn_upvr (readonly)
		[2]: AvailabilitySignalState_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [46] 35. Error Block 10 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [46] 35. Error Block 10 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [6] 6. Error Block 16 start (CF ANALYSIS FAILED)
	-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [46.8]
	if nil then
		-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [46.7]
		if nil then
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect
			if nil then
				-- KONSTANTERROR: Expression was reused, decompilation is incorrect (x2)
				-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [46.9]
				if nil ~= nil then
					-- KONSTANTWARNING: GOTO [46] #35
				end
				-- KONSTANTWARNING: GOTO [46] #35
			end
			-- KONSTANTWARNING: GOTO [46] #35
		end
	else
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect (x2)
		if nil and nil then
		end
	end
	-- KONSTANTERROR: [6] 6. Error Block 16 end (CF ANALYSIS FAILED)
end
function module_upvr._unbindShortcutBar(arg1, arg2) -- Line 273
	if arg2 then
		for _, v_2 in arg1._shortcutBarList[arg2] do
			local var32 = arg1._shortcuts[v_2]
			if var32 and var32.actionName then
				arg1:_unbindShortcut(v_2)
			end
		end
	end
end
function module_upvr._bindShortcut(arg1, arg2) -- Line 284
	--[[ Upvalues[3]:
		[1]: ContextActionService_upvr (readonly)
		[2]: FFlagConsoleSinglePressIntegrationExit_upvr (readonly)
		[3]: FFlagChromeUnbindAllShortcuts_upvr (readonly)
	]]
	local var40 = arg1._shortcuts[arg2]
	if var40 then
		if var40.actionName then
			ContextActionService_upvr:BindCoreAction(var40.actionName, function(arg1_4, arg2_3, arg3) -- Line 78
				--[[ Upvalues[2]:
					[1]: arg1 (readonly)
					[2]: FFlagConsoleSinglePressIntegrationExit_upvr (copied, readonly)
				]]
				if arg2_3 ~= Enum.UserInputState.Begin then
					return Enum.ContextActionResult.Pass
				end
				for i_3, v_3 in arg1._shortcuts do
					if v_3.actionName and v_3.actionName == arg1_4 then
						if FFlagConsoleSinglePressIntegrationExit_upvr then
							local any_activateShortcut_result1 = arg1:activateShortcut(i_3)
							if not any_activateShortcut_result1 then
								any_activateShortcut_result1 = Enum.ContextActionResult.Sink
							end
							return any_activateShortcut_result1
						end
						arg1:activateShortcut(i_3)
						return Enum.ContextActionResult.Sink
					end
				end
				return Enum.ContextActionResult.Pass
			end, false, var40.keyCode)
			if FFlagChromeUnbindAllShortcuts_upvr then
				arg1._boundShortcuts[var40.actionName] = true
			end
		end
	end
end
function module_upvr._unbindShortcut(arg1, arg2) -- Line 294
	--[[ Upvalues[2]:
		[1]: ContextActionService_upvr (readonly)
		[2]: FFlagChromeUnbindAllShortcuts_upvr (readonly)
	]]
	local var47 = arg1._shortcuts[arg2]
	if var47 then
		if var47.actionName then
			ContextActionService_upvr:UnbindCoreAction(var47.actionName)
			if FFlagChromeUnbindAllShortcuts_upvr then
				arg1._boundShortcuts[var47.actionName] = false
			end
		end
	end
end
function module_upvr._unbindAllShortcuts(arg1) -- Line 304
	--[[ Upvalues[2]:
		[1]: FFlagChromeUnbindAllShortcuts_upvr (readonly)
		[2]: ContextActionService_upvr (readonly)
	]]
	if not FFlagChromeUnbindAllShortcuts_upvr then
	else
		for var48, var49 in arg1._boundShortcuts do
			if var49 then
				ContextActionService_upvr:UnbindCoreAction(var48)
				arg1._boundShortcuts[var48] = false
			end
		end
	end
end
return module_upvr