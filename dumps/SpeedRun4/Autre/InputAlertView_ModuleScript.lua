-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:06:28
-- Luau version 6, Types version 3
-- Time taken: 0.006801 seconds

local SocialLibraries = script:FindFirstAncestor("SocialLibraries")
local dependencies = require(SocialLibraries.dependencies)
local Roact_upvr = dependencies.Roact
local any_extend_result1 = Roact_upvr.Component:extend("InputAlertView")
local tbl_4 = {
	titleText = "TestTitle";
	cancelText = "TestCancel";
	confirmText = "TestConfirm";
	warningText = nil;
	inputText = "TestInput";
	maxCharacters = 150;
}
local function onActivated() -- Line 23
end
tbl_4.onActivated = onActivated
function tbl_4.onModalClose() -- Line 25
end
tbl_4.screenSize = Vector2.new(0, 0)
tbl_4.soakAreaColor3 = Color3.fromRGB(0, 0, 255)
tbl_4.soakAreaTransparency = 0.9
tbl_4.shouldAdjustForKeyboard = true
any_extend_result1.defaultProps = tbl_4
local UserInputService_upvr = dependencies.UserInputService
function any_extend_result1.init(arg1) -- Line 34
	--[[ Upvalues[2]:
		[1]: Roact_upvr (readonly)
		[2]: UserInputService_upvr (readonly)
	]]
	arg1.ref = Roact_upvr.createRef()
	function arg1.onTextChanged(arg1_2) -- Line 36
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		local tbl_6 = {}
		tbl_6.inputText = arg1_2
		local var9
		if arg1.props.maxCharacters >= #arg1_2 then
			var9 = false
		else
			var9 = true
		end
		tbl_6.inputLengthExceeded = var9
		arg1:setState(tbl_6)
	end
	function arg1.onButtonActivated() -- Line 43
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		arg1.closing = true
	end
	function arg1.updateModalPosition() -- Line 47
		--[[ Upvalues[2]:
			[1]: arg1 (readonly)
			[2]: UserInputService_upvr (copied, readonly)
		]]
		local tbl_3 = {}
		local var13
		local function INLINED() -- Internal function, doesn't exist in bytecode
			var13 = arg1.state.yPosition + arg1.ref:getValue().AbsoluteSize.Y - UserInputService_upvr.OnScreenKeyboardPosition.Y
			return var13
		end
		if not UserInputService_upvr.OnScreenKeyboardVisible or not INLINED() then
			var13 = 0
		end
		tbl_3.keyboardOffset = var13
		arg1:setState(tbl_3)
	end
	function arg1.onModalStayOpen() -- Line 57
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		arg1.closing = false
		if arg1.props.shouldAdjustForKeyboard then
			arg1.updateModalPosition()
		end
	end
	if arg1.props.shouldAdjustForKeyboard then
		arg1.keyboardConnection = UserInputService_upvr:GetPropertyChangedSignal("OnScreenKeyboardVisible"):connect(function() -- Line 69
			--[[ Upvalues[1]:
				[1]: arg1 (readonly)
			]]
			spawn(function() -- Line 71
				--[[ Upvalues[1]:
					[1]: arg1 (copied, readonly)
				]]
				if not arg1.isMounted or arg1.closing then
				else
					arg1.updateModalPosition()
				end
			end)
		end)
	end
	function arg1.onPositionChanged(arg1_3) -- Line 82
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		if not arg1.isMounted then
		elseif arg1_3.AbsolutePosition.Y ~= arg1.state.yPosition then
			arg1:setState({
				yPosition = arg1_3.AbsolutePosition.Y;
			})
		end
	end
	arg1.closing = false
	arg1.state = {
		inputText = arg1.props.inputText;
		inputLengthExceeded = false;
		keyboardOffset = 0;
		yPosition = 0;
	}
end
local ButtonType_upvr = dependencies.UIBlox.App.Button.Enum.ButtonType
local AlertViewBuilder_upvr = require(SocialLibraries.Components.AlertViewBuilder.AlertViewBuilder)
function any_extend_result1.render(arg1) -- Line 102
	--[[ Upvalues[3]:
		[1]: ButtonType_upvr (readonly)
		[2]: Roact_upvr (readonly)
		[3]: AlertViewBuilder_upvr (readonly)
	]]
	local props = arg1.props
	local var23
	local maxCharacters = props.maxCharacters
	if not props.displayFailed then
		var23 = {{
			buttonType = ButtonType_upvr.Secondary;
			props = {
				text = props.cancelText;
				onActivated = function() -- Line 113, Named "onActivated"
				end;
			};
		}, {
			buttonType = ButtonType_upvr.PrimarySystem;
			props = {
				text = props.confirmText;
				isDisabled = arg1.state.inputLengthExceeded;
				onActivated = props.onActivated;
			};
		}}
	else
		var23 = {{
			buttonType = ButtonType_upvr.Alert;
			props = {
				text = props.failedText;
				onActivated = props.onActivated;
			};
		}}
	end
	local module = {}
	local tbl = {
		buttons = var23;
		inputLengthExceeded = arg1.state.inputLengthExceeded;
		onActivated = arg1.onButtonActivated;
		onModalClose = props.onModalClose;
		onModalStayOpen = arg1.onModalStayOpen;
		soakAreaColor3 = arg1.props.soakAreaColor3;
		soakAreaTransparency = arg1.props.soakAreaTransparency;
	}
	local tbl_5 = {}
	local tbl_2 = {}
	local var38 = maxCharacters
	if var38 then
		var38 = (#arg1.state.inputText)..'/'..maxCharacters
	end
	tbl_2.belowText = var38
	tbl_2.belowTextAlignment = Enum.TextXAlignment.Right
	tbl_2.LayoutOrder = 1
	tbl_2.onTextChanged = arg1.onTextChanged
	tbl_2.PlaceholderText = props.placeholderText
	tbl_2.Text = props.inputText
	tbl_2.warningText = arg1.props.warningText
	tbl_5.InputBox = tbl_2
	tbl.textboxes = tbl_5
	tbl.title = props.titleText
	tbl.screenSize = props.screenSize
	module.AlertView = Roact_upvr.createElement(AlertViewBuilder_upvr, tbl)
	return Roact_upvr.createElement("Frame", {
		Size = UDim2.new(1, 0, 1, -arg1.state.keyboardOffset);
		Transparency = 1;
		[Roact_upvr.Change.AbsolutePosition] = arg1.onPositionChanged;
		[Roact_upvr.Ref] = arg1.ref;
	}, module)
end
function any_extend_result1.didMount(arg1) -- Line 168
	arg1.isMounted = true
end
function any_extend_result1.willUnmount(arg1) -- Line 172
	arg1.isMounted = false
	if arg1.keyboardConnection then
		arg1.keyboardConnection:Disconnect()
		arg1.keyboardConnection = nil
	end
end
return any_extend_result1