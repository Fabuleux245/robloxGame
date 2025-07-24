-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:59:38
-- Luau version 6, Types version 3
-- Time taken: 0.005527 seconds

local TextService_upvr = game:GetService("TextService")
local CorePackages = game:GetService("CorePackages")
local Roact_upvr = require(CorePackages.Packages.Roact)
local UIBlox = require(CorePackages.Packages.UIBlox)
local t = require(CorePackages.Packages.t)
local Parent = script.Parent.Parent
local any_extend_result1_upvr = Roact_upvr.PureComponent:extend("TextEntryField")
any_extend_result1_upvr.validateProps = t.strictInterface({
	enabled = t.boolean;
	text = t.string;
	textChanged = t.callback;
	maxTextLength = t.integer;
	autoFocusOnEnabled = t.boolean;
	PlaceholderText = t.string;
	LayoutOrder = t.optional(t.integer);
	Size = t.UDim2;
	Position = t.optional(t.UDim2);
	textBoxRef = t.optional(t.table);
})
function any_extend_result1_upvr.init(arg1) -- Line 47
	--[[ Upvalues[1]:
		[1]: Roact_upvr (readonly)
	]]
	local textBoxRef = arg1.props.textBoxRef
	if not textBoxRef then
		textBoxRef = Roact_upvr.createRef()
	end
	arg1.textBoxRef = textBoxRef
	arg1.state = {
		textBoxWidth = 100;
		scrollingFrameHeight = 100;
		canvasPosition = 0;
		cursorPosition = 0;
	}
end
function any_extend_result1_upvr.calculateNeedsRescroll(arg1, arg2, arg3) -- Line 58
	--[[ Upvalues[1]:
		[1]: TextService_upvr (readonly)
	]]
	arg1:setState(function(arg1_2, arg2_2) -- Line 60
		--[[ Upvalues[3]:
			[1]: arg3 (readonly)
			[2]: arg2 (readonly)
			[3]: TextService_upvr (copied, readonly)
		]]
		if arg1_2.cursorPosition == -1 then
			return nil
		end
		local var12 = arg3.RelativeSize * arg2.Font.BaseSize
		local any_GetTextSize_result1 = TextService_upvr:GetTextSize(arg2_2.text:sub(1, arg1_2.cursorPosition - 1), var12, arg3.Font, Vector2.new(arg2_2.textBoxWidth, 10000))
		if arg1_2.scrollingFrameHeight + arg1_2.canvasPosition < any_GetTextSize_result1.Y then
			return {
				canvasPosition = any_GetTextSize_result1.Y - arg1_2.scrollingFrameHeight;
			}
		end
		if any_GetTextSize_result1.Y - var12 < arg1_2.canvasPosition then
			return {
				canvasPosition = any_GetTextSize_result1.Y - var12;
			}
		end
		return nil
	end)
