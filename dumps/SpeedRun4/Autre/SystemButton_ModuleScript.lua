-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:51:17
-- Luau version 6, Types version 3
-- Time taken: 0.002002 seconds

local Parent = script:FindFirstAncestor("AppChat").Parent
local Roact_upvr = require(Parent.Roact)
local any_extend_result1 = Roact_upvr.PureComponent:extend("SystemButton")
any_extend_result1.defaultProps = {
	text = "Text";
	enabled = false;
	onActivated = nil;
}
local UIBlox_upvr = require(Parent.UIBlox)
local Text_upvr = require(Parent.AppCommonLib).Text
function any_extend_result1.render(arg1) -- Line 17
	--[[ Upvalues[3]:
		[1]: UIBlox_upvr (readonly)
		[2]: Text_upvr (readonly)
		[3]: Roact_upvr (readonly)
	]]
	return UIBlox_upvr.Style.withStyle(function(arg1_2) -- Line 18
		--[[ Upvalues[3]:
			[1]: arg1 (readonly)
			[2]: Text_upvr (copied, readonly)
			[3]: Roact_upvr (copied, readonly)
		]]
		local text = arg1.props.text
		local Font = arg1_2.Font.Header1.Font
		local any_GetTextWidth_result1 = Text_upvr.GetTextWidth(text, Font, 24)
		local var11
		if arg1.props.enabled then
			var11 = 0
		else
			var11 = 0.7
		end
		return Roact_upvr.createElement("TextButton", {
			BackgroundTransparency = 1;
			Text = "";
			Size = UDim2.new(0, any_GetTextWidth_result1 + 8, 1, 0);
			[Roact_upvr.Event.Activated] = arg1.props.onActivated;
		}, {
			layout = Roact_upvr.createElement("UIListLayout", {
				VerticalAlignment = Enum.VerticalAlignment.Center;
				HorizontalAlignment = Enum.HorizontalAlignment.Center;
			});
			label = Roact_upvr.createElement("TextLabel", {
				Size = UDim2.new(0, any_GetTextWidth_result1, 0, 24);
				BackgroundTransparency = 1;
				Text = text;
				Font = Font;
				TextSize = 24;
				TextColor3 = arg1_2.Theme.SystemPrimaryDefault.Color;
				TextTransparency = var11;
			});
		})
	end)
end
return any_extend_result1