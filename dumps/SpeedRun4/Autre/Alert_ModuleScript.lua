-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:11:24
-- Luau version 6, Types version 3
-- Time taken: 0.013546 seconds

local Parent = script.Parent
local Parent_4 = Parent.Parent.Parent
local Parent_3 = Parent_4.Parent
local Parent_2 = Parent_3.Parent
local Roact_upvr = require(Parent_2.Roact)
local t = require(Parent_2.t)
local ButtonStack_upvr = require(Parent_4.Button.ButtonStack)
local AlertType_upvr = require(Parent.Enum.AlertType)
local any_extend_result1 = Roact_upvr.PureComponent:extend("Alert")
any_extend_result1.validateProps = t.strictInterface({
	alertType = AlertType_upvr.isEnumValue;
	maxWidth = t.optional(t.number);
	minWidth = t.optional(t.number);
	margin = t.optional(t.table);
	anchorPoint = t.optional(t.Vector2);
	onMounted = t.optional(t.callback);
	onAbsoluteSizeChanged = t.optional(t.callback);
	position = t.optional(t.UDim2);
	screenSize = t.Vector2;
	title = t.string;
	titleContent = t.optional(t.callback);
	middleContent = t.optional(t.callback);
	buttonStackInfo = t.optional(ButtonStack_upvr.validateProps);
	footerContent = t.optional(t.callback);
	onCloseClicked = t.optional(t.callback);
	defaultChildRef = t.optional(t.union(t.table, t.callback));
	isMiddleContentFocusable = t.optional(t.boolean);
	isFooterContentFocusable = t.optional(t.boolean);
	isRoactGamepadEnabled = t.optional(t.boolean);
})
any_extend_result1.defaultProps = {
	anchorPoint = Vector2.new(0.5, 0.5);
	margin = {
		top = 0;
		bottom = 24;
		left = 24;
		right = 24;
	};
	maxWidth = 400;
	minWidth = 272;
	position = UDim2.new(0.5, 0, 0.5, 0);
	isRoactGamepadEnabled = true;
}
function any_extend_result1.init(arg1) -- Line 79
	--[[ Upvalues[1]:
		[1]: Roact_upvr (readonly)
	]]
	local any_createBinding_result1, any_createBinding_result2 = Roact_upvr.createBinding(Vector2.new(0, 0))
	arg1.contentSize = any_createBinding_result1
	arg1.changeContentSize = any_createBinding_result2
	arg1.middleContentRef = Roact_upvr.createRef()
	arg1.footerContentRef = Roact_upvr.createRef()
	arg1.buttonStackRef = Roact_upvr.createRef()
end
function any_extend_result1.didMount(arg1) -- Line 87
	if arg1.props.onMounted then
		arg1.props.onMounted()
	end
