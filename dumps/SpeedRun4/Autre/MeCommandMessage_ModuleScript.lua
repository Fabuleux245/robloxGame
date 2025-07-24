-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:57:38
-- Luau version 6, Types version 3
-- Time taken: 0.002216 seconds

local Parent = script.Parent.Parent
local module_upvr = require(script.Parent:WaitForChild("Util"))
local module_upvr_2 = require(Parent:WaitForChild("ChatSettings"))
function CreateMeCommandMessageLabel(arg1, arg2) -- Line 11
	--[[ Upvalues[2]:
		[1]: module_upvr_2 (readonly)
		[2]: module_upvr (readonly)
	]]
	local ExtraData = arg1.ExtraData
	if not ExtraData then
		ExtraData = {}
	end
	local Font = ExtraData.Font
	if not Font then
		Font = Enum.Font.SourceSansItalic
	end
	local TextSize = ExtraData.TextSize
	if not TextSize then
		TextSize = module_upvr_2.ChatWindowTextSize
	end
	local Color3_new_result1 = Color3.new(1, 1, 1)
	local var8_upvw = 0
	local any_CreateBaseMessage_result1_upvr, any_CreateBaseMessage_result2_upvr = module_upvr:CreateBaseMessage("", Font, TextSize, Color3_new_result1)
	local var11
	if arg2 ~= arg1.OriginalChannel then
		local formatted = string.format("{%s}", arg1.OriginalChannel)
		var11 = module_upvr:AddChannelButtonToBaseMessage(any_CreateBaseMessage_result2_upvr, ExtraData.ChannelColor or Color3_new_result1, formatted, arg1.OriginalChannel)
		var8_upvw = module_upvr:GetNumberOfSpaces(formatted, Font, TextSize) + 1
	end
	local function UpdateTextFunction(arg1_2) -- Line 29
		--[[ Upvalues[4]:
			[1]: arg1 (readonly)
			[2]: any_CreateBaseMessage_result2_upvr (readonly)
			[3]: module_upvr (copied, readonly)
			[4]: var8_upvw (read and write)
		]]
		if arg1.IsFiltered then
			any_CreateBaseMessage_result2_upvr.Text = module_upvr:CreateLeadingSpaces(var8_upvw)..module_upvr:SanitizeForRichText(arg1_2.FromSpeaker..' '..string.sub(arg1_2.Message, 5))
		else
			local MessageLengthUtf8 = arg1_2.MessageLengthUtf8
			if not MessageLengthUtf8 then
				MessageLengthUtf8 = arg1_2.MessageLength
			end
			any_CreateBaseMessage_result2_upvr.Text = module_upvr:CreateLeadingSpaces(var8_upvw)..string.rep('_', utf8.len(utf8.nfcnormalize(arg1_2.FromSpeaker)) + MessageLengthUtf8 - 4)
		end
	end
	UpdateTextFunction(arg1)
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
	if var11 then
		tbl[var11] = {
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
		[module_upvr.KEY_GET_HEIGHT] = function(arg1_3) -- Line 41, Named "GetHeightFunction"
			--[[ Upvalues[3]:
				[1]: module_upvr (copied, readonly)
				[2]: any_CreateBaseMessage_result2_upvr (readonly)
				[3]: any_CreateBaseMessage_result1_upvr (readonly)
			]]
			return module_upvr:GetMessageHeight(any_CreateBaseMessage_result2_upvr, any_CreateBaseMessage_result1_upvr, arg1_3)
		end;
		[module_upvr.KEY_FADE_IN] = any_CreateFadeFunctions_result1;
		[module_upvr.KEY_FADE_OUT] = any_CreateFadeFunctions_result2;
		[module_upvr.KEY_UPDATE_ANIMATION] = any_CreateFadeFunctions_result3;
	}
end
return {
	[module_upvr.KEY_MESSAGE_TYPE] = require(Parent:WaitForChild("ChatConstants")).MessageTypeMeCommand;
	[module_upvr.KEY_CREATOR_FUNCTION] = CreateMeCommandMessageLabel;
}