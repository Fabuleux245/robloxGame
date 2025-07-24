-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:11:53
-- Luau version 6, Types version 3
-- Time taken: 0.006578 seconds

local Parent_3 = script.Parent
local Parent_4 = Parent_3.Parent
local Parent_2 = Parent_4.Parent
local Parent = Parent_2.Parent
local Roact_upvr = require(Parent.Roact)
local t = require(Parent.t)
local validateColorInfo = require(Parent_2.Core.Style.Validator.validateColorInfo)
local Images = require(Parent_4.ImageSet.Images)
local getIconSize_upvr = require(Parent_4.ImageSet.getIconSize)
local IconSize = require(Parent_4.ImageSet.Enum.IconSize)
local VoteStates_upvr = require(Parent_3.Enum.VoteStates)
local tbl_3_upvr = {
	containerSpacingTop = 12;
	containerSpacingTrailing = 12;
	containerSpacingBottom = 12;
	containerSpacingLeading = 12;
	containerBorderRadius = 8;
	containerGap = 12;
	statWidgetContainerGap = 12;
	statWidgetIconSize = getIconSize_upvr(IconSize.Large);
	statWidgetDataGap = 0;
	buttonGroupGap = 12;
	buttonSize = 44;
	buttonIconSizeEnum = IconSize.Medium;
}
local any_extend_result1 = Roact_upvr.PureComponent:extend("RateCount")
any_extend_result1.validateProps = t.strictInterface({
	position = t.optional(t.UDim2);
	layoutOrder = t.optional(t.integer);
	anchorPoint = t.optional(t.Vector2);
	width = t.optional(t.integer);
	height = t.optional(t.integer);
	rateText = t.optional(t.string);
	rateLabel = t.optional(t.string);
	voteState = t.optional(VoteStates_upvr.isEnumValue);
	onVoteDownActivated = t.optional(t.callback);
	onVoteUpActivated = t.optional(t.callback);
	styleProps = t.optional(t.strictInterface({
		containerSpacingTop = t.optional(t.integer);
		containerSpacingTrailing = t.optional(t.integer);
		containerSpacingBottom = t.optional(t.integer);
		containerSpacingLeading = t.optional(t.integer);
		containerBorderRadius = t.optional(t.integer);
		containerBackgroundColor = t.optional(validateColorInfo);
		containerGap = t.optional(t.integer);
		statWidgetContainerGap = t.optional(t.integer);
		statWidgetIconSize = t.optional(t.integer);
		statWidgetIconContentColor = t.optional(validateColorInfo);
		statWidgetDataGap = t.optional(t.integer);
		statWidgetDataContentColor = t.optional(validateColorInfo);
		statWidgetDataLabelContentColor = t.optional(validateColorInfo);
		buttonGroupGap = t.optional(t.integer);
		buttonSize = t.optional(t.integer);
		buttonIconSizeEnum = t.optional(IconSize.isEnumValue);
	}));
})
any_extend_result1.defaultProps = {
	height = 72;
	rateText = "";
	rateLabel = "";
	voteState = VoteStates_upvr.notVoted;
}
function any_extend_result1.init(arg1) -- Line 151
	function arg1.onVoteDownActivated() -- Line 152
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		local onVoteDownActivated_2 = arg1.props.onVoteDownActivated
		if onVoteDownActivated_2 then
			onVoteDownActivated_2()
		end
	end
	function arg1.onVoteUpActivated() -- Line 159
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		local onVoteUpActivated_2 = arg1.props.onVoteUpActivated
		if onVoteUpActivated_2 then
			onVoteUpActivated_2()
		end
	end
