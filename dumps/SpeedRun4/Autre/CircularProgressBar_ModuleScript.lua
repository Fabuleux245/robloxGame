-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:47:23
-- Luau version 6, Types version 3
-- Time taken: 0.003211 seconds

local Foundation = script:FindFirstAncestor("Foundation")
local React_upvr = require(Foundation.Parent.React)
local useTokens_upvr = require(Foundation.Providers.Style.useTokens)
local View_upvr = require(Foundation.Components.View)
local withCommonProps_upvr = require(Foundation.Utility.withCommonProps)
local Image_upvr = require(Foundation.Components.Image)
return React_upvr.memo(React_upvr.forwardRef(function(arg1, arg2) -- Line 17, Named "CircularProgressBar"
	--[[ Upvalues[5]:
		[1]: useTokens_upvr (readonly)
		[2]: React_upvr (readonly)
		[3]: View_upvr (readonly)
		[4]: withCommonProps_upvr (readonly)
		[5]: Image_upvr (readonly)
	]]
	local useTokens_upvr_result1 = useTokens_upvr()
	local NumberSequence_new_result1 = NumberSequence.new({NumberSequenceKeypoint.new(0, useTokens_upvr_result1.Color.Content.Emphasis.Transparency), NumberSequenceKeypoint.new(0.4999, useTokens_upvr_result1.Color.Content.Emphasis.Transparency), NumberSequenceKeypoint.new(0.5, useTokens_upvr_result1.Color.Content.Muted.Transparency), NumberSequenceKeypoint.new(1, useTokens_upvr_result1.Color.Content.Muted.Transparency)})
	local ColorSequence_new_result1 = ColorSequence.new({ColorSequenceKeypoint.new(0, useTokens_upvr_result1.Color.Content.Emphasis.Color3), ColorSequenceKeypoint.new(0.4999, useTokens_upvr_result1.Color.Content.Emphasis.Color3), ColorSequenceKeypoint.new(0.5, useTokens_upvr_result1.Color.Content.Muted.Color3), ColorSequenceKeypoint.new(1, useTokens_upvr_result1.Color.Content.Muted.Color3)})
	return React_upvr.createElement(View_upvr, withCommonProps_upvr(arg1, {
		tag = "size-full-full";
	}), {
		LeftGradient = React_upvr.createElement(View_upvr, {
			Size = UDim2.fromScale(0.5, 1);
			tag = "position-top-left clip";
		}, {
			Image = React_upvr.createElement(Image_upvr, {
				Image = "rbxasset://textures/ui/Controls/RadialFill.png";
				Size = UDim2.fromScale(2, 1);
				tag = "content-emphasis position-top-left";
			}, {
				Gradient = React_upvr.createElement("UIGradient", {
					Transparency = NumberSequence_new_result1;
					Color = ColorSequence_new_result1;
					Rotation = arg1.progress:map(function(arg1_2) -- Line 52
						return math.clamp(arg1_2 * 360, 180, 360)
					end);
				});
			});
		});
		RightGradient = React_upvr.createElement(View_upvr, {
			Size = UDim2.fromScale(0.5, 1);
			tag = "clip position-top-center";
		}, {
			Image = React_upvr.createElement(Image_upvr, {
				Image = "rbxasset://textures/ui/Controls/RadialFill.png";
				Size = UDim2.fromScale(2, 1);
				Position = UDim2.fromScale(-1, 0);
				tag = "content-emphasis";
			}, {
				Gradient = React_upvr.createElement("UIGradient", {
					Transparency = NumberSequence_new_result1;
					Color = ColorSequence_new_result1;
					Rotation = arg1.progress:map(function(arg1_3) -- Line 71
						return math.clamp(arg1_3 * 360, 0, 180)
					end);
				});
			});
		});
	})
end))