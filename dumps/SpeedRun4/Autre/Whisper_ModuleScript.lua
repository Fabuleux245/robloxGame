-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:57:37
-- Luau version 6, Types version 3
-- Time taken: 0.006551 seconds

local module = require(script.Parent:WaitForChild("Util"))
local module_upvr = require(script.Parent.Parent:WaitForChild("ChatSettings"))
local Players_upvr = game:GetService("Players")
local var4_upvw
pcall(function() -- Line 13
	--[[ Upvalues[1]:
		[1]: var4_upvw (read and write)
	]]
	var4_upvw = require(game:GetService("Chat").ClientChatModules.ChatLocalization)
end)
local var6_upvw
while var6_upvw == nil do
	Players_upvr.ChildAdded:wait()
	var6_upvw = Players_upvr.LocalPlayer
end
local tbl_upvr = {}
tbl_upvr.__index = tbl_upvr
local module_upvr_2 = {}
function tbl_upvr.TrimWhisperCommand(arg1, arg2) -- Line 26
	if string.sub(arg2, 1, 3):lower() == "/w " then
		return string.sub(arg2, 4)
	end
	if string.sub(arg2, 1, 9):lower() == "/whisper " then
		return string.sub(arg2, 10)
	end
	return nil
end
function tbl_upvr.TrimWhiteSpace(arg1, arg2) -- Line 35
	local var9 = arg2
	if arg2[#arg2] ~= ' ' then
		var9 = false
	else
		var9 = true
	end
	return string.gsub(var9, "%s+", ""), var9
end
function tbl_upvr.ShouldAutoCompleteNames(arg1) -- Line 41
	--[[ Upvalues[1]:
		[1]: module_upvr (readonly)
	]]
	if module_upvr.WhisperCommandAutoCompletePlayerNames ~= nil then
		return module_upvr.WhisperCommandAutoCompletePlayerNames
	end
	return true
end
function tbl_upvr.GetWhisperingPlayer(arg1, arg2) -- Line 48
	--[[ Upvalues[3]:
		[1]: Players_upvr (readonly)
		[2]: var6_upvw (read and write)
		[3]: module_upvr (readonly)
	]]
	local any_TrimWhisperCommand_result1_2 = arg1:TrimWhisperCommand(arg2:lower())
	local var44
	if any_TrimWhisperCommand_result1_2 then
		local any_TrimWhiteSpace_result1_2, any_TrimWhiteSpace_result2_2 = arg1:TrimWhiteSpace(any_TrimWhisperCommand_result1_2)
		local players = Players_upvr:GetPlayers()
		var44 = 1
		for i = 1, #players, var44 do
			if players[i] ~= var6_upvw then
				if string.sub(players[i].Name:lower(), 1, string.len(any_TrimWhiteSpace_result1_2)) == any_TrimWhiteSpace_result1_2 then
					({})[players[i]] = players[i].Name:lower()
				end
				if module_upvr.WhisperByDisplayName then
					local any_lower_result1 = players[i].DisplayName:lower()
					if string.sub(any_lower_result1, 1, string.len(any_TrimWhiteSpace_result1_2)) == any_TrimWhiteSpace_result1_2 then
						({})[players[i]] = any_lower_result1
					end
				end
			end
		end
		local var49 = 0
		var44 = nil
		i = nil
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		for i_2, v in pairs({}) do
			var49 += 1
			var44 = i_2
			i = v
			if v == any_TrimWhiteSpace_result1_2 and any_TrimWhiteSpace_result2_2 then
				return i_2
			end
		end
		if module_upvr.WhisperByDisplayName then
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect
			for i_3, v_2 in pairs({}) do
				if var44 ~= i_3 then
					var49 += 1
					var44 = i_3
					i = v_2
				end
			end
		end
		if var49 == 1 then
			if arg1:ShouldAutoCompleteNames() then
				return var44
			end
			if i == any_TrimWhiteSpace_result1_2 then
				return var44
			end
		end
	end
	return nil
end
function tbl_upvr.GetWhisperChanneNameColor(arg1) -- Line 106
	if arg1.ChatSettings.WhisperChannelNameColor then
		return arg1.ChatSettings.WhisperChannelNameColor
	end
	return Color3.fromRGB(102, 14, 102)
end
function tbl_upvr.EnterWhisperState(arg1, arg2) -- Line 113
	--[[ Upvalues[2]:
		[1]: module_upvr (readonly)
		[2]: var4_upvw (read and write)
	]]
	arg1.PlayerNameEntered = true
	arg1.PlayerName = arg2.Name
	arg1.PlayerDisplayName = arg2.DisplayName
	arg1.MessageModeButton.Size = UDim2.new(0, 1000, 1, 0)
	local var56
	if module_upvr.PlayerDisplayNamesEnabled and module_upvr.WhisperByDisplayName then
		var56 = string.format("[To %s]", arg2.DisplayName)
	else
		var56 = string.format("[To %s]", arg2.Name)
	end
	if var4_upvw.tryLocalize then
		var56 = var4_upvw:tryLocalize(var56)
	end
	arg1.MessageModeButton.Text = var56
	arg1.MessageModeButton.TextColor3 = arg1:GetWhisperChanneNameColor()
	local ceiled = math.ceil(arg1.MessageModeButton.TextBounds.X)
	arg1.MessageModeButton.Size = UDim2.new(0, ceiled, 1, 0)
	arg1.TextBox.Size = UDim2.new(1, -ceiled, 1, 0)
	arg1.TextBox.Position = UDim2.new(0, ceiled, 0, 0)
	arg1.TextBox.Text = ' '
end
function tbl_upvr.TextUpdated(arg1) -- Line 142
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	local PlayerNameEntered = arg1.PlayerNameEntered
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [12] 9. Error Block 3 start (CF ANALYSIS FAILED)
	arg1:EnterWhisperState(PlayerNameEntered)
	do
		return
	end
	-- KONSTANTERROR: [12] 9. Error Block 3 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [17] 13. Error Block 7 start (CF ANALYSIS FAILED)
	if arg1.TextBox.Text == "" then
		arg1.MessageModeButton.Text = ""
		arg1.MessageModeButton.Size = UDim2.new(0, 0, 0, 0)
		arg1.TextBox.Size = UDim2.new(1, 0, 1, 0)
		arg1.TextBox.Position = UDim2.new(0, 0, 0, 0)
		arg1.TextBox.Text = ""
		arg1.PlayerNameEntered = false
		arg1.ChatBar:ResetCustomState()
		arg1.ChatBar:CaptureFocus()
	end
	-- KONSTANTERROR: [17] 13. Error Block 7 end (CF ANALYSIS FAILED)
end
function tbl_upvr.GetMessage(arg1) -- Line 166
	if arg1.PlayerNameEntered then
		return "/w "..arg1.PlayerName..' '..arg1.TextBox.Text
	end
	return arg1.TextBox.Text
end
function tbl_upvr.ProcessCompletedMessage(arg1) -- Line 173
	return false
end
function tbl_upvr.Destroy(arg1) -- Line 177
	arg1.MessageModeConnection:disconnect()
	arg1.Destroyed = true
end
function module_upvr_2.new(arg1, arg2, arg3, arg4) -- Line 182
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
	setmetatable_result1_upvr.OriginalWhisperText = ""
	setmetatable_result1_upvr.PlayerNameEntered = false
	setmetatable_result1_upvr.MessageModeConnection = setmetatable_result1_upvr.MessageModeButton.MouseButton1Click:connect(function() -- Line 193
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
	if arg4 then
		setmetatable_result1_upvr:EnterWhisperState(arg4)
		return setmetatable_result1_upvr
	end
	setmetatable_result1_upvr:TextUpdated()
	return setmetatable_result1_upvr
end
function ProcessMessage(arg1, arg2, arg3, arg4) -- Line 212
	--[[ Upvalues[1]:
		[1]: module_upvr_2 (readonly)
	]]
	if string.sub(arg1, 1, 3):lower() == "/w " or string.sub(arg1, 1, 9):lower() == "/whisper " then
		return module_upvr_2.new(arg2, arg3, arg4)
	end
	return nil
end
function CreateCustomState(arg1, arg2, arg3, arg4) -- Line 219
	--[[ Upvalues[1]:
		[1]: module_upvr_2 (readonly)
	]]
	return module_upvr_2.new(arg2, arg3, arg4, arg1)
end
return {
	[module.KEY_COMMAND_PROCESSOR_TYPE] = module.IN_PROGRESS_MESSAGE_PROCESSOR;
	[module.KEY_PROCESSOR_FUNCTION] = ProcessMessage;
	CustomStateCreator = CreateCustomState;
}