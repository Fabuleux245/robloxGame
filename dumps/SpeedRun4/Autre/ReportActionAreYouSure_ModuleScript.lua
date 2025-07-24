-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:44:25
-- Luau version 6, Types version 3
-- Time taken: 0.005276 seconds

local CorePackages = game:GetService("CorePackages")
local Roact_upvr = require(CorePackages.Packages.Roact)
local t = require(CorePackages.Packages.t)
local UIBlox_upvr = require(CorePackages.Packages.UIBlox)
local any_extend_result1 = Roact_upvr.PureComponent:extend("ReportActionSelection")
local function var6() -- Line 22
end
any_extend_result1.defaultProps = {
	isMuted = true;
	isBlocked = true;
	onCancelActivated = var6;
	onConfirmActivated = var6;
	ZIndex = 1;
	uiScale = 1.3;
}
any_extend_result1.validateProps = t.strictInterface({
	mutedTitleText = t.string;
	blockedTitleText = t.string;
	mutedAndBlockedTitleText = t.string;
	mutedSubtitleText = t.string;
	blockedSubtitleText = t.string;
	mutedAndBlockedSubtitleText = t.string;
	cancelText = t.string;
	confirmText = t.string;
	isMuted = t.boolean;
	isBlocked = t.boolean;
	onCancelActivated = t.callback;
	onConfirmActivated = t.callback;
	ZIndex = t.optional(t.number);
	uiScale = t.optional(t.number);
})
function any_extend_result1.init(arg1) -- Line 50
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	function arg1.onCancelActivated() -- Line 51
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		arg1.props.onCancelActivated()
	end
	function arg1.onConfirmActivated() -- Line 55
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		arg1.props.onConfirmActivated()
	end
	local var11
	if arg1.props.isMuted and arg1.props.isBlocked then
		var11 = arg1.props.mutedAndBlockedTitleText
	elseif arg1.props.isMuted then
		var11 = arg1.props.mutedTitleText
	elseif arg1.props.isBlocked then
		var11 = arg1.props.blockedTitleText
	end
	arg1:setState({
		titleText = var11;
		subtitleText = arg1.props.blockedSubtitleText;
	})
end
local withStyle_upvr = UIBlox_upvr.Style.withStyle
local TextButton_upvr = UIBlox_upvr.App.Button.TextButton
function any_extend_result1.render(arg1) -- Line 79
	--[[ Upvalues[4]:
		[1]: withStyle_upvr (readonly)
		[2]: Roact_upvr (readonly)
		[3]: TextButton_upvr (readonly)
		[4]: UIBlox_upvr (readonly)
	]]
	return withStyle_upvr(function(arg1_2) -- Line 80
		--[[ Upvalues[4]:
			[1]: Roact_upvr (copied, readonly)
			[2]: arg1 (readonly)
			[3]: TextButton_upvr (copied, readonly)
			[4]: UIBlox_upvr (copied, readonly)
		]]
		local BaseSize = arg1_2.Font.BaseSize
		return Roact_upvr.createElement("Frame", {
			Size = UDim2.fromScale(1, 1);
			AnchorPoint = Vector2.new(0.5, 0.5);
			Position = UDim2.fromScale(0.5, 0.5);
			BackgroundTransparency = 1;
			ZIndex = arg1.props.ZIndex;
		}, {
			uiScale = Roact_upvr.createElement("UIScale", {
				Scale = arg1.props.uiScale;
			});
			layout = Roact_upvr.createElement("UIListLayout", {
				VerticalAlignment = Enum.VerticalAlignment.Top;
				HorizontalAlignment = Enum.HorizontalAlignment.Center;
				Padding = UDim.new(0, 22);
				FillDirection = Enum.FillDirection.Vertical;
				SortOrder = Enum.SortOrder.LayoutOrder;
			});
			title = Roact_upvr.createElement("TextLabel", {
				Text = arg1.state.titleText;
				TextColor3 = arg1_2.Theme.TextEmphasis.Color;
				TextTransparency = arg1_2.Theme.TextEmphasis.Transparency;
				TextSize = arg1_2.Font.Header1.RelativeSize * BaseSize;
				Font = arg1_2.Font.Header1.Font;
				BackgroundTransparency = 1;
				AutomaticSize = Enum.AutomaticSize.XY;
				LayoutOrder = 1;
			});
			subtitle = Roact_upvr.createElement("TextLabel", {
				Size = UDim2.fromOffset(612, 0);
				Text = arg1.state.subtitleText;
				TextColor3 = arg1_2.Theme.TextEmphasis.Color;
				TextTransparency = arg1_2.Theme.TextEmphasis.Transparency;
				TextSize = arg1_2.Font.CaptionHeader.RelativeSize * BaseSize;
				Font = arg1_2.Font.CaptionHeader.Font;
				TextWrapped = true;
				BackgroundTransparency = 1;
				AutomaticSize = Enum.AutomaticSize.Y;
				LayoutOrder = 2;
			});
			spacer = Roact_upvr.createElement("Frame", {
				BackgroundTransparency = 1;
				Size = UDim2.fromOffset(0, 62);
				LayoutOrder = 3;
			});
			actions = Roact_upvr.createElement("Frame", {
				Size = UDim2.fromOffset(584, 0);
				BackgroundTransparency = 1;
				AutomaticSize = Enum.AutomaticSize.Y;
				LayoutOrder = 4;
			}, {
				layout = Roact_upvr.createElement("UIListLayout", {
					VerticalAlignment = Enum.VerticalAlignment.Center;
					HorizontalAlignment = Enum.HorizontalAlignment.Center;
					Padding = UDim.new(0, 70);
					FillDirection = Enum.FillDirection.Horizontal;
					SortOrder = Enum.SortOrder.LayoutOrder;
				});
				cancelContainer = Roact_upvr.createElement("Frame", {
					BackgroundColor3 = arg1_2.Theme.SystemPrimaryContent.Color;
					BackgroundTransparency = arg1_2.Theme.SystemPrimaryContent.Transparency;
					BorderSizePixel = 0;
					Size = UDim2.fromOffset(234, 44);
					LayoutOrder = 1;
				}, {
					uiCorner = Roact_upvr.createElement("UICorner", {
						CornerRadius = UDim.new(0, 4);
					});
					cancelButton = Roact_upvr.createElement(TextButton_upvr, {
						size = UDim2.fromScale(1, 1);
						text = arg1.props.cancelText;
						onActivated = arg1.onCancelActivated;
					});
				});
				confirmContainer = Roact_upvr.createElement("Frame", {
					BackgroundColor3 = UIBlox_upvr.App.Style.Colors.Blue;
					BackgroundTransparency = 0;
					BorderSizePixel = 0;
					Size = UDim2.fromOffset(234, 44);
					LayoutOrder = 2;
				}, {
					uiCorner = Roact_upvr.createElement("UICorner", {
						CornerRadius = UDim.new(0, 4);
					});
					confirmButton = Roact_upvr.createElement(TextButton_upvr, {
						size = UDim2.fromScale(1, 1);
						text = arg1.props.confirmText;
						onActivated = arg1.onConfirmActivated;
					});
				});
			});
		})
	end)
end
return any_extend_result1