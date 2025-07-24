-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:20:22
-- Luau version 6, Types version 3
-- Time taken: 0.007921 seconds

local UserInputService_upvr = game:GetService("UserInputService")
local AuthCommon = script:FindFirstAncestor("AuthCommon")
local Parent = AuthCommon.Parent
local Roact_upvr = require(Parent.Roact)
local UIBlox = require(Parent.UIBlox)
local GetFFlagLuaAppFixSelectionCursor_upvr = require(Parent.SharedFlags).GetFFlagLuaAppFixSelectionCursor
local any_extend_result1 = Roact_upvr.PureComponent:extend("PasswordBox")
local AreaTest_upvr = require(AuthCommon.Utils.AreaTest)
local game_DefineFastFlag_result1_upvr = game:DefineFastFlag("EnableKeyboardVisibilityCheckOnPasswordFocus", false)
function any_extend_result1.init(arg1) -- Line 40
	--[[ Upvalues[4]:
		[1]: Roact_upvr (readonly)
		[2]: AreaTest_upvr (readonly)
		[3]: game_DefineFastFlag_result1_upvr (readonly)
		[4]: UserInputService_upvr (readonly)
	]]
	arg1.state = {
		hidePassword = true;
		containerSize = Vector2.new(0, 0);
	}
	function arg1.getHidePassword() -- Line 47
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		if arg1.props.hidePassword ~= nil then
			return arg1.props.hidePassword
		end
		return arg1.state.hidePassword
	end
	arg1.isMounted = false
	arg1.passwordBoxRef = Roact_upvr.createRef()
	local any_createRef_result1_upvr = Roact_upvr.createRef()
	function arg1.getPasswordTextBoxRef() -- Line 59
		--[[ Upvalues[2]:
			[1]: arg1 (readonly)
			[2]: any_createRef_result1_upvr (readonly)
		]]
		local TextBoxRef = arg1.props.TextBoxRef
		if not TextBoxRef then
			TextBoxRef = any_createRef_result1_upvr
		end
		return TextBoxRef
	end
	function arg1.isTouchPositionInPasswordBox(arg1_2) -- Line 63
		--[[ Upvalues[2]:
			[1]: arg1 (readonly)
			[2]: AreaTest_upvr (copied, readonly)
		]]
		if not arg1.passwordBoxRef.current then
			return false
		end
		local AbsolutePosition = arg1.passwordBoxRef.current.AbsolutePosition
		return AreaTest_upvr.IsPointInRect(Rect.new(AbsolutePosition, AbsolutePosition + arg1.passwordBoxRef.current.AbsoluteSize), arg1_2)
	end
	arg1.tapBeganInTextbox = false
	function arg1.tapEventBegan(arg1_3, arg2) -- Line 77
		--[[ Upvalues[3]:
			[1]: arg1 (readonly)
			[2]: game_DefineFastFlag_result1_upvr (copied, readonly)
			[3]: UserInputService_upvr (copied, readonly)
		]]
		if arg1.props.CentralOverlayBlocksInput and arg1.props.centralOverlay and arg1.props.centralOverlay.OverlayType ~= nil then
		else
			if game_DefineFastFlag_result1_upvr and not UserInputService_upvr.OnScreenKeyboardVisible then return end
			arg1.tapBeganInTextbox = arg1.isTouchPositionInPasswordBox(arg1_3)
			local current = arg1.getPasswordTextBoxRef().current
			local any_GetFocusedTextBox_result1 = UserInputService_upvr:GetFocusedTextBox()
			if current and any_GetFocusedTextBox_result1 ~= current and arg1.tapBeganInTextbox and arg1.props.CaptureFocusOnTapStart then
				if any_GetFocusedTextBox_result1 then
					any_GetFocusedTextBox_result1:ReleaseFocus()
				end
				current:CaptureFocus()
			end
		end
	end
	function arg1.tapEventEnded(arg1_4, arg2) -- Line 111
		--[[ Upvalues[2]:
			[1]: arg1 (readonly)
			[2]: UserInputService_upvr (copied, readonly)
		]]
		if arg1.tapBeganInTextbox then
			arg1.tapBeganInTextbox = false
		else
			local any_GetFocusedTextBox_result1_2 = UserInputService_upvr:GetFocusedTextBox()
			local current_2 = arg1.getPasswordTextBoxRef().current
			if not any_GetFocusedTextBox_result1_2 or any_GetFocusedTextBox_result1_2 ~= current_2 then return end
			if not arg1.isTouchPositionInPasswordBox(arg1_4) then
				current_2:ReleaseFocus()
			end
		end
	end
	function arg1.onAbsoluteSizeChanged(arg1_5) -- Line 129
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		local AbsoluteSize_upvr = arg1_5.AbsoluteSize
		if 0 < AbsoluteSize_upvr.X and 0 < AbsoluteSize_upvr.Y and arg1.state.containerSize ~= AbsoluteSize_upvr then
			spawn(function() -- Line 135
				--[[ Upvalues[2]:
					[1]: arg1 (copied, readonly)
					[2]: AbsoluteSize_upvr (readonly)
				]]
				if arg1.isMounted then
					arg1:setState({
						containerSize = AbsoluteSize_upvr;
					})
				end
			end)
		end
	end
	function arg1.onTogglerActivated(arg1_6) -- Line 145
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		local onToggleCallback = arg1.props.onToggleCallback
		local any_getHidePassword_result1 = arg1.getHidePassword()
		if onToggleCallback then
			onToggleCallback(any_getHidePassword_result1)
		end
		if arg1.isMounted then
			arg1:setState({
				hidePassword = not any_getHidePassword_result1;
			})
		end
	end
	function arg1.shouldTakeInput(arg1_7) -- Line 160
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		if arg1.props.Disabled then
			return false
		end
		local var32 = true
		if arg1_7.UserInputType ~= Enum.UserInputType.MouseButton1 then
			if arg1_7.UserInputType ~= Enum.UserInputType.Touch then
				var32 = false
			else
				var32 = true
			end
		end
		return not arg1.props.ManualFocusRelease and var32
	end
