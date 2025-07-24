-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:27:59
-- Luau version 6, Types version 3
-- Time taken: 0.000836 seconds

local Constants_upvr = require(script.Parent.Constants)
local Text_upvr = require(script:FindFirstAncestor("SocialCommon").Parent.AppCommonLib).Text
return function(arg1) -- Line 16
	--[[ Upvalues[2]:
		[1]: Constants_upvr (readonly)
		[2]: Text_upvr (readonly)
	]]
	if not arg1 or not arg1.nameTopPadding then
	end
	if not arg1 or not arg1.contextualTopPadding then
	end
	if not arg1 or not arg1.maxLinesNumber then
	end
	local font = arg1.font
	return Constants_upvr.NAME_TOP_PADDING + Text_upvr.GetTextHeight("", font.CaptionHeader.Font, font.BaseSize * font.CaptionHeader.RelativeSize, 10000) + Constants_upvr.CONTEXTUAL_TOP_PADDING + Text_upvr.GetTextHeight("", font.CaptionBody.Font, font.BaseSize * font.CaptionBody.RelativeSize, 10000) * Constants_upvr.LINES_MAX
end