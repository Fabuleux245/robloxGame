-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:03:20
-- Luau version 6, Types version 3
-- Time taken: 0.015414 seconds

local ExpChat = script:FindFirstAncestor("ExpChat")
local Parent_2 = ExpChat.Parent
local Parent = ExpChat.Parent
local UserProfiles_upvr = require(Parent_2.UserProfiles)
local React_upvr = require(Parent.React)
local RoactRodux_upvr = require(Parent_2.RoactRodux)
local GetFFlagUseUserProfileStore_upvr = require(Parent_2.SharedFlags).GetFFlagUseUserProfileStore
local var8_upvw
local var29_upvw
if not GetFFlagUseUserProfileStore_upvr() then
	var8_upvw = require(Parent.ApolloClient).useQuery
end
local Helpers = ExpChat.ChatWindow.Helpers
local getMessageSettings_upvr = require(Helpers.getMessageSettings)
local game_GetEngineFeature_result1_upvr = game:GetEngineFeature("TextChatServiceIncludesColon")
local Flags = ExpChat.Flags
local getFFlagEnableGradientForChatWindowMessage_upvr = require(Flags.getFFlagEnableGradientForChatWindowMessage)
local getFFlagChatWindowOnlyRenderMessagesOnce_upvr = require(ExpChat.Flags.getFFlagChatWindowOnlyRenderMessagesOnce)
local getFFlagChatWindowSemiRoduxMessages = require(ExpChat.Flags.getFFlagChatWindowSemiRoduxMessages)
local Config_upvr = require(ExpChat.Config)
function appendVerifiedBadge(arg1) -- Line 43
	--[[ Upvalues[2]:
		[1]: game_GetEngineFeature_result1_upvr (readonly)
		[2]: Config_upvr (readonly)
	]]
	if game_GetEngineFeature_result1_upvr then
		return string.gsub(arg1, ":(%S-)$", Config_upvr.VERIFIED_EMOJI..":%1")
	end
	return arg1..Config_upvr.VERIFIED_EMOJI
end
local UserProfileStore_upvr = UserProfiles_upvr.Stores.UserProfileStore
local SignalsReact_upvr = require(Parent_2.SignalsReact)
local context_upvr = require(Parent_2.ExpChatShared).context
local function var18_upvr(arg1) -- Line 50
	--[[ Upvalues[6]:
		[1]: GetFFlagUseUserProfileStore_upvr (readonly)
		[2]: UserProfileStore_upvr (readonly)
		[3]: SignalsReact_upvr (readonly)
		[4]: context_upvr (readonly)
		[5]: var8_upvw (read and write)
		[6]: UserProfiles_upvr (readonly)
	]]
	if GetFFlagUseUserProfileStore_upvr() then
		local _1 = UserProfileStore_upvr.get().fetchNamesByUserIds({tostring(arg1.userId)})(false).data[1]
		return {
			displayName = SignalsReact_upvr.useSignalBinding(_1.names.getDisplayName);
			inExperienceCombinedName = SignalsReact_upvr.useSignalBinding(_1.names.getInExperienceCombinedName);
		}
	end
	if context_upvr.apolloClient then
		return var8_upvw(UserProfiles_upvr.Queries.userProfilesInExperienceNamesByUserIds, {
			errorPolicy = "all";
			variables = {
				userIds = {tostring(arg1.userId)};
			};
			client = context_upvr.apolloClient;
		})
	end
	return nil
end
function trim(arg1) -- Line 73
	if arg1:match("^()%s*$") then
		return ""
	end
	return arg1:match("^%s*(.*%S)")
end
function getMessageText(arg1, arg2, arg3) -- Line 77
	if arg2 == nil or arg2 == "" then
		return arg3 or ""
	end
	if arg1 then
		return arg2 or ""
	end
	return arg3 or ""
end
local function _(arg1, arg2) -- Line 87, Named "setTransparency"
	return arg2:map(function(arg1_2) -- Line 88
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		if arg1 == nil then
			return 1
		end
		return arg1 + arg1_2 * (1 - arg1)
	end)
