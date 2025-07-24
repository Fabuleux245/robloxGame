-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:20:26
-- Luau version 6, Types version 3
-- Time taken: 0.005245 seconds

local AuthCommon = script:FindFirstAncestor("AuthCommon")
local Parent = AuthCommon.Parent
local Roact_upvr = require(Parent.Roact)
local AuthStatefulRoundCornerBorder_upvr = require(AuthCommon.Components.AuthStatefulRoundCornerBorder)
local any_extend_result1 = Roact_upvr.PureComponent:extend(script.Name)
any_extend_result1.defaultProps = {
	text = "";
	textInputType = Enum.TextInputType.NoSuggestions;
	textInputHeight = 30;
	textInputListPadding = 12;
	borderState = AuthStatefulRoundCornerBorder_upvr.BorderState.Default;
}
local GetFFlagEnableAuthStatefulTextInputUpdates_upvr = require(Parent.SharedFlags).GetFFlagEnableAuthStatefulTextInputUpdates
local withStyle_upvr = require(Parent.UIBlox).Style.withStyle
local game_DefineFastFlag_result1_upvr = game:DefineFastFlag("EnableTextInputBoxOverrideColor", false)
local PasswordBox_upvr = require(AuthCommon.Components.PasswordBox)
local GenericTextBox_upvr = require(AuthCommon.Components.GenericTextBox)
function any_extend_result1.render(arg1) -- Line 31
	--[[ Upvalues[7]:
		[1]: GetFFlagEnableAuthStatefulTextInputUpdates_upvr (readonly)
		[2]: withStyle_upvr (readonly)
		[3]: game_DefineFastFlag_result1_upvr (readonly)
		[4]: Roact_upvr (readonly)
		[5]: AuthStatefulRoundCornerBorder_upvr (readonly)
		[6]: PasswordBox_upvr (readonly)
		[7]: GenericTextBox_upvr (readonly)
	]]
	local props_upvr = arg1.props
	local var13_upvr
	if GetFFlagEnableAuthStatefulTextInputUpdates_upvr() then
		props_upvr = arg1.props.textInputListPadding
	else
		props_upvr = 12
	end
	var13_upvr = arg1.props
	if arg1.props.textInputType ~= Enum.TextInputType.Password then
		var13_upvr = false
	else
		var13_upvr = true
	end
	local layoutOrder_upvr = arg1.props.layoutOrder
	local labelText_upvr = arg1.props.labelText
	local textInputHeight_upvr = props_upvr.textInputHeight
	local borderState_upvr = arg1.props.borderState
	local text_upvr = arg1.props.text
	local placeholderText_upvr = arg1.props.placeholderText
	local onChangeTextCallback_upvr = arg1.props.onChangeTextCallback
	local textInputType_upvr = arg1.props.textInputType
	local onFocused_upvr = arg1.props.onFocused
	local onFocusLost_upvr = arg1.props.onFocusLost
	local errorText_upvr = var13_upvr.errorText
	return withStyle_upvr(function(arg1_2) -- Line 49
		--[[ Upvalues[20]:
			[1]: game_DefineFastFlag_result1_upvr (copied, readonly)
			[2]: arg1 (readonly)
			[3]: Roact_upvr (copied, readonly)
			[4]: layoutOrder_upvr (readonly)
			[5]: props_upvr (readonly)
			[6]: labelText_upvr (readonly)
			[7]: AuthStatefulRoundCornerBorder_upvr (copied, readonly)
			[8]: textInputHeight_upvr (readonly)
			[9]: GetFFlagEnableAuthStatefulTextInputUpdates_upvr (copied, readonly)
			[10]: borderState_upvr (readonly)
			[11]: var13_upvr (readonly)
			[12]: PasswordBox_upvr (copied, readonly)
			[13]: text_upvr (readonly)
			[14]: placeholderText_upvr (readonly)
			[15]: onChangeTextCallback_upvr (readonly)
			[16]: GenericTextBox_upvr (copied, readonly)
			[17]: textInputType_upvr (readonly)
			[18]: onFocused_upvr (readonly)
			[19]: onFocusLost_upvr (readonly)
			[20]: errorText_upvr (readonly)
		]]
		-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
		local Color = arg1_2.Theme.BackgroundUIContrast.Color
		local Color_2 = arg1_2.Theme.UIDefault.Color
		local Color_3 = arg1_2.Theme.TextEmphasis.Color
		local var29
		if game_DefineFastFlag_result1_upvr then
			if arg1.props.placeholderTextColor then
				Color_2 = arg1.props.placeholderTextColor
			end
			if arg1.props.labelTextColor then
				Color_3 = arg1.props.labelTextColor
			end
			if arg1.props.textBarColor then
				Color = arg1.props.textBarColor
			end
		end
		local module = {}
		local tbl_7 = {
			SortOrder = Enum.SortOrder.LayoutOrder;
			HorizontalAlignment = Enum.HorizontalAlignment.Center;
		}
		var29 = 0
		tbl_7.Padding = UDim.new(var29, props_upvr)
		module.ListLayout = Roact_upvr.createElement("UIListLayout", tbl_7)
		local var33 = labelText_upvr
		if var33 then
			var33 = Roact_upvr.createElement
			local tbl_3 = {
				LayoutOrder = 1;
			}
			var29 = 1
			tbl_3.Size = UDim2.new(var29, 0, 0, 0)
			tbl_3.AutomaticSize = Enum.AutomaticSize.Y
			tbl_3.BackgroundTransparency = 1
			tbl_3.Text = labelText_upvr
			tbl_3.TextWrapped = true
			var29 = arg1_2.Font.CaptionHeader
			tbl_3.Font = var29.Font
			var29 = arg1_2.Font.BaseSize
			tbl_3.TextSize = var29 * arg1_2.Font.CaptionHeader.RelativeSize
			tbl_3.TextColor3 = Color_3
			var29 = arg1_2.Theme.TextEmphasis
			tbl_3.TextTransparency = var29.Transparency
			tbl_3.TextXAlignment = Enum.TextXAlignment.Left
			var33 = var33("TextLabel", tbl_3)
		end
		module.TextBoxLabel = var33
		local tbl_2 = {}
		var29 = 1
		local udim2 = UDim2.new(var29, 0, 0, textInputHeight_upvr)
		tbl_2.size = udim2
		var29 = GetFFlagEnableAuthStatefulTextInputUpdates_upvr()
		if var29 then
			udim2 = 2
		else
			udim2 = layoutOrder_upvr
		end
		tbl_2.layoutOrder = udim2
		tbl_2.borderState = borderState_upvr
		local tbl_4 = {}
		var29 = var13_upvr
		if var29 then
			var29 = Roact_upvr.createElement
			local tbl_6 = {}
			if not GetFFlagEnableAuthStatefulTextInputUpdates_upvr() then
			else
			end
			tbl_6.LayoutOrder = nil
			tbl_6.Size = UDim2.new(1, 0, 1, 0)
			tbl_6.Color = Color
			tbl_6.Transparency = arg1_2.Theme.BackgroundUIContrast.Transparency
			tbl_6.TextSize = arg1_2.Font.BaseSize * arg1_2.Font.Body.RelativeSize
			tbl_6.TextColor = arg1_2.Theme.TextDefault.Color
			tbl_6.TextTransparency = arg1_2.Theme.TextDefault.Transparency
			tbl_6.TextXAlignment = Enum.TextXAlignment.Left
			tbl_6.Text = text_upvr
			tbl_6.PlaceholderText = placeholderText_upvr
			tbl_6.PlaceholderColor3 = Color_2
			tbl_6.ManualFocusRelease = false
			tbl_6.CaptureFocusOnTapStart = true
			tbl_6.onChangeText = onChangeTextCallback_upvr
			var29 = var29(PasswordBox_upvr, tbl_6)
		end
		tbl_4.PasswordBox = var29
		var29 = not var13_upvr
		local var39
		if var29 then
			var29 = Roact_upvr.createElement
			local tbl_5 = {}
			if not GetFFlagEnableAuthStatefulTextInputUpdates_upvr() then
				var39 = 2
			else
				var39 = nil
			end
			tbl_5.LayoutOrder = var39
			var39 = UDim2.new(1, 0, 1, 0)
			tbl_5.Size = var39
			var39 = text_upvr
			tbl_5.Text = var39
			tbl_5.Font = arg1_2.Font.Body.Font
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect
			tbl_5.TextSize = arg1_2.Font.BaseSize * arg1_2.Font.Body.RelativeSize
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect
			tbl_5.TextColor = arg1_2.Theme.TextDefault.Color
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect
			tbl_5.TextTransparency = arg1_2.Theme.TextDefault.Transparency
			var39 = Enum.TextXAlignment.Left
			tbl_5.TextXAlignment = var39
			var39 = false
			tbl_5.ClearTextOnFocus = var39
			tbl_5.Color = Color
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect
			tbl_5.Transparency = arg1_2.Theme.BackgroundUIContrast.Transparency
			var39 = textInputType_upvr
			tbl_5.TextInputType = var39
			var39 = onChangeTextCallback_upvr
			tbl_5.onChangeText = var39
			var39 = placeholderText_upvr
			tbl_5.PlaceholderText = var39
			tbl_5.PlaceholderColor = Color_2
			var39 = 12
			tbl_5.PaddingX = var39
			var39 = onFocused_upvr
			tbl_5.onFocused = var39
			var39 = onFocusLost_upvr
			tbl_5.onFocusLost = var39
			if GetFFlagEnableAuthStatefulTextInputUpdates_upvr then
				var39 = arg1.props.textBoxRef
			else
				var39 = nil
			end
			tbl_5.TextBoxRef = var39
			var29 = var29(GenericTextBox_upvr, tbl_5)
		end
		tbl_4.GenericTextBox = var29
		module.TextBox = Roact_upvr.createElement(AuthStatefulRoundCornerBorder_upvr, tbl_2, tbl_4)
		local var41 = errorText_upvr
		if var41 then
			var41 = Roact_upvr.createElement
			local tbl = {
				LayoutOrder = 3;
				BackgroundTransparency = 1;
				Text = errorText_upvr;
			}
			var29 = arg1_2.Font.CaptionBody.RelativeSize
			tbl.TextSize = var29 * arg1_2.Font.BaseSize
			var29 = arg1_2.Font.SubHeader1
			tbl.Font = var29.Font
			var29 = arg1_2.Theme.Alert
			tbl.TextColor3 = var29.Color
			tbl.TextXAlignment = Enum.TextXAlignment.Left
			tbl.AutomaticSize = Enum.AutomaticSize.Y
			tbl.TextWrapped = true
			var29 = 1
			var39 = 0
			tbl.Size = UDim2.new(var29, 0, 0, var39)
			var41 = var41("TextLabel", tbl)
		end
		module.ErrorText = var41
		return Roact_upvr.createElement("Frame", {
			AutomaticSize = Enum.AutomaticSize.Y;
			BackgroundTransparency = 1;
			LayoutOrder = layoutOrder_upvr;
			Size = UDim2.new(1, 0, 0, 0);
		}, module)
	end)
end
return any_extend_result1