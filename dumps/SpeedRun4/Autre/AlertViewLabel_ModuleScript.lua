-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:06:24
-- Luau version 6, Types version 3
-- Time taken: 0.001120 seconds

local dependencies = require(script:FindFirstAncestor("SocialLibraries").dependencies)
local Roact_upvr = dependencies.Roact
local any_extend_result1 = Roact_upvr.PureComponent:extend("AlertViewLabel")
any_extend_result1.defaultProps = {
	BackgroundTransparency = 1;
	Size = UDim2.new(1, 0, 0, 40);
	Text = "";
	TextXAlignment = Enum.TextXAlignment.Center;
}
local UIBlox_upvr = dependencies.UIBlox
function any_extend_result1.render(arg1) -- Line 14
	--[[ Upvalues[2]:
		[1]: UIBlox_upvr (readonly)
		[2]: Roact_upvr (readonly)
	]]
	return UIBlox_upvr.Style.withStyle(function(arg1_2) -- Line 15
		--[[ Upvalues[2]:
			[1]: arg1 (readonly)
			[2]: Roact_upvr (copied, readonly)
		]]
		local Font = arg1.props.Font
		if not Font then
			Font = arg1_2.Font.Body.Font
		end
		local TextColor3 = arg1.props.TextColor3
		if not TextColor3 then
			TextColor3 = arg1_2.Theme.TextDefault.Color
		end
		local TextSize = arg1.props.TextSize
		if not TextSize then
			TextSize = arg1_2.Font.Body.RelativeSize * arg1_2.Font.BaseSize
		end
		return Roact_upvr.createElement("TextLabel", {
			BackgroundTransparency = arg1.props.BackgroundTransparency;
			Font = Font;
			LayoutOrder = arg1.props.LayoutOrder;
			Size = arg1.props.Size;
			Text = arg1.props.Text;
			TextColor3 = TextColor3;
			TextSize = TextSize;
			TextWrapped = true;
			TextXAlignment = arg1.props.TextXAlignment;
		})
	end)
end
return any_extend_result1