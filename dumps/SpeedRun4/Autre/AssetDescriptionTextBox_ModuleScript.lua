-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:47:08
-- Luau version 6, Types version 3
-- Time taken: 0.011348 seconds

local CorePackages = game:GetService("CorePackages")
local TextService_upvr = game:GetService("TextService")
local Roact_upvr = require(CorePackages.Packages.Roact)
local t = require(CorePackages.Packages.t)
local UIBlox = require(CorePackages.Packages.UIBlox)
local GetFFlagValidateDescription_upvr = require(script.Parent.Parent.GetFFlagValidateDescription)
local any_extend_result1 = Roact_upvr.PureComponent:extend("AssetDescriptionTextBox")
any_extend_result1.validateProps = t.strictInterface({
	Size = t.optional(t.UDim2);
	Position = t.optional(t.UDim2);
	onAssetDescriptionUpdated = t.callback;
	descriptionTextBoxRef = t.optional(t.table);
	NextSelectionUp = t.optional(t.table);
	assetType = t.optional(t.enum(Enum.AssetType));
	defaultDescription = t.optional(t.string);
})
local function _(arg1) -- Line 53, Named "getStringLength"
	local utf8_len_result1_2 = utf8.len(utf8.nfcnormalize(arg1))
	if utf8_len_result1_2 == nil then
		return 0
	end
	return utf8_len_result1_2
end
local function _(arg1, arg2) -- Line 62, Named "isDescriptionTooLong"
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local utf8_len_result1 = utf8.len(utf8.nfcnormalize(arg1))
	local var11
	if utf8_len_result1 == nil then
		var11 = 0
	else
		var11 = utf8_len_result1
	end
	if arg2 >= var11 then
	else
	end
	return true
end
function any_extend_result1.init(arg1) -- Line 66
	arg1:setState({
		lastValidDescription = "";
		assetDescription = arg1.props.defaultDescription or "";
		descriptionLength = 0;
		scrollingFrameHeight = 100;
		canvasHeight = 100;
		canvasPosition = 0;
		cursorPosition = 0;
		textBoxWidth = 100;
		isDescriptionValid = true;
	})
	arg1.wasInitiallyFocused = false
	function arg1.tryFocusTextBox() -- Line 81
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		if arg1.wasInitiallyFocused then
		else
			local any_getValue_result1 = arg1.props.descriptionTextBoxRef:getValue()
			if any_getValue_result1 and any_getValue_result1:IsDescendantOf(game) then
				any_getValue_result1:CaptureFocus()
				arg1.wasInitiallyFocused = true
			end
		end
	end
end
function any_extend_result1.calculateNeedsRescroll(arg1, arg2, arg3) -- Line 95
	--[[ Upvalues[1]:
		[1]: TextService_upvr (readonly)
	]]
	if arg1.state.cursorPosition == -1 then
	else
		local var15 = arg3.RelativeSize * arg2.Font.BaseSize
		local any_GetTextSize_result1 = TextService_upvr:GetTextSize(arg1.state.assetDescription or "":sub(1, arg1.state.cursorPosition - 1), var15, arg3.Font, Vector2.new(arg1.state.textBoxWidth, 10000))
		if arg1.state.scrollingFrameHeight + arg1.state.canvasPosition < any_GetTextSize_result1.Y then
			arg1:setState({
				canvasPosition = any_GetTextSize_result1.Y - arg1.state.scrollingFrameHeight;
			})
			return
		end
		if any_GetTextSize_result1.Y - var15 < arg1.state.canvasPosition then
			arg1:setState({
				canvasPosition = any_GetTextSize_result1.Y - var15;
			})
		end
	end
