-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:50:14
-- Luau version 6, Types version 3
-- Time taken: 0.001320 seconds

local AppChat = script:FindFirstAncestor("AppChat")
local Parent = AppChat.Parent
local module_upvr = {
	titleText = "Placeholder";
	cancelText = "CancelText";
	confirmText = "ConfirmText";
	warningText = nil;
	inputText = nil;
	placeholderText = nil;
	soakAreaColor3 = Color3.fromRGB(25, 25, 25);
	soakAreaTransparency = 0.8;
	onActivated = nil;
	onModalClose = nil;
}
local Cryo_upvr = require(Parent.Cryo)
local usePositionOffsetForVirtualKeyboard_upvr = require(AppChat.Hooks.usePositionOffsetForVirtualKeyboard)
local React_upvr = require(Parent.React)
local TextInput_upvr = require(AppChat.SocialLibraries).Components.AlertViews.TextInput
function EditChatGroupNameDialog(arg1) -- Line 46
	--[[ Upvalues[5]:
		[1]: Cryo_upvr (readonly)
		[2]: module_upvr (readonly)
		[3]: usePositionOffsetForVirtualKeyboard_upvr (readonly)
		[4]: React_upvr (readonly)
		[5]: TextInput_upvr (readonly)
	]]
	local module = {}
	local var10
	if usePositionOffsetForVirtualKeyboard_upvr({
		isNearBottomOfScreen = false;
	}) ~= nil then
		var10 = false
	else
		var10 = true
	end
	module.shouldAdjustForKeyboard = var10
	return React_upvr.createElement(TextInput_upvr, Cryo_upvr.Dictionary.join(Cryo_upvr.Dictionary.join(module_upvr, arg1), module))
end
return EditChatGroupNameDialog