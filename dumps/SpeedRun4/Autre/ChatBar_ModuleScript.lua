-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:57:26
-- Luau version 6, Types version 3
-- Time taken: 0.011373 seconds

local module = {}
local Players = game:GetService("Players")
local TextService_upvr = game:GetService("TextService")
local var4_upvw
while not var4_upvw do
	Players.PlayerAdded:wait()
	var4_upvw = Players.LocalPlayer
end
local Chat_upvr = game:GetService("Chat")
local ClientChatModules = Chat_upvr:WaitForChild("ClientChatModules")
local module_3_upvr = require(ClientChatModules:WaitForChild("ChatSettings"))
local module_2_upvr = require(script.Parent:WaitForChild("CurveUtil"))
local var10_upvw
pcall(function() -- Line 34
	--[[ Upvalues[1]:
		[1]: var10_upvw (read and write)
	]]
	var10_upvw = require(game:GetService("Chat").ClientChatModules.ChatLocalization)
end)
if var10_upvw == nil then
	var10_upvw = {}
	function var10_upvw.Get(arg1, arg2, arg3) -- Line 35
		return arg3
	end
end
local tbl_upvr = {}
tbl_upvr.__index = tbl_upvr
function tbl_upvr.CreateGuiObjects(arg1, arg2) -- Line 42
	--[[ Upvalues[1]:
		[1]: module_3_upvr (readonly)
	]]
	arg1.ChatBarParentFrame = arg2
	local Frame = Instance.new("Frame")
	Frame.Selectable = false
	Frame.Size = UDim2.new(1, 0, 1, 0)
	Frame.BackgroundTransparency = 0.6
	Frame.BorderSizePixel = 0
	Frame.BackgroundColor3 = module_3_upvr.ChatBarBackGroundColor
	Frame.Parent = arg2
	local Frame_2 = Instance.new("Frame")
	Frame_2.Selectable = false
	Frame_2.Name = "BoxFrame"
	Frame_2.BackgroundTransparency = 0.6
	Frame_2.BorderSizePixel = 0
	Frame_2.BackgroundColor3 = module_3_upvr.ChatBarBoxColor
	Frame_2.Size = UDim2.new(1, -14, 1, -14)
	Frame_2.Position = UDim2.new(0, 7, 0, 7)
	Frame_2.Parent = Frame
	local Frame_3 = Instance.new("Frame")
	Frame_3.BackgroundTransparency = 1
	Frame_3.Size = UDim2.new(1, -10, 1, -10)
	Frame_3.Position = UDim2.new(0, 5, 0, 5)
	Frame_3.Parent = Frame_2
	local TextBox_2 = Instance.new("TextBox")
	TextBox_2.Selectable = module_3_upvr.GamepadNavigationEnabled
	TextBox_2.Name = "ChatBar"
	TextBox_2.BackgroundTransparency = 1
	TextBox_2.Size = UDim2.new(1, 0, 1, 0)
	TextBox_2.Position = UDim2.new(0, 0, 0, 0)
	TextBox_2.TextSize = module_3_upvr.ChatBarTextSize
	TextBox_2.Font = module_3_upvr.ChatBarFont
	TextBox_2.TextColor3 = module_3_upvr.ChatBarTextColor
	TextBox_2.TextTransparency = 0.4
	TextBox_2.TextStrokeTransparency = 1
	TextBox_2.ClearTextOnFocus = false
	TextBox_2.TextXAlignment = Enum.TextXAlignment.Left
	TextBox_2.TextYAlignment = Enum.TextYAlignment.Top
	TextBox_2.TextWrapped = true
	TextBox_2.Text = ""
	TextBox_2.Parent = Frame_3
	local TextButton = Instance.new("TextButton")
	TextButton.Selectable = false
	TextButton.Name = "MessageMode"
	TextButton.BackgroundTransparency = 1
	TextButton.Position = UDim2.new(0, 0, 0, 0)
	TextButton.TextSize = module_3_upvr.ChatBarTextSize
	TextButton.Font = module_3_upvr.ChatBarFont
	TextButton.TextXAlignment = Enum.TextXAlignment.Left
	TextButton.TextWrapped = true
	TextButton.Text = ""
	TextButton.Size = UDim2.new(0, 0, 0, 0)
	TextButton.TextYAlignment = Enum.TextYAlignment.Center
	TextButton.TextColor3 = arg1:GetDefaultChannelNameColor()
	TextButton.Visible = true
	TextButton.Parent = Frame_3
	local TextLabel = Instance.new("TextLabel")
	TextLabel.Selectable = false
	TextLabel.TextWrapped = true
	TextLabel.BackgroundTransparency = 1
	TextLabel.Size = TextBox_2.Size
	TextLabel.Position = TextBox_2.Position
	TextLabel.TextSize = TextBox_2.TextSize
	TextLabel.Font = TextBox_2.Font
	TextLabel.TextColor3 = TextBox_2.TextColor3
	TextLabel.TextTransparency = TextBox_2.TextTransparency
	TextLabel.TextStrokeTransparency = TextBox_2.TextStrokeTransparency
	TextLabel.TextXAlignment = TextBox_2.TextXAlignment
	TextLabel.TextYAlignment = TextBox_2.TextYAlignment
	TextLabel.Text = "..."
	TextLabel.Parent = Frame_3
	arg1.GuiObject = Frame
	arg1.TextBox = TextBox_2
	arg1.TextLabel = TextLabel
	arg1.GuiObjects.BaseFrame = Frame
	arg1.GuiObjects.TextBoxFrame = Frame_2
	arg1.GuiObjects.TextBox = TextBox_2
	arg1.GuiObjects.TextLabel = TextLabel
	arg1.GuiObjects.MessageModeTextButton = TextButton
	arg1:AnimGuiObjects()
	arg1:SetUpTextBoxEvents(TextBox_2, TextLabel, TextButton)
	if arg1.UserHasChatOff then
		arg1:DoLockChatBar()
	end
	arg1.eGuiObjectsChanged:Fire()
