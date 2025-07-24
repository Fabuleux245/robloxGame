-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:13:41
-- Luau version 6, Types version 3
-- Time taken: 0.001699 seconds

local Parent_2 = script.Parent
local Parent = Parent_2.Parent.Parent.Parent.Parent
local Cryo_upvr = require(Parent.Parent.Cryo)
local Constants_upvr = require(Parent_2.Constants)
local setDefault_upvr = require(Parent.Utility.setDefault)
local AspectRatioMode_upvr = require(Parent_2.Enum.AspectRatioMode)
local getAspectRatio_upvr = require(Parent_2.getAspectRatio)
return function(arg1, arg2, arg3, arg4, arg5) -- Line 33
	--[[ Upvalues[5]:
		[1]: Cryo_upvr (readonly)
		[2]: Constants_upvr (readonly)
		[3]: setDefault_upvr (readonly)
		[4]: AspectRatioMode_upvr (readonly)
		[5]: getAspectRatio_upvr (readonly)
	]]
	local var10 = arg5
	if not var10 then
		var10 = {}
	end
	local any_join_result1 = Cryo_upvr.Dictionary.join(Constants_upvr.getDefaultStyleProps(arg1), var10)
	local topContentPadding = any_join_result1.topContentPadding
	local bottomContentPadding = any_join_result1.bottomContentPadding
	local selectionCursorPadding = any_join_result1.selectionCursorPadding
	return UDim.new(getAspectRatio_upvr(setDefault_upvr(arg2, AspectRatioMode_upvr.Square)), ((-1 * (selectionCursorPadding.Left + selectionCursorPadding.Right + topContentPadding.Left + topContentPadding.Right) * getAspectRatio_upvr(setDefault_upvr(arg2, AspectRatioMode_upvr.Square))) + (math.floor(setDefault_upvr(arg3, Constants_upvr.DEFAULT_TEXT_LINE_COUNT) * any_join_result1.contentTitleFont.RelativeSize * arg1.Font.BaseSize + any_join_result1.contentTitlePadding) + setDefault_upvr(arg4, Constants_upvr.DEFAULT_FOOTER_HEIGHT))) + (((topContentPadding.Top + topContentPadding.Bottom) + (bottomContentPadding.Top + bottomContentPadding.Bottom)) + (selectionCursorPadding.Top + selectionCursorPadding.Bottom)))
end