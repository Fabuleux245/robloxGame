-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:06:40
-- Luau version 6, Types version 3
-- Time taken: 0.002694 seconds

local dependencies = require(script:FindFirstAncestor("SocialLibraries").dependencies)
local Roact_upvr = dependencies.Roact
local any_extend_result1 = Roact_upvr.PureComponent:extend("PlainText")
any_extend_result1.defaultProps = {
	text = "";
	maxWidth = 0;
	innerPadding = 0;
	isIncoming = false;
	hasTail = false;
	LayoutOrder = 0;
	isPending = false;
	[Roact_upvr.Change.AbsoluteSize] = function() -- Line 17
	end;
}
local withStyle_upvr = dependencies.UIBlox.Style.withStyle
local ChatBubbleContainer_upvr = require(script.Parent.ChatBubbleContainer)
local FitTextLabel_upvr = dependencies.RoactFitComponents.FitTextLabel
function any_extend_result1.render(arg1) -- Line 20
	--[[ Upvalues[4]:
		[1]: withStyle_upvr (readonly)
		[2]: Roact_upvr (readonly)
		[3]: ChatBubbleContainer_upvr (readonly)
		[4]: FitTextLabel_upvr (readonly)
	]]
	return withStyle_upvr(function(arg1_2) -- Line 21
		--[[ Upvalues[4]:
			[1]: arg1 (readonly)
			[2]: Roact_upvr (copied, readonly)
			[3]: ChatBubbleContainer_upvr (copied, readonly)
			[4]: FitTextLabel_upvr (copied, readonly)
		]]
		local innerPadding = arg1.props.innerPadding
		local Body = arg1_2.Font.Body
		local module = {}
		local tbl = {
			Text = arg1.props.text;
			TextXAlignment = Enum.TextXAlignment.Left;
			BackgroundTransparency = 1;
			TextColor3 = arg1_2.Theme.TextEmphasis.Color;
			width = FitTextLabel_upvr.Width.FitToText;
			maximumWidth = math.max(0, arg1.props.maxWidth - innerPadding);
		}
		local var15
		if not var15 then
			var15 = Body.Font
		end
		tbl.Font = var15
		var15 = arg1.props.textSize or arg1_2.Font.BaseSize * Body.RelativeSize
		tbl.TextSize = var15
		local function INLINED() -- Internal function, doesn't exist in bytecode
			var15 = arg1_2.Theme.TextMuted.Transparency
			return var15
		end
		if not arg1.props.isPending or not INLINED() then
			var15 = 0
		end
		tbl.TextTransparency = var15
		var15 = Enum.TextYAlignment.Top
		tbl.TextYAlignment = var15
		module.textContent = Roact_upvr.createElement(FitTextLabel_upvr, tbl)
		return Roact_upvr.createElement(ChatBubbleContainer_upvr, {
			isIncoming = arg1.props.isIncoming;
			hasTail = arg1.props.hasTail;
			isPending = arg1.props.isPending;
			padding = innerPadding;
			LayoutOrder = arg1.props.LayoutOrder;
			[Roact_upvr.Change.AbsoluteSize] = arg1.props[Roact_upvr.Change.AbsoluteSize];
		}, module)
	end)
end
return any_extend_result1