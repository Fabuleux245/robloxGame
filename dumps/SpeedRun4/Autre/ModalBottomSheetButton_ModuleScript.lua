-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:14:34
-- Luau version 6, Types version 3
-- Time taken: 0.006918 seconds

local Parent = script.Parent.Parent.Parent
local Roact_upvr = require(Parent.Roact)
local t = require(Parent.t)
local Images_upvr = require(Parent.UIBlox.App.ImageSet.Images)
local any_extend_result1 = Roact_upvr.PureComponent:extend("ModalBottomSheetButton")
local ImageRectSize_upvr = Images_upvr["component_assets/circle_17"].ImageRectSize
local var7 = 8 * Images_upvr.ImagesResolutionScale
local var8 = 8 * Images_upvr.ImagesResolutionScale
any_extend_result1.validateProps = t.strictInterface({
	icon = t.optional(t.union(t.table, t.string));
	text = t.optional(t.string);
	onActivated = t.optional(t.callback);
	renderRightElement = t.optional(t.callback);
	showImage = t.boolean;
	isFixed = t.boolean;
	onActivatedAndDismissed = t.callback;
	elementHeight = t.integer;
	hasRoundBottom = t.boolean;
	hasRoundTop = t.boolean;
	LayoutOrder = t.integer;
	stayOnActivated = t.optional(t.boolean);
})
any_extend_result1.defaultProps = {
	icon = {};
	text = "";
	onActivated = function() -- Line 45, Named "onActivated"
	end;
}
function any_extend_result1.init(arg1) -- Line 48
	--[[ Upvalues[1]:
		[1]: Roact_upvr (readonly)
	]]
	local any_createBinding_result1, any_createBinding_result2 = Roact_upvr.createBinding(false)
	arg1.pressed = any_createBinding_result1
	arg1.updatePressed = any_createBinding_result2
	arg1.ref = Roact_upvr.createRef()
	function arg1.onColorChange(arg1_2) -- Line 51
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		if not arg1.ref.current then
		else
			arg1.ref.current.ImageColor3 = arg1_2
		end
	end
	function arg1.onInputBegan(arg1_3) -- Line 58
		local var15 = true
		if arg1_3.UserInputType ~= Enum.UserInputType.MouseButton1 then
			if arg1_3.UserInputType ~= Enum.UserInputType.Touch then
				var15 = false
			else
				var15 = true
			end
		end
		return var15
	end
	function arg1.onInputEnd(arg1_4) -- Line 62
		local var17 = true
		if arg1_4.UserInputType ~= Enum.UserInputType.MouseButton1 then
			if arg1_4.UserInputType ~= Enum.UserInputType.Touch then
				var17 = false
			else
				var17 = true
			end
		end
		return var17
	end