end
any_extend_result1.defaultProps = {
	TextXAlignment = Enum.TextXAlignment.Left;
	PaddingX = 10;
	PaddingY = 7;
	ClearTextOnFocus = false;
	IsKeyboardOverlayUsed = true;
}
function any_extend_result1.didMount(arg1) -- Line 180
	--[[ Upvalues[1]:
		[1]: UserInputService_upvr (readonly)
	]]
	arg1.isMounted = true
	if arg1.props.IsKeyboardOverlayUsed then
		arg1.inputBeganConnection = UserInputService_upvr.InputBegan:connect(function(arg1_8, arg2) -- Line 184
			--[[ Upvalues[1]:
				[1]: arg1 (readonly)
			]]
			if arg1.shouldTakeInput(arg1_8) then
				arg1.tapEventBegan(arg1_8.Position, arg2)
			end
		end)
		arg1.inputEndedConnection = UserInputService_upvr.InputEnded:connect(function(arg1_9, arg2) -- Line 190
			--[[ Upvalues[1]:
				[1]: arg1 (readonly)
			]]
			if arg1.shouldTakeInput(arg1_9) then
				arg1.tapEventEnded(arg1_9.Position, arg2)
			end
		end)
	end
end
function any_extend_result1.willUnmount(arg1) -- Line 198
	arg1.isMounted = false
	if arg1.props.IsKeyboardOverlayUsed then
		if arg1.inputBeganConnection then
			arg1.inputBeganConnection:disconnect()
		end
		if arg1.inputEndedConnection then
			arg1.inputEndedConnection:disconnect()
		end
	end
end
local withSelectionCursorProvider_upvr = UIBlox.App.SelectionImage.withSelectionCursorProvider
function any_extend_result1.render(arg1) -- Line 210
	--[[ Upvalues[2]:
		[1]: GetFFlagLuaAppFixSelectionCursor_upvr (readonly)
		[2]: withSelectionCursorProvider_upvr (readonly)
	]]
	if GetFFlagLuaAppFixSelectionCursor_upvr() then
		return withSelectionCursorProvider_upvr(function(arg1_10) -- Line 212
			--[[ Upvalues[1]:
				[1]: arg1 (readonly)
			]]
			return arg1:renderWithSelectionCursor(arg1_10)
		end)
	end
	return arg1:renderWithSelectionCursor(nil)
