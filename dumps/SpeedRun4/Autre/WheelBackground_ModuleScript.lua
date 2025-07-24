-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:00:30
-- Luau version 6, Types version 3
-- Time taken: 0.002411 seconds

local CorePackages = game:GetService("CorePackages")
local Roact_upvr = require(CorePackages.Packages.Roact)
local UIBlox = require(CorePackages.Packages.UIBlox)
local Parent = script.Parent
local any_extend_result1 = Roact_upvr.PureComponent:extend("WheelBackground")
local Constants_upvr = require(Parent.Parent.Constants)
local Colors_upvr = UIBlox.App.Style.Colors
local SelectionGradient_upvr = require(Parent.SelectionGradient)
local SelectionEffect_upvr = require(Parent.SelectionEffect)
local WheelText_upvr = require(Parent.WheelText)
function any_extend_result1.renderContent(arg1, arg2) -- Line 20
	--[[ Upvalues[6]:
		[1]: Constants_upvr (readonly)
		[2]: Roact_upvr (readonly)
		[3]: Colors_upvr (readonly)
		[4]: SelectionGradient_upvr (readonly)
		[5]: SelectionEffect_upvr (readonly)
		[6]: WheelText_upvr (readonly)
	]]
	local var11 = Constants_upvr.Layouts[arg1.props.layout]
	local module = {}
	local var13
	if arg2 then
		var13 = Roact_upvr.createElement
		var13 = var13("Frame", {
			Size = UDim2.fromScale(1, 1);
			BackgroundColor3 = Colors_upvr.Flint:Lerp(Color3.new(0, 0, 0), arg2);
			BackgroundTransparency = Constants_upvr.WheelBackgroundTransparency * arg2;
		}, {Roact_upvr.createElement("UICorner", {
			CornerRadius = UDim.new(0.5, 0);
		})})
	else
		var13 = Roact_upvr.createElement
		var13 = var13("ImageLabel", {
			AnchorPoint = Vector2.new(0.5, 0.5);
			Size = UDim2.new(1, 0, 1, 0);
			Position = UDim2.new(0.5, 0, 0.5, 0);
			BackgroundTransparency = 1;
			Image = var11.CircleBackground;
			ZIndex = 1;
		})
	end
	module.BackgroundCircleOverlay = var13
	var13 = Roact_upvr.createElement
	var13 = var13("Frame", {
		BackgroundTransparency = 1;
		Size = UDim2.new(1, 0, 1, 0);
		ZIndex = 2;
	}, {
		SelectionGradient = Roact_upvr.createElement(SelectionGradient_upvr);
	})
	module.BackgroundGradient = var13
	var13 = Roact_upvr.createElement
	var13 = var13("ImageLabel", {
		AnchorPoint = Vector2.new(0.5, 0.5);
		Size = UDim2.new(1, 0, 1, 0);
		Position = UDim2.new(0.5, 0, 0.5, 0);
		BackgroundTransparency = 1;
		Image = var11.SegmentedCircle;
		ZIndex = 3;
	})
	module.BackgroundImage = var13
	var13 = Roact_upvr.createElement
	var13 = var13("Frame", {
		BackgroundTransparency = 1;
		Size = UDim2.new(1, 0, 1, 0);
		ZIndex = 4;
	}, {
		SelectionEffect = Roact_upvr.createElement(SelectionEffect_upvr);
	})
	module.Selection = var13
	var13 = Roact_upvr.createElement
	var13 = var13("Frame", {
		BackgroundTransparency = 1;
		Size = UDim2.new(1, 0, 1, 0);
		ZIndex = 5;
	}, {
		MiddleText = Roact_upvr.createElement(WheelText_upvr);
	})
	module.BackgroundText = var13
	return Roact_upvr.createElement("Folder", {}, module)
end
local withStyle_upvr = UIBlox.Style.withStyle
function any_extend_result1.render(arg1) -- Line 78
	--[[ Upvalues[1]:
		[1]: withStyle_upvr (readonly)
	]]
	return withStyle_upvr(function(arg1_2) -- Line 79
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		return arg1:renderContent(arg1_2.Settings.PreferredTransparency)
	end)
end
return require(CorePackages.Packages.RoactRodux).connect(function(arg1) -- Line 84, Named "mapStateToProps"
	return {
		layout = arg1.layout;
	}
end, nil)(any_extend_result1)