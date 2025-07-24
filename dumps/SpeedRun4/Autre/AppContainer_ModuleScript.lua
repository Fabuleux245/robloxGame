-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:02:36
-- Luau version 6, Types version 3
-- Time taken: 0.008488 seconds

local ExpChat = script:FindFirstAncestor("ExpChat")
local Parent = ExpChat.Parent
local Roact_upvr = require(Parent.Roact)
local SharedFlags = require(Parent.SharedFlags)
local TextChatService_upvr = game:GetService("TextChatService")
local getFFlagExpChatAlwaysRunTCS_upvr = SharedFlags.getFFlagExpChatAlwaysRunTCS
local getFFlagExpChatMigrationSetup_upvr = SharedFlags.getFFlagExpChatMigrationSetup
function getChatWindowEnabled() -- Line 22
	--[[ Upvalues[1]:
		[1]: TextChatService_upvr (readonly)
	]]
	local pcall_result1, pcall_result2_2 = pcall(function() -- Line 23
		--[[ Upvalues[1]:
			[1]: TextChatService_upvr (copied, readonly)
		]]
		local class_ChatWindowConfiguration = TextChatService_upvr:FindFirstChildOfClass("ChatWindowConfiguration")
		if class_ChatWindowConfiguration ~= nil then
			return class_ChatWindowConfiguration.Enabled
		end
		return false
	end)
	return pcall_result1 and pcall_result2_2
end
function getChatTranslationEnabled() -- Line 35
	--[[ Upvalues[1]:
		[1]: TextChatService_upvr (readonly)
	]]
	local pcall_result1_4, pcall_result2_4 = pcall(function() -- Line 36
		--[[ Upvalues[1]:
			[1]: TextChatService_upvr (copied, readonly)
		]]
		return TextChatService_upvr.ChatTranslationEnabled
	end)
	return pcall_result1_4 and pcall_result2_4
end
function getChatTranslationToggleEnabled() -- Line 43
	--[[ Upvalues[1]:
		[1]: TextChatService_upvr (readonly)
	]]
	local pcall_result1_6, pcall_result2_5 = pcall(function() -- Line 44
		--[[ Upvalues[1]:
			[1]: TextChatService_upvr (copied, readonly)
		]]
		return TextChatService_upvr.ChatTranslationToggleEnabled
	end)
	return pcall_result1_6 and pcall_result2_5
end
function shouldShowChatTranslationFTUX() -- Line 51
	--[[ Upvalues[1]:
		[1]: TextChatService_upvr (readonly)
	]]
	if game:GetEngineFeature("TextChatServiceSettingsSaved") then
		local pcall_result1_5, pcall_result2_6 = pcall(function() -- Line 53
			--[[ Upvalues[1]:
				[1]: TextChatService_upvr (copied, readonly)
			]]
			return TextChatService_upvr.ChatTranslationFTUXShown
		end)
		return not (pcall_result1_5 and pcall_result2_6)
	end
	return true
end
local any_extend_result1 = Roact_upvr.PureComponent:extend("AppContainer")
any_extend_result1.defaultProps = {
	isChatInputBarVisible = true;
	isChatWindowVisible = true;
	isChannelBarVisible = false;
	onSendChat = nil;
	messages = {};
	mutedUserIds = nil;
	textTimer = nil;
	timer = nil;
	textChatService = TextChatService_upvr;
	chat = game:GetService("Chat");
}
local var23_upvw
function any_extend_result1.init(arg1) -- Line 83
	--[[ Upvalues[2]:
		[1]: getFFlagExpChatMigrationSetup_upvr (readonly)
		[2]: getFFlagExpChatAlwaysRunTCS_upvr (readonly)
	]]
	arg1:setState({
		showTranslationButton = false;
		isTextChatServiceEnabled = false;
	})
	if not getFFlagExpChatMigrationSetup_upvr() then
		local var25
		if not getFFlagExpChatAlwaysRunTCS_upvr() then
			if arg1.props.textChatService.ChatVersion ~= Enum.ChatVersion.TextChatService then
				var25 = false
			else
				var25 = true
			end
		else
			var25 = true
		end
		arg1.isTextChatServiceOn = var25
	end
end
function any_extend_result1.willUnmount(arg1) -- Line 101
	--[[ Upvalues[1]:
		[1]: var23_upvw (read and write)
	]]
	var23_upvw:Disconnect()
