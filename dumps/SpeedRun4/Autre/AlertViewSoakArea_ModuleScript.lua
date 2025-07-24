-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:06:25
-- Luau version 6, Types version 3
-- Time taken: 0.000903 seconds

local Roact_upvr = require(script:FindFirstAncestor("SocialLibraries").dependencies).Roact
local any_extend_result1 = Roact_upvr.PureComponent:extend("AlertViewSoakArea")
any_extend_result1.defaultProps = {
	Visible = true;
	BackgroundTransparency = 0.75;
	BackgroundColor3 = Color3.fromRGB(255, 0, 255);
}
function any_extend_result1.render(arg1) -- Line 12
	--[[ Upvalues[1]:
		[1]: Roact_upvr (readonly)
	]]
	return Roact_upvr.createElement("ImageButton", {
		Size = UDim2.new(1, 0, 1, 0);
		BackgroundTransparency = arg1.props.BackgroundTransparency;
		BackgroundColor3 = arg1.props.BackgroundColor3;
		Active = true;
		AutoButtonColor = false;
		Visible = arg1.props.Visible;
	}, arg1.props[Roact_upvr.Children])
end
return any_extend_result1