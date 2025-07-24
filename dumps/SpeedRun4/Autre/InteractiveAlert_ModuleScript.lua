-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:11:26
-- Luau version 6, Types version 3
-- Time taken: 0.004512 seconds

local Parent = script.Parent
local Parent_3 = Parent.Parent.Parent
local Parent_2 = Parent_3.Parent
local Parent_4 = Parent_2.Parent
local Roact_upvr = require(Parent_4.Roact)
local t = require(Parent_4.t)
local any_extend_result1 = Roact_upvr.PureComponent:extend("InteractiveAlert")
any_extend_result1.validateProps = t.strictInterface({
	anchorPoint = t.optional(t.Vector2);
	position = t.optional(t.UDim2);
	screenSize = t.Vector2;
	onMounted = t.optional(t.callback);
	onAbsoluteSizeChanged = t.optional(t.callback);
	title = t.string;
	titleIcon = t.optional(t.union(t.table, t.string));
	titleContent = t.optional(t.callback);
	bodyText = t.optional(t.string);
	richText = t.optional(t.boolean);
	middleContent = t.optional(t.callback);
	buttonStackInfo = require(Parent_3.Button.ButtonStack).validateProps;
	footerText = t.optional(t.string);
	footerContent = t.optional(t.callback);
	onCloseClicked = t.optional(t.callback);
	defaultChildRef = t.optional(t.union(t.table, t.callback));
	isMiddleContentFocusable = t.optional(t.boolean);
	isFooterContentFocusable = t.optional(t.boolean);
	isRoactGamepadEnabled = t.optional(t.boolean);
})
local withStyle_upvr = require(Parent_2.Core.Style.withStyle)
local var10_upvw = 272
local var11_upvw = 400
local FitFrameOnAxis_upvr = require(Parent_4.FitFrame).FitFrameOnAxis
local ImageSetComponent_upvr = require(Parent_2.Core.ImageSet.ImageSetComponent)
local GetTextHeight_upvr = require(Parent_2.Core.Text.GetTextHeight)
local GenericTextLabel_upvr = require(Parent_2.Core.Text.GenericTextLabel.GenericTextLabel)
local Alert_upvr = require(Parent.Alert)
local AlertType_upvr = require(Parent.Enum.AlertType)
function any_extend_result1.render(arg1) -- Line 78
	--[[ Upvalues[10]:
		[1]: withStyle_upvr (readonly)
		[2]: var10_upvw (read and write)
		[3]: var11_upvw (read and write)
		[4]: Roact_upvr (readonly)
		[5]: FitFrameOnAxis_upvr (readonly)
		[6]: ImageSetComponent_upvr (readonly)
		[7]: GetTextHeight_upvr (readonly)
		[8]: GenericTextLabel_upvr (readonly)
		[9]: Alert_upvr (readonly)
		[10]: AlertType_upvr (readonly)
	]]
	return withStyle_upvr(function(arg1_2) -- Line 79
		--[[ Upvalues[10]:
			[1]: var10_upvw (copied, read and write)
			[2]: var11_upvw (copied, read and write)
			[3]: arg1 (readonly)
			[4]: Roact_upvr (copied, readonly)
			[5]: FitFrameOnAxis_upvr (copied, readonly)
			[6]: ImageSetComponent_upvr (copied, readonly)
			[7]: GetTextHeight_upvr (copied, readonly)
			[8]: GenericTextLabel_upvr (copied, readonly)
			[9]: Alert_upvr (copied, readonly)
			[10]: AlertType_upvr (copied, readonly)
		]]
		var10_upvw = arg1_2.Tokens.Global.Size_200 * 17
		var11_upvw = arg1_2.Tokens.Global.Size_500 * 10
		local Font_upvr = arg1_2.Font
		local var20_upvr = Font_upvr.BaseSize * Font_upvr.Body.RelativeSize
		local titleContent = arg1.props.titleContent
		local var22_upvr
		if arg1.props.titleIcon then
			local Theme_upvr = arg1_2.Theme
			function titleContent() -- Line 90
				--[[ Upvalues[5]:
					[1]: Roact_upvr (copied, readonly)
					[2]: FitFrameOnAxis_upvr (copied, readonly)
					[3]: ImageSetComponent_upvr (copied, readonly)
					[4]: arg1 (copied, readonly)
					[5]: Theme_upvr (readonly)
				]]
				return Roact_upvr.createElement(FitFrameOnAxis_upvr, {
					BackgroundTransparency = 1;
					HorizontalAlignment = Enum.HorizontalAlignment.Center;
					margin = {
						top = 12;
						bottom = 0;
						left = 0;
						right = 0;
					};
					minimumSize = UDim2.new(1, 0, 0, 0);
				}, {
					Icon = Roact_upvr.createElement(ImageSetComponent_upvr.Label, {
						BackgroundTransparency = 1;
						Image = arg1.props.titleIcon;
						ImageColor3 = Theme_upvr.IconEmphasis.Color;
						ImageTransparency = Theme_upvr.IconEmphasis.Transparency;
						Size = UDim2.new(0, 48, 0, 48);
					});
				})
			end
		end
		var22_upvr = arg1.props.screenSize
		var22_upvr = var11_upvw
		local var29 = math.clamp(var22_upvr.X - 48, var10_upvw, var22_upvr) - 48
		var22_upvr = arg1.props
		local footerContent = var22_upvr.footerContent
		var22_upvr = arg1.props.footerText
		if var22_upvr then
			local function INLINED() -- Internal function, doesn't exist in bytecode
				var22_upvr = GetTextHeight_upvr(arg1.props.footerText, Font_upvr.Footer.Font, Font_upvr.BaseSize * Font_upvr.Footer.RelativeSize, var29, 100)
				return var22_upvr
			end
			if not arg1.props.footerText or not INLINED() then
				var22_upvr = 0
			end
			function footerContent() -- Line 128
				--[[ Upvalues[7]:
					[1]: Roact_upvr (copied, readonly)
					[2]: GenericTextLabel_upvr (copied, readonly)
					[3]: Theme_upvr (readonly)
					[4]: Font_upvr (readonly)
					[5]: arg1 (copied, readonly)
					[6]: var20_upvr (readonly)
					[7]: var22_upvr (readonly)
				]]
				return Roact_upvr.createElement(GenericTextLabel_upvr, {
					BackgroundTransparency = 1;
					colorStyle = Theme_upvr.TextDefault;
					fontStyle = Font_upvr.Footer;
					LayoutOrder = 4;
					Text = arg1.props.footerText;
					TextSize = var20_upvr;
					TextXAlignment = Enum.TextXAlignment.Center;
					Size = UDim2.new(1, 0, 0, var22_upvr);
				})
			end
		end
		if not arg1.props.bodyText or not GetTextHeight_upvr(arg1.props.bodyText, Font_upvr.Body.Font, var20_upvr, var29, 200) then
		end
		local middleContent = arg1.props.middleContent
		if arg1.props.bodyText then
			local var35_upvr = 0
			function middleContent() -- Line 148
				--[[ Upvalues[8]:
					[1]: Roact_upvr (copied, readonly)
					[2]: FitFrameOnAxis_upvr (copied, readonly)
					[3]: GenericTextLabel_upvr (copied, readonly)
					[4]: Theme_upvr (readonly)
					[5]: Font_upvr (readonly)
					[6]: arg1 (copied, readonly)
					[7]: var20_upvr (readonly)
					[8]: var35_upvr (readonly)
				]]
				local module = {
					BodyText = Roact_upvr.createElement(GenericTextLabel_upvr, {
						BackgroundTransparency = 1;
						colorStyle = Theme_upvr.TextDefault;
						fontStyle = Font_upvr.Body;
						LayoutOrder = 1;
						Text = arg1.props.bodyText;
						RichText = arg1.props.richText;
						TextSize = var20_upvr;
						TextXAlignment = Enum.TextXAlignment.Center;
						Size = UDim2.new(1, 0, 0, var35_upvr);
					});
				}
				local middleContent_2 = arg1.props.middleContent
				if middleContent_2 then
					middleContent_2 = Roact_upvr.createElement
					middleContent_2 = middleContent_2(FitFrameOnAxis_upvr, {
						BackgroundTransparency = 1;
						LayoutOrder = 2;
						minimumSize = UDim2.new(1, 0, 0, 0);
					}, {
						Content = arg1.props.middleContent();
					})
				end
				module.CustomContent = middleContent_2
				return Roact_upvr.createElement(FitFrameOnAxis_upvr, {
					BackgroundTransparency = 1;
					contentPadding = UDim.new(0, 12);
					LayoutOrder = 2;
					minimumSize = UDim2.new(1, 0, 0, 0);
				}, module)
			end
		end
		return Roact_upvr.createElement(Alert_upvr, {
			anchorPoint = arg1.props.anchorPoint;
			alertType = AlertType_upvr.Interactive;
			margin = {
				top = 0;
				bottom = 24;
				left = 24;
				right = 24;
			};
			maxWidth = var11_upvw;
			minWidth = var10_upvw;
			buttonStackInfo = arg1.props.buttonStackInfo;
			middleContent = middleContent;
			isMiddleContentFocusable = arg1.props.isMiddleContentFocusable;
			onMounted = arg1.props.onMounted;
			onAbsoluteSizeChanged = arg1.props.onAbsoluteSizeChanged;
			position = arg1.props.position;
			screenSize = arg1.props.screenSize;
			title = arg1.props.title;
			titleContent = titleContent;
			footerContent = footerContent;
			isFooterContentFocusable = arg1.props.isFooterContentFocusable;
			onCloseClicked = arg1.props.onCloseClicked;
			defaultChildRef = arg1.props.defaultChildRef;
			isRoactGamepadEnabled = arg1.props.isRoactGamepadEnabled;
		})
	end)
end
return any_extend_result1