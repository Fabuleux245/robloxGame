-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:55:11
-- Luau version 6, Types version 3
-- Time taken: 0.002145 seconds

local CorePackages = game:GetService("CorePackages")
local UserInputService_upvr = game:GetService("UserInputService")
local Chrome = script:FindFirstAncestor("Chrome")
local InputType_upvr = require(CorePackages.Workspace.Packages.InputType)
local getInputGroup_upvr = InputType_upvr.getInputGroup
local function _() -- Line 22, Named "isUsingGamepad"
	--[[ Upvalues[3]:
		[1]: getInputGroup_upvr (readonly)
		[2]: UserInputService_upvr (readonly)
		[3]: InputType_upvr (readonly)
	]]
	local var6
	if getInputGroup_upvr(UserInputService_upvr:GetLastInputType()) ~= InputType_upvr.InputTypeConstants.Gamepad then
		var6 = false
	else
		var6 = true
	end
	return var6
end
local FFlagChromeFocusOnAndOffUtils_upvr = require(CorePackages.Workspace.Packages.SharedFlags).FFlagChromeFocusOnAndOffUtils
local ChatSelector_upvr = require(game:GetService("CoreGui"):WaitForChild("RobloxGui").Modules.ChatSelector)
local FocusUtils_upvr = require(CorePackages.Workspace.Packages.Chrome).FocusUtils
local Service_upvr = require(Chrome.Service)
local Constants_upvr = require(Chrome.ChromeShared.Unibar.Constants)
local any_GetFocusNavigationStore_result1_upvr = require(CorePackages.Workspace.Packages.ExpChat).Stores.GetFocusNavigationStore(false)
return function(arg1) -- Line 27
	--[[ Upvalues[9]:
		[1]: FFlagChromeFocusOnAndOffUtils_upvr (readonly)
		[2]: ChatSelector_upvr (readonly)
		[3]: getInputGroup_upvr (readonly)
		[4]: UserInputService_upvr (readonly)
		[5]: InputType_upvr (readonly)
		[6]: FocusUtils_upvr (readonly)
		[7]: Service_upvr (readonly)
		[8]: Constants_upvr (readonly)
		[9]: any_GetFocusNavigationStore_result1_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [23] 19. Error Block 7 start (CF ANALYSIS FAILED)
	FocusUtils_upvr.FocusOffChrome(function() -- Line 30
		--[[ Upvalues[3]:
			[1]: Service_upvr (copied, readonly)
			[2]: Constants_upvr (copied, readonly)
			[3]: any_GetFocusNavigationStore_result1_upvr (copied, readonly)
		]]
		Service_upvr:setShortcutBar(Constants_upvr.UNIBAR_SHORTCUTBAR_ID)
		any_GetFocusNavigationStore_result1_upvr.focusChatInputBar()
	end)
	do
		return
	end
	-- KONSTANTERROR: [23] 19. Error Block 7 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [32] 27. Error Block 12 start (CF ANALYSIS FAILED)
	if UserInputService_upvr.GamepadEnabled and ChatSelector_upvr:GetVisibility() then
		Service_upvr:disableFocusNav()
		ChatSelector_upvr:FocusSelectChatBar(function() -- Line 37
			--[[ Upvalues[2]:
				[1]: Service_upvr (copied, readonly)
				[2]: arg1 (readonly)
			]]
			Service_upvr:setSelected(arg1)
			Service_upvr:enableFocusNav()
		end, {Enum.KeyCode.DPadUp, Enum.KeyCode.ButtonB, Enum.KeyCode.ButtonR1})
	end
	-- KONSTANTERROR: [32] 27. Error Block 12 end (CF ANALYSIS FAILED)
end