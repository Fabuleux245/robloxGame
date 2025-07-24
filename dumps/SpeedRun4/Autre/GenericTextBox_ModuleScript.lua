-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:20:19
-- Luau version 6, Types version 3
-- Time taken: 0.003681 seconds

local Parent = script:FindFirstAncestor("AuthCommon").Parent
local Roact_upvr = require(Parent.Roact)
local UIBlox = require(Parent.UIBlox)
local GetFFlagLuaAppFixSelectionCursor_upvr = require(Parent.SharedFlags).GetFFlagLuaAppFixSelectionCursor
local any_extend_result1 = Roact_upvr.PureComponent:extend("GenericTextBox")
any_extend_result1.defaultProps = {
	PaddingX = 0;
	PaddingY = 0;
}
local withSelectionCursorProvider_upvr = UIBlox.App.SelectionImage.withSelectionCursorProvider
function any_extend_result1.render(arg1) -- Line 25
	--[[ Upvalues[2]:
		[1]: GetFFlagLuaAppFixSelectionCursor_upvr (readonly)
		[2]: withSelectionCursorProvider_upvr (readonly)
	]]
	if GetFFlagLuaAppFixSelectionCursor_upvr() then
		return withSelectionCursorProvider_upvr(function(arg1_2) -- Line 27
			--[[ Upvalues[1]:
				[1]: arg1 (readonly)
			]]
			return arg1:renderWithSelectionCursor(arg1_2)
		end)
	end
	return arg1:renderWithSelectionCursor(nil)
