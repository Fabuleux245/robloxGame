-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:06:43
-- Luau version 6, Types version 3
-- Time taken: 0.001543 seconds

local dependencies = require(script:FindFirstAncestor("SocialLibraries").dependencies)
local UIBlox_upvr = dependencies.UIBlox
local Roact_upvr = dependencies.Roact
return function() -- Line 6
	--[[ Upvalues[2]:
		[1]: UIBlox_upvr (readonly)
		[2]: Roact_upvr (readonly)
	]]
	return UIBlox_upvr.Style.withStyle(function(arg1) -- Line 7
		--[[ Upvalues[2]:
			[1]: Roact_upvr (copied, readonly)
			[2]: UIBlox_upvr (copied, readonly)
		]]
		return Roact_upvr.createElement("ImageButton", {
			AutoButtonColor = false;
			BackgroundColor3 = arg1.Theme.TextEmphasis.Color;
			Size = UDim2.fromScale(1, 1);
			BackgroundTransparency = 1;
		}, {
			visibleFrame = Roact_upvr.createElement("Frame", {
				BackgroundTransparency = arg1.Theme.BackgroundUIContrast.Transparency;
				BackgroundColor3 = arg1.Theme.BackgroundUIContrast.Color;
				Size = UDim2.fromOffset(120, 120);
				AnchorPoint = Vector2.new(0.5, 0.5);
				Position = UDim2.fromScale(0.5, 0.5);
				ZIndex = 10;
			}, {
				corner = Roact_upvr.createElement("UICorner");
				spinner = Roact_upvr.createElement(UIBlox_upvr.App.Loading.LoadingSpinner, {
					anchorPoint = Vector2.new(0.5, 0.5);
					position = UDim2.fromScale(0.5, 0.5);
					size = UDim2.fromOffset(48, 48);
				});
			});
		})
	end)
end