end
function tbl_upvr.DoLockChatBar(arg1) -- Line 141
	--[[ Upvalues[2]:
		[1]: var4_upvw (read and write)
		[2]: var10_upvw (read and write)
	]]
	if arg1.TextLabel then
		if 0 < var4_upvw.UserId then
			arg1.TextLabel.Text = var10_upvw:Get("GameChat_ChatMessageValidator_SettingsError", "To chat in game, turn on chat in your Privacy Settings.")
		else
			arg1.TextLabel.Text = var10_upvw:Get("GameChat_SwallowGuestChat_Message", "Sign up to chat in game.")
		end
		arg1:CalculateSize()
	end
	if arg1.TextBox then
		arg1.TextBox.Active = false
		arg1.TextBox.Focused:connect(function() -- Line 158
			--[[ Upvalues[1]:
				[1]: arg1 (readonly)
			]]
			arg1.TextBox:ReleaseFocus()
		end)
	end
end
local UserInputService_upvr = game:GetService("UserInputService")
function tbl_upvr.SetUpTextBoxEvents(arg1, arg2, arg3, arg4) -- Line 164
	--[[ Upvalues[2]:
		[1]: UserInputService_upvr (readonly)
		[2]: module_3_upvr (readonly)
	]]
	for i, v in pairs(arg1.TextBoxConnections) do
		v:disconnect()
		arg1.TextBoxConnections[i] = nil
	end
	arg1.TextBoxConnections.UserInputBegan = UserInputService_upvr.InputBegan:connect(function(arg1_2, arg2_2) -- Line 172
		--[[ Upvalues[3]:
			[1]: arg1 (readonly)
			[2]: arg2 (readonly)
			[3]: module_3_upvr (copied, readonly)
		]]
		if arg1_2.KeyCode == Enum.KeyCode.Backspace and arg1:IsFocused() and arg2.Text == "" then
			arg1:SetChannelTarget(module_3_upvr.GeneralChannelName)
		end
	end)
	arg1.TextBoxConnections.TextBoxChanged = arg2.Changed:connect(function(arg1_3) -- Line 180
		--[[ Upvalues[3]:
			[1]: arg1 (readonly)
			[2]: arg2 (readonly)
			[3]: module_3_upvr (copied, readonly)
		]]
		-- KONSTANTERROR: [0] 1. Error Block 18 start (CF ANALYSIS FAILED)
		if arg1_3 == "AbsoluteSize" then
			arg1:CalculateSize()
			return
		end
		if arg1_3 ~= "Text" then return end
		arg1:CalculateSize()
		if module_3_upvr.MaximumMessageLength < utf8.len(utf8.nfcnormalize(arg2.Text)) then
			arg2.Text = arg1.PreviousText
		else
			arg1.PreviousText = arg2.Text
		end
		local InCustomState = arg1.InCustomState
		-- KONSTANTERROR: [0] 1. Error Block 18 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [59] 42. Error Block 11 start (CF ANALYSIS FAILED)
		arg1.InCustomState = true
		arg1.CustomState = InCustomState
		do
			return
		end
		-- KONSTANTERROR: [59] 42. Error Block 11 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [67] 48. Error Block 12 start (CF ANALYSIS FAILED)
		arg1.CustomState:TextUpdated()
		-- KONSTANTERROR: [67] 48. Error Block 12 end (CF ANALYSIS FAILED)
	end)
	local function _(arg1_4) -- Line 209, Named "UpdateOnFocusStatusChanged"
		--[[ Upvalues[2]:
			[1]: arg2 (readonly)
			[2]: arg3 (readonly)
		]]
		if arg1_4 or arg2.Text ~= "" then
			arg3.Visible = false
		else
			arg3.Visible = true
		end
	end
	arg1.TextBoxConnections.MessageModeClick = arg4.MouseButton1Click:connect(function() -- Line 217
		--[[ Upvalues[3]:
			[1]: arg4 (readonly)
			[2]: arg1 (readonly)
			[3]: module_3_upvr (copied, readonly)
		]]
		if arg4.Text ~= "" then
			arg1:SetChannelTarget(module_3_upvr.GeneralChannelName)
		end
	end)
	arg1.TextBoxConnections.TextBoxFocused = arg2.Focused:connect(function() -- Line 223
		--[[ Upvalues[2]:
			[1]: arg1 (readonly)
			[2]: arg3 (readonly)
		]]
		if not arg1.UserHasChatOff then
			arg1:CalculateSize()
			arg3.Visible = false
		end
	end)
	arg1.TextBoxConnections.TextBoxFocusLost = arg2.FocusLost:connect(function(arg1_5, arg2_3) -- Line 230
		--[[ Upvalues[3]:
			[1]: arg1 (readonly)
			[2]: arg2 (readonly)
			[3]: arg3 (readonly)
		]]
		arg1:CalculateSize()
		if arg2_3 and arg2_3.KeyCode == Enum.KeyCode.Escape then
			arg2.Text = ""
		end
		if arg2.Text ~= "" then
			arg3.Visible = false
		else
			arg3.Visible = true
		end
	end)
