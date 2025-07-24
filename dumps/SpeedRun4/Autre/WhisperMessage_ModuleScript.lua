-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:57:42
-- Luau version 6, Types version 3
-- Time taken: 0.006328 seconds

local Players_upvr = game:GetService("Players")
local var2_upvw
while not var2_upvw do
	Players_upvr.ChildAdded:wait()
	var2_upvw = Players_upvr.LocalPlayer
end
local Parent = script.Parent.Parent
local module_upvr_2 = require(script.Parent:WaitForChild("Util"))
local var5_upvw
pcall(function() -- Line 22
	--[[ Upvalues[1]:
		[1]: var5_upvw (read and write)
	]]
	var5_upvw = require(game:GetService("Chat").ClientChatModules.ChatLocalization)
end)
function IsPlayerVerified(arg1) -- Line 24
	--[[ Upvalues[1]:
		[1]: Players_upvr (readonly)
	]]
	local any_GetPlayerByUserId_result1_upvr = Players_upvr:GetPlayerByUserId(arg1)
	if not any_GetPlayerByUserId_result1_upvr then
		return false
	end
	local pcall_result1, pcall_result2 = pcall(function() -- Line 31
		--[[ Upvalues[1]:
			[1]: any_GetPlayerByUserId_result1_upvr (readonly)
		]]
		return any_GetPlayerByUserId_result1_upvr.HasVerifiedBadge
	end)
	if pcall_result1 then
		return pcall_result2
	end
	return false
end
local utf8_char_result1_upvr = utf8.char(57344)
function AppendVerifiedBadge(arg1) -- Line 38
	--[[ Upvalues[1]:
		[1]: utf8_char_result1_upvr (readonly)
	]]
	return arg1..utf8_char_result1_upvr