end
local game_DefineFastFlag_result1_upvr = game:DefineFastFlag("DebugMessageProfiling", false)
local getFFlagChatWindowMessageRemoveState_upvr = require(ExpChat.Flags.getFFlagChatWindowMessageRemoveState)
local SpatialUI_upvr = require(ExpChat.SpatialUI)
local isExperienceChatUserProfileApiEnabled_upvr = require(Flags.isExperienceChatUserProfileApiEnabled)
local duplicateInvisibleText_upvr = require(Helpers.duplicateInvisibleText)
local TenFootInterfaceExpChatExperimentation_upvr = require(Parent_2.SocialExperiments).TenFootInterfaceExpChatExperimentation
function var29_upvw(arg1) -- Line 93
	--[[ Upvalues[13]:
		[1]: game_DefineFastFlag_result1_upvr (readonly)
		[2]: GetFFlagUseUserProfileStore_upvr (readonly)
		[3]: React_upvr (readonly)
		[4]: getFFlagChatWindowMessageRemoveState_upvr (readonly)
		[5]: getFFlagChatWindowOnlyRenderMessagesOnce_upvr (readonly)
		[6]: SpatialUI_upvr (readonly)
		[7]: getMessageSettings_upvr (readonly)
		[8]: getFFlagEnableGradientForChatWindowMessage_upvr (readonly)
		[9]: isExperienceChatUserProfileApiEnabled_upvr (readonly)
		[10]: var18_upvr (readonly)
		[11]: game_GetEngineFeature_result1_upvr (readonly)
		[12]: duplicateInvisibleText_upvr (readonly)
		[13]: TenFootInterfaceExpChatExperimentation_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	-- KONSTANTERROR: [0] 1. Error Block 250 start (CF ANALYSIS FAILED)
	local var58
	if game_DefineFastFlag_result1_upvr then
		debug.profilebegin("TranslatedTextMessage")
	end
	local var7_result1 = GetFFlagUseUserProfileStore_upvr()
	if not var7_result1 then
		var58 = React_upvr.useState(nil)
		local any_useState_result1, _ = React_upvr.useState(nil)
		any_useState_result1 = getFFlagChatWindowMessageRemoveState_upvr()
		if any_useState_result1 then
			any_useState_result1 = React_upvr.useRef(nil)
		end
	end
	if getFFlagChatWindowOnlyRenderMessagesOnce_upvr() then
		any_useState_result1 = nil
	else
		any_useState_result1 = React_upvr.useContext(SpatialUI_upvr)
	end
	if getFFlagChatWindowOnlyRenderMessagesOnce_upvr() then
	else
	end
	if any_useState_result1.isSpatialUIEnabled then
	else
	end
	local var11_result1 = getMessageSettings_upvr(arg1.message, arg1.chatWindowSettings)
	if arg1.showTranslationButton then
		if getFFlagEnableGradientForChatWindowMessage_upvr() then
			if var11_result1.translation ~= nil then
				if var11_result1.translation == "" then
				else
				end
				-- KONSTANTWARNING: GOTO [95] #73
			end
		elseif arg1.message.translation ~= nil then
			if arg1.message.translation == "" then
			else
			end
		end
	end
	if getFFlagEnableGradientForChatWindowMessage_upvr() then
		-- KONSTANTWARNING: GOTO [105] #80
	end
	-- KONSTANTERROR: [0] 1. Error Block 250 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [101] 78. Error Block 258 start (CF ANALYSIS FAILED)
	local var63
	if getFFlagEnableGradientForChatWindowMessage_upvr() then
		var63 = var11_result1.translation
	else
		var63 = arg1.message.translation
	end
	if getFFlagEnableGradientForChatWindowMessage_upvr() then
	else
	end
	var63 = getFFlagEnableGradientForChatWindowMessage_upvr()
	if var63 then
		var63 = var11_result1.prefixText
		local _ = var63 or ""
	else
		var63 = arg1.message.prefixText
	end
	var63 = any_useState_result1 or var63 or ""
	if isExperienceChatUserProfileApiEnabled_upvr() and arg1.message.userId then
		if game_DefineFastFlag_result1_upvr then
			debug.profilebegin("useCombinedName")
		end
		local var18_result1 = var18_upvr(arg1.message)
		if game_DefineFastFlag_result1_upvr then
			debug.profileend()
		end
	end
	if var7_result1 then
		local var66 = React_upvr
		if var18_result1 ~= nil then
			var66 = {}
			var66[1] = var18_result1.displayName
			var66[2] = var18_result1.inExperienceCombinedName
		else
			var66 = {}
		end
		local var68_upvr = var63 or ""
		local _ = var66.joinBindings(var66):map(function(arg1_6) -- Line 154
			--[[ Upvalues[3]:
				[1]: var68_upvr (readonly)
				[2]: arg1 (readonly)
				[3]: game_GetEngineFeature_result1_upvr (copied, readonly)
			]]
			local var69 = arg1_6[1] or ""
			local var70 = arg1_6[2] or ""
			local var71 = var68_upvr
			if 0 < string.len(var69) then
				if 0 < string.len(var70) and var69 ~= var70 then
					var71 = string.gsub(var71, var69, var70)
				end
			end
			if 0 < string.len(var68_upvr) then
				if arg1.isUserVerified then
					var71 = appendVerifiedBadge(var71)
				end
				if not game_GetEngineFeature_result1_upvr then
					var71 = var71..':'
				end
			end
			return var71
		end)
		local function _(arg1_7) -- Line 178
			--[[ Upvalues[1]:
				[1]: var68_upvr (readonly)
			]]
			if string.len(var68_upvr) == 0 then
				return arg1_7
			end
			return trim(arg1_7)
		end
		local getMessageText_result1_upvw_2 = getMessageText(arg1.message.useTranslation, var63, arg1.message.text)
		local var76_upvr = true
		local prefixTextProperties_upvr = var11_result1.prefixTextProperties
		local function _(arg1_8) -- Line 185
			--[[ Upvalues[6]:
				[1]: var68_upvr (readonly)
				[2]: getMessageText_result1_upvw_2 (read and write)
				[3]: var76_upvr (readonly)
				[4]: getFFlagEnableGradientForChatWindowMessage_upvr (copied, readonly)
				[5]: duplicateInvisibleText_upvr (copied, readonly)
				[6]: prefixTextProperties_upvr (readonly)
			]]
			local var78
			if var78 == 0 then
				var78 = getMessageText_result1_upvw_2
				return var78
			end
			var78 = getMessageText_result1_upvw_2
			if var76_upvr then
				var78 = "   "..var78
			end
			if getFFlagEnableGradientForChatWindowMessage_upvr() then
				var78 = duplicateInvisibleText_upvr(arg1_8, prefixTextProperties_upvr.FontFace, prefixTextProperties_upvr.TextSize)..' '..var78
				return var78
			end
			var78 = arg1_8..' '..var78
			return var78
		end
		-- KONSTANTWARNING: GOTO [318] #244
	end
	-- KONSTANTERROR: [101] 78. Error Block 258 end (CF ANALYSIS FAILED)
end
if not getFFlagChatWindowSemiRoduxMessages() then
	var29_upvw = RoactRodux_upvr.connect(function() -- Line 382
	end, function(arg1) -- Line 382
		local module = {}
		local function onToggle(arg1_9, arg2) -- Line 384
			--[[ Upvalues[1]:
				[1]: arg1 (readonly)
			]]
			local tbl_2 = {
				type = "ChatTranslationMessageToggled";
			}
			tbl_2.useTranslation = arg1_9
			tbl_2.messageId = arg2
			arg1(tbl_2)
		end
		module.onToggle = onToggle
		return module
	end)(var29_upvw)
end
local function TranslatedTextMessageWithToggle_upvr(arg1) -- Line 395, Named "TranslatedTextMessageWithToggle"
	--[[ Upvalues[2]:
		[1]: RoactRodux_upvr (readonly)
		[2]: var29_upvw (read and write)
	]]
	return RoactRodux_upvr.connect(function() -- Line 396
	end, function(arg1_10) -- Line 396
		return {
			onToggle = function(arg1_11, arg2) -- Line 398, Named "onToggle"
				--[[ Upvalues[1]:
					[1]: arg1_10 (readonly)
				]]
				local tbl = {
					type = "ChatTranslationMessageToggled";
				}
				tbl.useTranslation = arg1_11
				tbl.messageId = arg2
				arg1_10(tbl)
			end;
		}
	end)(var29_upvw)
end
local function TranslatedTextMessageWrapper(arg1) -- Line 409
	--[[ Upvalues[5]:
		[1]: getMessageSettings_upvr (readonly)
		[2]: getFFlagEnableGradientForChatWindowMessage_upvr (readonly)
		[3]: React_upvr (readonly)
		[4]: TranslatedTextMessageWithToggle_upvr (readonly)
		[5]: var29_upvw (read and write)
	]]
	local getMessageSettings_upvr_result1 = getMessageSettings_upvr(arg1.message, arg1.chatWindowSettings)
	local showTranslationButton = arg1.showTranslationButton
	if showTranslationButton then
		if getFFlagEnableGradientForChatWindowMessage_upvr() then
			showTranslationButton = false
			if getMessageSettings_upvr_result1.translation ~= nil then
				if getMessageSettings_upvr_result1.translation == "" then
					showTranslationButton = false
				else
					showTranslationButton = true
				end
				-- KONSTANTWARNING: GOTO [39] #27
			end
		else
			showTranslationButton = false
			if arg1.message.translation ~= nil then
				if arg1.message.translation == "" then
					showTranslationButton = false
				else
					showTranslationButton = true
				end
			end
		end
	end
	if showTranslationButton then
		return React_upvr.createElement(TranslatedTextMessageWithToggle_upvr, arg1)
	end
	return React_upvr.createElement(var29_upvw, arg1)
end
local function areEqual(arg1, arg2) -- Line 429
	local var93 = false
	if arg1.message.text == arg2.message.text then
		var93 = false
		if arg1.message.prefixText == arg2.message.prefixText then
			var93 = false
			if arg1.message.translation == arg2.message.translation then
				var93 = false
				if arg1.message.useTranslation == arg2.message.useTranslation then
					var93 = false
					if arg1.message.messageId == arg2.message.messageId then
						if arg1.chatWindowSettings ~= arg2.chatWindowSettings then
							var93 = false
						else
							var93 = true
						end
					end
				end
			end
		end
	end
	return var93
end
local var16_result1 = getFFlagChatWindowSemiRoduxMessages()
if var16_result1 then
	if getFFlagChatWindowOnlyRenderMessagesOnce_upvr() then
		var16_result1 = React_upvr.memo(TranslatedTextMessageWrapper, areEqual)
	else
		var16_result1 = TranslatedTextMessageWrapper
	end
	return var16_result1
end
if getFFlagChatWindowOnlyRenderMessagesOnce_upvr() then
	var16_result1 = React_upvr.memo(var29_upvw, areEqual)
else
	var16_result1 = var29_upvw
end
return var16_result1