end
function tbl_upvr.GetTextBox(arg1) -- Line 239
	return arg1.TextBox
end
function tbl_upvr.GetMessageModeTextButton(arg1) -- Line 243
	return arg1.GuiObjects.MessageModeTextButton
end
function tbl_upvr.GetMessageModeTextLabel(arg1) -- Line 249
	return arg1:GetMessageModeTextButton()
end
function tbl_upvr.IsFocused(arg1) -- Line 253
	if arg1.UserHasChatOff then
		return false
	end
	return arg1:GetTextBox():IsFocused()
end
function tbl_upvr.GetVisible(arg1) -- Line 261
	return arg1.GuiObject.Visible
end
function tbl_upvr.CaptureFocus(arg1) -- Line 265
	if not arg1.UserHasChatOff then
		arg1:GetTextBox():CaptureFocus()
	end
end
function tbl_upvr.ReleaseFocus(arg1, arg2) -- Line 271
	arg1:GetTextBox():ReleaseFocus(arg2)
end
function tbl_upvr.ResetText(arg1) -- Line 275
	arg1:GetTextBox().Text = ""
end
function tbl_upvr.SetText(arg1, arg2) -- Line 279
	arg1:GetTextBox().Text = arg2
end
function tbl_upvr.GetEnabled(arg1) -- Line 283
	return arg1.GuiObject.Visible
