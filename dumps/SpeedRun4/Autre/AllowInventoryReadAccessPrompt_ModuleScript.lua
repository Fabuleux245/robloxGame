-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:59:55
-- Luau version 6, Types version 3
-- Time taken: 0.001895 seconds

local CorePackages = game:GetService("CorePackages")
local Roact_upvr = require(CorePackages.Packages.Roact)
local t = require(CorePackages.Packages.t)
local UIBlox = require(CorePackages.Packages.UIBlox)
local any_extend_result1 = Roact_upvr.PureComponent:extend("AllowInventoryReadAccessPrompt")
any_extend_result1.validateProps = t.strictInterface({
	gameName = t.string;
	screenSize = t.Vector2;
	setAvatarReadAccessAllowed = t.callback;
	setAvatarReadAccessDenied = t.callback;
})
local InteractiveAlert_upvr = UIBlox.App.Dialog.Alert.InteractiveAlert
local RobloxTranslator_upvr = require(CorePackages.Workspace.Packages.RobloxTranslator)
local ButtonType_upvr = UIBlox.App.Button.Enum.ButtonType
function any_extend_result1.render(arg1) -- Line 31
	--[[ Upvalues[4]:
		[1]: Roact_upvr (readonly)
		[2]: InteractiveAlert_upvr (readonly)
		[3]: RobloxTranslator_upvr (readonly)
		[4]: ButtonType_upvr (readonly)
	]]
	return Roact_upvr.createElement(InteractiveAlert_upvr, {
		title = RobloxTranslator_upvr:FormatByKey("CoreScripts.AvatarEditorPrompts.InventoryReadAccessPromptTitle");
		bodyText = RobloxTranslator_upvr:FormatByKey("CoreScripts.AvatarEditorPrompts.InventoryReadAccessPromptText", {
			RBX_NAME = arg1.props.gameName;
		});
		buttonStackInfo = {
			buttons = {{
				props = {
					onActivated = arg1.props.setAvatarReadAccessDenied;
					text = RobloxTranslator_upvr:FormatByKey("CoreScripts.AvatarEditorPrompts.InventoryReadAccessPromptNo");
				};
				isDefaultChild = true;
			}, {
				buttonType = ButtonType_upvr.PrimarySystem;
				props = {
					onActivated = arg1.props.setAvatarReadAccessAllowed;
					text = RobloxTranslator_upvr:FormatByKey("CoreScripts.AvatarEditorPrompts.InventoryReadAccessPromptYes");
				};
				isDefaultChild = false;
			}};
		};
		position = UDim2.fromScale(0.5, 0.5);
		screenSize = arg1.props.screenSize;
	})
end
local SetAllowInventoryReadAccess_upvr = require(script.Parent.Parent.Parent.Thunks.SetAllowInventoryReadAccess)
return require(CorePackages.Packages.RoactRodux).connect(function(arg1) -- Line 65, Named "mapStateToProps"
	return {
		gameName = arg1.gameName;
		screenSize = arg1.screenSize;
	}
end, function(arg1) -- Line 72, Named "mapDispatchToProps"
	--[[ Upvalues[1]:
		[1]: SetAllowInventoryReadAccess_upvr (readonly)
	]]
	return {
		setAvatarReadAccessDenied = function() -- Line 74, Named "setAvatarReadAccessDenied"
			--[[ Upvalues[2]:
				[1]: arg1 (readonly)
				[2]: SetAllowInventoryReadAccess_upvr (copied, readonly)
			]]
			return arg1(SetAllowInventoryReadAccess_upvr(false))
		end;
		setAvatarReadAccessAllowed = function() -- Line 78, Named "setAvatarReadAccessAllowed"
			--[[ Upvalues[2]:
				[1]: arg1 (readonly)
				[2]: SetAllowInventoryReadAccess_upvr (copied, readonly)
			]]
			return arg1(SetAllowInventoryReadAccess_upvr(true))
		end;
	}
end)(any_extend_result1)