end
local GetFFlagEnableTextFieldContentType_upvr = require(Parent.SharedFlags).GetFFlagEnableTextFieldContentType
local withStyle_upvr = UIBlox.Style.withStyle
local CursorKind_upvr = UIBlox.App.SelectionImage.CursorKind
local ImageSetLabel_upvr = UIBlox.Core.ImageSet.ImageSetLabel
local GetImageData_upvr = require(Parent.RobloxAppAssets).GetImageData
local GetFFlagLuaAppEnableOpenTypeSupport_upvr = require(Parent.SharedFlags).GetFFlagLuaAppEnableOpenTypeSupport
local OpenTypeSupport_upvr = UIBlox.Utility.OpenTypeSupport
local GetFFlagLuaAppFixSignUpColorIssues_upvr = require(Parent.SharedFlags).GetFFlagLuaAppFixSignUpColorIssues
function any_extend_result1.renderWithSelectionCursor(arg1, arg2) -- Line 220
	--[[ Upvalues[10]:
		[1]: GetFFlagEnableTextFieldContentType_upvr (readonly)
		[2]: withStyle_upvr (readonly)
		[3]: GetFFlagLuaAppFixSelectionCursor_upvr (readonly)
		[4]: CursorKind_upvr (readonly)
		[5]: Roact_upvr (readonly)
		[6]: ImageSetLabel_upvr (readonly)
		[7]: GetImageData_upvr (readonly)
		[8]: GetFFlagLuaAppEnableOpenTypeSupport_upvr (readonly)
		[9]: OpenTypeSupport_upvr (readonly)
		[10]: GetFFlagLuaAppFixSignUpColorIssues_upvr (readonly)
	]]
	local var46_upvr
	local function INLINED() -- Internal function, doesn't exist in bytecode
		var46_upvr = Enum.TextInputType.PasswordShown
		return var46_upvr
	end
	if not GetFFlagEnableTextFieldContentType_upvr() or not INLINED() then
		var46_upvr = Enum.TextInputType.NoSuggestions
	end
	local Size_upvr = arg1.props.Size
	local Position_upvr = arg1.props.Position
	local LayoutOrder_upvr = arg1.props.LayoutOrder
	local Color_upvr = arg1.props.Color
	local Transparency_upvr = arg1.props.Transparency
	local Y_upvr = arg1.state.containerSize.Y
	local Text_upvr = arg1.props.Text
	local PlaceholderText_upvr = arg1.props.PlaceholderText
	local PlaceholderColor_upvr = arg1.props.PlaceholderColor
	local TextSize_upvr = arg1.props.TextSize
	local TextColor_upvr = arg1.props.TextColor
	local TextTransparency_upvr = arg1.props.TextTransparency
	local TextXAlignment_upvr = arg1.props.TextXAlignment
	local ClearTextOnFocus_upvr = arg1.props.ClearTextOnFocus
	local any_getHidePassword_result1_upvr = arg1.getHidePassword()
	local ReturnKeyType_upvr = arg1.props.ReturnKeyType
	local NextSelectionDown_upvr = arg1.props.NextSelectionDown
	local NextSelectionLeft_upvr = arg1.props.NextSelectionLeft
	local NextSelectionRight_upvr = arg1.props.NextSelectionRight
	local NextSelectionUp_upvr = arg1.props.NextSelectionUp
	local onFocused_upvr = arg1.props.onFocused
	local onFocusLost_upvr = arg1.props.onFocusLost
	local onMouseEnter_upvr = arg1.props.onMouseEnter
	local onMouseLeave_upvr = arg1.props.onMouseLeave
	local PaddingY_upvr = arg1.props.PaddingY
	local PaddingX_upvr = arg1.props.PaddingX
	return withStyle_upvr(function(arg1_11) -- Line 256
		--[[ Upvalues[37]:
			[1]: GetFFlagLuaAppFixSelectionCursor_upvr (copied, readonly)
			[2]: arg2 (readonly)
			[3]: CursorKind_upvr (copied, readonly)
			[4]: Roact_upvr (copied, readonly)
			[5]: ImageSetLabel_upvr (copied, readonly)
			[6]: Size_upvr (readonly)
			[7]: Position_upvr (readonly)
			[8]: LayoutOrder_upvr (readonly)
			[9]: GetImageData_upvr (copied, readonly)
			[10]: Color_upvr (readonly)
			[11]: Transparency_upvr (readonly)
			[12]: arg1 (readonly)
			[13]: Y_upvr (readonly)
			[14]: Text_upvr (readonly)
			[15]: PlaceholderText_upvr (readonly)
			[16]: PlaceholderColor_upvr (readonly)
			[17]: GetFFlagLuaAppEnableOpenTypeSupport_upvr (copied, readonly)
			[18]: OpenTypeSupport_upvr (copied, readonly)
			[19]: TextSize_upvr (readonly)
			[20]: TextColor_upvr (readonly)
			[21]: TextTransparency_upvr (readonly)
			[22]: TextXAlignment_upvr (readonly)
			[23]: ClearTextOnFocus_upvr (readonly)
			[24]: any_getHidePassword_result1_upvr (readonly)
			[25]: var46_upvr (readonly)
			[26]: ReturnKeyType_upvr (readonly)
			[27]: NextSelectionDown_upvr (readonly)
			[28]: NextSelectionLeft_upvr (readonly)
			[29]: NextSelectionRight_upvr (readonly)
			[30]: NextSelectionUp_upvr (readonly)
			[31]: onFocused_upvr (readonly)
			[32]: onFocusLost_upvr (readonly)
			[33]: onMouseEnter_upvr (readonly)
			[34]: onMouseLeave_upvr (readonly)
			[35]: PaddingY_upvr (readonly)
			[36]: PaddingX_upvr (readonly)
			[37]: GetFFlagLuaAppFixSignUpColorIssues_upvr (copied, readonly)
		]]
		-- KONSTANTERROR: [0] 1. Error Block 35 start (CF ANALYSIS FAILED)
		local var74
		local var75
		if GetFFlagLuaAppFixSelectionCursor_upvr() then
			var74 = arg2(CursorKind_upvr.InputButton)
		end
		local module = {}
		local tbl_5 = {}
		var75 = 0
		tbl_5.Size = UDim2.new(1, -Y_upvr, 1, var75)
		tbl_5.BackgroundTransparency = 1
		local tbl = {}
		local tbl_4 = {}
		var75 = UDim2.new(1, 0, 1, 0)
		tbl_4.Size = var75
		var75 = UDim2.new(0.5, 0, 0.5, 0)
		tbl_4.Position = var75
		var75 = Vector2.new(0.5, 0.5)
		tbl_4.AnchorPoint = var75
		var75 = Text_upvr
		tbl_4.Text = var75
		var75 = PlaceholderText_upvr
		tbl_4.PlaceholderText = var75
		var75 = PlaceholderColor_upvr
		tbl_4.PlaceholderColor3 = var75
		var75 = arg1_11.Font.Body.Font
		tbl_4.Font = var75
		if GetFFlagLuaAppEnableOpenTypeSupport_upvr() then
			var75 = OpenTypeSupport_upvr:getPasswordStylisticAlternative()
		else
			var75 = nil
		end
		tbl_4.OpenTypeFeatures = var75
		tbl_4.TextSize = TextSize_upvr
		tbl_4.TextColor3 = TextColor_upvr
		tbl_4.TextTransparency = TextTransparency_upvr
		tbl_4.TextXAlignment = TextXAlignment_upvr
		tbl_4.TextYAlignment = Enum.TextYAlignment.Center
		tbl_4.BackgroundTransparency = 1
		tbl_4.ClearTextOnFocus = ClearTextOnFocus_upvr
		tbl_4.OverlayNativeInput = true
		tbl_4.ManualFocusRelease = arg1.props.IsKeyboardOverlayUsed
		tbl_4.ClipsDescendants = true
		if not any_getHidePassword_result1_upvr or not Enum.TextInputType.Password then
		end
		tbl_4.TextInputType = var46_upvr
		tbl_4.ReturnKeyType = ReturnKeyType_upvr
		tbl_4.NextSelectionDown = NextSelectionDown_upvr
		tbl_4.NextSelectionLeft = NextSelectionLeft_upvr
		tbl_4.NextSelectionRight = NextSelectionRight_upvr
		tbl_4.NextSelectionUp = NextSelectionUp_upvr
		tbl_4.SelectionImageObject = var74
		tbl_4[Roact_upvr.Ref] = arg1.getPasswordTextBoxRef()
		tbl_4[Roact_upvr.Change.Text] = arg1.props.onChangeText
		tbl_4[Roact_upvr.Event.ReturnPressedFromOnScreenKeyboard] = arg1.props.onReturnPressedFromOnScreenKeyboard
		tbl_4[Roact_upvr.Event.Focused] = onFocused_upvr
		tbl_4[Roact_upvr.Event.FocusLost] = onFocusLost_upvr
		tbl_4[Roact_upvr.Event.MouseEnter] = onMouseEnter_upvr
		tbl_4[Roact_upvr.Event.MouseLeave] = onMouseLeave_upvr
		tbl.TextBox = Roact_upvr.createElement("TextBox", tbl_4)
		tbl.UIPadding = Roact_upvr.createElement("UIPadding", {
			PaddingTop = UDim.new(0, PaddingY_upvr);
			PaddingBottom = UDim.new(0, PaddingY_upvr);
			PaddingLeft = UDim.new(0, PaddingX_upvr);
			PaddingRight = UDim.new(0, PaddingX_upvr);
		})
		module.TextBoxContainer = Roact_upvr.createElement("Frame", tbl_5, tbl)
		local tbl_3 = {}
		local tbl_2 = {
			Size = UDim2.new(0, 16, 0, 16);
			Position = UDim2.new(0.5, 0, 0.5, 0);
			AnchorPoint = Vector2.new(0.5, 0.5);
			BackgroundTransparency = 1;
		}
		if any_getHidePassword_result1_upvr then
			-- KONSTANTWARNING: GOTO [404] #291
		end
		-- KONSTANTERROR: [0] 1. Error Block 35 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [400] 287. Error Block 28 start (CF ANALYSIS FAILED)
		tbl_2.Image = GetImageData_upvr("LuaApp/icons/actions_edit_hide") or "LuaApp/icons/actions_edit_hide"
		if GetFFlagLuaAppFixSignUpColorIssues_upvr() then
		else
		end
		tbl_2.ImageColor3 = arg1_11.Theme.UIDefault.Color
		if GetFFlagLuaAppFixSignUpColorIssues_upvr() then
		else
		end
		tbl_2.ImageTransparency = arg1_11.Theme.UIDefault.Transparency
		tbl_3.ImageLabel = Roact_upvr.createElement(ImageSetLabel_upvr, tbl_2)
		module.Toggler = Roact_upvr.createElement("TextButton", {
			Position = UDim2.new(1, 0, 0.5, 0);
			Size = UDim2.new(0, Y_upvr, 1, 0);
			AnchorPoint = Vector2.new(1, 0.5);
			Text = "";
			BackgroundTransparency = 1;
			SelectionImageObject = var74;
			[Roact_upvr.Event.Activated] = arg1.onTogglerActivated;
		}, tbl_3)
		do
			return Roact_upvr.createElement(ImageSetLabel_upvr, {
				Size = Size_upvr;
				Position = Position_upvr;
				LayoutOrder = LayoutOrder_upvr;
				BackgroundTransparency = 1;
				Image = GetImageData_upvr("LuaApp/buttons/buttonFill") or "LuaApp/buttons/buttonFill";
				ImageColor3 = Color_upvr;
				ImageTransparency = Transparency_upvr;
				BorderSizePixel = 0;
				ScaleType = Enum.ScaleType.Slice;
				SliceCenter = Rect.new(8, 8, 9, 9);
				[Roact_upvr.Ref] = arg1.passwordBoxRef;
				[Roact_upvr.Change.AbsoluteSize] = arg1.onAbsoluteSizeChanged;
			}, module)
		end
		-- KONSTANTERROR: [400] 287. Error Block 28 end (CF ANALYSIS FAILED)
	end)
end
return require(Parent.RoactRodux).connect(function(arg1, arg2) -- Line 351
	return {
		centralOverlay = arg1.CentralOverlay;
	}
end)(any_extend_result1)