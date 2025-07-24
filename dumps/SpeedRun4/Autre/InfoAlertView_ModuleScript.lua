-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:06:28
-- Luau version 6, Types version 3
-- Time taken: 0.001052 seconds

local SocialLibraries = script:FindFirstAncestor("SocialLibraries")
local dependencies = require(SocialLibraries.dependencies)
local Roact_upvr = dependencies.Roact
local any_extend_result1 = Roact_upvr.Component:extend("InfoAlertView")
any_extend_result1.defaultProps = {
	titleText = "TestTitle";
	bodyText = "TestBody";
	confirmText = "TestConfirm";
	width = UDim.new(0.5, 0);
	screenSize = Vector2.new(0, 0);
	onModalClose = function() -- Line 18, Named "onModalClose"
	end;
	soakAreaColor3 = Color3.fromRGB(0, 0, 255);
	soakAreaTransparency = 0.9;
}
local AlertViewBuilder_upvr = require(SocialLibraries.Components.AlertViewBuilder.AlertViewBuilder)
local ButtonType_upvr = dependencies.UIBlox.App.Button.Enum.ButtonType
function any_extend_result1.render(arg1) -- Line 24
	--[[ Upvalues[3]:
		[1]: Roact_upvr (readonly)
		[2]: AlertViewBuilder_upvr (readonly)
		[3]: ButtonType_upvr (readonly)
	]]
	local props = arg1.props
	return Roact_upvr.createElement(AlertViewBuilder_upvr, {
		title = props.titleText;
		bodyText = props.bodyText;
		width = props.width;
		screenSize = props.screenSize;
		onModalClose = props.onModalClose;
		buttons = {{
			buttonType = ButtonType_upvr.PrimarySystem;
			props = {
				text = props.confirmText;
				onActivated = props.onModalClose;
			};
		}};
		soakAreaColor3 = props.soakAreaColor3;
		soakAreaTransparency = props.soakAreaTransparency;
	})
end
return any_extend_result1