end
function tbl_upvr.SetEnabled(arg1, arg2) -- Line 287
	if arg1.UserHasChatOff then
		arg1.GuiObject.Visible = true
	else
		arg1.GuiObject.Visible = arg2
	end
end
function tbl_upvr.SetTextLabelText(arg1, arg2) -- Line 297
	if not arg1.UserHasChatOff then
		arg1.TextLabel.Text = arg2
	end
end
function tbl_upvr.SetTextBoxText(arg1, arg2) -- Line 303
	arg1.TextBox.Text = arg2
end
function tbl_upvr.GetTextBoxText(arg1) -- Line 307
	return arg1.TextBox.Text
end
function tbl_upvr.ResetSize(arg1) -- Line 311
	arg1.TargetYSize = 0
	arg1:TweenToTargetYSize()
end
local function _(arg1) -- Line 316, Named "measureSize"
	--[[ Upvalues[1]:
		[1]: TextService_upvr (readonly)
	]]
	return TextService_upvr:GetTextSize(arg1.Text, arg1.TextSize, arg1.Font, Vector2.new(arg1.AbsoluteSize.X, 10000))
end
function tbl_upvr.CalculateSize(arg1) -- Line 325
	--[[ Upvalues[1]:
		[1]: TextService_upvr (readonly)
	]]
	if arg1.CalculatingSizeLock then
	else
		arg1.CalculatingSizeLock = true
		local var32
		local var33
		if arg1:IsFocused() or arg1.TextBox.Text ~= "" then
			var32 = arg1.TextBox.TextSize
			local TextBox = arg1.TextBox
			var33 = TextService_upvr:GetTextSize(TextBox.Text, TextBox.TextSize, TextBox.Font, Vector2.new(TextBox.AbsoluteSize.X, 10000)).Y
		else
			var32 = arg1.TextLabel.TextSize
			local TextLabel_3 = arg1.TextLabel
			var33 = TextService_upvr:GetTextSize(TextLabel_3.Text, TextLabel_3.TextSize, TextLabel_3.Font, Vector2.new(TextLabel_3.AbsoluteSize.X, 10000)).Y
		end
		local var36 = var33 - var32
		if arg1.TargetYSize ~= var36 then
			arg1.TargetYSize = var36
			arg1:TweenToTargetYSize()
		end
		arg1.CalculatingSizeLock = false
	end
end
function tbl_upvr.TweenToTargetYSize(arg1) -- Line 351
	local udim2_upvr = UDim2.new(1, 0, 1, arg1.TargetYSize)
	arg1.GuiObject.Size = udim2_upvr
	arg1.GuiObject.Size = arg1.GuiObject.Size
	local minimum_upvr = math.min(1, (math.abs(arg1.GuiObject.AbsoluteSize.Y - arg1.GuiObject.AbsoluteSize.Y)) * (1 / arg1.TweenPixelsPerSecond))
	if not pcall(function() -- Line 363
		--[[ Upvalues[3]:
			[1]: arg1 (readonly)
			[2]: udim2_upvr (readonly)
			[3]: minimum_upvr (readonly)
		]]
		arg1.GuiObject:TweenSize(udim2_upvr, Enum.EasingDirection.Out, Enum.EasingStyle.Quad, minimum_upvr, true)
	end) then
		arg1.GuiObject.Size = udim2_upvr
	end
