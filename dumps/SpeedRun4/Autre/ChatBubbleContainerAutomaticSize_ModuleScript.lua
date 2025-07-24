-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:48:32
-- Luau version 6, Types version 3
-- Time taken: 0.008584 seconds

local AppChat = script:FindFirstAncestor("AppChat")
local Parent = AppChat.Parent
local React_upvr = require(Parent.React)
local UIBlox = require(Parent.UIBlox)
local ChatBubbleEnum_upvr = require(script.Parent.ChatBubbleEnum)
local Foundation_upvr = require(Parent.Foundation)
local tbl_18_upvr = {
	isIncoming = false;
	hasTail = false;
	padding = 12;
	LayoutOrder = 0;
	isPending = false;
	isUnfiltered = false;
	isAssetCard = false;
	isRepliedTo = false;
	isPressed = false;
	isLastMessageInMessageGroup = false;
	[React_upvr.Change.AbsoluteSize] = function(arg1) -- Line 51
	end;
}
local Cryo_upvr = require(Parent.Cryo)
local useTokens_upvr = Foundation_upvr.Hooks.useTokens
local useStyle_upvr = UIBlox.Core.Style.useStyle
local useSelectedTheme_upvr = require(Parent.RoactUtils).Hooks.useSelectedTheme
local getFFlagAppChatEnableRepliesUI_upvr = require(AppChat.Flags.getFFlagAppChatEnableRepliesUI)
local Constants_upvr = UIBlox.App.Style.Constants
local ColorSystem_upvr = UIBlox.Common.Style.ColorSystem
local FFlagAppChatEnableGroupedMessageBubbles_upvr = require(AppChat.Flags.FFlagAppChatEnableGroupedMessageBubbles)
local unfilteredMessageColorConfig_upvr = require(AppChat.Flags.unfilteredMessageColorConfig)
local BUBBLE_VARIANTS_upvr = ChatBubbleEnum_upvr.BUBBLE_VARIANTS
local ChatBubbleGroupable_upvr = require(script.Parent.ChatBubbleGroupable)
local RepliedToMarker_upvr = require(script.Parent.RepliedToMarker)
local ChatBubble_upvr = require(script.Parent.ChatBubble)
local ChatBubbleTail_upvr = require(script.Parent.ChatBubbleTail)
return React_upvr.memo(function(arg1) -- Line 54, Named "ChatBubbleContainer"
	--[[ Upvalues[18]:
		[1]: Cryo_upvr (readonly)
		[2]: tbl_18_upvr (readonly)
		[3]: React_upvr (readonly)
		[4]: useTokens_upvr (readonly)
		[5]: useStyle_upvr (readonly)
		[6]: useSelectedTheme_upvr (readonly)
		[7]: getFFlagAppChatEnableRepliesUI_upvr (readonly)
		[8]: Constants_upvr (readonly)
		[9]: ColorSystem_upvr (readonly)
		[10]: FFlagAppChatEnableGroupedMessageBubbles_upvr (readonly)
		[11]: unfilteredMessageColorConfig_upvr (readonly)
		[12]: BUBBLE_VARIANTS_upvr (readonly)
		[13]: Foundation_upvr (readonly)
		[14]: ChatBubbleEnum_upvr (readonly)
		[15]: ChatBubbleGroupable_upvr (readonly)
		[16]: RepliedToMarker_upvr (readonly)
		[17]: ChatBubble_upvr (readonly)
		[18]: ChatBubbleTail_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local any_join_result1_upvr = Cryo_upvr.Dictionary.join(tbl_18_upvr, arg1)
	local any_useState_result1_2_upvr, any_useState_result2_2_upvr = React_upvr.useState(0)
	local var26_upvr = any_join_result1_upvr[React_upvr.Change.AbsoluteSize]
	local useStyle_upvr_result1_upvr = useStyle_upvr()
	local children_upvr = any_join_result1_upvr.children
	if not children_upvr then
		children_upvr = {}
	end
	local isIncoming_upvr = any_join_result1_upvr.isIncoming
	local isPending_upvr = any_join_result1_upvr.isPending
	local isUnfiltered_upvr = any_join_result1_upvr.isUnfiltered
	local var32_upvw
	local var33_upvw
	local var12_result1_upvr = useSelectedTheme_upvr()
	local var35_upvw
	local var36_upvw
	if getFFlagAppChatEnableRepliesUI_upvr() then
		local any_useState_result1, any_useState_result2 = React_upvr.useState(useStyle_upvr_result1_upvr.Theme.UIDefault)
		var35_upvw = any_useState_result1
		var36_upvw = any_useState_result2
	end
	local useTokens_upvr_result1_upvr = useTokens_upvr()
	local function setBubbleStyle_upvr() -- Line 77, Named "setBubbleStyle"
		--[[ Upvalues[15]:
			[1]: getFFlagAppChatEnableRepliesUI_upvr (copied, readonly)
			[2]: any_join_result1_upvr (readonly)
			[3]: var12_result1_upvr (readonly)
			[4]: Constants_upvr (copied, readonly)
			[5]: ColorSystem_upvr (copied, readonly)
			[6]: FFlagAppChatEnableGroupedMessageBubbles_upvr (copied, readonly)
			[7]: isIncoming_upvr (readonly)
			[8]: useTokens_upvr_result1_upvr (readonly)
			[9]: isUnfiltered_upvr (readonly)
			[10]: useStyle_upvr_result1_upvr (readonly)
			[11]: isPending_upvr (readonly)
			[12]: unfilteredMessageColorConfig_upvr (copied, readonly)
			[13]: var32_upvw (read and write)
			[14]: var33_upvw (read and write)
			[15]: var36_upvw (read and write)
		]]
		local var47
		if getFFlagAppChatEnableRepliesUI_upvr() then
			local var48 = any_join_result1_upvr
			if var48.isRepliedTo then
				local tbl_2 = {}
				if var12_result1_upvr == string.lower(Constants_upvr.ThemeName.Light) then
					var48 = ColorSystem_upvr.Gray[30]
				else
					var48 = ColorSystem_upvr.Gray[90]
				end
				tbl_2.Color = var48
				var48 = 0
				tbl_2.Transparency = var48
				var47 = tbl_2
				-- KONSTANTWARNING: GOTO [180] #122
			end
		end
		if FFlagAppChatEnableGroupedMessageBubbles_upvr then
			if isIncoming_upvr then
				local tbl_9 = {}
				var48 = useTokens_upvr_result1_upvr.Color.Shift.Shift_200.Color3
				tbl_9.Color = var48
				var48 = useTokens_upvr_result1_upvr.Color.Shift.Shift_200.Transparency
				tbl_9.Transparency = var48
				var47 = tbl_9
			elseif isUnfiltered_upvr then
				local tbl_3 = {}
				var48 = useTokens_upvr_result1_upvr.Color.Extended.Blue.Blue_700.Color3
				tbl_3.Color = var48
				var48 = useTokens_upvr_result1_upvr.Color.Extended.Blue.Blue_700.Transparency
				tbl_3.Transparency = var48
				var47 = tbl_3
			else
				local tbl_13 = {}
				var48 = useTokens_upvr_result1_upvr.Color.Extended.Gray.Gray_400.Color3
				tbl_13.Color = var48
				var48 = useTokens_upvr_result1_upvr.Color.Extended.Gray.Gray_400.Transparency
				tbl_13.Transparency = var48
				var47 = tbl_13
			end
		elseif isIncoming_upvr then
			var48 = useStyle_upvr_result1_upvr
			var47 = var48.Theme.UIDefault
		elseif isPending_upvr then
			var47 = useStyle_upvr_result1_upvr.Theme.UIMuted
		elseif isUnfiltered_upvr and not any_join_result1_upvr.isAssetCard then
			local tbl_5 = {}
			if var12_result1_upvr == string.lower(Constants_upvr.ThemeName.Light) then
			else
			end
			tbl_5.Color = unfilteredMessageColorConfig_upvr.UnfilteredMessageDarkColor3
			tbl_5.Transparency = unfilteredMessageColorConfig_upvr.UnfilteredMessageTransparency
			var47 = tbl_5
		else
			var47 = useStyle_upvr_result1_upvr.Theme.UIEmphasis
		end
		var32_upvw = var47.Color
		var33_upvw = var47.Transparency
		if getFFlagAppChatEnableRepliesUI_upvr() then
			var36_upvw(var47)
		end
	end
	local function setPressedBubbleStyle_upvr() -- Line 128, Named "setPressedBubbleStyle"
		--[[ Upvalues[9]:
			[1]: getFFlagAppChatEnableRepliesUI_upvr (copied, readonly)
			[2]: any_join_result1_upvr (readonly)
			[3]: isIncoming_upvr (readonly)
			[4]: var12_result1_upvr (readonly)
			[5]: Constants_upvr (copied, readonly)
			[6]: ColorSystem_upvr (copied, readonly)
			[7]: isUnfiltered_upvr (readonly)
			[8]: unfilteredMessageColorConfig_upvr (copied, readonly)
			[9]: var36_upvw (read and write)
		]]
		-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
		local var54
		if not getFFlagAppChatEnableRepliesUI_upvr() or any_join_result1_upvr.isRepliedTo or any_join_result1_upvr.isPending then
		else
			if isIncoming_upvr then
				local tbl_19 = {}
				if var12_result1_upvr == string.lower(Constants_upvr.ThemeName.Light) then
					var54 = ColorSystem_upvr.Gray[50]
				else
				end
				tbl_19.Color = ColorSystem_upvr.Gray[70]
				tbl_19.Transparency = 0.35
			elseif isUnfiltered_upvr and not any_join_result1_upvr.isAssetCard then
				local tbl_15 = {}
				if var12_result1_upvr == Constants_upvr.ThemeName.Light then
				else
				end
				tbl_15.Color = unfilteredMessageColorConfig_upvr.UnfilteredMessagePressedDarkColor3
				tbl_15.Transparency = unfilteredMessageColorConfig_upvr.UnfilteredMessageTransparency
			else
				local tbl_17 = {}
				if var12_result1_upvr == string.lower(Constants_upvr.ThemeName.Light) then
				else
				end
				tbl_17.Color = ColorSystem_upvr.Gray[70]
				tbl_17.Transparency = 0.4
			end
			var36_upvw(tbl_17)
		end
	end
	if getFFlagAppChatEnableRepliesUI_upvr() then
		React_upvr.useLayoutEffect(function() -- Line 164
			--[[ Upvalues[3]:
				[1]: any_join_result1_upvr (readonly)
				[2]: setPressedBubbleStyle_upvr (readonly)
				[3]: setBubbleStyle_upvr (readonly)
			]]
			if any_join_result1_upvr.isPressed then
				setPressedBubbleStyle_upvr()
			else
				setBubbleStyle_upvr()
			end
		end, {any_join_result1_upvr.isPressed, any_join_result1_upvr.isRepliedTo, var12_result1_upvr, isIncoming_upvr, isPending_upvr, isUnfiltered_upvr, any_join_result1_upvr.isAssetCard})
	else
		setBubbleStyle_upvr()
	end
	local function _(arg1_2, arg2, arg3) -- Line 185, Named "getBubbleVariant"
		--[[ Upvalues[1]:
			[1]: BUBBLE_VARIANTS_upvr (copied, readonly)
		]]
		if arg1_2 and arg2 or arg3 then
			return BUBBLE_VARIANTS_upvr.SINGLE
		end
		if arg1_2 then
			return BUBBLE_VARIANTS_upvr.TOP
		end
		if arg2 then
			return BUBBLE_VARIANTS_upvr.BOTTOM
		end
		return BUBBLE_VARIANTS_upvr.MIDDLE
	end
	local hasTail_upvr = any_join_result1_upvr.hasTail
	if FFlagAppChatEnableGroupedMessageBubbles_upvr then
		local renderGroupedBubbleUI_result1 = (function() -- Line 201, Named "renderGroupedBubbleUI"
			--[[ Upvalues[15]:
				[1]: React_upvr (copied, readonly)
				[2]: Foundation_upvr (copied, readonly)
				[3]: any_join_result1_upvr (readonly)
				[4]: isIncoming_upvr (readonly)
				[5]: ChatBubbleEnum_upvr (copied, readonly)
				[6]: ChatBubbleGroupable_upvr (copied, readonly)
				[7]: children_upvr (readonly)
				[8]: getFFlagAppChatEnableRepliesUI_upvr (copied, readonly)
				[9]: var35_upvw (read and write)
				[10]: var32_upvw (read and write)
				[11]: var33_upvw (read and write)
				[12]: var26_upvr (readonly)
				[13]: any_useState_result2_2_upvr (readonly)
				[14]: BUBBLE_VARIANTS_upvr (copied, readonly)
				[15]: RepliedToMarker_upvr (copied, readonly)
			]]
			-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
			-- KONSTANTERROR: [0] 1. Error Block 58 start (CF ANALYSIS FAILED)
			local tbl_16 = {
				FillDirection = Enum.FillDirection.Horizontal;
			}
			local var62
			local function INLINED() -- Internal function, doesn't exist in bytecode
				var62 = Enum.HorizontalAlignment.Left
				return var62
			end
			if not isIncoming_upvr or not INLINED() then
				var62 = Enum.HorizontalAlignment.Right
			end
			tbl_16.HorizontalAlignment = var62
			var62 = UDim.new(0, ChatBubbleEnum_upvr.REPLIED_TO_MARKER_GAP)
			tbl_16.Padding = var62
			;({
				tag = "auto-xy size-0-0";
				AutomaticSize = Enum.AutomaticSize.XY;
				LayoutOrder = any_join_result1_upvr.LayoutOrder;
				BackgroundTransparency = 1;
			}).layout = tbl_16
			var62 = React_upvr.createElement
			local tbl = {}
			if not isIncoming_upvr or not Enum.HorizontalAlignment.Left then
			end
			tbl.alignment = Enum.HorizontalAlignment.Right
			tbl.children = children_upvr
			local tbl_12 = {}
			if getFFlagAppChatEnableRepliesUI_upvr() then
			else
			end
			tbl_12.Color3 = var32_upvw
			if getFFlagAppChatEnableRepliesUI_upvr() then
				-- KONSTANTWARNING: GOTO [84] #60
			end
			-- KONSTANTERROR: [0] 1. Error Block 58 end (CF ANALYSIS FAILED)
			-- KONSTANTERROR: [83] 59. Error Block 59 start (CF ANALYSIS FAILED)
			tbl_12.Transparency = var33_upvw
			tbl.imageStyle = tbl_12
			tbl.layoutOrder = 1
			tbl.onAbsoluteSizeChanged = var26_upvr
			tbl.padding = any_join_result1_upvr.padding
			tbl.setContentWidth = any_useState_result2_2_upvr
			if any_join_result1_upvr.hasTail and any_join_result1_upvr.isLastMessageInMessageGroup or any_join_result1_upvr.isRepliedTo then
				-- KONSTANTWARNING: GOTO [132] #94
			end
			-- KONSTANTERROR: [83] 59. Error Block 59 end (CF ANALYSIS FAILED)
		end)()
	else
	end
	return (function() -- Line 237, Named "renderLegacyBubbleUI"
		--[[ Upvalues[16]:
			[1]: React_upvr (copied, readonly)
			[2]: any_useState_result1_2_upvr (readonly)
			[3]: ChatBubbleEnum_upvr (copied, readonly)
			[4]: getFFlagAppChatEnableRepliesUI_upvr (copied, readonly)
			[5]: any_join_result1_upvr (readonly)
			[6]: ChatBubble_upvr (copied, readonly)
			[7]: isIncoming_upvr (readonly)
			[8]: var35_upvw (read and write)
			[9]: var32_upvw (read and write)
			[10]: var33_upvw (read and write)
			[11]: hasTail_upvr (readonly)
			[12]: var26_upvr (readonly)
			[13]: any_useState_result2_2_upvr (readonly)
			[14]: children_upvr (readonly)
			[15]: ChatBubbleTail_upvr (copied, readonly)
			[16]: RepliedToMarker_upvr (copied, readonly)
		]]
		-- KONSTANTERROR: [0] 1. Error Block 48 start (CF ANALYSIS FAILED)
		local tbl_8 = {
			AutomaticSize = Enum.AutomaticSize.XY;
		}
		local var67
		if getFFlagAppChatEnableRepliesUI_upvr() and any_join_result1_upvr.isRepliedTo then
			var67 = ChatBubbleEnum_upvr.REPLIED_TO_MARKER_GAP + ChatBubbleEnum_upvr.REPLIED_TO_MARKER_WIDTH
		else
			var67 = 0
		end
		var67 = 0
		tbl_8.Size = UDim2.new(0, any_useState_result1_2_upvr + ChatBubbleEnum_upvr.TAIL_WIDTH + var67, 0, var67)
		tbl_8.LayoutOrder = any_join_result1_upvr.LayoutOrder
		tbl_8.BackgroundTransparency = 1
		local tbl_14 = {}
		var67 = any_useState_result1_2_upvr
		tbl_14.contentWidth = var67
		var67 = isIncoming_upvr
		tbl_14.isIncoming = var67
		if getFFlagAppChatEnableRepliesUI_upvr() then
			var67 = any_join_result1_upvr.isRepliedTo
			-- KONSTANTWARNING: GOTO [67] #52
		end
		-- KONSTANTERROR: [0] 1. Error Block 48 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [66] 51. Error Block 53 start (CF ANALYSIS FAILED)
		var67 = nil
		tbl_14.isRepliedTo = var67
		if getFFlagAppChatEnableRepliesUI_upvr() then
			var67 = var35_upvw.Color
			-- KONSTANTWARNING: GOTO [77] #60
		end
		-- KONSTANTERROR: [66] 51. Error Block 53 end (CF ANALYSIS FAILED)
	end)()
end)