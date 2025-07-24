-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:47:10
-- Luau version 6, Types version 3
-- Time taken: 0.006325 seconds

local CorePackages = game:GetService("CorePackages")
local Roact_upvr = require(CorePackages.Packages.Roact)
local t = require(CorePackages.Packages.t)
local UIBlox = require(CorePackages.Packages.UIBlox)
local any_extend_result1 = Roact_upvr.PureComponent:extend("NameTextBox")
any_extend_result1.validateProps = t.strictInterface({
	Size = t.optional(t.UDim2);
	Position = t.optional(t.UDim2);
	centerText = t.optional(t.boolean);
	maxLength = t.optional(t.number);
	onNameUpdated = t.callback;
	LayoutOrder = t.optional(t.number);
	nameTextBoxRef = t.optional(t.table);
	NextSelectionDown = t.optional(t.table);
	defaultName = t.optional(t.string);
	invalidInputText = t.optional(t.string);
})
any_extend_result1.defaultProps = {
	maxLength = 50;
	centerText = true;
	invalidInputText = require(CorePackages.Workspace.Packages.RobloxTranslator):FormatByKey("CoreScripts.PublishAssetPrompt.InvalidName");
}
local function _(arg1, arg2) -- Line 47, Named "isNameTooLong"
	local utf8_len_result1_2 = utf8.len(utf8.nfcnormalize(arg1))
	local var9
	if utf8_len_result1_2 == nil then
		var9 = true
		return var9
	end
	if arg2 >= utf8_len_result1_2 then
		var9 = false
	else
		var9 = true
	end
	return var9
end
function any_extend_result1.init(arg1) -- Line 56
	arg1:setState({
		name = arg1.props.defaultName or "";
		lastValidName = "";
		isNameValid = true;
	})
	arg1.wasInitiallyFocused = false
	function arg1.tryFocusTextBox() -- Line 65
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		local var12
		if var12 then
		else
			var12 = arg1.props.nameTextBoxRef
			if var12 then
				var12 = arg1.props.nameTextBoxRef:getValue()
			end
			if var12 and var12:IsDescendantOf(game) then
				var12:CaptureFocus()
				arg1.wasInitiallyFocused = true
			end
		end
	end
	function arg1.onTextChanged(arg1_2) -- Line 77
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
		-- KONSTANTERROR: [0] 1. Error Block 16 start (CF ANALYSIS FAILED)
		local Text = arg1_2.Text
		local maxLength = arg1.props.maxLength
		local utf8_len_result1 = utf8.len(utf8.nfcnormalize(Text))
		local var17
		if utf8_len_result1 == nil then
			var17 = true
			-- KONSTANTWARNING: GOTO [24] #18
		end
		-- KONSTANTERROR: [0] 1. Error Block 16 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [19] 14. Error Block 17 start (CF ANALYSIS FAILED)
		if maxLength >= utf8_len_result1 then
			var17 = false
		else
			var17 = true
		end
		if var17 then
			var17 = utf8.offset(Text, maxLength + 1) - 1
			local string_sub_result1 = string.sub(Text, 1, var17)
			arg1_2.Text = string_sub_result1
		end
		var17 = arg1:checkIsNameValid(string_sub_result1)
		local lastValidName = arg1.state.lastValidName
		if var17 then
			lastValidName = arg1_2.Text
		end
		arg1:setState({
			lastValidName = lastValidName;
			isNameValid = var17;
			name = string_sub_result1;
		})
		arg1.props.onNameUpdated(string_sub_result1, var17)
		-- KONSTANTERROR: [19] 14. Error Block 17 end (CF ANALYSIS FAILED)
	end
end
local game_DefineFastFlag_result1_upvr = game:DefineFastFlag("RemoveNameRegex", false)
function any_extend_result1.checkIsNameValid(arg1, arg2) -- Line 104
	--[[ Upvalues[1]:
		[1]: game_DefineFastFlag_result1_upvr (readonly)
	]]
	if not game_DefineFastFlag_result1_upvr then
		if not string.match(arg2, "[0-9a-zA-Z_'%s]+$") then
			return false
		end
		if string.sub(arg2, 1, 1) == ' ' then
			return false
		end
	end
	if string.match(arg2, "^%s*$") then
		return false
	end
	return true
