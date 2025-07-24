-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:11:31
-- Luau version 6, Types version 3
-- Time taken: 0.003134 seconds

local Parent_3 = script.Parent
local Parent = Parent_3.Parent.Parent
local Parent_2 = Parent.Parent.Parent
local Roact_upvr = require(Parent_2.Roact)
local t = require(Parent_2.t)
local ButtonStack_upvr = require(Parent.Button.ButtonStack)
local CloseButtonIcon = require(script.Parent.Enum.CloseButtonIcon)
local any_extend_result1 = Roact_upvr.PureComponent:extend("PartialPageModal")
any_extend_result1.validateProps = t.strictInterface({
	screenSize = t.Vector2;
	[Roact_upvr.Children] = t.table;
	position = t.optional(t.UDim2);
	anchorPoint = t.optional(t.Vector2);
	title = t.optional(t.string);
	titleBackgroundImageProps = t.optional(t.strictInterface({
		image = t.string;
		imageHeight = t.number;
		text = t.optional(t.string);
	}));
	bottomPadding = t.optional(t.number);
	marginSize = t.optional(t.number);
	buttonStackProps = t.optional(ButtonStack_upvr.validateProps);
	footerContent = t.optional(t.callback);
	closeButtonIcon = t.optional(CloseButtonIcon.isEnumValue);
	onCloseClicked = t.optional(t.callback);
	contentPadding = t.optional(t.UDim);
})
any_extend_result1.defaultProps = {
	marginSize = 24;
	closeButtonIcon = CloseButtonIcon.Close;
}
local ModalWindow_upvr = require(Parent_3.ModalWindow)
local ModalTitle_upvr = require(Parent_3.ModalTitle)
local FitFrameVertical_upvr = require(Parent_2.FitFrame).FitFrameVertical
function any_extend_result1.render(arg1) -- Line 66
	--[[ Upvalues[5]:
		[1]: ModalWindow_upvr (readonly)
		[2]: Roact_upvr (readonly)
		[3]: ModalTitle_upvr (readonly)
		[4]: FitFrameVertical_upvr (readonly)
		[5]: ButtonStack_upvr (readonly)
	]]
	local screenSize = arg1.props.screenSize
	local var16 = arg1.props.bottomPadding or 24
	local var17
	if not ModalWindow_upvr:isFullWidth(screenSize.X) then
		var16 = 24
	end
	local module = {}
	local tbl_4 = {}
	var17 = arg1.props
	tbl_4.title = var17.title
	var17 = arg1.props
	tbl_4.titleBackgroundImageProps = var17.titleBackgroundImageProps
	var17 = arg1.props
	tbl_4.closeButtonIcon = var17.closeButtonIcon
	var17 = arg1.props
	tbl_4.onCloseClicked = var17.onCloseClicked
	module.TitleContainer = Roact_upvr.createElement(ModalTitle_upvr, tbl_4)
	local tbl_3 = {}
	var17 = 0
	tbl_3.Position = UDim2.new(var17, 0, 0, ModalTitle_upvr.TITLE_HEIGHT)
	var17 = 1
	tbl_3.width = UDim.new(var17, 0)
	local tbl = {}
	var17 = 0
	tbl.top = var17
	tbl.bottom = var16
	var17 = 0
	tbl.left = var17
	var17 = 0
	tbl.right = var17
	tbl_3.margin = tbl
	tbl_3.HorizontalAlignment = Enum.HorizontalAlignment.Center
	tbl_3.BackgroundTransparency = 1
	var17 = arg1.props
	tbl_3.contentPadding = var17.contentPadding
	tbl_3.LayoutOrder = 1
	local tbl_2 = {}
	var17 = Roact_upvr.createElement
	var17 = var17(FitFrameVertical_upvr, {
		width = UDim.new(1, -2 * arg1.props.marginSize);
		BackgroundTransparency = 1;
	}, arg1.props[Roact_upvr.Children])
	tbl_2.MiddlContent = var17
	var17 = arg1.props.buttonStackProps
	if var17 then
		var17 = Roact_upvr.createElement
		var17 = var17(FitFrameVertical_upvr, {
			BackgroundTransparency = 1;
			width = UDim.new(1, 0);
			LayoutOrder = 2;
		}, {
			Padding = Roact_upvr.createElement("UIPadding", {
				PaddingLeft = UDim.new(0, 24);
				PaddingRight = UDim.new(0, 24);
			});
			
			Roact_upvr.createElement(ButtonStack_upvr, arg1.props.buttonStackProps)
		})
	end
	tbl_2.Buttons = var17
	if arg1.props.footerContent then
		local tbl_5 = {
			Size = UDim2.new(1, 0, 0, 0);
			LayoutOrder = 3;
			BackgroundTransparency = 1;
			AutomaticSize = Enum.AutomaticSize.Y;
		}
		local _ = {
			FooterContent = arg1.props.footerContent();
		}
	else
	end
	tbl_2.BottomFrame = nil
	module.Content = Roact_upvr.createElement(FitFrameVertical_upvr, tbl_3, tbl_2)
	return Roact_upvr.createElement(ModalWindow_upvr, {
		isFullHeight = false;
		screenSize = screenSize;
		position = arg1.props.position;
		anchorPoint = arg1.props.anchorPoint;
	}, module)
end
return any_extend_result1