-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:52:22
-- Luau version 6, Types version 3
-- Time taken: 0.003006 seconds

local AppChat = script:FindFirstAncestor("AppChat")
local Parent = AppChat.Parent
local UIBlox = require(Parent.UIBlox)
local AppNavBar_upvr = require(Parent.AppNavBar)
local function noOpt_upvr() -- Line 24, Named "noOpt"
	return nil
end
local FFlagAppIaScrollAway_upvr = require(Parent.SharedFlags).FFlagAppIaScrollAway
local NAV_BAR_WITH_FACEPILE_SIZE_upvr = require(AppChat.Constants).NAV_BAR_WITH_FACEPILE_SIZE
local GetFFlagUIBloxUseNewHeaderBar_upvr = require(Parent.SharedFlags).UIBlox.GetFFlagUIBloxUseNewHeaderBar
local AppHeaderBar_upvr = require(Parent.AppHeaderBar)
local HeaderBar_upvr = UIBlox.App.Bar.HeaderBar
local withLocalization_upvr = require(Parent.Localization).withLocalization
local EnumScreens_upvr = require(AppChat.EnumScreens)
local getFFlagAppChatReplaceWithCloseButton_upvr = require(AppChat.Flags.getFFlagAppChatReplaceWithCloseButton)
local Roact_upvr = require(Parent.Roact)
local HeaderBarTitleLeftAligned_upvr = require(AppChat.Components.ChatConversation.HeaderBarTitleLeftAligned)
local getFFlagAppChatEnablePaddingConsistency_upvr = require(Parent.SharedFlags).getFFlagAppChatEnablePaddingConsistency
local VisibilityControl_upvr = AppNavBar_upvr.VisibilityControl
local withStyle_upvr = UIBlox.Style.withStyle
return function(arg1) -- Line 32
	--[[ Upvalues[15]:
		[1]: FFlagAppIaScrollAway_upvr (readonly)
		[2]: NAV_BAR_WITH_FACEPILE_SIZE_upvr (readonly)
		[3]: GetFFlagUIBloxUseNewHeaderBar_upvr (readonly)
		[4]: AppHeaderBar_upvr (readonly)
		[5]: HeaderBar_upvr (readonly)
		[6]: withLocalization_upvr (readonly)
		[7]: EnumScreens_upvr (readonly)
		[8]: getFFlagAppChatReplaceWithCloseButton_upvr (readonly)
		[9]: noOpt_upvr (readonly)
		[10]: Roact_upvr (readonly)
		[11]: HeaderBarTitleLeftAligned_upvr (readonly)
		[12]: getFFlagAppChatEnablePaddingConsistency_upvr (readonly)
		[13]: AppNavBar_upvr (readonly)
		[14]: VisibilityControl_upvr (readonly)
		[15]: withStyle_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local var19
	if FFlagAppIaScrollAway_upvr then
	else
	end
	if arg1.shouldRenderCenter then
		if arg1.renderCenter == nil then
		else
		end
	end
	local headerText = arg1.headerText
	if not headerText then
	end
	if GetFFlagUIBloxUseNewHeaderBar_upvr() then
	else
	end
	local module = {}
	local function INLINED() -- Internal function, doesn't exist in bytecode
		var19 = ({}).raw
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		return var19
	end
	if not ({}).shouldLocalize or not INLINED() then
		var19 = nil
	end
	module.headerText = var19
	local tbl_upvr = {}
	local var24_upvr = true
	local any_getScreenProps_result1_upvr = arg1.navigation.getScreenProps("navigateToRootStack", nil)
	local backButton_upvr = HeaderBar_upvr.renderLeft.backButton
	local makeCloseButton_upvr = AppHeaderBar_upvr.makeCloseButton
	local var28_upvr
	return withLocalization_upvr(module)(function(arg1_2) -- Line 49
		--[[ Upvalues[20]:
			[1]: tbl_upvr (readonly)
			[2]: var24_upvr (readonly)
			[3]: arg1 (readonly)
			[4]: any_getScreenProps_result1_upvr (readonly)
			[5]: EnumScreens_upvr (copied, readonly)
			[6]: backButton_upvr (readonly)
			[7]: getFFlagAppChatReplaceWithCloseButton_upvr (copied, readonly)
			[8]: makeCloseButton_upvr (readonly)
			[9]: noOpt_upvr (copied, readonly)
			[10]: GetFFlagUIBloxUseNewHeaderBar_upvr (copied, readonly)
			[11]: Roact_upvr (copied, readonly)
			[12]: HeaderBarTitleLeftAligned_upvr (copied, readonly)
			[13]: getFFlagAppChatEnablePaddingConsistency_upvr (copied, readonly)
			[14]: FFlagAppIaScrollAway_upvr (copied, readonly)
			[15]: var28_upvr (readonly)
			[16]: AppNavBar_upvr (copied, readonly)
			[17]: VisibilityControl_upvr (copied, readonly)
			[18]: NAV_BAR_WITH_FACEPILE_SIZE_upvr (readonly)
			[19]: withStyle_upvr (copied, readonly)
			[20]: HeaderBar_upvr (copied, readonly)
		]]
		-- KONSTANTERROR: [0] 1. Error Block 89 start (CF ANALYSIS FAILED)
		if not tbl_upvr.shouldLocalize or not arg1_2.headerText then
		end
		if var24_upvr then
			-- KONSTANTWARNING: GOTO [56] #51
		end
		-- KONSTANTERROR: [0] 1. Error Block 89 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [22] 19. Error Block 74 start (CF ANALYSIS FAILED)
		local function _() -- Line 60
			--[[ Upvalues[1]:
				[1]: arg1 (copied, readonly)
			]]
			local var30
			local function INLINED_2() -- Internal function, doesn't exist in bytecode
				var30 = arg1.renderRight()
				return var30
			end
			if not arg1.renderRight or arg1.rightHidden or not INLINED_2() then
				var30 = nil
			end
			return var30
		end
		if any_getScreenProps_result1_upvr then
			local function _() -- Line 67
				--[[ Upvalues[3]:
					[1]: arg1 (copied, readonly)
					[2]: EnumScreens_upvr (copied, readonly)
					[3]: any_getScreenProps_result1_upvr (copied, readonly)
				]]
				if arg1.closeInputBar then
					arg1.closeInputBar()
				end
				if arg1.isRoot then
					arg1.navigation.navigate(EnumScreens_upvr.EmptyConversation)
					any_getScreenProps_result1_upvr()
				else
					arg1.navigation.pop()
				end
			end
			-- KONSTANTWARNING: GOTO [34] #31
		end
		-- KONSTANTERROR: [22] 19. Error Block 74 end (CF ANALYSIS FAILED)
	end)
end