end
local Focusable_upvr = require(CorePackages.Packages.RoactGamepad).Focusable
local CursorKind_upvr = UIBlox.App.SelectionImage.CursorKind
function any_extend_result1.renderWithProviders(arg1, arg2, arg3) -- Line 124
	--[[ Upvalues[3]:
		[1]: Roact_upvr (readonly)
		[2]: Focusable_upvr (readonly)
		[3]: CursorKind_upvr (readonly)
	]]
	local Font = arg2.Font
	local Theme = arg2.Theme
	local Body = Font.Body
	local module = {}
	local tbl_3 = {}
	local tbl_4 = {
		Text = arg1.state.name;
		BackgroundTransparency = 1;
		ClearTextOnFocus = false;
		Font = Body.Font;
		TextSize = Font.BaseSize * Body.RelativeSize;
		PlaceholderColor3 = Theme.PlaceHolder.Color;
		PlaceholderText = arg1.props.defaultName;
		Position = UDim2.fromOffset(6, 0);
		Size = UDim2.new(1, -12, 1, 0);
		TextColor3 = Theme.TextDefault.Color;
		TextTruncate = Enum.TextTruncate.AtEnd;
		TextWrapped = true;
	}
	local Left = Enum.TextXAlignment.Left
	tbl_4.TextXAlignment = Left
	local var33
	if not arg1.props.centerText then
		Left = Enum.TextYAlignment.Top
	else
		Left = nil
	end
	tbl_4.TextYAlignment = Left
	tbl_4.OverlayNativeInput = true
	tbl_4[Roact_upvr.Change.Text] = arg1.onTextChanged
	tbl_4.SelectionImageObject = arg3(CursorKind_upvr.InputFields)
	tbl_4.NextSelectionDown = arg1.props.NextSelectionDown
	tbl_4[Roact_upvr.Ref] = arg1.props.nameTextBoxRef
	tbl_4[Roact_upvr.Event.AncestryChanged] = arg1.tryFocusTextBox
	local tbl_2 = {}
	local tbl = {}
	var33 = UDim.new(0, 6)
	tbl.PaddingLeft = var33
	var33 = UDim.new(0, 6)
	tbl.PaddingRight = var33
	if not arg1.props.centerText then
		var33 = UDim.new(0, 6)
	else
		var33 = nil
	end
	tbl.PaddingTop = var33
	tbl_2.UIPadding = Roact_upvr.createElement("UIPadding", tbl)
	tbl_3.Textbox = Roact_upvr.createElement(Focusable_upvr.TextBox, tbl_4, tbl_2)
	tbl_3.UICorner = Roact_upvr.createElement("UICorner", {
		CornerRadius = UDim.new(0, 8);
	})
	tbl_3.UIStroke = Roact_upvr.createElement("UIStroke", {
		Thickness = 0.5;
		Transparency = Theme.Divider.Transparency;
		Color = Theme.Divider.Color;
		ApplyStrokeMode = Enum.ApplyStrokeMode.Border;
	})
	module.TextBoxContainer = Roact_upvr.createElement("Frame", {
		BackgroundColor3 = Theme.BackgroundMuted.Color;
		LayoutOrder = 1;
		Size = arg1.props.Size;
	}, tbl_3)
	local var38 = not arg1.state.isNameValid
	if var38 then
		var38 = Roact_upvr.createElement
		var38 = var38("TextLabel", {
			Position = UDim2.new(0, 0, 1, 0);
			BackgroundTransparency = 1;
			Text = arg1.props.invalidInputText;
			LayoutOrder = 2;
			TextXAlignment = Enum.TextXAlignment.Left;
			TextYAlignment = Enum.TextYAlignment.Top;
			Size = UDim2.new(1, 0, 0, 20);
			TextColor3 = Theme.Alert.Color;
			TextWrapped = true;
			Font = Font.Body.Font;
			TextSize = 12;
		})
	end
	module.WarningText = var38
	return Roact_upvr.createElement("Frame", {
		BackgroundTransparency = 1;
		Size = arg1.props.Size;
		Position = arg1.props.Position;
		LayoutOrder = arg1.props.LayoutOrder;
	}, module)
end
local withStyle_upvr = UIBlox.Style.withStyle
local withSelectionCursorProvider_upvr = UIBlox.App.SelectionImage.withSelectionCursorProvider
function any_extend_result1.render(arg1) -- Line 200
	--[[ Upvalues[2]:
		[1]: withStyle_upvr (readonly)
		[2]: withSelectionCursorProvider_upvr (readonly)
	]]
	return withStyle_upvr(function(arg1_3) -- Line 201
		--[[ Upvalues[2]:
			[1]: withSelectionCursorProvider_upvr (copied, readonly)
			[2]: arg1 (readonly)
		]]
		return withSelectionCursorProvider_upvr(function(arg1_4) -- Line 202
			--[[ Upvalues[2]:
				[1]: arg1 (copied, readonly)
				[2]: arg1_3 (readonly)
			]]
			return arg1:renderWithProviders(arg1_3, arg1_4)
		end)
	end)
end
function any_extend_result1.didMount(arg1) -- Line 208
	arg1.tryFocusTextBox()
end
return any_extend_result1