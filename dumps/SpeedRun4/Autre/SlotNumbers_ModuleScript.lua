-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:00:29
-- Luau version 6, Types version 3
-- Time taken: 0.002397 seconds

local CorePackages = game:GetService("CorePackages")
local Roact_upvr = require(CorePackages.Packages.Roact)
local any_extend_result1 = Roact_upvr.PureComponent:extend("SlotNumbers")
local Constants_upvr = require(script.Parent.Parent.Constants)
function any_extend_result1.render(arg1) -- Line 13
	--[[ Upvalues[2]:
		[1]: Constants_upvr (readonly)
		[2]: Roact_upvr (readonly)
	]]
	local var7 = Constants_upvr.Layouts[arg1.props.layout]
	local module = {}
	for i = 1, Constants_upvr.EmotesPerPage do
		local var9 = 360 / Constants_upvr.EmotesPerPage * (i - 1) + Constants_upvr.SegmentsStartRotation
		local var10 = Constants_upvr.InnerCircleSizeRatio / 2
		local SlotNumberSize = Constants_upvr.SlotNumberSize
		local var12 = SlotNumberSize / 2
		local cosine = math.cos(math.rad(var9))
		local sine = math.sin(math.rad(var9))
		module[i] = Roact_upvr.createElement("TextLabel", {
			AnchorPoint = Vector2.new(0.5, 0.5);
			Position = UDim2.new(0.5 + var10 * cosine + var12 * cosine, 0, 0.5 + var10 * sine + var12 * sine, 0);
			Size = UDim2.new(SlotNumberSize, 0, SlotNumberSize, 0);
			BackgroundTransparency = 1;
			TextScaled = true;
			TextSize = var7.SlotNumberTextSize;
			TextColor3 = Constants_upvr.Colors.White;
			Text = i;
			Font = var7.SlotNumberFont;
			ZIndex = 2;
		}, {
			TextSizeConstraint = Roact_upvr.createElement("UITextSizeConstraint", {
				MaxTextSize = var7.SlotNumberTextSize;
			});
		})
	end
	return Roact_upvr.createElement("Frame", {
		Size = UDim2.new(1, 0, 1, 0);
		BackgroundTransparency = 1;
	}, module)
end
return require(CorePackages.Packages.RoactRodux).connect(function(arg1) -- Line 61, Named "mapStateToProps"
	return {
		layout = arg1.layout;
	}
end, nil)(any_extend_result1)