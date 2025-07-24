-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:04:45
-- Luau version 6, Types version 3
-- Time taken: 0.032848 seconds

local CorePackages = game:GetService("CorePackages")
local Players_upvr = game:GetService("Players")
local RobloxGui = game:GetService("CoreGui"):WaitForChild("RobloxGui")
local VRService_upvr = game:GetService("VRService")
local var5_upvr = require(script.Parent.Parent.Logger)(script.Name)
local Roact_upvr = require(CorePackages.Packages.Roact)
local t = require(CorePackages.Packages.t)
local Otter_upvr = require(CorePackages.Packages.Otter)
local default_upvr_2 = require(CorePackages.Workspace.Packages.PermissionsProtocol).PermissionsProtocol.default
local getCamMicPermissions_upvr = require(RobloxGui.Modules.Settings.getCamMicPermissions)
local Types = require(script.Parent.Parent.Types)
local Constants_upvr_2 = require(script.Parent.Parent.Constants)
local Enabled_upvr = require(RobloxGui.Modules.Chrome.Enabled)
local GetFFlagBubbleChatInexistantAdorneeFix_upvr = require(RobloxGui.Modules.Flags.GetFFlagBubbleChatInexistantAdorneeFix)
local any_GetFFlagAvatarChatCoreScriptSupport_result1_upvr = require(CorePackages.Workspace.Packages.SharedFlags).GetFFlagAvatarChatCoreScriptSupport()
local FFlagEnableAvatarChatToggleUIUpgradeForLegacyChatService_upvr = require(RobloxGui.Modules.Flags.FFlagEnableAvatarChatToggleUIUpgradeForLegacyChatService)
local game_DefineFastInt_result1_upvr = game:DefineFastInt("BubbleVoiceTimeoutMillis", 1000)
local FFlagVRMoveVoiceIndicatorToBottomBar_upvr = require(RobloxGui.Modules.Flags.FFlagVRMoveVoiceIndicatorToBottomBar)
local IXPServiceWrapper_upvr = require(CorePackages.Workspace.Packages.IxpServiceWrapper).IXPServiceWrapper
local game_DefineFastFlag_result1_upvr_4 = game:DefineFastFlag("EasierUnmuting3", false)
local game_DefineFastFlag_result1_upvr = game:DefineFastFlag("EasierUnmutingHideIfMuted", false)
local game_DefineFastString_result1_upvr_2 = game:DefineFastString("EasierUnmutingIXPLayerName", "Voice.UserAgency")
local getFFlagDoNotPromptCameraPermissionsOnMount_upvr = require(RobloxGui.Modules.Flags.getFFlagDoNotPromptCameraPermissionsOnMount)
local any_extend_result1 = Roact_upvr.PureComponent:extend("BubbleChatBillboard")
local tbl_3_upvr = {
	dampingRatio = 1;
	frequency = 4;
}
local var26_upvw
if FFlagEnableAvatarChatToggleUIUpgradeForLegacyChatService_upvr then
	var26_upvw = require(script.Parent.ControlsBubbleV2)
end
any_extend_result1.validateProps = t.strictInterface({
	userId = t.string;
	onFadeOut = t.optional(t.callback);
	voiceEnabled = t.optional(t.boolean);
	bubbleChatEnabled = t.optional(t.boolean);
	chatSettings = Types.IChatSettings;
	messageIds = t.optional(t.array(t.string));
	lastMessage = t.optional(Types.IMessage);
	voiceState = t.optional(t.string);
})
local game_DefineFastFlag_result1_upvr_3 = game:DefineFastFlag("EasierUnmutingFixNonexistentCharacter", false)
local game_DefineFastFlag_result1_upvr_5 = game:DefineFastFlag("EasierUnmutingBasedOnCamera", false)
function getEasierUnmutingDistance(arg1) -- Line 88
	--[[ Upvalues[3]:
		[1]: game_DefineFastFlag_result1_upvr_3 (readonly)
		[2]: Players_upvr (readonly)
		[3]: game_DefineFastFlag_result1_upvr_5 (readonly)
	]]
	if not arg1 then
		return nil
	end
	local var36
	if var36 then
		var36 = Players_upvr.LocalPlayer
		if var36 then
			var36 = Players_upvr.LocalPlayer.Character
			if var36 then
				var36 = Players_upvr.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
			end
		end
		local var37 = var36
		if var37 then
			var37 = var36.CFrame
			if var37 then
				var37 = var36.CFrame.Position
			end
		end
		if workspace.CurrentCamera then
			local Position_2 = workspace.CurrentCamera.CFrame.Position
		end
		if game_DefineFastFlag_result1_upvr_5 or not var37 then
			if not Position_2 then
				return nil
			end
			return (arg1 - Position_2).Magnitude
		end
		return (arg1 - var37).Magnitude
	end
	local HumanoidRootPart_2 = Players_upvr.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
	if workspace.CurrentCamera then
		local Position_3 = workspace.CurrentCamera.CFrame.Position
	end
	if game_DefineFastFlag_result1_upvr_5 or not HumanoidRootPart_2 then
		if not Position_3 then
			return nil
		end
		return (arg1 - Position_3).Magnitude
	end
	return (arg1 - HumanoidRootPart_2.CFrame.Position).Magnitude