end
local withStyle_upvr = require(Parent_2.Core.Style.withStyle)
local Cryo_upvr = require(Parent.Cryo)
local Label_upvr = require(Parent_2.Core.ImageSet.ImageSetComponent).Label
local icons_status_games_rating_large_upvr = Images["icons/status/games/rating_large"]
local GenericTextLabel_upvr = require(Parent_2.Core.Text.GenericTextLabel.GenericTextLabel)
local IconButton_upvr = require(Parent_4.Button.IconButton)
local icons_actions_vote_voteDownOn_upvr = Images["icons/actions/vote/voteDownOn"]
local icons_actions_vote_voteDownOff_upvr = Images["icons/actions/vote/voteDownOff"]
local icons_actions_vote_voteUpOn_upvr = Images["icons/actions/vote/voteUpOn"]
local icons_actions_vote_voteUpOff_upvr = Images["icons/actions/vote/voteUpOff"]
function any_extend_result1.render(arg1) -- Line 167
	--[[ Upvalues[14]:
		[1]: VoteStates_upvr (readonly)
		[2]: withStyle_upvr (readonly)
		[3]: Cryo_upvr (readonly)
		[4]: tbl_3_upvr (readonly)
		[5]: getIconSize_upvr (readonly)
		[6]: Roact_upvr (readonly)
		[7]: Label_upvr (readonly)
		[8]: icons_status_games_rating_large_upvr (readonly)
		[9]: GenericTextLabel_upvr (readonly)
		[10]: IconButton_upvr (readonly)
		[11]: icons_actions_vote_voteDownOn_upvr (readonly)
		[12]: icons_actions_vote_voteDownOff_upvr (readonly)
		[13]: icons_actions_vote_voteUpOn_upvr (readonly)
		[14]: icons_actions_vote_voteUpOff_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local width = arg1.props.width
	local var32_upvw
	if width then
		var32_upvw = UDim2.new(0, width, 0, arg1.props.height)
	else
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		var32_upvw = UDim2.new(1, 0, 0, arg1.props.height)
	end
	local props_upvr = arg1.props
	local voteState = props_upvr.voteState
	if voteState ~= VoteStates_upvr.votedDown then
		props_upvr = false
	else
		props_upvr = true
	end
	if voteState ~= VoteStates_upvr.votedUp then
	else
	end
	local position_upvr = arg1.props.position
	local anchorPoint_upvr = arg1.props.anchorPoint
	local layoutOrder_upvr = arg1.props.layoutOrder
	local rateText_upvr = arg1.props.rateText
	local rateLabel_upvr = arg1.props.rateLabel
	local var41_upvr = true
	return withStyle_upvr(function(arg1_2) -- Line 187
		--[[ Upvalues[21]:
			[1]: Cryo_upvr (copied, readonly)
			[2]: tbl_3_upvr (copied, readonly)
			[3]: arg1 (readonly)
			[4]: getIconSize_upvr (copied, readonly)
			[5]: Roact_upvr (copied, readonly)
			[6]: var32_upvw (read and write)
			[7]: position_upvr (readonly)
			[8]: anchorPoint_upvr (readonly)
			[9]: layoutOrder_upvr (readonly)
			[10]: Label_upvr (copied, readonly)
			[11]: icons_status_games_rating_large_upvr (copied, readonly)
			[12]: GenericTextLabel_upvr (copied, readonly)
			[13]: rateText_upvr (readonly)
			[14]: rateLabel_upvr (readonly)
			[15]: IconButton_upvr (copied, readonly)
			[16]: props_upvr (readonly)
			[17]: icons_actions_vote_voteDownOn_upvr (copied, readonly)
			[18]: icons_actions_vote_voteDownOff_upvr (copied, readonly)
			[19]: var41_upvr (readonly)
			[20]: icons_actions_vote_voteUpOn_upvr (copied, readonly)
			[21]: icons_actions_vote_voteUpOff_upvr (copied, readonly)
		]]
		-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
		local styleProps = arg1.props.styleProps
		if not styleProps then
			styleProps = {}
		end
		local any_join_result1 = Cryo_upvr.Dictionary.join(tbl_3_upvr, styleProps)
		local containerBackgroundColor = any_join_result1.containerBackgroundColor
		if not containerBackgroundColor then
			containerBackgroundColor = arg1_2.Theme.BackgroundContrast
		end
		local containerGap = any_join_result1.containerGap
		local statWidgetIconSize = any_join_result1.statWidgetIconSize
		local statWidgetIconContentColor = any_join_result1.statWidgetIconContentColor
		if not statWidgetIconContentColor then
			statWidgetIconContentColor = arg1_2.Theme.IconEmphasis
		end
		local statWidgetDataContentColor = any_join_result1.statWidgetDataContentColor
		if not statWidgetDataContentColor then
			statWidgetDataContentColor = arg1_2.Theme.TextEmphasis
		end
		local statWidgetDataLabelContentColor = any_join_result1.statWidgetDataLabelContentColor
		if not statWidgetDataLabelContentColor then
			statWidgetDataLabelContentColor = arg1_2.Theme.TextEmphasis
		end
		local buttonSize = any_join_result1.buttonSize
		local buttonIconSizeEnum = any_join_result1.buttonIconSizeEnum
		local module = {
			RoundCorner = Roact_upvr.createElement("UICorner", {
				CornerRadius = UDim.new(0, any_join_result1.containerBorderRadius);
			});
			ListLayout = Roact_upvr.createElement("UIListLayout", {
				FillDirection = Enum.FillDirection.Horizontal;
				HorizontalAlignment = Enum.HorizontalAlignment.Left;
				VerticalAlignment = Enum.VerticalAlignment.Center;
				SortOrder = Enum.SortOrder.LayoutOrder;
				Padding = UDim.new(0, containerGap);
			});
			Padding = Roact_upvr.createElement("UIPadding", {
				PaddingLeft = UDim.new(0, any_join_result1.containerSpacingLeading);
				PaddingRight = UDim.new(0, any_join_result1.containerSpacingTrailing);
			});
			Icon = Roact_upvr.createElement(Label_upvr, {
				LayoutOrder = 1;
				Size = UDim2.fromOffset(statWidgetIconSize, statWidgetIconSize);
				Image = icons_status_games_rating_large_upvr;
				ImageColor3 = statWidgetIconContentColor.Color;
				ImageTransparency = statWidgetIconContentColor.Transparency;
				BackgroundTransparency = 1;
			});
			TextSection = Roact_upvr.createElement("Frame", {
				LayoutOrder = 2;
				Size = UDim2.new(1, -(statWidgetIconSize + math.max(getIconSize_upvr(buttonIconSizeEnum, arg1_2), buttonSize) * 2 + any_join_result1.statWidgetContainerGap + containerGap + any_join_result1.buttonGroupGap), 0, 0);
				BackgroundTransparency = 1;
				AutomaticSize = Enum.AutomaticSize.Y;
			}, {
				ListLayout = Roact_upvr.createElement("UIListLayout", {
					SortOrder = Enum.SortOrder.LayoutOrder;
					FillDirection = Enum.FillDirection.Vertical;
					Padding = UDim.new(0, any_join_result1.statWidgetDataGap);
				});
				RateText = Roact_upvr.createElement(GenericTextLabel_upvr, {
					LayoutOrder = 1;
					AutomaticSize = Enum.AutomaticSize.XY;
					Text = rateText_upvr;
					colorStyle = statWidgetDataContentColor;
					fontStyle = arg1_2.Font.Title;
					BackgroundTransparency = 1;
				});
				RateLabel = Roact_upvr.createElement(GenericTextLabel_upvr, {
					LayoutOrder = 2;
					AutomaticSize = Enum.AutomaticSize.XY;
					Text = rateLabel_upvr;
					colorStyle = statWidgetDataLabelContentColor;
					fontStyle = arg1_2.Font.CaptionHeader;
					BackgroundTransparency = 1;
				});
			});
		}
		local tbl = {
			layoutOrder = 3;
			size = UDim2.fromOffset(buttonSize, buttonSize);
		}
		if not props_upvr or not icons_actions_vote_voteDownOn_upvr then
		end
		tbl.icon = icons_actions_vote_voteDownOff_upvr
		tbl.iconColor3 = arg1_2.Theme.IconEmphasis.Color
		tbl.iconSize = buttonIconSizeEnum
		tbl.onActivated = arg1.onVoteDownActivated
		tbl.showBackground = true
		module.VoteDown = Roact_upvr.createElement(IconButton_upvr, tbl)
		local tbl_2 = {
			layoutOrder = 4;
			size = UDim2.fromOffset(buttonSize, buttonSize);
		}
		if not var41_upvr or not icons_actions_vote_voteUpOn_upvr then
		end
		tbl_2.icon = icons_actions_vote_voteUpOff_upvr
		tbl_2.iconColor3 = arg1_2.Theme.IconEmphasis.Color
		tbl_2.iconSize = buttonIconSizeEnum
		tbl_2.onActivated = arg1.onVoteUpActivated
		tbl_2.showBackground = true
		module.VoteUp = Roact_upvr.createElement(IconButton_upvr, tbl_2)
		return Roact_upvr.createElement("Frame", {
			Size = var32_upvw;
			Position = position_upvr;
			AnchorPoint = anchorPoint_upvr;
			BackgroundColor3 = containerBackgroundColor.Color;
			BackgroundTransparency = containerBackgroundColor.Transparency;
			BorderSizePixel = 0;
			LayoutOrder = layoutOrder_upvr;
		}, module)
	end)
end
return any_extend_result1