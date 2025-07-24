-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:11:29
-- Luau version 6, Types version 3
-- Time taken: 0.005258 seconds

local Parent = script.Parent
local Parent_3 = Parent.Parent.Parent
local Parent_2 = Parent_3.Parent
local Parent_4 = Parent_2.Parent
local UIBloxConfig_upvr = require(Parent_2.UIBloxConfig)
local Roact_upvr = require(Parent_4.Roact)
local t = require(Parent_4.t)
local ModalTitle_upvr = require(Parent.ModalTitle)
local any_extend_result1 = Roact_upvr.PureComponent:extend("FullPageModal")
any_extend_result1.validateProps = t.strictInterface({
	screenSize = t.Vector2;
	[Roact_upvr.Children] = t.table;
	position = t.optional(t.UDim2);
	title = t.optional(t.string);
	marginSize = t.optional(t.number);
	buttonStackProps = t.optional(t.table);
	footerContent = t.optional(t.callback);
	onCloseClicked = t.optional(t.callback);
	distanceFromTop = t.optional(t.number);
})
any_extend_result1.defaultProps = {
	marginSize = 24;
	distanceFromTop = 0;
}
function any_extend_result1.init(arg1) -- Line 55
	--[[ Upvalues[3]:
		[1]: ModalTitle_upvr (readonly)
		[2]: UIBloxConfig_upvr (readonly)
		[3]: Roact_upvr (readonly)
	]]
	local tbl = {
		buttonFrameSize = Vector2.new(0, 0);
		footerContentSize = Vector2.new(0, 0);
		titleContainerSize = Vector2.new(0, ModalTitle_upvr:GetHeight());
	}
	arg1.state = tbl
	if UIBloxConfig_upvr.didMountUpdateFullPageModal then
		tbl = Roact_upvr.createRef()
	else
		tbl = nil
	end
	arg1.buttonFrameRef = tbl
	function tbl(arg1_2) -- Line 63
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		if arg1.state.buttonFrameSize ~= arg1_2.AbsoluteSize then
			arg1:setState({
				buttonFrameSize = arg1_2.AbsoluteSize;
			})
		end
	end
	arg1.changeButtonFrameSize = tbl
	if UIBloxConfig_upvr.didMountUpdateFullPageModal then
		tbl = Roact_upvr.createRef()
	else
		tbl = nil
	end
	arg1.footerContentRef = tbl
	function tbl(arg1_3) -- Line 72
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		if arg1.state.footerContentSize ~= arg1_3.AbsoluteSize then
			arg1:setState({
				footerContentSize = arg1_3.AbsoluteSize;
			})
		end
	end
	arg1.changeFooterContentSize = tbl
	function tbl(arg1_4) -- Line 80
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		if arg1.state.titleContainerSize ~= arg1_4.AbsoluteSize then
			arg1:setState({
				titleContainerSize = arg1_4.AbsoluteSize;
			})
		end
	end
	arg1.changeTitleContainerSize = tbl
end
if UIBloxConfig_upvr.didMountUpdateFullPageModal then
	function any_extend_result1.didMount(arg1) -- Line 90
		if arg1.buttonFrameRef.current then
			arg1:setState({
				buttonFrameSize = arg1.buttonFrameRef.current.AbsoluteSize;
			})
		end
		if arg1.footerContentRef.current then
			arg1:setState({
				footerContentSize = arg1.footerContentRef.current.AbsoluteSize;
			})
		end
	end
