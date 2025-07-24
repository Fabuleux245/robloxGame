-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:46:31
-- Luau version 6, Types version 3
-- Time taken: 0.003166 seconds

local AppStorageService_upvr = game:GetService("AppStorageService")
local React_upvr = require(game:GetService("CorePackages").Packages.React)
local HttpService_upvr = game:GetService("HttpService")
local function shouldShowBasedOnCountInAppStorage_upvr(arg1, arg2) -- Line 20, Named "shouldShowBasedOnCountInAppStorage"
	--[[ Upvalues[2]:
		[1]: AppStorageService_upvr (readonly)
		[2]: HttpService_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local any_GetItem_result1 = AppStorageService_upvr:GetItem("UserId")
	local any_GetItem_result1_2_upvr = AppStorageService_upvr:GetItem(arg1)
	local pcall_result1, pcall_result2 = pcall(function() -- Line 23
		--[[ Upvalues[2]:
			[1]: HttpService_upvr (copied, readonly)
			[2]: any_GetItem_result1_2_upvr (readonly)
		]]
		return HttpService_upvr:JSONDecode(any_GetItem_result1_2_upvr)
	end)
	if not pcall_result1 or type(pcall_result2) ~= "table" then
	end
	if type(({})[any_GetItem_result1]) ~= "number" then
		local const_number = 0
	end
	local var11 = const_number + 1
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	;({})[any_GetItem_result1] = var11
	if const_number >= arg2 then
		var11 = false
	else
		var11 = true
	end
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	return var11, HttpService_upvr:JSONEncode({})
end
local GamepadNavigationDialog_upvr = require(script.Parent.GamepadNavigationDialog)
local function GamepadNavigationDialogTextButton_upvr(arg1) -- Line 43, Named "GamepadNavigationDialogTextButton"
	--[[ Upvalues[2]:
		[1]: React_upvr (readonly)
		[2]: GamepadNavigationDialog_upvr (readonly)
	]]
	React_upvr.useEffect(function() -- Line 44
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		return arg1.onCleanup
	end, {})
	return React_upvr.createElement("TextButton", {
		Text = "";
		BackgroundTransparency = 1;
		BorderSizePixel = 0;
		Size = UDim2.new(1, 0, 1, 0);
		[React_upvr.Event.Activated] = arg1.onDismissed;
	}, {
		GamepadNavigationDialog = React_upvr.createElement(GamepadNavigationDialog_upvr, {
			selectButtonDismissesGamepadNavigationDialog = arg1.selectButtonDismissesGamepadNavigationDialog;
			onDismissed = arg1.onDismissed;
		});
	})
end
return function(arg1) -- Line 62, Named "GamepadNavigationDialogShowCounter"
	--[[ Upvalues[4]:
		[1]: shouldShowBasedOnCountInAppStorage_upvr (readonly)
		[2]: React_upvr (readonly)
		[3]: GamepadNavigationDialogTextButton_upvr (readonly)
		[4]: AppStorageService_upvr (readonly)
	]]
	if not arg1.isGamepadNavigationDialogEnabled or not arg1.isGamepadNavigationDialogOpen then
		return nil
	end
	local shouldShowBasedOnCountInAppStorage_upvr_result1, shouldShowBasedOnCountInAppStorage_upvr_result2_upvr = shouldShowBasedOnCountInAppStorage_upvr(arg1.appStorageKey, arg1.maxShownCount)
	if not shouldShowBasedOnCountInAppStorage_upvr_result1 then
		return nil
	end
	return React_upvr.createElement(GamepadNavigationDialogTextButton_upvr, {
		selectButtonDismissesGamepadNavigationDialog = arg1.selectButtonDismissesGamepadNavigationDialog;
		onDismissed = function() -- Line 74, Named "onDismissed"
			--[[ Upvalues[1]:
				[1]: arg1 (readonly)
			]]
			arg1.SetGamepadNavigationDialogOpen(false)
		end;
		onCleanup = function() -- Line 77, Named "onCleanup"
			--[[ Upvalues[3]:
				[1]: AppStorageService_upvr (copied, readonly)
				[2]: arg1 (readonly)
				[3]: shouldShowBasedOnCountInAppStorage_upvr_result2_upvr (readonly)
			]]
			AppStorageService_upvr:SetItem(arg1.appStorageKey, shouldShowBasedOnCountInAppStorage_upvr_result2_upvr)
			AppStorageService_upvr:Flush()
		end;
	})
end