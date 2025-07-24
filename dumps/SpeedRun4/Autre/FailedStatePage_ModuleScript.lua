-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:11:09
-- Luau version 6, Types version 3
-- Time taken: 0.001220 seconds

local Parent_2 = script.Parent.Parent.Parent
local Parent = Parent_2.Parent
local Roact_upvr = require(Parent.Roact)
local t = require(Parent.t)
local RenderOnFailedStyle_upvr = require(Parent_2.App.Loading.Enum.RenderOnFailedStyle)
local any_extend_result1 = Roact_upvr.PureComponent:extend("FailedStatePage")
any_extend_result1.validateProps = t.strictInterface({
	onRetry = t.optional(t.callback);
	renderOnFailed = t.optional(RenderOnFailedStyle_upvr.isEnumValue);
	text = t.optional(t.string);
})
any_extend_result1.defaultProps = {
	renderOnFailed = RenderOnFailedStyle_upvr.RetryButton;
}
local EmptyState_upvr = require(Parent_2.App.Indicator.EmptyState)
local Images_upvr = require(Parent_2.App.ImageSet.Images)
local Button_upvr = require(Parent_2.App.Button.Button)
local ButtonType_upvr = require(Parent_2.App.Button.Enum.ButtonType)
function any_extend_result1.render(arg1) -- Line 36
	--[[ Upvalues[6]:
		[1]: RenderOnFailedStyle_upvr (readonly)
		[2]: Roact_upvr (readonly)
		[3]: EmptyState_upvr (readonly)
		[4]: Images_upvr (readonly)
		[5]: Button_upvr (readonly)
		[6]: ButtonType_upvr (readonly)
	]]
	if arg1.props.renderOnFailed == RenderOnFailedStyle_upvr.EmptyStatePage then
		return Roact_upvr.createElement(EmptyState_upvr, {
			position = UDim2.fromScale(0.5, 0.5);
			anchorPoint = Vector2.new(0.5, 0.5);
			onActivated = arg1.props.onRetry;
			icon = Images_upvr["icons/status/noconnection_large"];
			text = arg1.props.text;
		})
	end
	if arg1.props.renderOnFailed == RenderOnFailedStyle_upvr.RetryButton then
		if arg1.props.onRetry then
			return Roact_upvr.createElement(Button_upvr, {
				buttonType = ButtonType_upvr.Secondary;
				size = UDim2.fromOffset(44, 44);
				position = UDim2.fromScale(0.5, 0.5);
				anchorPoint = Vector2.new(0.5, 0.5);
				onActivated = arg1.props.onRetry;
				icon = Images_upvr["icons/common/refresh"];
			})
		end
		error("OnRetry callback empty. OnRetry needs to be a function to render the RetryButton")
	else
		error("Failed to provide proper RenderOnFailedStyle")
	end
end
return any_extend_result1