end
function any_extend_result1.onTextChanged(arg1, arg2, arg3, arg4) -- Line 128
	--[[ Upvalues[2]:
		[1]: GetFFlagValidateDescription_upvr (readonly)
		[2]: TextService_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 35 start (CF ANALYSIS FAILED)
	local Text = arg2.Text
	if GetFFlagValidateDescription_upvr() and Text == "" then
	else
	end
	local utf8_len_result1_3 = utf8.len(utf8.nfcnormalize(Text))
	if utf8_len_result1_3 == nil then
		-- KONSTANTWARNING: GOTO [28] #22
	end
	-- KONSTANTERROR: [0] 1. Error Block 35 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [26] 20. Error Block 28 start (CF ANALYSIS FAILED)
	if 1000 >= utf8_len_result1_3 then
		-- KONSTANTWARNING: GOTO [33] #26
	end
	-- KONSTANTERROR: [26] 20. Error Block 28 end (CF ANALYSIS FAILED)
end
local ImageSetLabel_upvr = UIBlox.Core.ImageSet.ImageSetLabel
local component_assets_circle_17_stroke_1_upvr = UIBlox.App.ImageSet.Images["component_assets/circle_17_stroke_1"]
local Rect_new_result1_upvr = Rect.new(8, 8, 8, 8)
local Focusable_upvr = require(CorePackages.Packages.RoactGamepad).Focusable
local RobloxTranslator_upvr = require(CorePackages.Workspace.Packages.RobloxTranslator)
local CursorKind_upvr = UIBlox.App.SelectionImage.CursorKind
function any_extend_result1.renderWithProviders(arg1, arg2, arg3) -- Line 161
	--[[ Upvalues[8]:
		[1]: GetFFlagValidateDescription_upvr (readonly)
		[2]: Roact_upvr (readonly)
		[3]: ImageSetLabel_upvr (readonly)
		[4]: component_assets_circle_17_stroke_1_upvr (readonly)
		[5]: Rect_new_result1_upvr (readonly)
		[6]: Focusable_upvr (readonly)
		[7]: RobloxTranslator_upvr (readonly)
		[8]: CursorKind_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local Font = arg2.Font
	local CaptionBody_upvr_2 = Font.CaptionBody
	local Theme_2 = arg2.Theme
	local var53
	if GetFFlagValidateDescription_upvr() then
	else
	end
	local module_2 = {
		TextboxContainer = Roact_upvr.createElement(ImageSetLabel_upvr, {
			BackgroundTransparency = 1;
			Image = component_assets_circle_17_stroke_1_upvr;
			ImageColor3 = Theme_2.UIDefault.Color;
			ImageTransparency = Theme_2.UIDefault.Transparency;
			LayoutOrder = 1;
			ScaleType = Enum.ScaleType.Slice;
			Size = UDim2.new(1, 0, 1, -15);
			SliceCenter = Rect_new_result1_upvr;
		}, {
			ScrollingFrame = Roact_upvr.createElement("ScrollingFrame", {
				Size = UDim2.fromScale(1, 1);
				BackgroundTransparency = 1;
				CanvasPosition = Vector2.new(0, arg1.state.canvasPosition);
				AutomaticCanvasSize = Enum.AutomaticSize.Y;
				ScrollBarThickness = 12;
				BorderSizePixel = 0;
				[Roact_upvr.Change.CanvasPosition] = function(arg1_7) -- Line 191
					--[[ Upvalues[1]:
						[1]: arg1 (readonly)
					]]
					arg1:setState({
						canvasPosition = arg1_7.CanvasPosition.Y;
					})
				end;
				[Roact_upvr.Change.AbsoluteSize] = function(arg1_8) -- Line 197
					--[[ Upvalues[3]:
						[1]: arg1 (readonly)
						[2]: arg2 (readonly)
						[3]: CaptionBody_upvr_2 (readonly)
					]]
					arg1:setState({
						scrollingFrameHeight = arg1_8.AbsoluteSize.Y;
					})
					arg1:calculateNeedsRescroll(arg2, CaptionBody_upvr_2)
				end;
			}, {
				Textbox = Roact_upvr.createElement(Focusable_upvr.TextBox, {
					Text = arg1.state.assetDescription;
					BackgroundTransparency = 1;
					ClearTextOnFocus = false;
					Font = Font.Header2.Font;
					TextSize = Font.BaseSize * CaptionBody_upvr_2.RelativeSize;
					PlaceholderColor3 = Theme_2.PlaceHolder.Color;
					PlaceholderText = RobloxTranslator_upvr:FormatByKey("CoreScripts.PublishAssetPrompt.AssetDescriptionPlaceholder");
					Position = UDim2.fromOffset(6, 0);
					Size = UDim2.new(1, -24, 0, arg1.state.canvasHeight);
					MultiLine = true;
					TextColor3 = Theme_2.TextDefault.Color;
					TextTruncate = Enum.TextTruncate.AtEnd;
					TextWrapped = true;
					TextXAlignment = Enum.TextXAlignment.Left;
					TextYAlignment = Enum.TextYAlignment.Top;
					OverlayNativeInput = true;
					NextSelectionUp = arg1.props.NextSelectionUp;
					[Roact_upvr.Change.TextFits] = arg1.onTextFitsChanged;
					SelectionImageObject = arg3(CursorKind_upvr.InputFields);
					[Roact_upvr.Ref] = arg1.props.descriptionTextBoxRef;
					[Roact_upvr.Event.AncestryChanged] = arg1.tryFocusTextBox;
					[Roact_upvr.Change.Text] = function(arg1_9) -- Line 230
						--[[ Upvalues[3]:
							[1]: arg1 (readonly)
							[2]: arg2 (readonly)
							[3]: CaptionBody_upvr_2 (readonly)
						]]
						arg1:onTextChanged(arg1_9, arg2, CaptionBody_upvr_2)
					end;
					[Roact_upvr.Change.AbsoluteSize] = function(arg1_10) -- Line 234
						--[[ Upvalues[3]:
							[1]: arg1 (readonly)
							[2]: arg2 (readonly)
							[3]: CaptionBody_upvr_2 (readonly)
						]]
						arg1:setState({
							textBoxWidth = arg1_10.AbsoluteSize.X;
						})
						arg1:calculateNeedsRescroll(arg2, CaptionBody_upvr_2)
					end;
					[Roact_upvr.Change.CursorPosition] = function(arg1_11) -- Line 241
						--[[ Upvalues[3]:
							[1]: arg1 (readonly)
							[2]: arg2 (readonly)
							[3]: CaptionBody_upvr_2 (readonly)
						]]
						arg1:setState({
							cursorPosition = arg1_11.CursorPosition;
						})
						arg1:calculateNeedsRescroll(arg2, CaptionBody_upvr_2)
					end;
				});
			});
		});
	}
	if 0.9 < arg1.state.descriptionLength / 1000 then
		local tbl_5 = {}
		if GetFFlagValidateDescription_upvr() then
		else
		end
		tbl_5.Size = UDim2.new(1, 0, 0, 15)
		tbl_5.AnchorPoint = Vector2.new(1, 1)
		tbl_5.Position = UDim2.fromScale(1, 1)
		tbl_5.Text = arg1.state.descriptionLength..'/'..1000
		tbl_5.TextXAlignment = Enum.TextXAlignment.Right
		tbl_5.TextColor3 = Theme_2.TextDefault.Color
		tbl_5.BackgroundTransparency = 1
	else
	end
	module_2.LengthDisplay = nil
	local GetFFlagValidateDescription_upvr_result1 = GetFFlagValidateDescription_upvr()
	if GetFFlagValidateDescription_upvr_result1 then
		GetFFlagValidateDescription_upvr_result1 = false
		if GetFFlagValidateDescription_upvr_result1 then
			GetFFlagValidateDescription_upvr_result1 = Roact_upvr.createElement
			GetFFlagValidateDescription_upvr_result1 = GetFFlagValidateDescription_upvr_result1("TextLabel", {
				Position = UDim2.new(0, 0, 1, -15);
				BackgroundTransparency = 1;
				Text = RobloxTranslator_upvr:FormatByKey("CoreScripts.PublishAssetPrompt.InvalidDescription");
				TextXAlignment = Enum.TextXAlignment.Left;
				TextYAlignment = Enum.TextYAlignment.Top;
				Size = UDim2.new(0.8, 0, 0, 20);
				TextColor3 = Theme_2.Alert.Color;
				TextWrapped = true;
				Font = Font.Body.Font;
				TextSize = 12;
			})
		end
	end
	module_2.WarningText = GetFFlagValidateDescription_upvr_result1
	return Roact_upvr.createElement("Frame", {
		BackgroundTransparency = 1;
		Size = arg1.props.Size;
		Position = arg1.props.Position;
	}, module_2)
end
local withStyle_upvr = UIBlox.Style.withStyle
local withSelectionCursorProvider_upvr = UIBlox.App.SelectionImage.withSelectionCursorProvider
function any_extend_result1.render(arg1) -- Line 278
	--[[ Upvalues[2]:
		[1]: withStyle_upvr (readonly)
		[2]: withSelectionCursorProvider_upvr (readonly)
	]]
	return withStyle_upvr(function(arg1_12) -- Line 279
		--[[ Upvalues[2]:
			[1]: withSelectionCursorProvider_upvr (copied, readonly)
			[2]: arg1 (readonly)
		]]
		return withSelectionCursorProvider_upvr(function(arg1_13) -- Line 280
			--[[ Upvalues[2]:
				[1]: arg1 (copied, readonly)
				[2]: arg1_12 (readonly)
			]]
			return arg1:renderWithProviders(arg1_12, arg1_13)
		end)
	end)
end
function any_extend_result1.didMount(arg1) -- Line 286
	arg1.tryFocusTextBox()
end
return require(CorePackages.Packages.RoactRodux).connect(function(arg1) -- Line 290, Named "mapStateToProps"
	return {
		assetType = arg1.promptRequest.promptInfo.assetType;
	}
end)(any_extend_result1)