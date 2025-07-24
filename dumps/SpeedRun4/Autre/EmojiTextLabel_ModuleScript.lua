-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:14:24
-- Luau version 6, Types version 3
-- Time taken: 0.002150 seconds

local Parent_2 = script.Parent.Parent.Parent.Parent
local Parent = Parent_2.Parent
local Emoji = Parent_2.Core.Emoji
local tbl_upvr = {
	maxSize = Vector2.new(10000, 10000);
	fluidSizing = false;
}
local Cryo_upvr = require(Parent.Cryo)
local useStyle_upvr = require(Parent_2.Core.Style.useStyle)
local Emoji_2_upvr = require(Emoji.Enum.Emoji)
local GetTextSize_upvr = require(Parent_2.Core.Text.GetTextSize)
local React_upvr = require(Parent.React)
local GenericTextLabel_upvr = require(Parent_2.Core.Text.GenericTextLabel.GenericTextLabel)
local Emoji_upvr = require(Emoji.Emoji)
return function(arg1) -- Line 47, Named "EmojiTextLabel"
	--[[ Upvalues[8]:
		[1]: Cryo_upvr (readonly)
		[2]: tbl_upvr (readonly)
		[3]: useStyle_upvr (readonly)
		[4]: Emoji_2_upvr (readonly)
		[5]: GetTextSize_upvr (readonly)
		[6]: React_upvr (readonly)
		[7]: GenericTextLabel_upvr (readonly)
		[8]: Emoji_upvr (readonly)
	]]
	local any_join_result1 = Cryo_upvr.Dictionary.join(tbl_upvr, arg1)
	local fontStyle = any_join_result1.fontStyle
	local Font = fontStyle.Font
	local var15
	if fontStyle.RelativeSize then
		var15 = useStyle_upvr().Font.BaseSize * fontStyle.RelativeSize
	else
		var15 = fontStyle.FontSize
	end
	local maxSize = any_join_result1.maxSize
	local GetTextSize_upvr_result1 = GetTextSize_upvr(any_join_result1.Text, var15, Font, maxSize)
	local module = {}
	local any_isEnumValue_result1 = Emoji_2_upvr.isEnumValue(any_join_result1.emoji)
	if any_isEnumValue_result1 then
		any_isEnumValue_result1 = React_upvr.createElement
		any_isEnumValue_result1 = any_isEnumValue_result1(Emoji_upvr, {
			emoji = any_join_result1.emoji;
			onActivated = any_join_result1.emojiOnActivated;
			textFont = Font;
			textSize = var15;
			Position = UDim2.fromScale(1, 0);
		})
	end
	module.Emoji = any_isEnumValue_result1
	return React_upvr.createElement(GenericTextLabel_upvr, Cryo_upvr.Dictionary.join(any_join_result1, {
		emoji = Cryo_upvr.None;
		emojiOnActivated = Cryo_upvr.None;
		colorStyle = any_join_result1.colorStyle;
		Size = UDim2.fromOffset(math.min(GetTextSize_upvr_result1.X, maxSize.X - var15), GetTextSize_upvr_result1.Y);
	}), module)
end