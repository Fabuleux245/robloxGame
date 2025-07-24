-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:57:37
-- Luau version 6, Types version 3
-- Time taken: 0.009039 seconds

local pcall_result1_2, pcall_result2_2 = pcall(function() -- Line 8
	return UserSettings():IsUserFeatureEnabled("UserIsChatTranslationEnabled2")
end)
local Parent = script.Parent.Parent
local module_upvr = require(script.Parent:WaitForChild("Util"))
local Players_upvr = game:GetService("Players")
function IsPlayerVerified(arg1) -- Line 23
	--[[ Upvalues[1]:
		[1]: Players_upvr (readonly)
	]]
	local any_GetPlayerByUserId_result1_upvr = Players_upvr:GetPlayerByUserId(arg1)
	if not any_GetPlayerByUserId_result1_upvr then
		return false
	end
	local pcall_result1, pcall_result2 = pcall(function() -- Line 30
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
function AppendVerifiedBadge(arg1) -- Line 37
	--[[ Upvalues[1]:
		[1]: utf8_char_result1_upvr (readonly)
	]]
	return arg1..utf8_char_result1_upvr
end
local module_upvr_2 = require(Parent:WaitForChild("ChatSettings"))
local var13_upvw = pcall_result1_2 and pcall_result2_2
function CreateMessageLabel(arg1, arg2, arg3) -- Line 41
	--[[ Upvalues[3]:
		[1]: module_upvr_2 (readonly)
		[2]: module_upvr (readonly)
		[3]: var13_upvw (read and write)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local FromSpeaker = arg1.FromSpeaker
	local var31
	if module_upvr_2.PlayerDisplayNamesEnabled and arg1.SpeakerDisplayName then
		var31 = arg1.SpeakerDisplayName
	else
		var31 = FromSpeaker
	end
	if IsPlayerVerified(arg1.SpeakerUserId) then
		var31 = AppendVerifiedBadge(var31)
	end
	local ExtraData = arg1.ExtraData
	if not ExtraData then
		ExtraData = {}
	end
	local Font = ExtraData.Font
	if not Font then
		Font = module_upvr_2.DefaultFont
	end
	local TextSize = ExtraData.TextSize
	if not TextSize then
		TextSize = module_upvr_2.ChatWindowTextSize
	end
	local NameColor = ExtraData.NameColor
	if not NameColor then
		NameColor = module_upvr_2.DefaultNameColor
	end
	local ChatColor = ExtraData.ChatColor
	if not ChatColor then
		ChatColor = module_upvr_2.DefaultMessageColor
	end
	local Tags = ExtraData.Tags
	if not Tags then
		Tags = {}
	end
	local formatted_3 = string.format("[%s]:", var31)
	local any_CreateBaseMessage_result1_upvr, any_CreateBaseMessage_result2_upvr = module_upvr:CreateBaseMessage("", Font, TextSize, ChatColor)
	local any_AddNameButtonToBaseMessage_result1_upvr = module_upvr:AddNameButtonToBaseMessage(any_CreateBaseMessage_result2_upvr, NameColor, formatted_3, FromSpeaker)
	if arg2 ~= arg1.OriginalChannel then
		local formatted_2 = string.format("{%s}", arg1.OriginalChannel)
		local any_AddChannelButtonToBaseMessage_result1 = module_upvr:AddChannelButtonToBaseMessage(any_CreateBaseMessage_result2_upvr, ExtraData.ChannelColor or ChatColor, formatted_2, arg1.OriginalChannel)
		local udim2 = UDim2.new(0, any_AddChannelButtonToBaseMessage_result1.Size.X.Offset + module_upvr:GetStringTextBounds(' ', Font, TextSize).X, 0, 0)
	end
	for useTranslatedText, UpdateTextFunction_Chat in pairs(Tags) do
		local TagColor = UpdateTextFunction_Chat.TagColor
		if not TagColor then
			TagColor = Color3.fromRGB(255, 0, 255)
		end
		local formatted = string.format("[%s] ", UpdateTextFunction_Chat.TagText or "???")
		local any_AddTagLabelToBaseMessage_result1 = module_upvr:AddTagLabelToBaseMessage(any_CreateBaseMessage_result2_upvr, TagColor, formatted)
		any_AddTagLabelToBaseMessage_result1.Position = udim2
		local var51_upvw = module_upvr:GetNumberOfSpaces(formatted_3, Font, TextSize) + 1 + module_upvr:GetNumberOfSpaces(formatted_2, Font, TextSize) + 1 + module_upvr:GetNumberOfSpaces(formatted, Font, TextSize)
		local var52_upvw = udim2 + UDim2.new(0, any_AddTagLabelToBaseMessage_result1.Size.X.Offset, 0, 0)
		table.insert({}, any_AddTagLabelToBaseMessage_result1)
	end
	any_AddNameButtonToBaseMessage_result1_upvr.Position = var52_upvw
	local var53_upvw = false
	local var54_upvw
	if var13_upvw then
		function useTranslatedText() -- Line 105
			--[[ Upvalues[5]:
				[1]: var54_upvw (read and write)
				[2]: module_upvr (copied, readonly)
				[3]: any_CreateBaseMessage_result2_upvr (readonly)
				[4]: var52_upvw (read and write)
				[5]: any_AddNameButtonToBaseMessage_result1_upvr (readonly)
			]]
			var54_upvw = module_upvr:AddTranslationButtonToBaseMessage(any_CreateBaseMessage_result2_upvr)
			var52_upvw += UDim2.new(0, any_AddNameButtonToBaseMessage_result1_upvr.Size.X.Offset + 2, 0, 0)
			var54_upvw.Position = var52_upvw
		end
		pcall(useTranslatedText)
	end
	local function useOriginalText_upvr(arg1_2) -- Line 112, Named "useOriginalText"
		--[[ Upvalues[5]:
			[1]: var53_upvw (read and write)
			[2]: arg1 (readonly)
			[3]: any_CreateBaseMessage_result2_upvr (readonly)
			[4]: module_upvr (copied, readonly)
			[5]: var51_upvw (read and write)
		]]
		var53_upvw = false
		if arg1.IsFiltered then
			any_CreateBaseMessage_result2_upvr.Text = module_upvr:CreateLeadingSpaces(var51_upvw)..module_upvr:SanitizeForRichText(arg1_2.Message)
		else
			local MessageLengthUtf8_2 = arg1_2.MessageLengthUtf8
			if not MessageLengthUtf8_2 then
				MessageLengthUtf8_2 = arg1_2.MessageLength
			end
			any_CreateBaseMessage_result2_upvr.Text = module_upvr:CreateLeadingSpaces(var51_upvw)..string.rep('_', MessageLengthUtf8_2)
		end
	end
	function useTranslatedText(arg1_3) -- Line 122
		--[[ Upvalues[6]:
			[1]: var54_upvw (read and write)
			[2]: var51_upvw (read and write)
			[3]: var53_upvw (read and write)
			[4]: useOriginalText_upvr (readonly)
			[5]: any_CreateBaseMessage_result2_upvr (readonly)
			[6]: module_upvr (copied, readonly)
		]]
		if var54_upvw == nil then
		else
			if var54_upvw.Visible == false then
				var51_upvw += 6
			end
			var54_upvw.Visible = true
			var53_upvw = true
			if arg1_3.TranslatedMessage == "" then
				useOriginalText_upvr(arg1_3)
				return
			end
			any_CreateBaseMessage_result2_upvr.Text = module_upvr:CreateLeadingSpaces(var51_upvw)..module_upvr:SanitizeForRichText(arg1_3.TranslatedMessage)
		end
	end
	function UpdateTextFunction_Chat(arg1_4) -- Line 142
		--[[ Upvalues[7]:
			[1]: arg1 (readonly)
			[2]: var54_upvw (read and write)
			[3]: var51_upvw (read and write)
			[4]: var53_upvw (read and write)
			[5]: useOriginalText_upvr (readonly)
			[6]: any_CreateBaseMessage_result2_upvr (readonly)
			[7]: module_upvr (copied, readonly)
		]]
		arg1.TranslatedMessage = arg1_4.TranslatedMessage
		if arg1_4.TranslatedMessage then
			if var54_upvw == nil then
			else
				if var54_upvw.Visible == false then
					var51_upvw += 6
				end
				var54_upvw.Visible = true
				var53_upvw = true
				if arg1_4.TranslatedMessage == "" then
					useOriginalText_upvr(arg1_4)
					return
				end
				any_CreateBaseMessage_result2_upvr.Text = module_upvr:CreateLeadingSpaces(var51_upvw)..module_upvr:SanitizeForRichText(arg1_4.TranslatedMessage)
			end
		end
		useOriginalText_upvr(arg1_4)
	end
	local function UpdateTextFunction(arg1_5) -- Line 151
		--[[ Upvalues[8]:
			[1]: var13_upvw (copied, read and write)
			[2]: arg1 (readonly)
			[3]: var54_upvw (read and write)
			[4]: var51_upvw (read and write)
			[5]: var53_upvw (read and write)
			[6]: useOriginalText_upvr (readonly)
			[7]: any_CreateBaseMessage_result2_upvr (readonly)
			[8]: module_upvr (copied, readonly)
		]]
		if var13_upvw then
			arg1.TranslatedMessage = arg1_5.TranslatedMessage
			if arg1_5.TranslatedMessage then
				if var54_upvw == nil then
				else
					if var54_upvw.Visible == false then
						var51_upvw += 6
					end
					var54_upvw.Visible = true
					var53_upvw = true
					if arg1_5.TranslatedMessage == "" then
						useOriginalText_upvr(arg1_5)
						return
					end
					any_CreateBaseMessage_result2_upvr.Text = module_upvr:CreateLeadingSpaces(var51_upvw)..module_upvr:SanitizeForRichText(arg1_5.TranslatedMessage)
				end
			end
			useOriginalText_upvr(arg1_5)
		else
			if arg1.IsFiltered then
				any_CreateBaseMessage_result2_upvr.Text = module_upvr:CreateLeadingSpaces(var51_upvw)..module_upvr:SanitizeForRichText(arg1_5.Message)
				return
			end
			local MessageLengthUtf8 = arg1_5.MessageLengthUtf8
			if not MessageLengthUtf8 then
				MessageLengthUtf8 = arg1_5.MessageLength
			end
			any_CreateBaseMessage_result2_upvr.Text = module_upvr:CreateLeadingSpaces(var51_upvw)..string.rep('_', MessageLengthUtf8)
		end
	end
	local function _() -- Line 164, Named "toggleTranslation"
		--[[ Upvalues[8]:
			[1]: var53_upvw (read and write)
			[2]: arg1 (readonly)
			[3]: var54_upvw (read and write)
			[4]: var51_upvw (read and write)
			[5]: useOriginalText_upvr (readonly)
			[6]: any_CreateBaseMessage_result2_upvr (readonly)
			[7]: module_upvr (copied, readonly)
			[8]: arg3 (readonly)
		]]
		if not var53_upvw and arg1.TranslatedMessage then
			local var58 = arg1
			if var54_upvw == nil then
			else
				if var54_upvw.Visible == false then
					var51_upvw += 6
				end
				var54_upvw.Visible = true
				var53_upvw = true
				if var58.TranslatedMessage == "" then
					useOriginalText_upvr(var58)
				else
					any_CreateBaseMessage_result2_upvr.Text = module_upvr:CreateLeadingSpaces(var51_upvw)..module_upvr:SanitizeForRichText(var58.TranslatedMessage)
				end
			end
		else
			useOriginalText_upvr(arg1)
		end
		if arg3 then
			arg3()
		end
	end
	if var13_upvw and var54_upvw ~= nil then
		local any_connect_result1_upvr = var54_upvw.MouseButton1Click:connect(function() -- Line 176
			--[[ Upvalues[8]:
				[1]: var53_upvw (read and write)
				[2]: arg1 (readonly)
				[3]: var54_upvw (read and write)
				[4]: var51_upvw (read and write)
				[5]: useOriginalText_upvr (readonly)
				[6]: any_CreateBaseMessage_result2_upvr (readonly)
				[7]: module_upvr (copied, readonly)
				[8]: arg3 (readonly)
			]]
			if not var53_upvw and arg1.TranslatedMessage then
				local var60 = arg1
				if var54_upvw == nil then
				else
					if var54_upvw.Visible == false then
						var51_upvw += 6
					end
					var54_upvw.Visible = true
					var53_upvw = true
					if var60.TranslatedMessage == "" then
						useOriginalText_upvr(var60)
					else
						any_CreateBaseMessage_result2_upvr.Text = module_upvr:CreateLeadingSpaces(var51_upvw)..module_upvr:SanitizeForRichText(var60.TranslatedMessage)
					end
				end
			else
				useOriginalText_upvr(arg1)
			end
			if arg3 then
				arg3()
			end
		end)
		local var63_upvw
		var63_upvw = var54_upvw.Changed:connect(function(arg1_6) -- Line 181
			--[[ Upvalues[2]:
				[1]: any_connect_result1_upvr (readonly)
				[2]: var63_upvw (read and write)
			]]
			if arg1_6 == "Parent" then
				any_connect_result1_upvr:Disconnect()
				var63_upvw:Disconnect()
			end
		end)
	end
	any_connect_result1_upvr = UpdateTextFunction
	any_connect_result1_upvr(arg1)
	function any_connect_result1_upvr(arg1_7) -- Line 191, Named "GetHeightFunction"
		--[[ Upvalues[3]:
			[1]: module_upvr (copied, readonly)
			[2]: any_CreateBaseMessage_result2_upvr (readonly)
			[3]: any_CreateBaseMessage_result1_upvr (readonly)
		]]
		return module_upvr:GetMessageHeight(any_CreateBaseMessage_result2_upvr, any_CreateBaseMessage_result1_upvr, arg1_7)
	end
	local tbl = {
		[any_AddNameButtonToBaseMessage_result1_upvr] = {
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
	if var13_upvw and var54_upvw ~= nil then
		tbl[var54_upvw] = {
			ImageTransparency = {
				FadedIn = 0;
				FadedOut = 1;
			};
		}
	end
	tbl[any_CreateBaseMessage_result2_upvr] = {
		TextTransparency = {
			FadedIn = 0;
			FadedOut = 1;
		};
		TextStrokeTransparency = {
			FadedIn = 0.75;
			FadedOut = 1;
		};
	}
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	for _, v_2 in pairs({}) do
		tbl[v_2] = {
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
	if any_AddChannelButtonToBaseMessage_result1 then
		tbl[any_AddChannelButtonToBaseMessage_result1] = {
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
	local any_CreateFadeFunctions_result1, any_CreateFadeFunctions_result2, any_CreateFadeFunctions_result3 = module_upvr:CreateFadeFunctions(tbl)
	return {
		[module_upvr.KEY_BASE_FRAME] = any_CreateBaseMessage_result1_upvr;
		[module_upvr.KEY_BASE_MESSAGE] = any_CreateBaseMessage_result2_upvr;
		[module_upvr.KEY_UPDATE_TEXT_FUNC] = UpdateTextFunction;
		[module_upvr.KEY_GET_HEIGHT] = any_connect_result1_upvr;
		[module_upvr.KEY_FADE_IN] = any_CreateFadeFunctions_result1;
		[module_upvr.KEY_FADE_OUT] = any_CreateFadeFunctions_result2;
		[module_upvr.KEY_UPDATE_ANIMATION] = any_CreateFadeFunctions_result3;
	}
end
return {
	[module_upvr.KEY_MESSAGE_TYPE] = require(Parent:WaitForChild("ChatConstants")).MessageTypeDefault;
	[module_upvr.KEY_CREATOR_FUNCTION] = CreateMessageLabel;
}