-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:47:15
-- Luau version 6, Types version 3
-- Time taken: 0.000992 seconds

local CorePackages = game:GetService("CorePackages")
local UIBlox = require(CorePackages.Packages.UIBlox)
local React_upvr = require(CorePackages.Packages.React)
local InteractiveAlert_upvr = UIBlox.App.Dialog.Alert.InteractiveAlert
local RobloxTranslator_upvr = require(CorePackages.Workspace.Packages.RobloxTranslator)
local ButtonType_upvr = UIBlox.App.Button.Enum.ButtonType
return function(arg1) -- Line 19, Named "LeaveCreationAlert"
	--[[ Upvalues[4]:
		[1]: React_upvr (readonly)
		[2]: InteractiveAlert_upvr (readonly)
		[3]: RobloxTranslator_upvr (readonly)
		[4]: ButtonType_upvr (readonly)
	]]
	return React_upvr.createElement(InteractiveAlert_upvr, {
		title = RobloxTranslator_upvr:FormatByKey("CoreScripts.PublishAvatarPrompt.LeaveCreationTitle");
		bodyText = RobloxTranslator_upvr:FormatByKey("CoreScripts.PublishCommon.UnsavedWarning");
		buttonStackInfo = {
			buttons = {{
				props = {
					onActivated = arg1.closePrompt;
					text = RobloxTranslator_upvr:FormatByKey("CoreScripts.PublishCommon.Leave");
				};
				isDefaultChild = false;
			}, {
				buttonType = ButtonType_upvr.PrimarySystem;
				props = {
					onActivated = arg1.cancelClosePrompt;
					text = RobloxTranslator_upvr:FormatByKey("CoreScripts.PublishCommon.Stay");
				};
				isDefaultChild = true;
			}};
		};
		position = UDim2.fromScale(0.5, 0.5);
		screenSize = arg1.screenSize;
	})
end