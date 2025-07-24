-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:48:35
-- Luau version 6, Types version 3
-- Time taken: 0.005606 seconds

local AppChat = script:FindFirstAncestor("AppChat")
local Parent = AppChat.Parent
local Foundation_upvr = require(Parent.Foundation)
local useLocalUserId_upvr = require(Parent.RobloxAppHooks).useLocalUserId
local useTokens_upvr = Foundation_upvr.Hooks.useTokens
local getFFlagAppChatEnablePaddingConsistency_upvr = require(Parent.SharedFlags).getFFlagAppChatEnablePaddingConsistency
local useChatPagePadding_upvr = require(AppChat.Contexts.ChatPagePadding.useChatPagePadding)
local useChatPlacementContext_upvr = require(AppChat.Contexts.ChatPlacementContext).useChatPlacementContext
local React_upvr = require(Parent.React)
local ChatMessageContainerConstants_upvr = require(script.Parent.ChatMessageContainerConstants)
local getStandardSizeAvatarHeadShotRbxthumb_upvr = require(Parent.UserLib).Utils.getStandardSizeAvatarHeadShotRbxthumb
local Cards_upvr = require(Parent.SocialCards).Cards
return function(arg1) -- Line 26, Named "CardContainer"
	--[[ Upvalues[10]:
		[1]: useLocalUserId_upvr (readonly)
		[2]: useTokens_upvr (readonly)
		[3]: getFFlagAppChatEnablePaddingConsistency_upvr (readonly)
		[4]: useChatPagePadding_upvr (readonly)
		[5]: useChatPlacementContext_upvr (readonly)
		[6]: React_upvr (readonly)
		[7]: ChatMessageContainerConstants_upvr (readonly)
		[8]: Foundation_upvr (readonly)
		[9]: getStandardSizeAvatarHeadShotRbxthumb_upvr (readonly)
		[10]: Cards_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	-- KONSTANTERROR: [0] 1. Error Block 79 start (CF ANALYSIS FAILED)
	local useLocalUserId_upvr_result1 = useLocalUserId_upvr()
	local var14
	if tostring(useLocalUserId_upvr_result1) ~= arg1.senderTargetId then
		var14 = false
	else
		var14 = true
	end
	local useTokens_upvr_result1_upvr = useTokens_upvr()
	if getFFlagAppChatEnablePaddingConsistency_upvr() then
		-- KONSTANTWARNING: GOTO [28] #24
	end
	-- KONSTANTERROR: [0] 1. Error Block 79 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [21] 19. Error Block 88 start (CF ANALYSIS FAILED)
	local tbl_3 = {}
	local var20
	tbl_3.left = 12
	tbl_3.right = 12
	var20 = {}
	var20[1] = useTokens_upvr_result1_upvr
	local any_useMemo_result1_2 = React_upvr.useMemo(function() -- Line 37
		--[[ Upvalues[1]:
			[1]: useTokens_upvr_result1_upvr (readonly)
		]]
		return Vector2.new(useTokens_upvr_result1_upvr.Size.Size_700, useTokens_upvr_result1_upvr.Size.Size_700)
	end, var20)
	var20 = React_upvr
	function var20() -- Line 41
		--[[ Upvalues[1]:
			[1]: useTokens_upvr_result1_upvr (readonly)
		]]
		return useTokens_upvr_result1_upvr.Padding.Small
	end
	local any_useMemo_result1 = var20.useMemo(var20, {useTokens_upvr_result1_upvr})
	var20 = getFFlagAppChatEnablePaddingConsistency_upvr()
	if var20 then
		var20 = ChatMessageContainerConstants_upvr.TAIL_WIDTH
		any_useMemo_result1 = var20 + 5
	end
	var20 = nil
	if not arg1.senderTargetId then
		var20 = Enum.HorizontalAlignment.Center
		-- KONSTANTWARNING: GOTO [72] #57
	end
	if var14 then
		var20 = Enum.HorizontalAlignment.Right
	else
		var20 = Enum.HorizontalAlignment.Left
	end
	local tbl_2 = {
		bottom = UDim.new(0, useTokens_upvr_result1_upvr.Padding.XXSmall);
	}
	if getFFlagAppChatEnablePaddingConsistency_upvr() then
		-- KONSTANTWARNING: GOTO [138] #99
	end
	tbl_2.left = UDim.new(0, useTokens_upvr_result1_upvr.Padding.XLarge)
	if getFFlagAppChatEnablePaddingConsistency_upvr() then
	else
	end
	tbl_2.right = UDim.new(0, useTokens_upvr_result1_upvr.Padding.XLarge)
	tbl_2.top = UDim.new(0, useTokens_upvr_result1_upvr.Padding.XXSmall)
	;({
		AutomaticSize = Enum.AutomaticSize.Y;
		Size = UDim2.fromScale(1, 0);
		layout = {
			FillDirection = Enum.FillDirection.Horizontal;
			HorizontalAlignment = var20;
			Padding = UDim.new(0, any_useMemo_result1);
			SortOrder = Enum.SortOrder.LayoutOrder;
			VerticalAlignment = Enum.VerticalAlignment.Bottom;
		};
	}).padding = tbl_2
	if arg1.senderTargetId and arg1.senderTargetId ~= useLocalUserId_upvr_result1 then
		local tbl = {
			Size = UDim2.fromOffset(any_useMemo_result1_2.X, any_useMemo_result1_2.Y);
			backgroundStyle = useTokens_upvr_result1_upvr.Color.Shift.Shift_200;
			cornerRadius = UDim.new(0, useTokens_upvr_result1_upvr.Radius.Circle);
		}
		local getStandardSizeAvatarHeadShotRbxthumb_upvr_result1 = getStandardSizeAvatarHeadShotRbxthumb_upvr(arg1.senderTargetId)
		tbl.Image = getStandardSizeAvatarHeadShotRbxthumb_upvr_result1
		if var14 then
			getStandardSizeAvatarHeadShotRbxthumb_upvr_result1 = 2
		else
			getStandardSizeAvatarHeadShotRbxthumb_upvr_result1 = 1
		end
		tbl.LayoutOrder = getStandardSizeAvatarHeadShotRbxthumb_upvr_result1
	else
	end
	;({}).Avatar = nil
	-- KONSTANTERROR: [21] 19. Error Block 88 end (CF ANALYSIS FAILED)
end