-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:06:23
-- Luau version 6, Types version 3
-- Time taken: 0.000900 seconds

local dependencies = require(script:FindFirstAncestor("SocialLibraries").dependencies)
local Roact_upvr = dependencies.Roact
local UIBlox = dependencies.UIBlox
local any_extend_result1 = Roact_upvr.PureComponent:extend("AlertViewButton")
any_extend_result1.defaultProps = {
	LayoutOrder = 0;
	secondary = false;
	onActivated = function() -- Line 13, Named "onActivated"
	end;
	Size = UDim2.new(1, 0, 1, 0);
	Text = "";
}
local ButtonType_upvr = UIBlox.App.Button.Enum.ButtonType
local Button_upvr = UIBlox.App.Button.Button
function any_extend_result1.render(arg1) -- Line 18
	--[[ Upvalues[3]:
		[1]: ButtonType_upvr (readonly)
		[2]: Roact_upvr (readonly)
		[3]: Button_upvr (readonly)
	]]
	local PrimarySystem = ButtonType_upvr.PrimarySystem
	if arg1.props.secondary then
		PrimarySystem = ButtonType_upvr.Secondary
	end
	return Roact_upvr.createElement(Button_upvr, {
		buttonType = PrimarySystem;
		size = arg1.props.Size;
		layoutOrder = arg1.props.LayoutOrder;
		text = arg1.props.Text;
		onActivated = arg1.props.onActivated;
	})
end
return any_extend_result1