end
function tbl_upvr.SetTextSize(arg1, arg2) -- Line 369
	if not arg1:IsInCustomState() then
		if arg1.TextBox then
			arg1.TextBox.TextSize = arg2
		end
		if arg1.TextLabel then
			arg1.TextLabel.TextSize = arg2
		end
	end
end
function tbl_upvr.GetDefaultChannelNameColor(arg1) -- Line 380
	--[[ Upvalues[1]:
		[1]: module_3_upvr (readonly)
	]]
	if module_3_upvr.DefaultChannelNameColor then
		return module_3_upvr.DefaultChannelNameColor
	end
	return Color3.fromRGB(35, 76, 142)
end
function tbl_upvr.SetChannelTarget(arg1, arg2) -- Line 387
	--[[ Upvalues[2]:
		[1]: module_3_upvr (readonly)
		[2]: var10_upvw (read and write)
	]]
	local MessageModeTextButton = arg1.GuiObjects.MessageModeTextButton
	local TextBox_3 = arg1.TextBox
	local TextLabel_2 = arg1.TextLabel
	arg1.TargetChannel = arg2
	if not arg1:IsInCustomState() then
		if arg2 ~= module_3_upvr.GeneralChannelName then
			MessageModeTextButton.Size = UDim2.new(0, 1000, 1, 0)
			local var43 = arg2
			if var10_upvw.tryLocalize then
				var43 = var10_upvw:tryLocalize(arg2)
			end
			MessageModeTextButton.Text = string.format("[%s] ", var43)
			local any_GetChannelNameColor_result1 = arg1:GetChannelNameColor(arg2)
			if any_GetChannelNameColor_result1 then
				MessageModeTextButton.TextColor3 = any_GetChannelNameColor_result1
			else
				MessageModeTextButton.TextColor3 = arg1:GetDefaultChannelNameColor()
			end
			local X = MessageModeTextButton.TextBounds.X
			MessageModeTextButton.Size = UDim2.new(0, X, 1, 0)
			TextBox_3.Size = UDim2.new(1, -X, 1, 0)
			TextBox_3.Position = UDim2.new(0, X, 0, 0)
			TextLabel_2.Size = UDim2.new(1, -X, 1, 0)
			TextLabel_2.Position = UDim2.new(0, X, 0, 0)
			return
		end
		MessageModeTextButton.Text = ""
		MessageModeTextButton.Size = UDim2.new(0, 0, 0, 0)
		TextBox_3.Size = UDim2.new(1, 0, 1, 0)
		TextBox_3.Position = UDim2.new(0, 0, 0, 0)
		TextLabel_2.Size = UDim2.new(1, 0, 1, 0)
		TextLabel_2.Position = UDim2.new(0, 0, 0, 0)
	end
end
function tbl_upvr.IsInCustomState(arg1) -- Line 427
	return arg1.InCustomState
end
function tbl_upvr.ResetCustomState(arg1) -- Line 431
	--[[ Upvalues[1]:
		[1]: var10_upvw (read and write)
	]]
	if arg1.InCustomState then
		arg1.CustomState:Destroy()
		arg1.CustomState = nil
		arg1.InCustomState = false
		arg1.ChatBarParentFrame:ClearAllChildren()
		arg1:CreateGuiObjects(arg1.ChatBarParentFrame)
		arg1:SetTextLabelText(var10_upvw:Get("GameChat_ChatMain_ChatBarText", "To chat click here or press \"/\" key"))
	end
end
local module_upvr = require(ClientChatModules:WaitForChild("CommandModules"):WaitForChild("Whisper"))
function tbl_upvr.EnterWhisperState(arg1, arg2) -- Line 448
	--[[ Upvalues[2]:
		[1]: module_upvr (readonly)
		[2]: module_3_upvr (readonly)
	]]
	arg1:ResetCustomState()
	if module_upvr.CustomStateCreator then
		arg1.CustomState = module_upvr.CustomStateCreator(arg2, arg1.ChatWindow, arg1, module_3_upvr)
		arg1.InCustomState = true
	else
		local var47
		if module_3_upvr.PlayerDisplayNamesEnabled then
			var47 = arg2.DisplayName
		else
			var47 = arg2.Name
		end
		arg1:SetText("/w "..var47)
	end
	arg1:CaptureFocus()
