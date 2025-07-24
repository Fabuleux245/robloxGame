-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:50:18
-- Luau version 6, Types version 3
-- Time taken: 0.000632 seconds

local AppChat = script:FindFirstAncestor("AppChat")
local Parent = AppChat.Parent
local module_upvr = {
	titleText = "Placeholder title";
	bodyText = "Placeholder body";
	cancelText = "TempCancel";
	confirmText = "TempConfirm";
	failureTitleText = "FailureTitle";
	failureBodyText = "FailureBody";
	failureButtonText = "FailureButton";
	soakAreaColor3 = Color3.fromRGB(25, 25, 25);
	soakAreaTransparency = 0.8;
	width = UDim.new(0.8, 0);
	displayFailed = false;
	onActivated = nil;
	onModalClose = nil;
}
local Cryo_upvr = require(Parent.Cryo)
local React_upvr = require(Parent.React)
local Warning_upvr = require(AppChat.SocialLibraries).Components.AlertViews.Warning
function LeaveGroupDialog(arg1) -- Line 54
	--[[ Upvalues[4]:
		[1]: Cryo_upvr (readonly)
		[2]: module_upvr (readonly)
		[3]: React_upvr (readonly)
		[4]: Warning_upvr (readonly)
	]]
	return React_upvr.createElement(Warning_upvr, Cryo_upvr.Dictionary.join(module_upvr, arg1))
end
return LeaveGroupDialog