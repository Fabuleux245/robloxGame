-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:57:38
-- Luau version 6, Types version 3
-- Time taken: 0.001360 seconds

local Parent = script.Parent.Parent
local module_upvr = require(script.Parent:WaitForChild("Util"))
local module_upvr_2 = require(Parent:WaitForChild("ChatSettings"))
function CreateSetCoreMessageLabel(arg1, arg2) -- Line 11
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
		Font = module_upvr_2.DefaultFont
	end
	local TextSize = ExtraData.TextSize
	if not TextSize then
		TextSize = module_upvr_2.ChatWindowTextSize
	end
	local Color = ExtraData.Color
	if not Color then
		Color = module_upvr_2.DefaultMessageColor
	end
	local any_CreateBaseMessage_result1_upvr, any_CreateBaseMessage_result2_upvr = module_upvr:CreateBaseMessage(arg1.Message, Font, TextSize, Color)
	local any_CreateFadeFunctions_result1, any_CreateFadeFunctions_result2, any_CreateFadeFunctions_result3 = module_upvr:CreateFadeFunctions({
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
	})
	return {
		[module_upvr.KEY_BASE_FRAME] = any_CreateBaseMessage_result1_upvr;
		[module_upvr.KEY_BASE_MESSAGE] = any_CreateBaseMessage_result2_upvr;
		[module_upvr.KEY_UPDATE_TEXT_FUNC] = nil;
		[module_upvr.KEY_GET_HEIGHT] = function(arg1_2) -- Line 20, Named "GetHeightFunction"
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
	[module_upvr.KEY_MESSAGE_TYPE] = require(Parent:WaitForChild("ChatConstants")).MessageTypeSetCore;
	[module_upvr.KEY_CREATOR_FUNCTION] = CreateSetCoreMessageLabel;
}