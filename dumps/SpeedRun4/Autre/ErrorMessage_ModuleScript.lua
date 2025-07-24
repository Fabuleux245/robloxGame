-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:00:27
-- Luau version 6, Types version 3
-- Time taken: 0.002648 seconds

local CorePackages = game:GetService("CorePackages")
local Roact_upvr = require(CorePackages.Packages.Roact)
local Parent = script.Parent.Parent
local any_extend_result1 = Roact_upvr.PureComponent:extend("ErrorMessage")
local Constants_upvr = require(Parent.Constants)
function any_extend_result1.render(arg1) -- Line 17
	--[[ Upvalues[2]:
		[1]: Constants_upvr (readonly)
		[2]: Roact_upvr (readonly)
	]]
	local var6 = Constants_upvr.Layouts[arg1.props.layout]
	return Roact_upvr.createElement("Frame", {
		Size = var6.ErrorFrameSize;
		Position = var6.ErrorFramePosition;
		BackgroundColor3 = Constants_upvr.Colors.Black;
		BackgroundTransparency = Constants_upvr.ErrorFrameBackgroundTransparency;
		BorderSizePixel = Constants_upvr.ErrorFrameBorderSize;
		Selectable = false;
		Visible = arg1.props.displayOptions.errorVisible;
		[Roact_upvr.Event.TouchTap] = function() -- Line 29
			--[[ Upvalues[1]:
				[1]: arg1 (readonly)
			]]
			arg1.props.close()
		end;
		[Roact_upvr.Event.InputBegan] = function(arg1_2, arg2) -- Line 33
			--[[ Upvalues[1]:
				[1]: arg1 (readonly)
			]]
			if arg2.UserInputType == Enum.UserInputType.MouseButton1 then
				arg1.props.close()
			end
		end;
	}, {
		AsspectRatioConstraint = Roact_upvr.createElement("UIAspectRatioConstraint", {
			AspectRatio = var6.ErrorFrameAspectRatio;
		});
		SizeConstraint = Roact_upvr.createElement("UISizeConstraint", {
			MinSize = var6.ErrorFrameMinSize;
			MaxSize = var6.ErrorFrameMaxSize;
		});
		ErrorIcon = Roact_upvr.createElement("ImageLabel", {
			AnchorPoint = Vector2.new(0, 0.5);
			Position = UDim2.new(0, var6.ErrorIconOffset, 0.5, 0);
			Size = UDim2.new(0.2, -var6.ErrorIconOffset * 2, 1, -var6.ErrorIconOffset * 2);
			Image = var6.ErrorIcon;
			BackgroundTransparency = 1;
		}, {
			AsspectRatioConstraint = Roact_upvr.createElement("UIAspectRatioConstraint", {
				AspectRatio = 1;
			});
		});
		ErrorText = Roact_upvr.createElement("TextLabel", {
			AnchorPoint = Vector2.new(0, 0.5);
			Position = UDim2.new(0.2, -var6.ErrorIconOffset, 0.5, 0);
			Size = UDim2.new(0.8, 0, 1, 0);
			Text = arg1.props.displayOptions.errorText;
			TextScaled = true;
			TextSize = var6.ErrorTextSize;
			TextColor3 = Constants_upvr.Colors.White;
			TextXAlignment = Enum.TextXAlignment.Left;
			Font = var6.ErrorTextFont;
			BackgroundTransparency = 1;
		}, {
			SizeConstraint = Roact_upvr.createElement("UISizeConstraint", {
				MaxSize = Vector2.new(var6.ErrorFrameMaxSize.X, var6.ErrorTextSize + Constants_upvr.TextPadding);
			});
			TextSizeConstraint = Roact_upvr.createElement("UITextSizeConstraint", {
				MaxTextSize = var6.ErrorTextSize;
			});
		});
	})
end
local HideError_upvr = require(Parent.Actions.HideError)
return require(CorePackages.Packages.RoactRodux).connect(function(arg1) -- Line 86, Named "mapStateToProps"
	return {
		displayOptions = arg1.displayOptions;
		layout = arg1.layout;
	}
end, function(arg1) -- Line 93, Named "mapDispatchToProps"
	--[[ Upvalues[1]:
		[1]: HideError_upvr (readonly)
	]]
	return {
		close = function() -- Line 95, Named "close"
			--[[ Upvalues[2]:
				[1]: arg1 (readonly)
				[2]: HideError_upvr (copied, readonly)
			]]
			return arg1(HideError_upvr())
		end;
	}
end)(any_extend_result1)