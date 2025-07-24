-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:46:37
-- Luau version 6, Types version 3
-- Time taken: 0.000807 seconds

local Parent = script:FindFirstAncestor("AdPlayer").Parent
local useTokens_upvr = require(Parent.Foundation).Hooks.useTokens
local React_upvr = require(Parent.React)
return function(arg1) -- Line 16, Named "LinearProgressComponent"
	--[[ Upvalues[2]:
		[1]: useTokens_upvr (readonly)
		[2]: React_upvr (readonly)
	]]
	local var2_result1 = useTokens_upvr()
	return React_upvr.createElement("Frame", {
		Position = arg1.Position;
		AnchorPoint = arg1.AnchorPoint;
		Size = arg1.Size;
		ZIndex = arg1.ZIndex;
		BackgroundColor3 = var2_result1.Color.Extended.White.White_30.Color3;
		BackgroundTransparency = var2_result1.Color.Extended.White.White_30.Transparency;
		BorderSizePixel = 0;
	}, {
		progressFill = React_upvr.createElement("Frame", {
			BorderSizePixel = 0;
			Size = arg1.alpha:map(function(arg1_2) -- Line 31
				return UDim2.fromScale(arg1_2, 1)
			end);
			BackgroundColor3 = var2_result1.Color.Extended.White.White_100.Color3;
		});
	})
end