end
local publicApi_upvr = require(RobloxGui.Modules.SelfView.publicApi)
local StarterGui_upvr = game:GetService("StarterGui")
local default_upvr = require(RobloxGui.Modules.VoiceChat.VoiceChatServiceManager).default
local GetFFlagMicConnectingToast_upvr = require(RobloxGui.Modules.Flags.GetFFlagMicConnectingToast)
local Constants_upvr = require(RobloxGui.Modules.VoiceChat.Constants)
local GetFFlagEnableVoiceChatSpeakerIcons_upvr = require(RobloxGui.Modules.Flags.GetFFlagEnableVoiceChatSpeakerIcons)
local VoiceIndicator_upvr = require(RobloxGui.Modules.VoiceChat.Components.VoiceIndicator)
local selfViewVisibilityUpdatedSignal_upvr = require(RobloxGui.Modules.SelfView.selfViewVisibilityUpdatedSignal)
local game_DefineFastString_result1_upvr = game:DefineFastString("EasierUnmutingIXPLayerValue", "VoiceUserAgencyEnabled")
function any_extend_result1.init(arg1) -- Line 130
	--[[ Upvalues[18]:
		[1]: publicApi_upvr (readonly)
		[2]: any_GetFFlagAvatarChatCoreScriptSupport_result1_upvr (readonly)
		[3]: StarterGui_upvr (readonly)
		[4]: game_DefineFastFlag_result1_upvr_4 (readonly)
		[5]: game_DefineFastFlag_result1_upvr (readonly)
		[6]: Roact_upvr (readonly)
		[7]: Otter_upvr (readonly)
		[8]: Players_upvr (readonly)
		[9]: Constants_upvr_2 (readonly)
		[10]: default_upvr (readonly)
		[11]: GetFFlagMicConnectingToast_upvr (readonly)
		[12]: Constants_upvr (readonly)
		[13]: GetFFlagEnableVoiceChatSpeakerIcons_upvr (readonly)
		[14]: VoiceIndicator_upvr (readonly)
		[15]: selfViewVisibilityUpdatedSignal_upvr (readonly)
		[16]: IXPServiceWrapper_upvr (readonly)
		[17]: game_DefineFastString_result1_upvr_2 (readonly)
		[18]: game_DefineFastString_result1_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 64 start (CF ANALYSIS FAILED)
	local var80 = publicApi_upvr
	if any_GetFFlagAvatarChatCoreScriptSupport_result1_upvr then
		var80 = StarterGui_upvr:GetCoreGuiEnabled(Enum.CoreGuiType.All)
		if not var80 then
			var80 = StarterGui_upvr:GetCoreGuiEnabled(Enum.CoreGuiType.SelfView)
			-- KONSTANTWARNING: GOTO [21] #17
		end
	else
		var80 = nil
	end
	local _ = {
		adornee = nil;
		isInsideRenderDistance = false;
		isInsideMaximizeDistance = false;
		savedChatSettings = arg1.props.chatSettings;
		voiceTimedOut = false;
		voiceStateCounter = 0;
		lastVoiceState = nil;
		selfViewOpen = var80.getSelfViewIsOpenAndVisible();
		selfViewEnabled = var80;
	}
	if game_DefineFastFlag_result1_upvr_4 then
		-- KONSTANTWARNING: GOTO [55] #40
	end
	-- KONSTANTERROR: [0] 1. Error Block 64 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [54] 39. Error Block 74 start (CF ANALYSIS FAILED)
	local var86_upvw
	var86_upvw.isInsideEasierUnmutingDistance = nil
	local var83
	if game_DefineFastFlag_result1_upvr_4 and game_DefineFastFlag_result1_upvr then
		var83 = false
	else
		var83 = nil
	end
	var86_upvw.isMuted = var83
	if game_DefineFastFlag_result1_upvr_4 then
		var83 = false
		-- KONSTANTWARNING: GOTO [71] #54
	end
	var83 = nil
	var86_upvw.isInEasierUnmutingTreatment = var83
	if game_DefineFastFlag_result1_upvr_4 then
		var83 = false
	else
		var83 = nil
	end
	var86_upvw.haveLoggedUserExposure = var83
	arg1:setState(var86_upvw)
	arg1.isMounted = false
	local any_createBinding_result1_2, any_createBinding_result2_2 = Roact_upvr.createBinding(Vector3.new())
	arg1.offset = any_createBinding_result1_2
	arg1.updateOffset = any_createBinding_result2_2
	arg1.offsetMotor = Otter_upvr.createSingleMotor(0)
	function var86_upvw(arg1_4) -- Line 157
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		arg1.updateOffset(Vector3.new(0, arg1_4, 0))
	end
	arg1.offsetMotor:onStep(var86_upvw)
	arg1.offsetGoal = 0
	function arg1.onSelfViewVisibilityUpdated() -- Line 162
		--[[ Upvalues[2]:
			[1]: arg1 (readonly)
			[2]: publicApi_upvr (copied, readonly)
		]]
		arg1:setState({
			selfViewOpen = publicApi_upvr.getSelfViewIsOpenAndVisible();
		})
	end
	function arg1.onLastBubbleFadeOut() -- Line 168
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		if arg1.props.onFadeOut and not arg1.isFadingOut then
			arg1.isFadingOut = true
			arg1.props.onFadeOut(arg1.props.userId)
		end
		if arg1.state.hasMessage and arg1.isMounted then
			arg1:setState({
				hasMessage = false;
			})
		end
	end
	if arg1.props.voiceEnabled then
		local var92_upvw
		var86_upvw = arg1.props
		var83 = Players_upvr.LocalPlayer.UserId
		var86_upvw = tostring(var83)
		if var86_upvw.userId == var86_upvw then
			function var92_upvw() -- Line 184
				--[[ Upvalues[4]:
					[1]: arg1 (readonly)
					[2]: Constants_upvr_2 (copied, readonly)
					[3]: default_upvr (copied, readonly)
					[4]: GetFFlagMicConnectingToast_upvr (copied, readonly)
				]]
				if arg1.props.voiceState == Constants_upvr_2.VOICE_STATE.ERROR then
					default_upvr:RejoinPreviousChannel()
				else
					if GetFFlagMicConnectingToast_upvr() and arg1.props.voiceState == Constants_upvr_2.VOICE_STATE.CONNECTING then
						default_upvr:ShowVoiceChatLoadingMessage()
						return
					end
					default_upvr:ToggleMic("LegacyBubbleChat")
				end
			end
		else
			var92_upvw = function() -- Line 194
				--[[ Upvalues[3]:
					[1]: default_upvr (copied, readonly)
					[2]: arg1 (readonly)
					[3]: Constants_upvr (copied, readonly)
				]]
				local userId_4 = arg1.props.userId
				if arg1:isShowingDueToEasierUnmuting() then
					userId_4 = Constants_upvr.VOICE_CONTEXT_TYPE.EASIER_UNMUTING
				else
					userId_4 = Constants_upvr.VOICE_CONTEXT_TYPE.BUBBLE_CHAT
				end
				default_upvr:ToggleMutePlayer(tonumber(userId_4), userId_4)
			end
		end
		var86_upvw = arg1.props
		local userId_3_upvr = var86_upvw.userId
		var86_upvw = "MicDark"
		if GetFFlagEnableVoiceChatSpeakerIcons_upvr() then
			if userId_3_upvr ~= tostring(Players_upvr.LocalPlayer.UserId) then
			else
			end
			var86_upvw = "MicDark"
		end
		function arg1.renderInsert() -- Line 212
			--[[ Upvalues[5]:
				[1]: Roact_upvr (copied, readonly)
				[2]: VoiceIndicator_upvr (copied, readonly)
				[3]: var92_upvw (read and write)
				[4]: userId_3_upvr (readonly)
				[5]: var86_upvw (read and write)
			]]
			return Roact_upvr.createElement(VoiceIndicator_upvr, {
				onClicked = var92_upvw;
				userId = userId_3_upvr;
				iconStyle = var86_upvw;
			})
		end
		arg1.insertSize = Vector2.new(28, 28)
	end
	function arg1.onCoreGuiChanged() -- Line 223
		--[[ Upvalues[2]:
			[1]: StarterGui_upvr (copied, readonly)
			[2]: arg1 (readonly)
		]]
		local any_GetCoreGuiEnabled_result1_2 = StarterGui_upvr:GetCoreGuiEnabled(Enum.CoreGuiType.SelfView)
		if arg1.state.selfViewOpen ~= any_GetCoreGuiEnabled_result1_2 then
			arg1:setState({
				selfViewOpen = any_GetCoreGuiEnabled_result1_2;
			})
		end
	end
	arg1.selfViewVisibilityUpdatedSignal = selfViewVisibilityUpdatedSignal_upvr:connect(function() -- Line 232
		--[[ Upvalues[2]:
			[1]: arg1 (readonly)
			[2]: publicApi_upvr (copied, readonly)
		]]
		arg1:setState({
			selfViewOpen = publicApi_upvr.getSelfViewIsOpenAndVisible();
		})
	end)
	if game_DefineFastFlag_result1_upvr_4 then
		local pcall_result1, pcall_result2_2 = pcall(function() -- Line 239
			--[[ Upvalues[2]:
				[1]: IXPServiceWrapper_upvr (copied, readonly)
				[2]: game_DefineFastString_result1_upvr_2 (copied, readonly)
			]]
			return IXPServiceWrapper_upvr:GetLayerData(game_DefineFastString_result1_upvr_2)
		end)
		if pcall_result1 and pcall_result2_2 and pcall_result2_2[game_DefineFastString_result1_upvr] then
			arg1:setState({
				isInEasierUnmutingTreatment = true;
			})
		end
	end
	if game_DefineFastFlag_result1_upvr_4 and arg1.state.isInEasierUnmutingTreatment and game_DefineFastFlag_result1_upvr then
		arg1.participantsUpdateConnection = default_upvr.participantsUpdate.Event:Connect(function(arg1_5) -- Line 256
			--[[ Upvalues[1]:
				[1]: arg1 (readonly)
			]]
			local var108 = arg1_5[arg1.props.userId]
			if not var108 then
			elseif var108.isMuted ~= arg1.state.isMuted then
				arg1:setState({
					isMuted = var108.isMuted;
				})
			end
		end)
	end
	-- KONSTANTERROR: [54] 39. Error Block 74 end (CF ANALYSIS FAILED)
end
function any_extend_result1.isShowingDueToEasierUnmuting(arg1) -- Line 273
	--[[ Upvalues[3]:
		[1]: game_DefineFastFlag_result1_upvr_4 (readonly)
		[2]: Constants_upvr_2 (readonly)
		[3]: game_DefineFastFlag_result1_upvr (readonly)
	]]
	local var116 = game_DefineFastFlag_result1_upvr_4
	if var116 then
		var116 = arg1.state.isInEasierUnmutingTreatment
		if var116 then
			var116 = false
			if arg1.props.voiceState == Constants_upvr_2.VOICE_STATE.LOCAL_MUTED then
				var116 = arg1.state.isInsideEasierUnmutingDistance
				if var116 then
					local var117 = game_DefineFastFlag_result1_upvr
					if var117 then
						var117 = arg1.state.isMuted
					end
					var116 = not var117
				end
			end
		end
	end
	return var116
end
function any_extend_result1.checkCounterForTimeout(arg1, arg2) -- Line 281
	--[[ Upvalues[3]:
		[1]: Players_upvr (readonly)
		[2]: Constants_upvr_2 (readonly)
		[3]: game_DefineFastInt_result1_upvr (readonly)
	]]
	if arg1.props.userId ~= tostring(Players_upvr.LocalPlayer.UserId) and arg1.state.lastVoiceState ~= Constants_upvr_2.VOICE_STATE.TALKING and arg1.state.voiceStateCounter ~= arg2 then
		local voiceStateCounter_upvr_2 = arg1.state.voiceStateCounter
		delay(game_DefineFastInt_result1_upvr / 1000, function() -- Line 290
			--[[ Upvalues[2]:
				[1]: arg1 (readonly)
				[2]: voiceStateCounter_upvr_2 (readonly)
			]]
			if arg1.state.voiceStateCounter == voiceStateCounter_upvr_2 then
				if arg1.isMounted then
					arg1:setState({
						voiceTimedOut = true;
					})
				end
			end
		end)
	end
end
function any_extend_result1.checkCounterForTimeoutWithEasierUnmuting(arg1, arg2) -- Line 301
	--[[ Upvalues[4]:
		[1]: game_DefineFastFlag_result1_upvr_4 (readonly)
		[2]: Players_upvr (readonly)
		[3]: Constants_upvr_2 (readonly)
		[4]: game_DefineFastInt_result1_upvr (readonly)
	]]
	if arg2 then
		local _ = arg2.voiceStateCounter
	else
	end
	if not game_DefineFastFlag_result1_upvr_4 or not arg1.state.isInEasierUnmutingTreatment then
		return arg1:checkCounterForTimeout(nil)
	end
	if arg1.props.userId == tostring(Players_upvr.LocalPlayer.UserId) then
	else
	end
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	if arg1.state.voiceStateCounter == nil then
	else
	end
	if arg1.state.lastVoiceState ~= Constants_upvr_2.VOICE_STATE.TALKING then
		if arg1.state.lastVoiceState == Constants_upvr_2.VOICE_STATE.LOCAL_MUTED then
		else
		end
	end
	if true and true and true then
		local voiceStateCounter_upvr = arg1.state.voiceStateCounter
		delay(game_DefineFastInt_result1_upvr / 1000, function() -- Line 319
			--[[ Upvalues[2]:
				[1]: arg1 (readonly)
				[2]: voiceStateCounter_upvr (readonly)
			]]
			if arg1.state.voiceStateCounter == voiceStateCounter_upvr then
				if arg1.isMounted then
					arg1:setState({
						voiceTimedOut = true;
					})
				end
			end
		end)
	end
end
local RunService_upvr = game:GetService("RunService")
local game_DefineFastInt_result1_upvr_2 = game:DefineFastInt("EasierUnmutingDisplayDistance", 20)
function any_extend_result1.didMount(arg1) -- Line 332
	--[[ Upvalues[9]:
		[1]: Otter_upvr (readonly)
		[2]: any_GetFFlagAvatarChatCoreScriptSupport_result1_upvr (readonly)
		[3]: getFFlagDoNotPromptCameraPermissionsOnMount_upvr (readonly)
		[4]: Players_upvr (readonly)
		[5]: RunService_upvr (readonly)
		[6]: game_DefineFastFlag_result1_upvr_4 (readonly)
		[7]: game_DefineFastInt_result1_upvr_2 (readonly)
		[8]: Constants_upvr_2 (readonly)
		[9]: tbl_3_upvr (readonly)
	]]
	arg1.isMounted = true
	local lastMessage_2 = arg1.props.lastMessage
	if lastMessage_2 then
		lastMessage_2 = arg1.props.lastMessage.adornee
	end
	arg1:setState({
		adornee = lastMessage_2;
	})
	local any_getVerticalOffset_result1 = arg1:getVerticalOffset(lastMessage_2)
	arg1.offsetGoal = any_getVerticalOffset_result1
	arg1.offsetMotor:setGoal(Otter_upvr.instant(any_getVerticalOffset_result1))
	if any_GetFFlagAvatarChatCoreScriptSupport_result1_upvr then
		if getFFlagDoNotPromptCameraPermissionsOnMount_upvr() then
			arg1:getMicPermission()
			arg1:getCameraPermissionWithoutRequest()
		else
			arg1:getPermissions()
		end
	end
	local var130_upvw
	if lastMessage_2 then
		var130_upvw = Players_upvr:GetPlayerFromCharacter(lastMessage_2)
	elseif tonumber(arg1.props.userId) then
		var130_upvw = Players_upvr:GetPlayerByUserId(arg1.props.userId)
	end
	if var130_upvw then
		if var130_upvw.Character then
			coroutine.wrap(function() -- Line 362
				--[[ Upvalues[2]:
					[1]: arg1 (readonly)
					[2]: var130_upvw (read and write)
				]]
				arg1:onCharacterAdded(var130_upvw, var130_upvw.Character)
			end)()
		end
		arg1.characterConn = var130_upvw.CharacterAdded:Connect(function(arg1_6) -- Line 366
			--[[ Upvalues[2]:
				[1]: arg1 (readonly)
				[2]: var130_upvw (read and write)
			]]
			arg1:onCharacterAdded(var130_upvw, arg1_6)
		end)
	end
	arg1.heartbeatConn = RunService_upvr.Heartbeat:Connect(function() -- Line 372
		--[[ Upvalues[6]:
			[1]: arg1 (readonly)
			[2]: game_DefineFastFlag_result1_upvr_4 (copied, readonly)
			[3]: game_DefineFastInt_result1_upvr_2 (copied, readonly)
			[4]: Constants_upvr_2 (copied, readonly)
			[5]: Otter_upvr (copied, readonly)
			[6]: tbl_3_upvr (copied, readonly)
		]]
		-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
		local any_getAdorneeInstance_result1_2 = arg1:getAdorneeInstance(arg1.state.adornee)
		local var143
		if var143 and any_getAdorneeInstance_result1_2 then
			local function INLINED_6() -- Internal function, doesn't exist in bytecode
				var143 = any_getAdorneeInstance_result1_2.WorldPosition
				return var143
			end
			if not any_getAdorneeInstance_result1_2:IsA("Attachment") or not INLINED_6() then
				var143 = any_getAdorneeInstance_result1_2.Position
				local var144 = var143
			end
			local Magnitude_2 = (workspace.CurrentCamera.CFrame.Position - var144).Magnitude
			if Magnitude_2 >= arg1.state.savedChatSettings.MaxDistance then
				local _ = false
				-- KONSTANTWARNING: Skipped task `defvar` above
			else
			end
			if Magnitude_2 >= arg1.state.savedChatSettings.MinimizeDistance then
				local _ = false
				-- KONSTANTWARNING: Skipped task `defvar` above
			else
			end
			if game_DefineFastFlag_result1_upvr_4 then
				if arg1.state.isInEasierUnmutingTreatment then
					local getEasierUnmutingDistance_result1 = getEasierUnmutingDistance(var144)
					if getEasierUnmutingDistance_result1 ~= nil then
						if getEasierUnmutingDistance_result1 >= game_DefineFastInt_result1_upvr_2 then
						else
						end
					end
				end
			end
			if true ~= arg1.state.isInsideMaximizeDistance or true ~= arg1.state.isInsideRenderDistance or game_DefineFastFlag_result1_upvr_4 and arg1.state.isInEasierUnmutingTreatment and true ~= arg1.state.isInsideEasierUnmutingDistance then
				local tbl_4 = {}
				-- KONSTANTERROR: Expression was reused, decompilation is incorrect
				tbl_4.isInsideRenderDistance = true
				-- KONSTANTERROR: Expression was reused, decompilation is incorrect
				tbl_4.isInsideMaximizeDistance = true
				-- KONSTANTERROR: Expression was reused, decompilation is incorrect
				tbl_4.isInsideEasierUnmutingDistance = true
				arg1:setState(tbl_4)
			end
		end
		var144 = arg1:getVerticalOffset(arg1.state.adornee)
		local var150 = var144
		if Constants_upvr_2.BILLBOARD_OFFSET_EPSILON < math.abs(var150 - arg1.offsetGoal) then
			arg1.offsetGoal = var150
			arg1.offsetMotor:setGoal(Otter_upvr.spring(var150, tbl_3_upvr))
		end
	end)
	if game_DefineFastFlag_result1_upvr_4 and arg1.state.isInEasierUnmutingTreatment then
		arg1:checkCounterForTimeoutWithEasierUnmuting(nil)
	else
		arg1:checkCounterForTimeout(nil)
	end
end
function any_extend_result1.willUnmount(arg1) -- Line 417
	--[[ Upvalues[3]:
		[1]: var5_upvr (readonly)
		[2]: game_DefineFastFlag_result1_upvr_4 (readonly)
		[3]: game_DefineFastFlag_result1_upvr (readonly)
	]]
	var5_upvr:trace("Unmounting billboards for {}", arg1.state.shortId)
	arg1.isMounted = false
	if arg1.characterConn then
		arg1.characterConn:Disconnect()
		arg1.characterConn = nil
	end
	if arg1.heartbeatConn then
		arg1.heartbeatConn:Disconnect()
		arg1.heartbeatConn = nil
	end
	if arg1.humanoidDiedConn then
		arg1.humanoidDiedConn:Disconnect()
		arg1.humanoidDiedConn = nil
	end
	arg1.offsetMotor:destroy()
	if arg1.selfViewVisibilityUpdatedSignal then
		arg1.selfViewVisibilityUpdatedSignal:disconnect()
		arg1.selfViewVisibilityUpdatedSignal = nil
	end
	if game_DefineFastFlag_result1_upvr_4 and arg1.state.isInEasierUnmutingTreatment and game_DefineFastFlag_result1_upvr then
		if arg1.participantsUpdateConnection then
			arg1.participantsUpdateConnection:Disconnect()
			arg1.participantsUpdateConnection = nil
		end
	end
end
local function waitForFirst_upvr(...) -- Line 445, Named "waitForFirst"
	local BindableEvent_upvr = Instance.new("BindableEvent")
	local args_list_upvr = {...}
	local function fire(...) -- Line 449
		--[[ Upvalues[2]:
			[1]: args_list_upvr (readonly)
			[2]: BindableEvent_upvr (readonly)
		]]
		for i = 1, #args_list_upvr do
			args_list_upvr[i]:Disconnect()
		end
		return BindableEvent_upvr:Fire(...)
	end
	for i_2 = 1, #args_list_upvr do
		args_list_upvr[i_2] = args_list_upvr[i_2]:Connect(fire)
	end
	return BindableEvent_upvr.Event:Wait()
end
local function findFirstChildByNameAndClass_upvr(arg1, arg2, arg3) -- Line 464, Named "findFirstChildByNameAndClass"
	for _, v in ipairs(arg1:GetChildren()) do
		if v.Name == arg2 and v:IsA(arg3) then
			return v
		end
	end
end
function any_extend_result1.onCharacterAdded(arg1, arg2, arg3) -- Line 473
	--[[ Upvalues[4]:
		[1]: waitForFirst_upvr (readonly)
		[2]: var5_upvr (readonly)
		[3]: GetFFlagBubbleChatInexistantAdorneeFix_upvr (readonly)
		[4]: findFirstChildByNameAndClass_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [3] 3. Error Block 2 start (CF ANALYSIS FAILED)
	waitForFirst_upvr(arg3.AncestryChanged, arg2.CharacterAdded)
	-- KONSTANTERROR: [3] 3. Error Block 2 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [9] 7. Error Block 3 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [9] 7. Error Block 3 end (CF ANALYSIS FAILED)
end
function any_extend_result1.getVerticalOffset(arg1, arg2) -- Line 533
	if arg2 and arg2:IsA("Model") then
		local any_GetBoundingBox_result1, any_GetBoundingBox_result2 = arg2:GetBoundingBox()
		local any_getAdorneeInstance_result1_4 = arg1:getAdorneeInstance(arg2)
		if not any_getAdorneeInstance_result1_4 then
			return any_GetBoundingBox_result2.Y / 2
		end
		if any_getAdorneeInstance_result1_4:IsA("BasePart") then
			return any_GetBoundingBox_result2.Y / 2 - any_GetBoundingBox_result1:PointToObjectSpace(any_getAdorneeInstance_result1_4.Position).Y
		end
		return 0
	end
	if arg2 and arg2:IsA("BasePart") then
		return arg2.Size.Y / 2
	end
	return 0
end
function any_extend_result1.getAdorneeInstance(arg1, arg2) -- Line 555
	--[[ Upvalues[1]:
		[1]: GetFFlagBubbleChatInexistantAdorneeFix_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [1] 2. Error Block 2 start (CF ANALYSIS FAILED)
	do
		return
	end
	-- KONSTANTERROR: [1] 2. Error Block 2 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [2] 3. Error Block 3 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [2] 3. Error Block 3 end (CF ANALYSIS FAILED)
end
function any_extend_result1.getPermissions(arg1) -- Line 574
	--[[ Upvalues[1]:
		[1]: getCamMicPermissions_upvr (readonly)
	]]
	return getCamMicPermissions_upvr(function(arg1_7) -- Line 575
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		arg1:setState({
			hasCameraPermissions = arg1_7.hasCameraPermissions;
			hasMicPermissions = arg1_7.hasMicPermissions;
		})
	end, nil, nil, "BubbleChatBillboard.getPermissions")
end
function any_extend_result1.getMicPermission(arg1) -- Line 587
	--[[ Upvalues[2]:
		[1]: getCamMicPermissions_upvr (readonly)
		[2]: default_upvr_2 (readonly)
	]]
	getCamMicPermissions_upvr(function(arg1_8) -- Line 588
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		arg1:setState({
			hasMicPermissions = arg1_8.hasMicPermissions;
		})
	end, {default_upvr_2.Permissions.MICROPHONE_ACCESS}, nil, "BubbleChatBillboard.getMicPermission")
end
function any_extend_result1.getCameraPermissionWithoutRequest(arg1) -- Line 599
	--[[ Upvalues[2]:
		[1]: getCamMicPermissions_upvr (readonly)
		[2]: default_upvr_2 (readonly)
	]]
	getCamMicPermissions_upvr(function(arg1_9) -- Line 600
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		arg1:setState({
			hasCameraPermissions = arg1_9.hasCameraPermissions;
		})
	end, {default_upvr_2.Permissions.CAMERA_ACCESS}, true)
end
local function setCameraPermissionStateFromControl(arg1, arg2) -- Line 608
	local tbl_16 = {}
	tbl_16.hasCameraPermissions = arg2
	arg1:setState(tbl_16)
end
any_extend_result1.setCameraPermissionStateFromControl = setCameraPermissionStateFromControl
local game_DefineFastFlag_result1_upvr_2 = game:DefineFastFlag("DebugAllowControlButtonsNoVoiceChat", false)
function any_extend_result1.getRenderVoiceAndCameraBubble(arg1) -- Line 614
	--[[ Upvalues[6]:
		[1]: game_DefineFastFlag_result1_upvr_2 (readonly)
		[2]: any_GetFFlagAvatarChatCoreScriptSupport_result1_upvr (readonly)
		[3]: Players_upvr (readonly)
		[4]: FFlagVRMoveVoiceIndicatorToBottomBar_upvr (readonly)
		[5]: VRService_upvr (readonly)
		[6]: Enabled_upvr (readonly)
	]]
	local var176
	if not var176 then
		var176 = game_DefineFastFlag_result1_upvr_2
		if not var176 then
			var176 = any_GetFFlagAvatarChatCoreScriptSupport_result1_upvr
			if not var176 then
				var176 = false
				return var176
			end
		end
	end
	if arg1.props.userId ~= tostring(Players_upvr.LocalPlayer.UserId) then
		var176 = false
	else
		var176 = true
	end
	if var176 then
		if FFlagVRMoveVoiceIndicatorToBottomBar_upvr and VRService_upvr.VREnabled or Enabled_upvr() then
			return false
		end
		if not arg1.state.selfViewOpen then
			return true
		end
		return false
	end
	local voiceEnabled = arg1.props.voiceEnabled
	if voiceEnabled then
		voiceEnabled = not arg1.state.voiceTimedOut
	end
	return voiceEnabled
end
function any_extend_result1.shouldRenderCarat(arg1) -- Line 645
	local TailVisible = arg1.props.chatSettings.TailVisible
	if TailVisible then
		TailVisible = not arg1:getRenderVoiceAndCameraBubble()
	end
	return TailVisible
end
local ControlsBubble_upvr = require(script.Parent.ControlsBubble)
local VoiceBubble_upvr = require(script.Parent.VoiceBubble)
local BubbleChatList_upvr = require(script.Parent.BubbleChatList)
local ChatBubbleDistant_upvr = require(script.Parent.ChatBubbleDistant)
function any_extend_result1.render(arg1) -- Line 649
	--[[ Upvalues[17]:
		[1]: Players_upvr (readonly)
		[2]: var5_upvr (readonly)
		[3]: game_DefineFastFlag_result1_upvr_4 (readonly)
		[4]: Constants_upvr_2 (readonly)
		[5]: game_DefineFastFlag_result1_upvr (readonly)
		[6]: any_GetFFlagAvatarChatCoreScriptSupport_result1_upvr (readonly)
		[7]: FFlagVRMoveVoiceIndicatorToBottomBar_upvr (readonly)
		[8]: VRService_upvr (readonly)
		[9]: Enabled_upvr (readonly)
		[10]: getFFlagDoNotPromptCameraPermissionsOnMount_upvr (readonly)
		[11]: FFlagEnableAvatarChatToggleUIUpgradeForLegacyChatService_upvr (readonly)
		[12]: Roact_upvr (readonly)
		[13]: var26_upvw (read and write)
		[14]: ControlsBubble_upvr (readonly)
		[15]: VoiceBubble_upvr (readonly)
		[16]: BubbleChatList_upvr (readonly)
		[17]: ChatBubbleDistant_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local any_getAdorneeInstance_result1_3 = arg1:getAdorneeInstance(arg1.state.adornee)
	local var184
	if arg1.props.userId ~= tostring(Players_upvr.LocalPlayer.UserId) then
		var184 = false
	else
		var184 = true
	end
	local savedChatSettings = arg1.state.savedChatSettings
	if not any_getAdorneeInstance_result1_3 then
		var5_upvr:trace("No adornee for {}", arg1.state.shortId)
		return
	end
	if not arg1.state.isInsideRenderDistance then
		var5_upvr:trace("Not in range for {}", arg1.state.shortId)
		return
	end
	local function INLINED_7() -- Internal function, doesn't exist in bytecode
		local var186
		return arg1.state.isInEasierUnmutingTreatment
	end
	local function INLINED_8() -- Internal function, doesn't exist in bytecode
		var186 = Constants_upvr_2.VOICE_STATE
		return arg1.props.voiceState == var186.LOCAL_MUTED
	end
	if game_DefineFastFlag_result1_upvr_4 and INLINED_7() and INLINED_8() and (not arg1.state.isInsideEasierUnmutingDistance or game_DefineFastFlag_result1_upvr and arg1.state.isMuted) then
		var186 = "Unmute toggle not applicable for {}"
		var5_upvr:trace(var186, arg1.state.shortId)
		return
	end
	local module = {}
	var186 = arg1.props.voiceEnabled
	if var186 then
		var186 = not arg1.state.voiceTimedOut
	end
	if any_GetFFlagAvatarChatCoreScriptSupport_result1_upvr and var184 then
		if var186 then
		end
		var186 = not arg1.state.selfViewOpen
	end
	if FFlagVRMoveVoiceIndicatorToBottomBar_upvr and VRService_upvr.VREnabled or Enabled_upvr() or var184 then
		var186 = false
	end
	if any_GetFFlagAvatarChatCoreScriptSupport_result1_upvr then
		local setCameraPermissionStateFromControl
		if arg1:getRenderVoiceAndCameraBubble() then
			local tbl_12 = {
				chatSettings = savedChatSettings;
			}
			setCameraPermissionStateFromControl = arg1.state.isInsideMaximizeDistance
			tbl_12.isInsideMaximizeDistance = setCameraPermissionStateFromControl
			setCameraPermissionStateFromControl = 2
			tbl_12.LayoutOrder = setCameraPermissionStateFromControl
			tbl_12.isLocalPlayer = var184
			setCameraPermissionStateFromControl = arg1.state.hasCameraPermissions
			tbl_12.hasCameraPermissions = setCameraPermissionStateFromControl
			setCameraPermissionStateFromControl = arg1.state.hasMicPermissions
			tbl_12.hasMicPermissions = setCameraPermissionStateFromControl
			setCameraPermissionStateFromControl = arg1.props.userId
			tbl_12.userId = setCameraPermissionStateFromControl
			setCameraPermissionStateFromControl = arg1.props.voiceEnabled
			tbl_12.voiceEnabled = setCameraPermissionStateFromControl
			function setCameraPermissionStateFromControl(arg1_10) -- Line 705
				--[[ Upvalues[2]:
					[1]: getFFlagDoNotPromptCameraPermissionsOnMount_upvr (copied, readonly)
					[2]: arg1 (readonly)
				]]
				if getFFlagDoNotPromptCameraPermissionsOnMount_upvr() then
					arg1:setCameraPermissionStateFromControl(arg1_10)
				end
			end
			tbl_12.setCameraPermissionStateFromControl = setCameraPermissionStateFromControl
			setCameraPermissionStateFromControl = arg1:isShowingDueToEasierUnmuting()
			tbl_12.isShowingDueToEasierUnmuting = setCameraPermissionStateFromControl
			local function INLINED_9() -- Internal function, doesn't exist in bytecode
				setCameraPermissionStateFromControl = Roact_upvr.createElement(var26_upvw, tbl_12)
				return setCameraPermissionStateFromControl
			end
			if not FFlagEnableAvatarChatToggleUIUpgradeForLegacyChatService_upvr or not INLINED_9() then
				setCameraPermissionStateFromControl = Roact_upvr.createElement(ControlsBubble_upvr, tbl_12)
			end
			module.VoiceAndCameraBubble = setCameraPermissionStateFromControl
			setCameraPermissionStateFromControl = Roact_upvr.createElement
			setCameraPermissionStateFromControl = setCameraPermissionStateFromControl("UIListLayout", {
				SortOrder = Enum.SortOrder.LayoutOrder;
				HorizontalAlignment = Enum.HorizontalAlignment.Center;
				VerticalAlignment = Enum.VerticalAlignment.Bottom;
				Padding = UDim.new(0, 8);
			})
			module.listLayout = setCameraPermissionStateFromControl
			setCameraPermissionStateFromControl = Roact_upvr.createElement
			setCameraPermissionStateFromControl = setCameraPermissionStateFromControl("UIPadding", {
				PaddingBottom = UDim.new(0, 8);
			})
			module.padding = setCameraPermissionStateFromControl
			-- KONSTANTWARNING: GOTO [286] #190
		end
	else
		local function INLINED_10() -- Internal function, doesn't exist in bytecode
			setCameraPermissionStateFromControl = arg1.props
			return setCameraPermissionStateFromControl.bubbleChatEnabled
		end
		local function INLINED_11() -- Internal function, doesn't exist in bytecode
			setCameraPermissionStateFromControl = arg1.props
			return setCameraPermissionStateFromControl.messageIds
		end
		local function INLINED_12() -- Internal function, doesn't exist in bytecode
			setCameraPermissionStateFromControl = arg1.props.messageIds
			return #setCameraPermissionStateFromControl == 0
		end
		if var186 and (not INLINED_10() or not INLINED_11() or INLINED_12()) then
			setCameraPermissionStateFromControl = Roact_upvr
			setCameraPermissionStateFromControl = VoiceBubble_upvr
			module.VoiceBubble = setCameraPermissionStateFromControl.createElement(setCameraPermissionStateFromControl, {
				chatSettings = savedChatSettings;
				renderInsert = arg1.renderInsert;
				insertSize = arg1.insertSize;
				isDistant = not arg1.state.isInsideMaximizeDistance;
			})
		end
	end
	if arg1.state.hasMessage then
		local var193
		if arg1.state.isInsideMaximizeDistance then
			local tbl_9 = {}
			var193 = arg1.props.userId
			tbl_9.userId = var193
			var193 = arg1.state.isInsideMaximizeDistance
			tbl_9.isVisible = var193
			var193 = arg1.onLastBubbleFadeOut
			tbl_9.onLastBubbleFadeOut = var193
			tbl_9.chatSettings = savedChatSettings
			if not any_GetFFlagAvatarChatCoreScriptSupport_result1_upvr and var186 then
				var193 = arg1.renderInsert
			else
				var193 = nil
			end
			tbl_9.renderFirstInsert = var193
			var193 = arg1.insertSize
			tbl_9.insertSize = var193
			var193 = arg1:shouldRenderCarat()
			tbl_9.showCarat = var193
			module.BubbleChatList = Roact_upvr.createElement(BubbleChatList_upvr, tbl_9)
		else
			local tbl_10 = {}
			var193 = not arg1.props.messageIds
			if not var193 then
				if #arg1.props.messageIds ~= 0 then
					var193 = false
				else
					var193 = true
				end
			end
			tbl_10.fadingOut = var193
			var193 = arg1.onLastBubbleFadeOut
			tbl_10.onFadeOut = var193
			tbl_10.chatSettings = savedChatSettings
			var193 = var186
			if var193 then
				var193 = arg1.renderInsert
			end
			tbl_10.renderInsert = var193
			tbl_10.insertSize = arg1.insertSize
			module.DistantBubble = Roact_upvr.createElement(ChatBubbleDistant_upvr, tbl_10)
		end
	end
	local var196 = var186
	if any_GetFFlagAvatarChatCoreScriptSupport_result1_upvr then
		var196 = arg1:getRenderVoiceAndCameraBubble()
	end
	if not var184 or not savedChatSettings.LocalPlayerStudsOffset then
	end
	return Roact_upvr.createElement("BillboardGui", {
		Adornee = any_getAdorneeInstance_result1_3;
		Active = var196;
		Size = UDim2.fromOffset(500, 200);
		SizeOffset = Vector2.new(0, 0.5);
		StudsOffset = Vector3.new(0, 1, 0.10000) + Vector3.new(0, savedChatSettings.VerticalStudsOffset, 0);
		StudsOffsetWorldSpace = arg1.offset;
		ResetOnSpawn = false;
	}, module)
end
function any_extend_result1.didUpdate(arg1, arg2, arg3) -- Line 789
	--[[ Upvalues[5]:
		[1]: game_DefineFastFlag_result1_upvr_4 (readonly)
		[2]: Players_upvr (readonly)
		[3]: Constants_upvr_2 (readonly)
		[4]: IXPServiceWrapper_upvr (readonly)
		[5]: game_DefineFastString_result1_upvr_2 (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	local var202
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [5] 4. Error Block 41 start (CF ANALYSIS FAILED)
	var202 = #arg1.props.messageIds
	local function INLINED_15() -- Internal function, doesn't exist in bytecode
		-- KONSTANTERROR: [12] 8. Error Block 30 end (CF ANALYSIS FAILED)
		var202 = arg1.state.isInsideRenderDistance
		-- KONSTANTERROR: [12] 8. Error Block 30 start (CF ANALYSIS FAILED)
		return var202
	end
	if var202 == 0 or not INLINED_15() then
		var202 = arg1.onLastBubbleFadeOut
		var202()
	end
	var202 = arg1.props.messageIds
	if var202 then
		var202 = #arg1.props.messageIds
		if 0 < var202 then
			var202 = false
			arg1.isFadingOut = var202
		end
	end
	var202 = game_DefineFastFlag_result1_upvr_4
	if var202 then
		var202 = arg1.state.isInEasierUnmutingTreatment
		if var202 then
			var202 = arg1:checkCounterForTimeoutWithEasierUnmuting
			var202(arg3)
			-- KONSTANTWARNING: GOTO [53] #35
		end
	end
	var202 = arg1:checkCounterForTimeout
	var202(arg3.voiceStateCounter)
	if arg1.props.userId ~= tostring(Players_upvr.LocalPlayer.UserId) then
		var202 = false
	else
		var202 = true
	end
	if game_DefineFastFlag_result1_upvr_4 and var202 and not arg1.state.haveLoggedUserExposure and (arg1.props.voiceState == Constants_upvr_2.VOICE_STATE.INACTIVE or arg1.props.voiceState == Constants_upvr_2.VOICE_STATE.TALKING or arg1.props.voiceState == Constants_upvr_2.VOICE_STATE.MUTED) then
		IXPServiceWrapper_upvr:LogUserLayerExposure(game_DefineFastString_result1_upvr_2)
		arg1:setState({
			haveLoggedUserExposure = true;
		})
	end
	-- KONSTANTERROR: [5] 4. Error Block 41 end (CF ANALYSIS FAILED)
end
function any_extend_result1.getDerivedStateFromProps(arg1, arg2) -- Line 826
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local var210 = not arg2.hasMessage
	if var210 then
		var210 = arg1.messageIds
		if var210 then
			if 0 >= #arg1.messageIds then
				var210 = false
			else
				var210 = true
			end
		end
	end
	local var211
	local var212
	if arg2.lastVoiceState ~= arg1.voiceState then
		var211 = (arg2.voiceStateCounter or 0) + 1
		var212 = false
	end
	local module_3 = {
		hasMessage = var210 or nil;
	}
	local lastMessage = arg1.lastMessage
	if lastMessage then
		lastMessage = arg1.chatSettings
	end
	module_3.savedChatSettings = lastMessage
	module_3.shortId = "..."..string.sub(tostring(arg1.userId), -4)
	module_3.voiceStateCounter = var211
	module_3.voiceTimedOut = var212
	module_3.lastVoiceState = arg1.voiceState
	return module_3
end
local getSettingsForMessage_upvr = require(script.Parent.Parent.Helpers.getSettingsForMessage)
return require(CorePackages.Packages.RoactRodux).connect(function(arg1, arg2) -- Line 856, Named "mapStateToProps"
	--[[ Upvalues[1]:
		[1]: getSettingsForMessage_upvr (readonly)
	]]
	local var216 = arg1.userMessages[arg2.userId]
	local var217 = var216
	if var217 then
		var217 = false
		if 1 <= #var216 then
			var217 = var216[#var216]
		end
	end
	local var218 = var217
	if var218 then
		var218 = arg1.messages[var217]
	end
	return {
		chatSettings = getSettingsForMessage_upvr(arg1.chatSettings, var218);
		messageIds = var216;
		lastMessage = var218;
		voiceState = arg1.voiceState[arg2.userId];
	}
end)(any_extend_result1)