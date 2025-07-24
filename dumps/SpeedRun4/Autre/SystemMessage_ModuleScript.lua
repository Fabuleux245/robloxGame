-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:57:39
-- Luau version 6, Types version 3
-- Time taken: 0.003878 seconds

local Parent = script.Parent.Parent
local module_upvr = require(script.Parent:WaitForChild("Util"))
local var3_upvw
pcall(function() -- Line 12
	--[[ Upvalues[1]:
		[1]: var3_upvw (read and write)
	]]
	var3_upvw = require(game:GetService("Chat").ClientChatModules.ChatLocalization)
end)
local module_upvr_2 = require(Parent:WaitForChild("ChatSettings"))
function CreateSystemMessageLabel(arg1, arg2) -- Line 14
	--[[ Upvalues[3]:
		[1]: var3_upvw (read and write)
		[2]: module_upvr_2 (readonly)
		[3]: module_upvr (readonly)
	]]
	local var6
	if var3_upvw and var3_upvw.LocalizeFormattedMessage then
		var6 = var3_upvw:LocalizeFormattedMessage(var6)
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
	local ChatColor = ExtraData.ChatColor
	if not ChatColor then
		ChatColor = module_upvr_2.DefaultMessageColor
	end
	local any_CreateBaseMessage_result1_upvr, any_CreateBaseMessage_result2_upvr = module_upvr:CreateBaseMessage(var6, Font, TextSize, ChatColor)
	any_CreateBaseMessage_result2_upvr.AutoLocalize = true
	local var13
	if arg2 ~= arg1.OriginalChannel then
		local var14
		if var3_upvw and arg1.OriginalChannel == "System" then
			var14 = string.format("{%s}", var3_upvw:Get("InGame.Chat.Label.SystemMessagePrefix", "System"))
		elseif var3_upvw and arg1.OriginalChannel == "Team" then
			var14 = string.format("{%s}", var3_upvw:Get("InGame.Chat.Label.TeamMessagePrefix", "System"))
		else
			var14 = string.format("{%s}", arg1.OriginalChannel)
		end
		var13 = module_upvr:AddChannelButtonToBaseMessage(any_CreateBaseMessage_result2_upvr, ExtraData.ChannelColor or ChatColor, var14, arg1.OriginalChannel)
		any_CreateBaseMessage_result2_upvr.Text = module_upvr:CreateLeadingSpaces(module_upvr:GetNumberOfSpaces(var14, Font, TextSize) + 1)..module_upvr:SanitizeForRichText(var6)
	end
	local tbl = {
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
	if var13 then
		tbl[var13] = {
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
		[module_upvr.KEY_UPDATE_TEXT_FUNC] = nil;
		[module_upvr.KEY_GET_HEIGHT] = function(arg1_2) -- Line 45, Named "GetHeightFunction"
			--[[ Upvalues[3]:
				[1]: module_upvr (copied, readonly)
				[2]: any_CreateBaseMessage_result2_upvr (readonly)
				[3]: any_CreateBaseMessage_result1_upvr (readonly)
			]]
			return module_upvr:GetMessageHeight(any_CreateBaseMessage_result2_upvr, any_CreateBaseMessage_result1_upvr, arg1_2)
		end;
		[module_upvr.KEY_FADE_IN] = any_CreateFadeFunctions_result1;
		[module_upvr.KEY_FADE_OUT] = any_CreateFadeFunctions_result2;
		[module_upvr.KEY_UPDATE_ANIMATION] = any_CreateFadeFunctions_result3;
	}
end
return {
	[module_upvr.KEY_MESSAGE_TYPE] = require(Parent:WaitForChild("ChatConstants")).MessageTypeSystem;
	[module_upvr.KEY_CREATOR_FUNCTION] = CreateSystemMessageLabel;
}