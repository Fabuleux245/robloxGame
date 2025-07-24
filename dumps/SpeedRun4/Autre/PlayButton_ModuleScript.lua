-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:48:54
-- Luau version 6, Types version 3
-- Time taken: 0.000899 seconds

local Parent = script:FindFirstAncestor("AppChat").Parent
local Roact_upvr = require(Parent.Roact)
local any_extend_result1 = Roact_upvr.PureComponent:extend("PlayButton")
any_extend_result1.defaultProps = {
	text = "Play!";
	LayoutOrder = 0;
	onActivated = function() -- Line 15, Named "onActivated"
		print("Play button activated!")
	end;
}
local UIBlox_upvr = require(Parent.UIBlox)
local Button_upvr = require(script.Parent.Button)
function any_extend_result1.render(arg1) -- Line 20
	--[[ Upvalues[3]:
		[1]: UIBlox_upvr (readonly)
		[2]: Roact_upvr (readonly)
		[3]: Button_upvr (readonly)
	]]
	return UIBlox_upvr.Style.withStyle(function(arg1_2) -- Line 21
		--[[ Upvalues[3]:
			[1]: Roact_upvr (copied, readonly)
			[2]: Button_upvr (copied, readonly)
			[3]: arg1 (readonly)
		]]
		return Roact_upvr.createElement(Button_upvr, {
			text = arg1.props.text;
			textColor = Color3.fromRGB(255, 255, 255);
			textSize = 23;
			font = arg1_2.Font.Body.Font;
			transparency = arg1_2.Theme.ContextualPrimaryDefault.Transparency;
			color = arg1_2.Theme.ContextualPrimaryDefault.Color;
			LayoutOrder = arg1.props.LayoutOrder or 0;
			onActivated = arg1.props.onActivated;
		})
	end)
end
return any_extend_result1