end
local withStyle_upvr = UIBlox.Core.Style.withStyle
local ImageSetLabel_upvr = UIBlox.Core.ImageSet.ImageSetLabel
local Assets_upvr = require(Parent.Resources.Assets)
local CursorKind_upvr = UIBlox.App.SelectionImage.CursorKind
local ThemedTextLabel_upvr = require(Parent.Components.PortedComponents.ThemedTextLabel)
function any_extend_result1_upvr.renderWithSelectionCursor(arg1, arg2) -- Line 103
	--[[ Upvalues[7]:
		[1]: withStyle_upvr (readonly)
		[2]: TextService_upvr (readonly)
		[3]: Roact_upvr (readonly)
		[4]: ImageSetLabel_upvr (readonly)
		[5]: Assets_upvr (readonly)
		[6]: CursorKind_upvr (readonly)
		[7]: ThemedTextLabel_upvr (readonly)
	]]
	return withStyle_upvr(function(arg1_3) -- Line 104
		--[[ Upvalues[8]:
			[1]: TextService_upvr (copied, readonly)
			[2]: arg1 (readonly)
			[3]: Roact_upvr (copied, readonly)
			[4]: ImageSetLabel_upvr (copied, readonly)
			[5]: Assets_upvr (copied, readonly)
			[6]: arg2 (readonly)
			[7]: CursorKind_upvr (copied, readonly)
			[8]: ThemedTextLabel_upvr (copied, readonly)
		]]
		local TextDefault = arg1_3.Theme.TextDefault
		local Body_upvr = arg1_3.Font.Body
		local module = {}
		local tbl_3 = {}
		local tbl_2 = {}
		local tbl = {
			themeKey = "TextDefault";
			fontKey = "Body";
			Text = arg1.props.PlaceholderText;
			Size = UDim2.new(1, 0, 1, 0);
			Position = UDim2.new(0, 0, 0, 0);
			TextTransparency = 0.5;
			TextWrapped = true;
			TextXAlignment = Enum.TextXAlignment.Left;
		}
		local Top = Enum.TextYAlignment.Top
		tbl.TextYAlignment = Top
		if arg1.props.text ~= "" then
			Top = false
		else
			Top = true
		end
		tbl.Visible = Top
		tbl_2.PlaceholderText = Roact_upvr.createElement(ThemedTextLabel_upvr, tbl)
		tbl_3.TextBox = Roact_upvr.createElement("TextBox", {
			Size = UDim2.new(1, -2, 1, 0);
			AnchorPoint = Vector2.new(0.5, 0.5);
			Position = UDim2.new(0.5, 0, 0.5, 0);
			Text = arg1.props.text;
			ClearTextOnFocus = false;
			TextEditable = arg1.props.enabled;
			BackgroundTransparency = 1;
			TextXAlignment = Enum.TextXAlignment.Left;
			TextYAlignment = Enum.TextYAlignment.Top;
			TextColor3 = TextDefault.Color;
			TextTransparency = TextDefault.Transparency;
			Font = Body_upvr.Font;
			TextSize = Body_upvr.RelativeSize * arg1_3.Font.BaseSize;
			TextWrapped = true;
			MultiLine = true;
			SelectionImageObject = arg2(CursorKind_upvr.InputFields);
			[Roact_upvr.Ref] = arg1.textBoxRef;
			[Roact_upvr.Change.Text] = function(arg1_6) -- Line 170
				--[[ Upvalues[3]:
					[1]: arg1 (copied, readonly)
					[2]: arg1_3 (readonly)
					[3]: Body_upvr (readonly)
				]]
				local pcall_result1, pcall_result2 = pcall(function() -- Line 171
					--[[ Upvalues[1]:
						[1]: arg1_6 (readonly)
					]]
					return utf8.len(utf8.nfcnormalize(arg1_6.Text))
				end)
				if not pcall_result1 or arg1.props.maxTextLength < pcall_result2 then
					arg1_6.Text = arg1.props.text
				else
					arg1.props.textChanged(arg1_6.Text)
					arg1:setState({
						cursorPosition = arg1_6.CursorPosition;
					}, function() -- Line 180
						--[[ Upvalues[3]:
							[1]: arg1 (copied, readonly)
							[2]: arg1_3 (copied, readonly)
							[3]: Body_upvr (copied, readonly)
						]]
						arg1:calculateNeedsRescroll(arg1_3, Body_upvr)
					end)
				end
			end;
			[Roact_upvr.Change.AbsoluteSize] = function(arg1_7) -- Line 185
				--[[ Upvalues[3]:
					[1]: arg1 (copied, readonly)
					[2]: arg1_3 (readonly)
					[3]: Body_upvr (readonly)
				]]
				arg1:setState({
					textBoxWidth = arg1_7.AbsoluteSize.X;
				}, function() -- Line 186
					--[[ Upvalues[3]:
						[1]: arg1 (copied, readonly)
						[2]: arg1_3 (copied, readonly)
						[3]: Body_upvr (copied, readonly)
					]]
					arg1:calculateNeedsRescroll(arg1_3, Body_upvr)
				end)
			end;
			[Roact_upvr.Change.CursorPosition] = function(arg1_8) -- Line 191
				--[[ Upvalues[3]:
					[1]: arg1 (copied, readonly)
					[2]: arg1_3 (readonly)
					[3]: Body_upvr (readonly)
				]]
				arg1:setState({
					cursorPosition = arg1_8.CursorPosition;
				}, function() -- Line 192
					--[[ Upvalues[3]:
						[1]: arg1 (copied, readonly)
						[2]: arg1_3 (copied, readonly)
						[3]: Body_upvr (copied, readonly)
					]]
					arg1:calculateNeedsRescroll(arg1_3, Body_upvr)
				end)
			end;
		}, tbl_2)
		module.ScrollingFrame = Roact_upvr.createElement("ScrollingFrame", {
			Size = UDim2.new(1, -24, 1, -14);
			AnchorPoint = Vector2.new(0.5, 0);
			Position = UDim2.new(0.5, 0, 0, 7);
			BackgroundTransparency = 1;
			BorderSizePixel = 0;
			CanvasSize = UDim2.new(1, -24, 0, TextService_upvr:GetTextSize(arg1.props.text, Body_upvr.RelativeSize * arg1_3.Font.BaseSize, Body_upvr.Font, Vector2.new(arg1.state.textBoxWidth, 10000)).Y);
			ScrollBarThickness = 8;
			VerticalScrollBarInset = Enum.ScrollBarInset.Always;
			CanvasPosition = Vector2.new(0, arg1.state.canvasPosition);
			Selectable = false;
			[Roact_upvr.Change.CanvasPosition] = function(arg1_4) -- Line 138
				--[[ Upvalues[1]:
					[1]: arg1 (copied, readonly)
				]]
				arg1:setState({
					canvasPosition = arg1_4.CanvasPosition.Y;
				})
			end;
			[Roact_upvr.Change.AbsoluteSize] = function(arg1_5) -- Line 144
				--[[ Upvalues[3]:
					[1]: arg1 (copied, readonly)
					[2]: arg1_3 (readonly)
					[3]: Body_upvr (readonly)
				]]
				arg1:setState({
					scrollingFrameHeight = arg1_5.AbsoluteSize.Y;
				}, function() -- Line 145
					--[[ Upvalues[3]:
						[1]: arg1 (copied, readonly)
						[2]: arg1_3 (copied, readonly)
						[3]: Body_upvr (copied, readonly)
					]]
					arg1:calculateNeedsRescroll(arg1_3, Body_upvr)
				end)
			end;
		}, tbl_3)
		return Roact_upvr.createElement(ImageSetLabel_upvr, {
			BackgroundTransparency = 1;
			Image = Assets_upvr.Images.RoundedRect.Image;
			ImageColor3 = arg1_3.Theme.BackgroundMuted.Color;
			ImageTransparency = arg1_3.Theme.BackgroundMuted.Transparency;
			Position = arg1.props.Position;
			ScaleType = Assets_upvr.Images.RoundedRect.ScaleType;
			Size = arg1.props.Size;
			SliceCenter = Assets_upvr.Images.RoundedRect.SliceCenter;
			LayoutOrder = arg1.props.LayoutOrder;
		}, module)
	end)