end
local withStyle_upvr = require(Parent_3.Core.Style.withStyle)
local Cryo_upvr = require(Parent_2.Cryo)
local RoactGamepad_upvr = require(Parent_2.RoactGamepad)
local ImageSetComponent_upvr = require(Parent_3.Core.ImageSet.ImageSetComponent)
local Images_upvr = require(Parent_4.ImageSet.Images)
local FitFrameOnAxis_upvr = require(Parent_2.FitFrame).FitFrameOnAxis
local AlertTitle_upvr = require(Parent.AlertTitle)
function any_extend_result1.render(arg1) -- Line 93
	--[[ Upvalues[10]:
		[1]: withStyle_upvr (readonly)
		[2]: AlertType_upvr (readonly)
		[3]: Cryo_upvr (readonly)
		[4]: Roact_upvr (readonly)
		[5]: RoactGamepad_upvr (readonly)
		[6]: ImageSetComponent_upvr (readonly)
		[7]: Images_upvr (readonly)
		[8]: FitFrameOnAxis_upvr (readonly)
		[9]: AlertTitle_upvr (readonly)
		[10]: ButtonStack_upvr (readonly)
	]]
	local isRoactGamepadEnabled_upvr = arg1.props.isRoactGamepadEnabled
	local isMiddleContentFocusable_upvr = arg1.props.isMiddleContentFocusable
	local isFooterContentFocusable_upvr = arg1.props.isFooterContentFocusable
	local clamped_upvr = math.clamp(arg1.props.screenSize.X - arg1.props.margin.left - arg1.props.margin.right, arg1.props.minWidth, arg1.props.maxWidth)
	return withStyle_upvr(function(arg1_2) -- Line 104
		--[[ Upvalues[14]:
			[1]: arg1 (readonly)
			[2]: AlertType_upvr (copied, readonly)
			[3]: Cryo_upvr (copied, readonly)
			[4]: Roact_upvr (copied, readonly)
			[5]: isRoactGamepadEnabled_upvr (readonly)
			[6]: isMiddleContentFocusable_upvr (readonly)
			[7]: isFooterContentFocusable_upvr (readonly)
			[8]: RoactGamepad_upvr (copied, readonly)
			[9]: ImageSetComponent_upvr (copied, readonly)
			[10]: Images_upvr (copied, readonly)
			[11]: FitFrameOnAxis_upvr (copied, readonly)
			[12]: clamped_upvr (readonly)
			[13]: AlertTitle_upvr (copied, readonly)
			[14]: ButtonStack_upvr (copied, readonly)
		]]
		-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
		local Theme = arg1_2.Theme
		local var28
		local var29
		local var30
		local var43
		if arg1.props.alertType == AlertType_upvr.Interactive then
			var29 = Theme.BackgroundUIDefault.Color
			var30 = Theme.BackgroundUIDefault.Transparency
			var28 = 1
		else
			var28 = Theme.BackgroundUIContrast.Transparency
			var30 = 1
		end
		local buttonStackInfo = arg1.props.buttonStackInfo
		if buttonStackInfo then
			local tbl_3 = {}
			local var34 = Roact_upvr
			if isRoactGamepadEnabled_upvr then
				var34 = arg1.buttonStackRef
			else
				var34 = nil
			end
			tbl_3[var34.Ref] = var34
			if isRoactGamepadEnabled_upvr then
				if not isMiddleContentFocusable_upvr or not arg1.middleContentRef then
					-- KONSTANTWARNING: GOTO [66] #48
				end
			else
			end
			tbl_3.NextSelectionUp = nil
			if isRoactGamepadEnabled_upvr then
				if not isFooterContentFocusable_upvr or not arg1.footerContentRef then
					-- KONSTANTWARNING: GOTO [79] #59
				end
			else
			end
			tbl_3.NextSelectionDown = nil
			tbl_3.isRoactGamepadEnabled = isRoactGamepadEnabled_upvr
			local any_join_result1 = Cryo_upvr.Dictionary.join(buttonStackInfo, tbl_3)
		end
		local var36 = Roact_upvr
		local var37
		if isRoactGamepadEnabled_upvr then
			var36 = RoactGamepad_upvr.Focusable[ImageSetComponent_upvr.Button]
		else
			var36 = ImageSetComponent_upvr.Button
		end
		local module_2 = {
			Position = arg1.props.position;
			AnchorPoint = arg1.props.anchorPoint;
			Size = arg1.contentSize:map(function(arg1_3) -- Line 138
				return UDim2.new(0, arg1_3.X, 0, arg1_3.Y)
			end);
			BackgroundColor3 = Theme.BackgroundUIDefault.Color;
			BackgroundTransparency = var28;
			BorderSizePixel = 0;
			Image = Images_upvr["component_assets/circle_17"];
			ImageColor3 = var29;
			ImageTransparency = var30;
			ScaleType = Enum.ScaleType.Slice;
			SliceCenter = Rect.new(8, 8, 9, 9);
			AutoButtonColor = false;
			ClipsDescendants = true;
			Selectable = false;
		}
		local var40 = Roact_upvr
		if isRoactGamepadEnabled_upvr then
			var40 = arg1.props.defaultChildRef
		else
			var40 = nil
		end
		module_2[var40.Ref] = var40
		module_2[Roact_upvr.Change.AbsoluteSize] = arg1.props.onAbsoluteSizeChanged
		if isRoactGamepadEnabled_upvr then
		else
		end
		module_2.defaultChild = nil
		local module = {}
		local tbl_6 = {}
		var43 = 0
		tbl_6.contentPadding = UDim.new(var43, 24)
		var43 = arg1.props
		tbl_6.margin = var43.margin
		var43 = 0
		tbl_6.minimumSize = UDim2.new(var43, clamped_upvr, 0, 0)
		tbl_6.BackgroundTransparency = 1
		tbl_6.BorderSizePixel = 0
		var43 = Roact_upvr.Change
		function var43(arg1_4) -- Line 164
			--[[ Upvalues[1]:
				[1]: arg1 (copied, readonly)
			]]
			arg1.changeContentSize(arg1_4.AbsoluteSize)
		end
		tbl_6[var43.AbsoluteSize] = var43
		local tbl_7 = {}
		var43 = Roact_upvr.createElement
		var43 = var43(AlertTitle_upvr, {
			layoutOrder = 1;
			margin = arg1.props.margin;
			maxWidth = arg1.props.maxWidth;
			minWidth = arg1.props.minWidth;
			screenSize = arg1.props.screenSize;
			title = arg1.props.title;
			titleContent = arg1.props.titleContent;
			onCloseClicked = arg1.props.onCloseClicked;
		})
		tbl_7.TitleContainer = var43
		var43 = arg1.props.middleContent
		if var43 then
			local var46 = Roact_upvr
			var43 = var46.createElement
			if isRoactGamepadEnabled_upvr then
				var46 = RoactGamepad_upvr.Focusable[FitFrameOnAxis_upvr]
			else
				var46 = FitFrameOnAxis_upvr
			end
			local tbl = {
				BackgroundTransparency = 1;
				LayoutOrder = 2;
				minimumSize = UDim2.new(1, 0, 0, 0);
			}
			if isRoactGamepadEnabled_upvr then
			else
			end
			tbl[Roact_upvr.Ref] = nil
			if isRoactGamepadEnabled_upvr then
				if not isMiddleContentFocusable_upvr or not arg1.buttonStackRef then
					-- KONSTANTWARNING: GOTO [364] #254
				end
			else
			end
			tbl.NextSelectionDown = nil
			var43 = var43(var46, tbl, {
				Content = arg1.props.middleContent();
			})
		end
		tbl_7.MiddleContent = var43
		var43 = Roact_upvr.createElement
		local tbl_5 = {}
		local var51 = any_join_result1
		if var51 then
			var51 = Roact_upvr.createElement(ButtonStack_upvr, any_join_result1)
		end
		tbl_5.Buttons = var51
		local var52
		if arg1.props.footerContent then
			local var53 = Roact_upvr
			if isRoactGamepadEnabled_upvr then
				var53 = RoactGamepad_upvr.Focusable[FitFrameOnAxis_upvr]
			else
				var53 = FitFrameOnAxis_upvr
			end
			local tbl_4 = {
				BackgroundTransparency = 1;
				LayoutOrder = 5;
			}
			var52 = 1
			tbl_4.minimumSize = UDim2.new(var52, 0, 0, 0)
			var52 = Roact_upvr
			if isRoactGamepadEnabled_upvr then
				var52 = arg1.footerContentRef
			else
				var52 = nil
			end
			tbl_4[var52.Ref] = var52
			var52 = isRoactGamepadEnabled_upvr
			if var52 then
				var52 = isFooterContentFocusable_upvr
				local function INLINED() -- Internal function, doesn't exist in bytecode
					var52 = arg1
					return var52.buttonStackRef
				end
				if not var52 or not INLINED() then
					-- KONSTANTWARNING: GOTO [473] #337
				end
			else
			end
			tbl_4.NextSelectionUp = nil
			local tbl_2 = {}
			var52 = arg1.props.footerContent()
			tbl_2.Content = var52
		end
		tbl_5.FooterContent = var53.createElement(var53, tbl_4, tbl_2)
		var43 = var43(FitFrameOnAxis_upvr, {
			BackgroundTransparency = 1;
			contentPadding = UDim.new(0, 12);
			LayoutOrder = 3;
			minimumSize = UDim2.new(1, 0, 0, 0);
		}, tbl_5)
		tbl_7.Footer = var43
		module.AlertContents = Roact_upvr.createElement(FitFrameOnAxis_upvr, tbl_6, tbl_7) or nil
		return var36.createElement(var36, module_2, module)
	end)
end
return any_extend_result1