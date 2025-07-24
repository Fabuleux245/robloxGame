-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:57:41
-- Luau version 6, Types version 3
-- Time taken: 0.003454 seconds

local Parent = script.Parent.Parent
local module_upvr_2 = require(script.Parent:WaitForChild("Util"))
pcall(function() -- Line 12
	ChatLocalization = require(game:GetService("Chat").ClientChatModules.ChatLocalization) -- Setting global
end)
local module_upvr = require(Parent:WaitForChild("ChatSettings"))
function CreateWelcomeMessageLabel(arg1, arg2) -- Line 14
	--[[ Upvalues[2]:
		[1]: module_upvr (readonly)
		[2]: module_upvr_2 (readonly)
	]]
	local var5
	if ChatLocalization and ChatLocalization.LocalizeFormattedMessage then
		var5 = ChatLocalization:LocalizeFormattedMessage(var5)
	end
	local ExtraData = arg1.ExtraData
	if not ExtraData then
		ExtraData = {}
	end
	local Font = ExtraData.Font
	if not Font then
		Font = module_upvr.DefaultFont
	end
	local FontSize = ExtraData.FontSize
	if not FontSize then
		FontSize = module_upvr.ChatWindowTextSize
	end
	local ChatColor = ExtraData.ChatColor
	if not ChatColor then
		ChatColor = module_upvr.DefaultMessageColor
	end
	local any_CreateBaseMessage_result1_upvr, any_CreateBaseMessage_result2_upvr = module_upvr_2:CreateBaseMessage(var5, Font, FontSize, ChatColor)
	local var12
	if arg2 ~= arg1.OriginalChannel then
		local OriginalChannel = arg1.OriginalChannel
		if ChatLocalization.tryLocalize then
			OriginalChannel = ChatLocalization:tryLocalize(arg1.OriginalChannel)
		end
		local formatted = string.format("{%s}", OriginalChannel)
		var12 = module_upvr_2:AddChannelButtonToBaseMessage(any_CreateBaseMessage_result2_upvr, ExtraData.ChannelColor or ChatColor, formatted, arg1.OriginalChannel)
		any_CreateBaseMessage_result2_upvr.Text = module_upvr_2:CreateLeadingSpaces(module_upvr_2:GetNumberOfSpaces(formatted, Font, FontSize) + 1)..module_upvr_2:SanitizeForRichText(var5)
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
	if var12 then
		tbl[var12] = {
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
		[module_upvr_2.KEY_UPDATE_TEXT_FUNC] = nil;
		[module_upvr_2.KEY_GET_HEIGHT] = function(arg1_2) -- Line 39, Named "GetHeightFunction"
			--[[ Upvalues[3]:
				[1]: module_upvr_2 (copied, readonly)
				[2]: any_CreateBaseMessage_result2_upvr (readonly)
				[3]: any_CreateBaseMessage_result1_upvr (readonly)
			]]
			return module_upvr_2:GetMessageHeight(any_CreateBaseMessage_result2_upvr, any_CreateBaseMessage_result1_upvr, arg1_2)
		end;
		[module_upvr_2.KEY_FADE_IN] = any_CreateFadeFunctions_result1;
		[module_upvr_2.KEY_FADE_OUT] = any_CreateFadeFunctions_result2;
		[module_upvr_2.KEY_UPDATE_ANIMATION] = any_CreateFadeFunctions_result3;
	}
end
return {
	[module_upvr_2.KEY_MESSAGE_TYPE] = require(Parent:WaitForChild("ChatConstants")).MessageTypeWelcome;
	[module_upvr_2.KEY_CREATOR_FUNCTION] = CreateWelcomeMessageLabel;
}