end
function any_extend_result1.didMount(arg1) -- Line 105
	--[[ Upvalues[4]:
		[1]: getFFlagExpChatMigrationSetup_upvr (readonly)
		[2]: TextChatService_upvr (readonly)
		[3]: var23_upvw (read and write)
		[4]: getFFlagExpChatAlwaysRunTCS_upvr (readonly)
	]]
	if getFFlagExpChatMigrationSetup_upvr() then
		arg1.migrationConnection = arg1.props.chat:GetPropertyChangedSignal("IsAutoMigrated"):Connect(function() -- Line 107
			--[[ Upvalues[1]:
				[1]: arg1 (readonly)
			]]
			if arg1.props.chat.IsAutoMigrated then
				arg1:setState({
					isTextChatServiceEnabled = true;
				})
			end
		end)
	end
	if not var23_upvw then
		var23_upvw = TextChatService_upvr.Changed:Connect(function(arg1_2) -- Line 116, Named "onTextChatServicePropertyChanged"
			--[[ Upvalues[2]:
				[1]: TextChatService_upvr (copied, readonly)
				[2]: arg1 (readonly)
			]]
			-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
			-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
			-- KONSTANTERROR: [8] 7. Error Block 17 start (CF ANALYSIS FAILED)
			-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [13.2]
			arg1.props.onToggleTranslation(nil)
			local tbl_4 = {}
			local getChatTranslationEnabled_result1_5 = getChatTranslationEnabled()
			if getChatTranslationEnabled_result1_5 then
				getChatTranslationEnabled_result1_5 = getChatTranslationToggleEnabled()
			end
			tbl_4.showTranslationButton = getChatTranslationEnabled_result1_5
			arg1:setState(tbl_4)
			do
				return
			end
			-- KONSTANTERROR: [8] 7. Error Block 17 end (CF ANALYSIS FAILED)
			-- KONSTANTERROR: [30] 23. Error Block 20 start (CF ANALYSIS FAILED)
			if arg1_2 == "ChatTranslationToggleEnabled" then
				local pcall_result1_7, _ = pcall(function() -- Line 130
					--[[ Upvalues[1]:
						[1]: TextChatService_upvr (copied, readonly)
					]]
					return TextChatService_upvr.ChatTranslationToggleEnabled
				end)
				local pcall_result1_8, pcall_result2_3 = pcall(function() -- Line 134
					--[[ Upvalues[1]:
						[1]: TextChatService_upvr (copied, readonly)
					]]
					return TextChatService_upvr.ChatTranslationEnabled
				end)
				if pcall_result1_7 then
					if pcall_result1_8 then
						arg1.props.onToggleTranslation(pcall_result2_3)
					end
					local tbl_3 = {}
					local getChatTranslationEnabled_result1_4 = getChatTranslationEnabled()
					if getChatTranslationEnabled_result1_4 then
						getChatTranslationEnabled_result1_4 = getChatTranslationToggleEnabled()
					end
					tbl_3.showTranslationButton = getChatTranslationEnabled_result1_4
					arg1:setState(tbl_3)
				end
			end
			-- KONSTANTERROR: [30] 23. Error Block 20 end (CF ANALYSIS FAILED)
		end)
	end
	local tbl_2 = {}
	local getChatTranslationEnabled_result1 = getChatTranslationEnabled()
	if getChatTranslationEnabled_result1 then
		getChatTranslationEnabled_result1 = getChatTranslationToggleEnabled()
	end
	tbl_2.showTranslationButton = getChatTranslationEnabled_result1
	getChatTranslationEnabled_result1 = true
	local var50 = getChatTranslationEnabled_result1
	if arg1.props.textChatService.ChatVersion ~= Enum.ChatVersion.TextChatService then
		var50 = getFFlagExpChatAlwaysRunTCS_upvr()
	end
	tbl_2.isTextChatServiceEnabled = var50
	arg1:setState(tbl_2)