end
function tbl_upvr.GetCustomMessage(arg1) -- Line 472
	if arg1.InCustomState then
		return arg1.CustomState:GetMessage()
	end
	return nil
end
function tbl_upvr.CustomStateProcessCompletedMessage(arg1, arg2) -- Line 479
	if arg1.InCustomState then
		return arg1.CustomState:ProcessCompletedMessage()
	end
	return false
end
function tbl_upvr.FadeOutBackground(arg1, arg2) -- Line 486
	--[[ Upvalues[1]:
		[1]: module_2_upvr (readonly)
	]]
	arg1.AnimParams.Background_TargetTransparency = 1
	arg1.AnimParams.Background_NormalizedExptValue = module_2_upvr:NormalizedDefaultExptValueInSeconds(arg2)
	arg1:FadeOutText(arg2)
end
function tbl_upvr.FadeInBackground(arg1, arg2) -- Line 492
	--[[ Upvalues[1]:
		[1]: module_2_upvr (readonly)
	]]
	arg1.AnimParams.Background_TargetTransparency = 0.6
	arg1.AnimParams.Background_NormalizedExptValue = module_2_upvr:NormalizedDefaultExptValueInSeconds(arg2)
	arg1:FadeInText(arg2)
end
function tbl_upvr.FadeOutText(arg1, arg2) -- Line 498
	--[[ Upvalues[1]:
		[1]: module_2_upvr (readonly)
	]]
	arg1.AnimParams.Text_TargetTransparency = 1
	arg1.AnimParams.Text_NormalizedExptValue = module_2_upvr:NormalizedDefaultExptValueInSeconds(arg2)
end
function tbl_upvr.FadeInText(arg1, arg2) -- Line 503
	--[[ Upvalues[1]:
		[1]: module_2_upvr (readonly)
	]]
	arg1.AnimParams.Text_TargetTransparency = 0.4
	arg1.AnimParams.Text_NormalizedExptValue = module_2_upvr:NormalizedDefaultExptValueInSeconds(arg2)
end
function tbl_upvr.AnimGuiObjects(arg1) -- Line 508
	arg1.GuiObject.BackgroundTransparency = arg1.AnimParams.Background_CurrentTransparency
	arg1.GuiObjects.TextBoxFrame.BackgroundTransparency = arg1.AnimParams.Background_CurrentTransparency
	arg1.GuiObjects.TextLabel.TextTransparency = arg1.AnimParams.Text_CurrentTransparency
	arg1.GuiObjects.TextBox.TextTransparency = arg1.AnimParams.Text_CurrentTransparency
	arg1.GuiObjects.MessageModeTextButton.TextTransparency = arg1.AnimParams.Text_CurrentTransparency
end
function tbl_upvr.InitializeAnimParams(arg1) -- Line 517
	arg1.AnimParams.Text_TargetTransparency = 0.4
	arg1.AnimParams.Text_CurrentTransparency = 0.4
	arg1.AnimParams.Text_NormalizedExptValue = 1
	arg1.AnimParams.Background_TargetTransparency = 0.6
	arg1.AnimParams.Background_CurrentTransparency = 0.6
	arg1.AnimParams.Background_NormalizedExptValue = 1
end
function tbl_upvr.Update(arg1, arg2) -- Line 527
	--[[ Upvalues[1]:
		[1]: module_2_upvr (readonly)
	]]
	arg1.AnimParams.Text_CurrentTransparency = module_2_upvr:Expt(arg1.AnimParams.Text_CurrentTransparency, arg1.AnimParams.Text_TargetTransparency, arg1.AnimParams.Text_NormalizedExptValue, arg2)
	arg1.AnimParams.Background_CurrentTransparency = module_2_upvr:Expt(arg1.AnimParams.Background_CurrentTransparency, arg1.AnimParams.Background_TargetTransparency, arg1.AnimParams.Background_NormalizedExptValue, arg2)
	arg1:AnimGuiObjects()
