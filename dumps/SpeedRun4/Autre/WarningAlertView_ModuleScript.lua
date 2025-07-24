-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:06:29
-- Luau version 6, Types version 3
-- Time taken: 0.002525 seconds

local SocialLibraries = script:FindFirstAncestor("SocialLibraries")
local dependencies = require(SocialLibraries.dependencies)
local Roact_upvr = dependencies.Roact
local any_extend_result1 = Roact_upvr.Component:extend("WarningAlertView")
any_extend_result1.defaultProps = {
	titleText = "TestTitle";
	bodyText = "TestBody";
	cancelText = "TestCancel";
	confirmText = "TestConfirm";
	failureTitleText = "failure title!";
	failureBodyText = "Thing failure!";
	failureButtonText = "failure Placeholder!";
	screenSize = Vector2.new(0, 0);
	width = UDim.new(0.5, 0);
	displayFailed = false;
	onActivated = function() -- Line 24, Named "onActivated"
	end;
	onModalClose = function() -- Line 25, Named "onModalClose"
	end;
	soakAreaColor3 = Color3.fromRGB(0, 0, 255);
	soakAreaTransparency = 0.9;
}
local function No_Op_upvr() -- Line 31, Named "No_Op"
end
local ButtonType_upvr = dependencies.UIBlox.App.Button.Enum.ButtonType
local AlertViewBuilder_upvr = require(SocialLibraries.Components.AlertViewBuilder.AlertViewBuilder)
function any_extend_result1.render(arg1) -- Line 33
	--[[ Upvalues[4]:
		[1]: ButtonType_upvr (readonly)
		[2]: No_Op_upvr (readonly)
		[3]: Roact_upvr (readonly)
		[4]: AlertViewBuilder_upvr (readonly)
	]]
	local props = arg1.props
	local var9
	local var10
	local var11
	if props.displayFailed then
		var10 = arg1.props.failureTitleText
		var11 = arg1.props.failureBodyText
		var9 = {{
			buttonType = ButtonType_upvr.Alert;
			props = {
				text = props.failureButtonText;
				onActivated = No_Op_upvr;
			};
		}}
	else
		var10 = arg1.props.titleText
		var11 = arg1.props.bodyText
		var9 = {{
			buttonType = ButtonType_upvr.Secondary;
			props = {
				text = props.cancelText;
				onActivated = No_Op_upvr;
			};
		}, {
			buttonType = ButtonType_upvr.PrimarySystem;
			props = {
				text = props.confirmText;
				onActivated = props.onActivated;
			};
		}}
	end
	return Roact_upvr.createElement(AlertViewBuilder_upvr, {
		title = var10;
		bodyText = var11;
		screenSize = arg1.props.screenSize;
		width = arg1.props.width;
		onModalClose = arg1.props.onModalClose;
		buttons = var9;
		soakAreaColor3 = props.soakAreaColor3;
		soakAreaTransparency = props.soakAreaTransparency;
	})
end
return any_extend_result1