end
local ImageRectOffset_upvr = Images_upvr["component_assets/circle_17"].ImageRectOffset
local Rect_new_result1_upvr = Rect.new(var7, var8, ImageRectSize_upvr.x - var7, ImageRectSize_upvr.y - var8)
local withStyle_upvr = require(Parent.UIBlox.Core.Style.withStyle)
local ImageSetComponent_upvr = require(Parent.UIBlox.Core.ImageSet.ImageSetComponent)
local RoundedFrame_upvr = require(Parent.UIBlox.App.Menu.RoundedFrame)
local var23_upvr = 8 * Images_upvr.ImagesResolutionScale
function any_extend_result1.render(arg1) -- Line 68
	--[[ Upvalues[9]:
		[1]: ImageRectSize_upvr (readonly)
		[2]: ImageRectOffset_upvr (readonly)
		[3]: Rect_new_result1_upvr (readonly)
		[4]: withStyle_upvr (readonly)
		[5]: Roact_upvr (readonly)
		[6]: Images_upvr (readonly)
		[7]: ImageSetComponent_upvr (readonly)
		[8]: RoundedFrame_upvr (readonly)
		[9]: var23_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	-- KONSTANTERROR: [0] 1. Error Block 33 start (CF ANALYSIS FAILED)
	local hasRoundTop_upvr = arg1.props.hasRoundTop
	local var26 = ImageRectSize_upvr.X / 2
	local var27_upvw
	if hasRoundTop_upvr and arg1.props.hasRoundBottom then
		-- KONSTANTWARNING: GOTO [74] #63
	end
	-- KONSTANTERROR: [0] 1. Error Block 33 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [21] 17. Error Block 34 start (CF ANALYSIS FAILED)
	if hasRoundTop_upvr then
		var27_upvw = var26
		var27_upvw = var26 - 1
	else
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		if arg1.props.hasRoundBottom then
			var27_upvw = var26
			var27_upvw = 0
			var27_upvw = 0
		else
			var27_upvw = 1
			var27_upvw = var26
		end
	end
	local elementHeight = arg1.props.elementHeight
	local var29_upvw
	var27_upvw = arg1.props.isFixed
	if var27_upvw then
		var27_upvw = UDim2.new(0, 300, 0, elementHeight)
		var29_upvw = var27_upvw
	else
		var27_upvw = UDim2.new(1, -32, 0, elementHeight)
		var29_upvw = var27_upvw
	end
	var27_upvw = 24
	if arg1.props.showImage or arg1.props.renderRightElement then
		var27_upvw = 12
	end
	local var30_upvr = elementHeight * 0.8
	if arg1.props.showImage then
	end
	if arg1.props.renderRightElement then
	end
	local Rect_new_result1_upvw = Rect.new(var26 - 1, var27_upvw, var26 + 1, 1)
	local vector2_upvw = Vector2.new(1, var27_upvw)
	local var34_upvw = ImageRectOffset_upvr + Vector2.new(var27_upvw, var26)
	local var35_upvw = var27_upvw + var30_upvr + var27_upvw + var30_upvr + var27_upvw
	local hasRoundBottom_upvr = arg1.props.hasRoundBottom
	do
		return withStyle_upvr(function(arg1_5) -- Line 120
			--[[ Upvalues[15]:
				[1]: arg1 (readonly)
				[2]: Roact_upvr (copied, readonly)
				[3]: Rect_new_result1_upvw (read and write)
				[4]: Images_upvr (copied, readonly)
				[5]: vector2_upvw (read and write)
				[6]: var34_upvw (read and write)
				[7]: var27_upvw (read and write)
				[8]: ImageSetComponent_upvr (copied, readonly)
				[9]: var30_upvr (readonly)
				[10]: var35_upvw (read and write)
				[11]: hasRoundBottom_upvr (readonly)
				[12]: var29_upvw (read and write)
				[13]: RoundedFrame_upvr (copied, readonly)
				[14]: hasRoundTop_upvr (readonly)
				[15]: var23_upvr (copied, readonly)
			]]
			local Theme_upvr = arg1_5.Theme
			local Font = arg1_5.Font
			local Color = Theme_upvr.TextEmphasis.Color
			local Transparency = Theme_upvr.TextEmphasis.Transparency
			local tbl_3 = {}
			local tbl_2 = {
				horizontalLayout = Roact_upvr.createElement("UIListLayout", {
					FillDirection = Enum.FillDirection.Horizontal;
					SortOrder = Enum.SortOrder.LayoutOrder;
					Padding = UDim.new(0, var27_upvw);
				});
				padding = Roact_upvr.createElement("UIPadding", {
					PaddingLeft = UDim.new(0, var27_upvw);
					PaddingTop = UDim.new(0.1, 0);
					PaddingBottom = UDim.new(0.1, 0);
				});
			}
			local var51
			local function INLINED() -- Internal function, doesn't exist in bytecode
				var51 = var51(ImageSetComponent_upvr.Label, tbl_4)
				tbl_4.LayoutOrder = 1
				tbl_4.Size = UDim2.new(0, var30_upvr, 0, var30_upvr)
				tbl_4.BackgroundTransparency = 1
				tbl_4.ImageTransparency = Transparency
				tbl_4.ImageColor3 = Color
				tbl_4.Image = arg1.props.icon
				local tbl_4 = {}
				var51 = Roact_upvr.createElement
				return var51
			end
			if not arg1.props.showImage or not INLINED() then
				var51 = nil
			end
			tbl_2.icon = var51
			var51 = Roact_upvr.createElement
			var51 = var51("TextLabel", {
				TextXAlignment = Enum.TextXAlignment.Left;
				BackgroundTransparency = 1;
				Size = UDim2.new(1, -var35_upvw, 1, 0);
				Text = arg1.props.text;
				TextTransparency = Transparency;
				Font = Font.Header2.Font;
				TextColor3 = Color;
				TextSize = Font.Header2.RelativeSize * Font.BaseSize;
				TextTruncate = Enum.TextTruncate.AtEnd;
				LayoutOrder = 2;
			})
			tbl_2.textLabel = var51
			var51 = arg1.props.renderRightElement
			if var51 then
				var51 = Roact_upvr.createElement
				var51 = var51("Frame", {
					BackgroundTransparency = 1;
					Size = UDim2.new(0, var30_upvr, 0, var30_upvr);
					LayoutOrder = 3;
				}, {
					hint = arg1.props.renderRightElement();
				})
			end
			tbl_2.rightContainer = var51
			tbl_3.buttonContents = Roact_upvr.createElement("Frame", {
				Size = UDim2.new(1, 0, 1, 0);
				BackgroundTransparency = 1;
			}, tbl_2)
			local var56 = not hasRoundBottom_upvr
			if var56 then
				var56 = Roact_upvr.createElement
				local tbl_5 = {
					LayoutOrder = 0;
					BackgroundTransparency = 1;
				}
				var51 = Theme_upvr.Divider
				tbl_5.BackgroundColor3 = var51.Color
				tbl_5.BorderSizePixel = 0
				var51 = 1
				tbl_5.Size = UDim2.new(var51, 0, 0, 1)
				var51 = 0
				tbl_5.AnchorPoint = Vector2.new(var51, 1)
				var51 = 0
				tbl_5.Position = UDim2.new(var51, 0, 1, 0)
				var56 = var56("Frame", tbl_5)
			end
			tbl_3.bottomBorder = var56
			local module = {}
			local tbl = {}
			var51 = -1
			tbl.zIndex = var51
			var51 = Theme_upvr.BackgroundUIDefault
			tbl.background = var51
			if hasRoundTop_upvr then
				var51 = UDim.new(0, var23_upvr)
			else
				var51 = nil
			end
			tbl.topCornerRadius = var51
			if hasRoundBottom_upvr then
			else
			end
			tbl.bottomCornerRadius = nil
			module.Background = Roact_upvr.createElement(RoundedFrame_upvr, tbl)
			module.Button = Roact_upvr.createElement("ImageButton", {
				AutoButtonColor = false;
				BackgroundTransparency = 1;
				BorderSizePixel = 0;
				ScaleType = Enum.ScaleType.Slice;
				SliceCenter = Rect_new_result1_upvw;
				Image = Images_upvr["component_assets/circle_17"].Image;
				ImageColor3 = arg1.pressed:map(function(arg1_6) -- Line 128
					--[[ Upvalues[1]:
						[1]: Theme_upvr (readonly)
					]]
					if arg1_6 then
						return Theme_upvr.BackgroundOnPress.Color
					end
					return Theme_upvr.BackgroundUIDefault.Color
				end);
				ImageRectSize = vector2_upvw;
				ImageRectOffset = var34_upvw;
				ImageTransparency = arg1.pressed:map(function(arg1_7) -- Line 131
					--[[ Upvalues[1]:
						[1]: Theme_upvr (readonly)
					]]
					if arg1_7 then
						return Theme_upvr.BackgroundOnPress.Transparency
					end
					return Theme_upvr.BackgroundUIDefault.Transparency
				end);
				Size = UDim2.fromScale(1, 1);
				LayoutOrder = arg1.props.LayoutOrder;
				[Roact_upvr.Ref] = arg1.ref;
				[Roact_upvr.Event.Activated] = arg1.props.onActivatedAndDismissed;
				[Roact_upvr.Event.InputBegan] = function(arg1_8, arg2) -- Line 152
					--[[ Upvalues[1]:
						[1]: arg1 (copied, readonly)
					]]
					if arg1.onInputBegan(arg2) then
						arg1.updatePressed(true)
					end
				end;
				[Roact_upvr.Event.InputEnded] = function(arg1_9, arg2) -- Line 157
					--[[ Upvalues[1]:
						[1]: arg1 (copied, readonly)
					]]
					if arg1.onInputEnd(arg2) then
						arg1.updatePressed(false)
					end
				end;
			}, tbl_3)
			return Roact_upvr.createElement("Frame", {
				LayoutOrder = arg1.props.LayoutOrder;
				Size = var29_upvw;
				BackgroundTransparency = 1;
				BorderSizePixel = 0;
			}, module)
		end)
	end
	-- KONSTANTERROR: [21] 17. Error Block 34 end (CF ANALYSIS FAILED)
end
return any_extend_result1