end
function tbl_upvr.SetChannelNameColor(arg1, arg2, arg3) -- Line 544
	arg1.ChannelNameColors[arg2] = arg3
	if arg1.GuiObjects.MessageModeTextButton.Text == arg2 then
		arg1.GuiObjects.MessageModeTextButton.TextColor3 = arg3
	end
end
function tbl_upvr.GetChannelNameColor(arg1, arg2) -- Line 551
	return arg1.ChannelNameColors[arg2]
end
local RunService_upvr = game:GetService("RunService")
function module.new(arg1, arg2) -- Line 558
	--[[ Upvalues[5]:
		[1]: tbl_upvr (readonly)
		[2]: module_3_upvr (readonly)
		[3]: Chat_upvr (readonly)
		[4]: var4_upvw (read and write)
		[5]: RunService_upvr (readonly)
	]]
	local setmetatable_result1_upvr = setmetatable({}, tbl_upvr)
	setmetatable_result1_upvr.GuiObject = nil
	setmetatable_result1_upvr.ChatBarParentFrame = nil
	setmetatable_result1_upvr.TextBox = nil
	setmetatable_result1_upvr.TextLabel = nil
	setmetatable_result1_upvr.GuiObjects = {}
	setmetatable_result1_upvr.eGuiObjectsChanged = Instance.new("BindableEvent")
	setmetatable_result1_upvr.GuiObjectsChanged = setmetatable_result1_upvr.eGuiObjectsChanged.Event
	setmetatable_result1_upvr.TextBoxConnections = {}
	setmetatable_result1_upvr.PreviousText = ""
	setmetatable_result1_upvr.InCustomState = false
	setmetatable_result1_upvr.CustomState = nil
	setmetatable_result1_upvr.TargetChannel = nil
	setmetatable_result1_upvr.CommandProcessor = arg1
	setmetatable_result1_upvr.ChatWindow = arg2
	setmetatable_result1_upvr.TweenPixelsPerSecond = 500
	setmetatable_result1_upvr.TargetYSize = 0
	setmetatable_result1_upvr.AnimParams = {}
	setmetatable_result1_upvr.CalculatingSizeLock = false
	setmetatable_result1_upvr.ChannelNameColors = {}
	setmetatable_result1_upvr.UserHasChatOff = false
	setmetatable_result1_upvr:InitializeAnimParams()
	module_3_upvr.SettingsChanged:connect(function(arg1_6, arg2_4) -- Line 590
		--[[ Upvalues[1]:
			[1]: setmetatable_result1_upvr (readonly)
		]]
		if arg1_6 == "ChatBarTextSize" then
			setmetatable_result1_upvr:SetTextSize(arg2_4)
		end
	end)
	coroutine.wrap(function() -- Line 596
		--[[ Upvalues[4]:
			[1]: Chat_upvr (copied, readonly)
			[2]: var4_upvw (copied, read and write)
			[3]: RunService_upvr (copied, readonly)
			[4]: setmetatable_result1_upvr (readonly)
		]]
		local pcall_result1, pcall_result2 = pcall(function() -- Line 597
			--[[ Upvalues[2]:
				[1]: Chat_upvr (copied, readonly)
				[2]: var4_upvw (copied, read and write)
			]]
			return Chat_upvr:CanUserChatAsync(var4_upvw.UserId)
		end)
		local var55 = pcall_result1
		if var55 then
			var55 = RunService_upvr:IsStudio() or pcall_result2
		end
		if var55 == false then
			setmetatable_result1_upvr.UserHasChatOff = true
			setmetatable_result1_upvr:DoLockChatBar()
		end
	end)()
	return setmetatable_result1_upvr
end
return module