end
local CursorKind_upvr = UIBlox.App.SelectionImage.CursorKind
local GetFFlagLuaAppEnableOpenTypeSupport_upvr = require(Parent.SharedFlags).GetFFlagLuaAppEnableOpenTypeSupport
local OpenTypeSupport_upvr = UIBlox.Utility.OpenTypeSupport
local ImageSetLabel_upvr = UIBlox.Core.ImageSet.ImageSetLabel
local GetImageData_upvr = require(Parent.RobloxAppAssets).GetImageData
function any_extend_result1.renderWithSelectionCursor(arg1, arg2) -- Line 35
	--[[ Upvalues[7]:
		[1]: GetFFlagLuaAppFixSelectionCursor_upvr (readonly)
		[2]: CursorKind_upvr (readonly)
		[3]: GetFFlagLuaAppEnableOpenTypeSupport_upvr (readonly)
		[4]: OpenTypeSupport_upvr (readonly)
		[5]: Roact_upvr (readonly)
		[6]: ImageSetLabel_upvr (readonly)
		[7]: GetImageData_upvr (readonly)
	]]
	local TextInputType = arg1.props.TextInputType
	local PaddingX = arg1.props.PaddingX
	local PaddingY = arg1.props.PaddingY
	local var17
	local var18
	if GetFFlagLuaAppFixSelectionCursor_upvr() then
		var17 = arg2(CursorKind_upvr.InputButton)
	end
	local var19
	if GetFFlagLuaAppEnableOpenTypeSupport_upvr() then
		if arg1.props.openTypeFeatures == nil then
			if TextInputType == Enum.TextInputType.Password or TextInputType == Enum.TextInputType.PasswordShown or TextInputType == Enum.TextInputType.OneTimePassword then
				var19 = OpenTypeSupport_upvr:getPasswordStylisticAlternative()
			elseif TextInputType == Enum.TextInputType.Username then
				var19 = OpenTypeSupport_upvr:getUserNameStylisticAlternative()
				-- KONSTANTWARNING: GOTO [178] #101
			end
		else
			var19 = arg1.props.openTypeFeatures
		end
	else
		var19 = nil
	end
	local module_2 = {
		Size = arg1.props.Size;
		Position = arg1.props.Position;
		LayoutOrder = arg1.props.LayoutOrder;
		BackgroundTransparency = 1;
		Image = GetImageData_upvr("LuaApp/buttons/buttonFill") or "LuaApp/buttons/buttonFill";
		ImageColor3 = arg1.props.Color;
		ImageTransparency = arg1.props.Transparency;
		BorderSizePixel = 0;
		ScaleType = Enum.ScaleType.Slice;
	}
	var18 = 9
	module_2.SliceCenter = Rect.new(8, 8, 9, var18)
	local module = {}
	local tbl = {}
	var18 = UDim.new(0, PaddingY)
	tbl.PaddingTop = var18
	var18 = UDim.new(0, PaddingY)
	tbl.PaddingBottom = var18
	var18 = UDim.new(0, PaddingX)
	tbl.PaddingLeft = var18
	var18 = UDim.new(0, PaddingX)
	tbl.PaddingRight = var18
	module.UIPadding = Roact_upvr.createElement("UIPadding", tbl)
	local tbl_2 = {}
	var18 = UDim2.new(1, 0, 1, 0)
	tbl_2.Size = var18
	var18 = UDim2.new(0.5, 0, 0.5, 0)
	tbl_2.Position = var18
	var18 = Vector2.new(0.5, 0.5)
	tbl_2.AnchorPoint = var18
	tbl_2.Text = arg1.props.Text
	tbl_2.PlaceholderText = arg1.props.PlaceholderText
	tbl_2.PlaceholderColor3 = arg1.props.PlaceholderColor
	tbl_2.Font = arg1.props.Font
	tbl_2.TextSize = arg1.props.TextSize
	tbl_2.TextColor3 = arg1.props.TextColor
	tbl_2.TextTransparency = arg1.props.TextTransparency
	tbl_2.TextXAlignment = arg1.props.TextXAlignment
	var18 = Enum.TextYAlignment.Center
	tbl_2.TextYAlignment = var18
	var18 = 1
	tbl_2.BackgroundTransparency = var18
	tbl_2.ClearTextOnFocus = arg1.props.ClearTextOnFocus
	var18 = true
	tbl_2.OverlayNativeInput = var18
	var18 = true
	tbl_2.ClipsDescendants = var18
	tbl_2.TextInputType = TextInputType
	tbl_2.ReturnKeyType = arg1.props.ReturnKeyType
	tbl_2.ManualFocusRelease = arg1.props.ManualFocusRelease
	tbl_2.NextSelectionDown = arg1.props.NextSelectionDown
	tbl_2.NextSelectionLeft = arg1.props.NextSelectionLeft
	tbl_2.NextSelectionRight = arg1.props.NextSelectionRight
	tbl_2.NextSelectionUp = arg1.props.NextSelectionUp
	tbl_2.SelectionImageObject = var17
	var18 = var19 or nil
	tbl_2.OpenTypeFeatures = var18
	if var19 then
		var18 = true
	else
		var18 = nil
	end
	tbl_2.RichText = var18
	var18 = Roact_upvr.Ref
	tbl_2[var18] = arg1.props.TextBoxRef
	var18 = Roact_upvr.Change.Text
	tbl_2[var18] = arg1.props.onChangeText
	var18 = Roact_upvr.Event.AncestryChanged
	tbl_2[var18] = arg1.props.onAncestryChanged
	var18 = Roact_upvr.Event.ReturnPressedFromOnScreenKeyboard
	tbl_2[var18] = arg1.props.onReturnPressedFromOnScreenKeyboard
	var18 = Roact_upvr.Event.Focused
	tbl_2[var18] = arg1.props.onFocused
	var18 = Roact_upvr.Event.FocusLost
	tbl_2[var18] = arg1.props.onFocusLost
	var18 = Roact_upvr.Event.MouseEnter
	tbl_2[var18] = arg1.props.onMouseEnter
	var18 = Roact_upvr.Event.MouseLeave
	tbl_2[var18] = arg1.props.onMouseLeave
	module.TextBox = Roact_upvr.createElement("TextBox", tbl_2)
	return Roact_upvr.createElement(ImageSetLabel_upvr, module_2, module)
end
return any_extend_result1