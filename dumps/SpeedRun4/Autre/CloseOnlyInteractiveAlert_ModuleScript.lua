-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:47:01
-- Luau version 6, Types version 3
-- Time taken: 0.001126 seconds

local Parent = script:FindFirstAncestor("AppBlox").Parent
local UIBlox = require(Parent.UIBlox)
local useScreenSize_upvr = require(Parent.RobloxAppHooks).useScreenSize
local useLocalization_upvr = require(Parent.Localization).Hooks.useLocalization
local React_upvr = require(Parent.React)
local InteractiveAlert_upvr = UIBlox.App.Dialog.Alert.InteractiveAlert
local ButtonType_upvr = UIBlox.App.Button.Enum.ButtonType
return function(arg1) -- Line 21
	--[[ Upvalues[5]:
		[1]: useScreenSize_upvr (readonly)
		[2]: useLocalization_upvr (readonly)
		[3]: React_upvr (readonly)
		[4]: InteractiveAlert_upvr (readonly)
		[5]: ButtonType_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local module = {
		screenSize = useScreenSize_upvr();
		title = arg1.title;
		bodyText = arg1.body;
	}
	local tbl = {}
	local tbl_4 = {}
	local tbl_2 = {
		buttonType = ButtonType_upvr.Secondary;
	}
	local tbl_3 = {
		onActivated = arg1.closeAlert;
	}
	local buttonText = arg1.buttonText
	if not buttonText then
		buttonText = useLocalization_upvr({
			closeButtonText = "Feature.ProfileBadges.action.close";
		}).closeButtonText
	end
	tbl_3.text = buttonText
	tbl_2.props = tbl_3
	tbl_4[1] = tbl_2
	tbl.buttons = tbl_4
	module.buttonStackInfo = tbl
	if arg1.showCloseButton then
	else
	end
	module.onCloseClicked = nil
	return React_upvr.createElement(InteractiveAlert_upvr, module)
end