-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:58:30
-- Luau version 6, Types version 3
-- Time taken: 0.001862 seconds

local Parent = script.Parent.Parent.Parent.Parent
local React_upvr = require(Parent.React)
local Foundation = require(Parent.Foundation)
local useTokens_upvr = Foundation.Hooks.useTokens
local View_upvr = Foundation.View
local Image_upvr = Foundation.Image
return React_upvr.memo(React_upvr.forwardRef(function(arg1) -- Line 18, Named "RadialProgressBar"
	--[[ Upvalues[4]:
		[1]: useTokens_upvr (readonly)
		[2]: React_upvr (readonly)
		[3]: View_upvr (readonly)
		[4]: Image_upvr (readonly)
	]]
	local useTokens_upvr_result1 = useTokens_upvr()
	local Background = useTokens_upvr_result1.Color.ActionSubtle.Background
	local Foreground = useTokens_upvr_result1.Color.ActionSubtle.Foreground
	local NumberSequence_new_result1 = NumberSequence.new({NumberSequenceKeypoint.new(0, Foreground.Transparency), NumberSequenceKeypoint.new(0.4999, Foreground.Transparency), NumberSequenceKeypoint.new(0.5, Background.Transparency), NumberSequenceKeypoint.new(1, Background.Transparency)})
	local ColorSequence_new_result1 = ColorSequence.new({ColorSequenceKeypoint.new(0, Foreground.Color3), ColorSequenceKeypoint.new(0.4999, Foreground.Color3), ColorSequenceKeypoint.new(0.5, Background.Color3), ColorSequenceKeypoint.new(1, Background.Color3)})
	return React_upvr.createElement(View_upvr, {
		BackgroundTransparency = 1;
		tag = "anchor-center-center bg-action-subtle position-center-center size-full";
	}, {
		LeftGradient = React_upvr.createElement(View_upvr, {
			Size = UDim2.fromScale(0.5, 1);
			tag = "bg-action-subtle clip";
		}, {
			Image = React_upvr.createElement(Image_upvr, {
				Image = "rbxasset://textures/ui/Controls/RadialFill.png";
				Size = UDim2.fromScale(2, 1);
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
			tag = "bg-action-subtle clip position-top-center";
		}, {
			Image = React_upvr.createElement(Image_upvr, {
				Image = "rbxasset://textures/ui/Controls/RadialFill.png";
				Size = UDim2.fromScale(2, 1);
				Position = UDim2.fromScale(-1, 0);
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