end
local module_upvr = require(Parent:WaitForChild("ChatSettings"))
function CreateMessageLabel(arg1, arg2) -- Line 42
	--[[ Upvalues[4]:
		[1]: module_upvr (readonly)
		[2]: module_upvr_2 (readonly)
		[3]: var2_upvw (read and write)
		[4]: var5_upvw (read and write)
	]]
	local FromSpeaker = arg1.FromSpeaker
	local var14
	if module_upvr.PlayerDisplayNamesEnabled and arg1.SpeakerDisplayName then
		var14 = arg1.SpeakerDisplayName
	else
		var14 = FromSpeaker
	end
	if IsPlayerVerified(arg1.SpeakerUserId) then
		var14 = AppendVerifiedBadge(var14)
	end
	local ExtraData = arg1.ExtraData
	if not ExtraData then
		ExtraData = {}
	end
	local Font = ExtraData.Font
	if not Font then
		Font = module_upvr.DefaultFont
	end
	local TextSize = ExtraData.TextSize
	if not TextSize then
		TextSize = module_upvr.ChatWindowTextSize
	end
	local NameColor = ExtraData.NameColor
	if not NameColor then
		NameColor = module_upvr.DefaultNameColor
	end
	local ChatColor = ExtraData.ChatColor
	if not ChatColor then
		ChatColor = module_upvr.DefaultMessageColor
	end
	local formatted_2 = string.format("[%s]:", var14)
	local var21_upvw = module_upvr_2:GetNumberOfSpaces(formatted_2, Font, TextSize) + 1
	local any_CreateBaseMessage_result1_upvr, any_CreateBaseMessage_result2_upvr = module_upvr_2:CreateBaseMessage("", Font, TextSize, ChatColor)
	local any_AddNameButtonToBaseMessage_result1 = module_upvr_2:AddNameButtonToBaseMessage(any_CreateBaseMessage_result2_upvr, NameColor, formatted_2, FromSpeaker)
	local var25
	local var26
	if arg2 ~= var26 then
		var26 = arg1.OriginalChannel
		if arg1.FromSpeaker ~= var2_upvw.Name then
			var26 = string.format("From %s", arg1.FromSpeaker)
		end
		if var5_upvw.tryLocalize then
			var26 = var5_upvw:tryLocalize(var26)
		end
		local formatted = string.format("{%s}", var26)
		var25 = module_upvr_2:AddChannelButtonToBaseMessage(any_CreateBaseMessage_result2_upvr, ExtraData.ChannelColor or ChatColor, formatted, arg1.OriginalChannel)
		any_AddNameButtonToBaseMessage_result1.Position = UDim2.new(0, var25.Size.X.Offset + module_upvr_2:GetStringTextBounds(' ', Font, TextSize).X, 0, 0)
		var21_upvw = var21_upvw + module_upvr_2:GetNumberOfSpaces(formatted, Font, TextSize) + 1
	end
	local function UpdateTextFunction(arg1_2) -- Line 92
		--[[ Upvalues[4]:
			[1]: arg1 (readonly)
			[2]: any_CreateBaseMessage_result2_upvr (readonly)
			[3]: module_upvr_2 (copied, readonly)
			[4]: var21_upvw (read and write)
		]]
		if arg1.IsFiltered then
			any_CreateBaseMessage_result2_upvr.Text = module_upvr_2:CreateLeadingSpaces(var21_upvw)..module_upvr_2:SanitizeForRichText(arg1_2.Message)
		else
			local MessageLengthUtf8 = arg1_2.MessageLengthUtf8
			if not MessageLengthUtf8 then
				MessageLengthUtf8 = arg1_2.MessageLength
			end
			any_CreateBaseMessage_result2_upvr.Text = module_upvr_2:CreateLeadingSpaces(var21_upvw)..string.rep('_', MessageLengthUtf8)
		end
	end
	UpdateTextFunction(arg1)
	local tbl = {
		[any_AddNameButtonToBaseMessage_result1] = {
			TextTransparency = {
				FadedIn = 0;
				FadedOut = 1;
			};
			TextStrokeTransparency = {
				FadedIn = 0.75;
				FadedOut = 1;
			};
		};
		[any_CreateBaseMessage_result2_upvr] = {
			TextTransparency = {
				FadedIn = 0;
				FadedOut = 1;
			};
			TextStrokeTransparency = {
				FadedIn = 0.75;
				FadedOut = 1;
			};
		};
	}
	if var25 then
		tbl[var25] = {
			TextTransparency = {
				FadedIn = 0;
				FadedOut = 1;
			};
			TextStrokeTransparency = {
				FadedIn = 0.75;
				FadedOut = 1;
			};
		}
	end
	local any_CreateFadeFunctions_result1, any_CreateFadeFunctions_result2, any_CreateFadeFunctions_result3 = module_upvr_2:CreateFadeFunctions(tbl)
	return {
		[module_upvr_2.KEY_BASE_FRAME] = any_CreateBaseMessage_result1_upvr;
		[module_upvr_2.KEY_BASE_MESSAGE] = any_CreateBaseMessage_result2_upvr;
		[module_upvr_2.KEY_UPDATE_TEXT_FUNC] = UpdateTextFunction;
		[module_upvr_2.KEY_GET_HEIGHT] = function(arg1_3) -- Line 103, Named "GetHeightFunction"
			--[[ Upvalues[3]:
				[1]: module_upvr_2 (copied, readonly)
				[2]: any_CreateBaseMessage_result2_upvr (readonly)
				[3]: any_CreateBaseMessage_result1_upvr (readonly)
			]]
			return module_upvr_2:GetMessageHeight(any_CreateBaseMessage_result2_upvr, any_CreateBaseMessage_result1_upvr, arg1_3)
		end;
		[module_upvr_2.KEY_FADE_IN] = any_CreateFadeFunctions_result1;
		[module_upvr_2.KEY_FADE_OUT] = any_CreateFadeFunctions_result2;
		[module_upvr_2.KEY_UPDATE_ANIMATION] = any_CreateFadeFunctions_result3;
	}
end
return {
	[module_upvr_2.KEY_MESSAGE_TYPE] = require(Parent:WaitForChild("ChatConstants")).MessageTypeWhisper;
	[module_upvr_2.KEY_CREATOR_FUNCTION] = CreateMessageLabel;
}