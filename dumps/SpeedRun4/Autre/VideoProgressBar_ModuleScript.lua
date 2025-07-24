-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:45:58
-- Luau version 6, Types version 3
-- Time taken: 0.000975 seconds

local Parent = script:FindFirstAncestor("VideoUtils").Parent
local useTokens_upvr = require(Parent.Foundation).Hooks.useTokens
local React_upvr = require(Parent.React)
return function(arg1) -- Line 17, Named "VideoProgressBar"
	--[[ Upvalues[2]:
		[1]: useTokens_upvr (readonly)
		[2]: React_upvr (readonly)
	]]
	local useTokens_upvr_result1 = useTokens_upvr()
	local Muted = useTokens_upvr_result1.DarkMode.Content.Muted
	local Emphasis = useTokens_upvr_result1.Color.Content.Emphasis
	return React_upvr.createElement("Frame", {
		AnchorPoint = arg1.AnchorPoint;
		Position = arg1.Position;
		Size = arg1.Size;
		BackgroundColor3 = Muted.Color3;
		BackgroundTransparency = Muted.Transparency;
		BorderSizePixel = 0;
		LayoutOrder = arg1.LayoutOrder;
	}, {
		UICorner = React_upvr.createElement("UICorner", {
			CornerRadius = UDim.new(1, 0);
		});
		ProgressFill = React_upvr.createElement("Frame", {
			Size = arg1.progressBinding:map(function(arg1_2) -- Line 37
				return UDim2.fromScale(arg1_2, 1)
			end);
			BackgroundColor3 = Emphasis.Color3;
			BackgroundTransparency = Emphasis.Transparency;
			BorderSizePixel = 0;
		}, {
			UICorner = React_upvr.createElement("UICorner", {
				CornerRadius = UDim.new(1, 0);
			});
		});
	})
end