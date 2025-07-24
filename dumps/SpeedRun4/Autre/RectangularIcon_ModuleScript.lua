-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:06:39
-- Luau version 6, Types version 3
-- Time taken: 0.000940 seconds

local Roact_upvr = require(script:FindFirstAncestor("SocialLibraries").dependencies).Roact
local any_extend_result1 = Roact_upvr.PureComponent:extend("MaskedIcon")
any_extend_result1.defaultProps = {
	icon = "rbxasset://textures/ui/LuaChat/icons/share-game-thumbnail.png";
}
function any_extend_result1.render(arg1) -- Line 13
	--[[ Upvalues[1]:
		[1]: Roact_upvr (readonly)
	]]
	return Roact_upvr.createElement("Frame", {
		BackgroundTransparency = 1;
		Size = UDim2.new(1, 0, 1, 0);
	}, {
		layout = Roact_upvr.createElement("UIListLayout", {
			VerticalAlignment = Enum.VerticalAlignment.Center;
			HorizontalAlignment = Enum.HorizontalAlignment.Center;
		});
		button = Roact_upvr.createElement("ImageLabel", {
			BackgroundTransparency = 1;
			Image = arg1.props.icon;
			Size = UDim2.new(1, 0, 1, 0);
		}, {
			layout = Roact_upvr.createElement("UIListLayout", {
				VerticalAlignment = Enum.VerticalAlignment.Center;
				HorizontalAlignment = Enum.HorizontalAlignment.Center;
			});
			mask = Roact_upvr.createElement("ImageLabel", {
				BackgroundTransparency = 1;
				Image = "rbxasset://textures/ui/LuaChat/graphic/gr-mask-game-icon-48x48.png";
				Size = UDim2.new(1, 0, 1, 0);
			});
		});
	})
end
return any_extend_result1