end
local ModalWindow_upvr = require(Parent.ModalWindow)
local FitFrameVertical_upvr = require(Parent_4.FitFrame).FitFrameVertical
local ButtonStack_upvr = require(Parent_3.Button.ButtonStack)
function any_extend_result1.render(arg1) -- Line 104
	--[[ Upvalues[6]:
		[1]: Roact_upvr (readonly)
		[2]: ModalWindow_upvr (readonly)
		[3]: ModalTitle_upvr (readonly)
		[4]: FitFrameVertical_upvr (readonly)
		[5]: UIBloxConfig_upvr (readonly)
		[6]: ButtonStack_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local module = {
		TitleContainer = Roact_upvr.createElement(ModalTitle_upvr, {
			title = arg1.props.title;
			onCloseClicked = arg1.props.onCloseClicked;
			onTitleSizeChanged = arg1.changeTitleContainerSize;
		});
	}
	local tbl_2 = {
		MiddleContent = Roact_upvr.createElement("Frame", {
			Size = UDim2.new(1, -2 * arg1.props.marginSize, 1, -(arg1.state.buttonFrameSize.Y + arg1.state.footerContentSize.Y));
			BackgroundTransparency = 1;
			LayoutOrder = 1;
			ZIndex = 2;
		}, arg1.props[Roact_upvr.Children]);
		Roact_upvr.createElement("UIListLayout", {
			FillDirection = Enum.FillDirection.Vertical;
			SortOrder = Enum.SortOrder.LayoutOrder;
			HorizontalAlignment = Enum.HorizontalAlignment.Center;
		}), Roact_upvr.createElement("UIPadding", {
			PaddingLeft = UDim.new(0, 0);
			PaddingRight = UDim.new(0, 0);
			PaddingBottom = UDim.new(0, 24);
		})
	}
	if arg1.props.buttonStackProps then
		local tbl_4 = {
			BackgroundTransparency = 1;
			width = UDim.new(1, 0);
			LayoutOrder = 2;
			[Roact_upvr.Change.AbsoluteSize] = arg1.changeButtonFrameSize;
		}
		local var33 = Roact_upvr
		if UIBloxConfig_upvr.didMountUpdateFullPageModal then
			var33 = arg1.buttonFrameRef
		else
			var33 = nil
		end
		tbl_4[var33.Ref] = var33
	end
	tbl_2.Buttons = Roact_upvr.createElement(FitFrameVertical_upvr, tbl_4, {
		Padding = Roact_upvr.createElement("UIPadding", {
			PaddingLeft = UDim.new(0, 24);
			PaddingRight = UDim.new(0, 24);
		});
		
		Roact_upvr.createElement(ButtonStack_upvr, arg1.props.buttonStackProps)
	})
	if arg1.props.footerContent then
		local var37 = Roact_upvr
		if UIBloxConfig_upvr.didMountUpdateFullPageModal then
			var37 = arg1.footerContentRef
		else
			var37 = nil
		end
		;({
			Size = UDim2.new(1, -2 * arg1.props.marginSize, 0, 0);
			LayoutOrder = 3;
			BackgroundTransparency = 1;
			AutomaticSize = Enum.AutomaticSize.Y;
			[Roact_upvr.Change.AbsoluteSize] = arg1.changeFooterContentSize;
		})[var37.Ref] = var37
		local tbl_3 = {
			ContentPadding = Roact_upvr.createElement("UIPadding", {
				PaddingTop = UDim.new(0, 24);
			});
			ListLayout = Roact_upvr.createElement("UIListLayout", {
				HorizontalAlignment = Enum.HorizontalAlignment.Center;
				SortOrder = Enum.SortOrder.LayoutOrder;
			});
			FooterContent = arg1.props.footerContent();
		}
	else
	end
	tbl_2.BottomFrame = nil
	module.Content = Roact_upvr.createElement("Frame", {
		Size = UDim2.new(1, 0, 1, -arg1.state.titleContainerSize.Y);
		Position = UDim2.new(0, 0, 0, arg1.state.titleContainerSize.Y);
		BackgroundTransparency = 1;
	}, tbl_2)
	return Roact_upvr.createElement(ModalWindow_upvr, {
		isFullHeight = true;
		screenSize = arg1.props.screenSize;
		position = arg1.props.position;
		distanceFromTop = arg1.props.distanceFromTop;
	}, module)
end
return any_extend_result1