end
local withSelectionCursorProvider_upvr = UIBlox.App.SelectionImage.withSelectionCursorProvider
function any_extend_result1_upvr.render(arg1) -- Line 216
	--[[ Upvalues[1]:
		[1]: withSelectionCursorProvider_upvr (readonly)
	]]
	return withSelectionCursorProvider_upvr(function(arg1_9) -- Line 217
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		return arg1:renderWithSelectionCursor(arg1_9)
	end)
end
function any_extend_result1_upvr.didUpdate(arg1, arg2) -- Line 222
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [5] 4. Error Block 2 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [5] 4. Error Block 2 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [21] 14. Error Block 5 start (CF ANALYSIS FAILED)
	arg1.textBoxRef.current:ReleaseFocus()
	do
		return
	end
	-- KONSTANTERROR: [21] 14. Error Block 5 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [29] 19. Error Block 12 start (CF ANALYSIS FAILED)
	if arg1.props.enabled and not arg2.enabled and arg1.props.autoFocusOnEnabled and arg1.textBoxRef.current then
		arg1.textBoxRef.current:CaptureFocus()
	end
	-- KONSTANTERROR: [29] 19. Error Block 12 end (CF ANALYSIS FAILED)
end
local Cryo_upvr = require(CorePackages.Packages.Cryo)
return Roact_upvr.forwardRef(function(arg1, arg2) -- Line 235
	--[[ Upvalues[3]:
		[1]: Roact_upvr (readonly)
		[2]: any_extend_result1_upvr (readonly)
		[3]: Cryo_upvr (readonly)
	]]
	local module_2 = {}
	module_2.textBoxRef = arg2
	return Roact_upvr.createElement(any_extend_result1_upvr, Cryo_upvr.Dictionary.join(arg1, module_2))
end)