end
local BubbleChat_upvr = require(script.Parent.Parent.BubbleChat)
local ClientSettings_upvr = require(ExpChat.ClientSettings)
local AppLayout_upvr = require(script.Parent.Parent.AppLayout)
local GetFFlagUnreduxChatTransparency_upvr = SharedFlags.GetFFlagUnreduxChatTransparency
local getFFlagChatTranslationShowFTUX_upvr = require(ExpChat.Flags.getFFlagChatTranslationShowFTUX)
local shouldShowChatTranslationFTUX_result1_upvr = shouldShowChatTranslationFTUX()
local ChatTranslationFTUX_upvr = require(script.Parent.Parent.ChatTranslationFTUX)
function any_extend_result1.render(arg1) -- Line 162
	--[[ Upvalues[9]:
		[1]: getFFlagExpChatMigrationSetup_upvr (readonly)
		[2]: Roact_upvr (readonly)
		[3]: BubbleChat_upvr (readonly)
		[4]: ClientSettings_upvr (readonly)
		[5]: AppLayout_upvr (readonly)
		[6]: GetFFlagUnreduxChatTransparency_upvr (readonly)
		[7]: getFFlagChatTranslationShowFTUX_upvr (readonly)
		[8]: shouldShowChatTranslationFTUX_result1_upvr (readonly)
		[9]: ChatTranslationFTUX_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local var58
	if getFFlagExpChatMigrationSetup_upvr() then
		var58 = arg1.state.isTextChatServiceEnabled
	else
		var58 = arg1.isTextChatServiceOn
	end
	local any_createElement_result1 = Roact_upvr.createElement(BubbleChat_upvr, {
		getIconVoiceIndicator = arg1.props.getIconVoiceIndicator;
		onClickedVoiceIndicator = arg1.props.onClickedVoiceIndicator;
		onClickedCameraIndicator = arg1.props.onClickedCameraIndicator;
		selfViewListenerChanged = arg1.props.selfViewListenerChanged;
		getPermissions = arg1.props.getPermissions;
		displayCameraDeniedToast = arg1.props.displayCameraDeniedToast;
		isCamEnabledForUserAndPlace = arg1.props.isCamEnabledForUserAndPlace;
		isCameraOnlyUser = arg1.props.isCameraOnlyUser;
		isTextChatServiceOn = var58;
		isVoiceServiceInitialized = arg1.props.isVoiceServiceInitialized;
		onClickedLikelySpeakingBubble = arg1.props.onClickedLikelySpeakingBubble;
	})
	if var58 then
		local module = {}
		local tbl = {}
		local tbl_7 = {
			canLocalUserChat = arg1.props.canLocalUserChat;
			isChatInputBarVisible = arg1.props.isChatInputBarVisible;
			isChatWindowVisible = arg1.props.isChatWindowVisible;
			isChannelBarVisible = arg1.props.isChannelBarVisible;
			chatTopBarVisibility = arg1.props.chatTopBarVisibility;
			messages = arg1.props.messages;
			mutedUserIds = arg1.props.mutedUserIds;
			onSendChat = arg1.props.onSendChat;
			timer = arg1.props.timer;
			textTimer = arg1.props.textTimer;
			activateWhisperMode = arg1.props.activateWhisperMode;
			resetTargetChannel = arg1.props.resetTargetChannel;
		}
		if GetFFlagUnreduxChatTransparency_upvr() then
		else
		end
		tbl_7.lastGeneralActivityTimestamp = arg1.props.lastGeneralActivityTimestamp
		if GetFFlagUnreduxChatTransparency_upvr() then
		else
		end
		tbl_7.lastMessageActivityTimestamp = arg1.props.lastMessageActivityTimestamp
		tbl_7.isTextBoxFocused = arg1.props.isTextBoxFocused
		tbl_7.onHovered = arg1.props.onHovered
		tbl_7.onUnhovered = arg1.props.onUnhovered
		tbl_7.chatLayoutAlignment = arg1.props.chatLayoutAlignment
		tbl_7.chatWindowSettings = arg1.props.chatWindowSettings
		tbl_7.clientSettings = arg1.props.clientSettings
		tbl_7.showTranslationButton = arg1.state.showTranslationButton
		tbl_7.isSpatialUIEnabled = arg1.props.isSpatialUIEnabled
		local any_createElement_result1_2 = Roact_upvr.createElement(AppLayout_upvr, tbl_7)
		tbl.appLayout = any_createElement_result1_2
		tbl.bubbleChat = any_createElement_result1
		if getFFlagChatTranslationShowFTUX_upvr() and shouldShowChatTranslationFTUX_result1_upvr and getChatTranslationEnabled() and getChatWindowEnabled() then
			any_createElement_result1_2 = Roact_upvr.createElement(ChatTranslationFTUX_upvr, {})
		else
			any_createElement_result1_2 = nil
		end
		tbl.ChatTranslationFTUX = any_createElement_result1_2
		module.app = Roact_upvr.createFragment(tbl)
		return Roact_upvr.createElement(ClientSettings_upvr.Provider, {
			value = arg1.props.clientSettings;
		}, module)
	end
	return Roact_upvr.createElement(ClientSettings_upvr.Provider, {
		value = arg1.props.clientSettings;
	}, {
		bubbleChat = any_createElement_result1;
	})
end
return require(Parent.RoactRodux).connect(require(script.Parent.mapStateToProps), require(script.Parent.mapDispatchToProps))(any_extend_result1)