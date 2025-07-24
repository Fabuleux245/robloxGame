-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:57:36
-- Luau version 6, Types version 3
-- Time taken: 0.002639 seconds

local tbl_upvr_2 = {"/team ", "/t ", "% "}
function IsTeamCommand(arg1) -- Line 10
	--[[ Upvalues[1]:
		[1]: tbl_upvr_2 (readonly)
	]]
	for i = 1, #tbl_upvr_2 do
		local var3 = tbl_upvr_2[i]
		if string.sub(arg1, 1, var3:len()):lower() == var3 then
			return true
		end
	end
	return false
end
local tbl_upvr = {}
tbl_upvr.__index = tbl_upvr
local module = require(script.Parent:WaitForChild("Util"))
local module_2_upvr = {}
function tbl_upvr.EnterTeamChat(arg1) -- Line 27
	arg1.TeamChatEntered = true
	arg1.MessageModeButton.Size = UDim2.new(0, 1000, 1, 0)
	arg1.MessageModeButton.Text = "[Team]"
	arg1.MessageModeButton.TextColor3 = arg1:GetTeamChatColor()
	local X = arg1.MessageModeButton.TextBounds.X
	arg1.MessageModeButton.Size = UDim2.new(0, X, 1, 0)
	arg1.TextBox.Size = UDim2.new(1, -X, 1, 0)
	arg1.TextBox.Position = UDim2.new(0, X, 0, 0)
	arg1.OriginalTeamText = arg1.TextBox.Text
	arg1.TextBox.Text = ' '
end
function tbl_upvr.TextUpdated(arg1) -- Line 41
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [12] 9. Error Block 3 start (CF ANALYSIS FAILED)
	arg1:EnterTeamChat()
	do
		return
	end
	-- KONSTANTERROR: [12] 9. Error Block 3 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [16] 12. Error Block 7 start (CF ANALYSIS FAILED)
	if arg1.TextBox.Text == "" then
		arg1.MessageModeButton.Text = ""
		arg1.MessageModeButton.Size = UDim2.new(0, 0, 0, 0)
		arg1.TextBox.Size = UDim2.new(1, 0, 1, 0)
		arg1.TextBox.Position = UDim2.new(0, 0, 0, 0)
		arg1.TextBox.Text = ""
		arg1.TeamChatEntered = false
		arg1.ChatBar:ResetCustomState()
		arg1.ChatBar:CaptureFocus()
	end
	-- KONSTANTERROR: [16] 12. Error Block 7 end (CF ANALYSIS FAILED)
end
function tbl_upvr.GetMessage(arg1) -- Line 64
	if arg1.TeamChatEntered then
		return "/t "..arg1.TextBox.Text
	end
	return arg1.TextBox.Text
end
function tbl_upvr.ProcessCompletedMessage(arg1) -- Line 71
	return false
end
function tbl_upvr.Destroy(arg1) -- Line 75
	arg1.MessageModeConnection:disconnect()
	arg1.Destroyed = true
end
local Players_upvr = game:GetService("Players")
function tbl_upvr.GetTeamChatColor(arg1) -- Line 80
	--[[ Upvalues[1]:
		[1]: Players_upvr (readonly)
	]]
	local LocalPlayer = Players_upvr.LocalPlayer
	if LocalPlayer.Team then
		return LocalPlayer.Team.TeamColor.Color
	end
	if arg1.ChatSettings.DefaultChannelNameColor then
		return arg1.ChatSettings.DefaultChannelNameColor
	end
	return Color3.fromRGB(35, 76, 142)
end
function module_2_upvr.new(arg1, arg2, arg3) -- Line 91
	--[[ Upvalues[1]:
		[1]: tbl_upvr (readonly)
	]]
	local setmetatable_result1_upvr = setmetatable({}, tbl_upvr)
	setmetatable_result1_upvr.Destroyed = false
	setmetatable_result1_upvr.ChatWindow = arg1
	setmetatable_result1_upvr.ChatBar = arg2
	setmetatable_result1_upvr.ChatSettings = arg3
	setmetatable_result1_upvr.TextBox = arg2:GetTextBox()
	setmetatable_result1_upvr.MessageModeButton = arg2:GetMessageModeTextButton()
	setmetatable_result1_upvr.OriginalTeamText = ""
	setmetatable_result1_upvr.TeamChatEntered = false
	setmetatable_result1_upvr.MessageModeConnection = setmetatable_result1_upvr.MessageModeButton.MouseButton1Click:connect(function() -- Line 102
		--[[ Upvalues[1]:
			[1]: setmetatable_result1_upvr (readonly)
		]]
		local Text = setmetatable_result1_upvr.TextBox.Text
		if string.sub(Text, 1, 1) == ' ' then
			Text = string.sub(Text, 2)
		end
		setmetatable_result1_upvr.ChatBar:ResetCustomState()
		setmetatable_result1_upvr.ChatBar:SetTextBoxText(Text)
		setmetatable_result1_upvr.ChatBar:CaptureFocus()
	end)
	setmetatable_result1_upvr:EnterTeamChat()
	return setmetatable_result1_upvr
end
function ProcessMessage(arg1, arg2, arg3, arg4) -- Line 117
	--[[ Upvalues[1]:
		[1]: module_2_upvr (readonly)
	]]
	if arg3.TargetChannel == "Team" then return end
	if IsTeamCommand(arg1) then
		return module_2_upvr.new(arg2, arg3, arg4)
	end
	return nil
end
return {
	[module.KEY_COMMAND_PROCESSOR_TYPE] = module.IN_PROGRESS_MESSAGE_PROCESSOR;
	[module.KEY_PROCESSOR_FUNCTION] = ProcessMessage;
}