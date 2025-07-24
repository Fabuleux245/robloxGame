-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:02:48
-- Luau version 6, Types version 3
-- Time taken: 0.008104 seconds

local Players_upvr = game:GetService("Players")
local ExpChat = script:FindFirstAncestor("ExpChat")
local Parent = ExpChat.Parent
local IXPServiceWrapper_upvr = require(ExpChat.IXPServiceWrapper)
local ExpChatShared = require(Parent.ExpChatShared)
local Roact_upvr = require(Parent.Roact)
local RoactRodux = require(Parent.RoactRodux)
local Dictionary_upvr = require(Parent.llama).Dictionary
local any_new_result1_upvr = ExpChatShared.Logger:new("ExpChat/"..script.Name)
local withSignalsData = require(script.Parent.withSignalsData)
local Permissions_upvr = require(ExpChat.Config).Permissions
local GlobalFlags_upvr = require(ExpChat.GlobalFlags)
local getFFlagUseCharacterStore_upvr = ExpChatShared.Flags.getFFlagUseCharacterStore
local game_DefineFastFlag_result1_upvr = game:DefineFastFlag("ExpChatRemoveBubbleChatAppUserMessagesState", false)
local game_DefineFastFlag_result1 = game:DefineFastFlag("MemoizeBubbleChatApp", false)
local GetFFlagExpChatUseVoiceParticipantsStore_upvr = require(Parent.SharedFlags).GetFFlagExpChatUseVoiceParticipantsStore
local any_extend_result1 = Roact_upvr.PureComponent:extend("BubbleChatApp")
local GetFStringVoicePerformanceIXPLayerName_upvr = require(ExpChat.Flags.GetFStringVoicePerformanceIXPLayerName)
if not game_DefineFastFlag_result1_upvr then
	function any_extend_result1.getDerivedStateFromProps(arg1, arg2) -- Line 39
		--[[ Upvalues[1]:
			[1]: Dictionary_upvr (readonly)
		]]
		local module = {}
		local userMessages = arg2.userMessages
		if not userMessages then
			userMessages = {}
		end
		module.userMessages = Dictionary_upvr.join(userMessages, arg1.userMessages)
		return module
	end
end
local None_upvr = require(Parent.llama).None
local game_DefineFastString_result1_upvr = game:DefineFastString("BillboardUpdateFrequencyIXPLayerValue", "BillboardUpdateFrequency")
function any_extend_result1.init(arg1) -- Line 49
	--[[ Upvalues[8]:
		[1]: any_new_result1_upvr (readonly)
		[2]: game_DefineFastFlag_result1_upvr (readonly)
		[3]: Dictionary_upvr (readonly)
		[4]: None_upvr (readonly)
		[5]: GlobalFlags_upvr (readonly)
		[6]: IXPServiceWrapper_upvr (readonly)
		[7]: GetFStringVoicePerformanceIXPLayerName_upvr (readonly)
		[8]: game_DefineFastString_result1_upvr (readonly)
	]]
	any_new_result1_upvr:debug("Initializing")
	local tbl = {}
	local var35
	if game_DefineFastFlag_result1_upvr then
		var35 = nil
	else
		var35 = {}
	end
	tbl.userMessages = var35
	var35 = false
	tbl.localPlayerVoiceEnabled = var35
	var35 = -1
	tbl.billboardUpdateFrequency = var35
	arg1:setState(tbl)
	function arg1.onBillboardFadeOut(arg1_4) -- Line 57
		--[[ Upvalues[4]:
			[1]: game_DefineFastFlag_result1_upvr (copied, readonly)
			[2]: arg1 (readonly)
			[3]: Dictionary_upvr (copied, readonly)
			[4]: None_upvr (copied, readonly)
		]]
		if not game_DefineFastFlag_result1_upvr then
			arg1:setState({
				userMessages = Dictionary_upvr.join(arg1.state.userMessages, {
					[arg1_4] = None_upvr;
				});
			})
		end
	end
	function arg1.setCameraPermissionStateFromControl(arg1_5) -- Line 65
		--[[ Upvalues[2]:
			[1]: GlobalFlags_upvr (copied, readonly)
			[2]: arg1 (readonly)
		]]
		if GlobalFlags_upvr.DoNotPromptCameraPermissionsOnMount then
			local tbl_10 = {}
			tbl_10.hasCameraPermissions = arg1_5
			arg1:setState(tbl_10)
		end
	end
	local pcall_result1_2, pcall_result2_2 = pcall(function() -- Line 73
		--[[ Upvalues[2]:
			[1]: IXPServiceWrapper_upvr (copied, readonly)
			[2]: GetFStringVoicePerformanceIXPLayerName_upvr (copied, readonly)
		]]
		return IXPServiceWrapper_upvr:GetLayerData(GetFStringVoicePerformanceIXPLayerName_upvr())
	end)
	if pcall_result1_2 and pcall_result2_2 then
		var35 = game_DefineFastString_result1_upvr
		if pcall_result2_2[var35] then
			arg1:setState({
				billboardUpdateFrequency = pcall_result2_2[game_DefineFastString_result1_upvr];
			})
		end
	end
end
function any_extend_result1.getPermissions(arg1) -- Line 87
	if arg1.props.getPermissions then
		arg1.props.getPermissions(function(arg1_6, arg2) -- Line 88
			--[[ Upvalues[1]:
				[1]: arg1 (readonly)
			]]
			local tbl_4 = {}
			tbl_4.hasCameraPermissions = arg1_6
			tbl_4.hasMicPermissions = arg2
			arg1:setState(tbl_4)
		end)
	end
end
function any_extend_result1.getMicPermission(arg1) -- Line 103
	--[[ Upvalues[1]:
		[1]: Permissions_upvr (readonly)
	]]
	if arg1.props.getPermissions then
		arg1.props.getPermissions(function(arg1_7, arg2) -- Line 104
			--[[ Upvalues[1]:
				[1]: arg1 (readonly)
			]]
			local tbl_3 = {}
			tbl_3.hasMicPermissions = arg2
			arg1:setState(tbl_3)
		end, Permissions_upvr.MICROPHONE_ACCESS)
	end
end
function any_extend_result1.getCameraPermissionWithoutRequest(arg1) -- Line 118
	--[[ Upvalues[1]:
		[1]: Permissions_upvr (readonly)
	]]
	if arg1.props.getPermissions then
		arg1.props.getPermissions(function(arg1_8, arg2) -- Line 119
			--[[ Upvalues[1]:
				[1]: arg1 (readonly)
			]]
			local tbl_9 = {}
			tbl_9.hasCameraPermissions = arg1_8
			arg1:setState(tbl_9)
		end, Permissions_upvr.CAMERA_ACCESS, true)
	end
end
local VoiceChatService_upvr = game:GetService("VoiceChatService")
function any_extend_result1.didMount(arg1) -- Line 131
	--[[ Upvalues[6]:
		[1]: GlobalFlags_upvr (readonly)
		[2]: any_new_result1_upvr (readonly)
		[3]: Players_upvr (readonly)
		[4]: VoiceChatService_upvr (readonly)
		[5]: IXPServiceWrapper_upvr (readonly)
		[6]: GetFStringVoicePerformanceIXPLayerName_upvr (readonly)
	]]
	if GlobalFlags_upvr.AvatarChatEnabled or GlobalFlags_upvr.ChromeEnabled then
		if GlobalFlags_upvr.DoNotPromptCameraPermissionsOnMount then
			if arg1.props.isVoiceServiceInitialized and GlobalFlags_upvr.RenderVoiceBubbleAfterAsyncInit then
				arg1.props.isVoiceServiceInitialized():andThen(function() -- Line 139
					--[[ Upvalues[1]:
						[1]: arg1 (readonly)
					]]
					arg1:getMicPermission()
				end):catch(function() -- Line 142
					--[[ Upvalues[1]:
						[1]: any_new_result1_upvr (copied, readonly)
					]]
					any_new_result1_upvr:debug("VoiceChatServiceManager failed to initialize inside TextChatService bubblechat")
				end)
			else
				arg1:getMicPermission()
			end
			arg1:getCameraPermissionWithoutRequest()
		else
			arg1:getPermissions()
		end
	end
	task.spawn(function() -- Line 154
		--[[ Upvalues[6]:
			[1]: Players_upvr (copied, readonly)
			[2]: VoiceChatService_upvr (copied, readonly)
			[3]: any_new_result1_upvr (copied, readonly)
			[4]: arg1 (readonly)
			[5]: IXPServiceWrapper_upvr (copied, readonly)
			[6]: GetFStringVoicePerformanceIXPLayerName_upvr (copied, readonly)
		]]
		local pcall_result1_3, pcall_result2 = pcall(function() -- Line 155
			--[[ Upvalues[2]:
				[1]: Players_upvr (copied, readonly)
				[2]: VoiceChatService_upvr (copied, readonly)
			]]
			if Players_upvr.LocalPlayer then
				return VoiceChatService_upvr:IsVoiceEnabledForUserIdAsync(Players_upvr.LocalPlayer.UserId)
			end
			return false
		end)
		if not pcall_result1_3 then
			any_new_result1_upvr:debug("Unable to get voice enabled status: ", pcall_result2)
		elseif pcall_result2 then
			arg1:setState({
				localPlayerVoiceEnabled = true;
			})
			IXPServiceWrapper_upvr:LogUserLayerExposure(GetFStringVoicePerformanceIXPLayerName_upvr())
		end
	end)
end
local BillboardGui_upvr = require(script:FindFirstAncestor("BubbleChat").BillboardGui)
function any_extend_result1.render(arg1) -- Line 176
	--[[ Upvalues[5]:
		[1]: GlobalFlags_upvr (readonly)
		[2]: Players_upvr (readonly)
		[3]: Roact_upvr (readonly)
		[4]: Dictionary_upvr (readonly)
		[5]: BillboardGui_upvr (readonly)
	]]
	local tbl_8 = {}
	if arg1.props.characters then
		for i, v in pairs(arg1.props.characters) do
			if v and v:IsDescendantOf(workspace) then
				tbl_8[i] = false
			end
		end
	end
	if arg1.props.mockUserIdToPartOrModel then
		for i_2, v_2 in pairs(arg1.props.mockUserIdToPartOrModel) do
			if v_2 and v_2:IsDescendantOf(workspace) then
				tbl_8[i_2] = false
			end
		end
	end
	if arg1.props.voiceParticipants then
		for i_3, v_3 in pairs(arg1.props.voiceParticipants) do
			if v_3 ~= "Hidden" then
				tbl_8[i_3] = true
			end
		end
	end
	if GlobalFlags_upvr.AvatarChatEnabled and arg1.state.hasCameraPermissions and Players_upvr.LocalPlayer then
		i_3 = Players_upvr
		tbl_8[tostring(i_3.LocalPlayer.UserId)] = true
	end
	local module_3 = {}
	i_3 = false
	module_3.ResetOnSpawn = i_3
	v_3 = Dictionary_upvr
	i_3 = v_3.map
	v_3 = tbl_8
	i_3 = i_3(v_3, function(arg1_9, arg2) -- Line 221
		--[[ Upvalues[3]:
			[1]: Roact_upvr (copied, readonly)
			[2]: BillboardGui_upvr (copied, readonly)
			[3]: arg1 (readonly)
		]]
		local module_4 = {}
		module_4.userId = arg2
		module_4.onFadeOut = arg1.onBillboardFadeOut
		module_4.voiceEnabled = arg1.props.voiceEnabled and arg1_9
		module_4.getIconVoiceIndicator = arg1.props.getIconVoiceIndicator
		module_4.onClickedVoiceIndicator = arg1.props.onClickedVoiceIndicator
		module_4.onClickedCameraIndicator = arg1.props.onClickedCameraIndicator
		module_4.selfViewListenerChanged = arg1.props.selfViewListenerChanged
		module_4.hasCameraPermissions = arg1.state.hasCameraPermissions
		module_4.hasMicPermissions = arg1.state.hasMicPermissions
		module_4.displayCameraDeniedToast = arg1.props.displayCameraDeniedToast
		module_4.isCamEnabledForUserAndPlace = arg1.props.isCamEnabledForUserAndPlace
		module_4.isCameraOnlyUser = arg1.props.isCameraOnlyUser
		module_4.setCameraPermissionStateFromControl = arg1.setCameraPermissionStateFromControl
		module_4.getPermissions = arg1.props.getPermissions
		module_4.isBubbleChatEnabled = arg1.props.isBubbleChatEnabled
		module_4.voiceState = arg1.props.voiceParticipants[arg2]
		module_4.partOrModel = arg1.props.mockUserIdToPartOrModel[arg2]
		module_4.isTextChatServiceOn = arg1.props.isTextChatServiceOn
		module_4.billboardUpdateFrequency = arg1.state.billboardUpdateFrequency
		module_4.isEligibleForLikelySpeakingBubbles = arg1.props.showLikelySpeakingBubbles
		module_4.onClickedLikelySpeakingBubble = arg1.props.onClickedLikelySpeakingBubble
		return Roact_upvr.createElement(BillboardGui_upvr, module_4), "BubbleChat_"..arg2
	end)
	return Roact_upvr.createElement("ScreenGui", module_3, i_3)
end
local function mapStateToProps(arg1, arg2) -- Line 250
	--[[ Upvalues[3]:
		[1]: game_DefineFastFlag_result1_upvr (readonly)
		[2]: getFFlagUseCharacterStore_upvr (readonly)
		[3]: GetFFlagExpChatUseVoiceParticipantsStore_upvr (readonly)
	]]
	local var79
	local var80
	if arg2.isTextChatServiceOn then
		var79 = arg1.BubbleChatSettings.Enabled
	else
		var79 = arg1.LegacyBubbleChatSettings.Enabled
	end
	local module_2 = {
		isBubbleChatEnabled = var79;
	}
	if game_DefineFastFlag_result1_upvr then
		var80 = nil
	else
		var80 = arg1.Messages.messagesBySenderId
	end
	module_2.userMessages = var80
	var80 = arg1.Voice.isEnabled
	module_2.voiceEnabled = var80
	if getFFlagUseCharacterStore_upvr() then
		var80 = nil
	else
		var80 = arg1.Players.charactersByUserId
	end
	module_2.characters = var80
	if GetFFlagExpChatUseVoiceParticipantsStore_upvr() then
	else
	end
	module_2.voiceParticipants = arg1.Voice.participants
	module_2.mockUserIdToPartOrModel = arg1.Messages.mockUserIdToPartOrModel
	module_2.showLikelySpeakingBubbles = arg1.Voice.showLikelySpeakingBubbles
	return module_2
end
if getFFlagUseCharacterStore_upvr() or GetFFlagExpChatUseVoiceParticipantsStore_upvr() then
	local var82 = RoactRodux.connect(mapStateToProps)(any_extend_result1)
	if game_DefineFastFlag_result1 then
		return require(Parent.React).memo(withSignalsData(var82))
	end
	return withSignalsData(var82)
end
if game_DefineFastFlag_result1 then
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	return require(Parent.React).memo(RoactRodux.connect(mapStateToProps)(any_extend_result1))
end
return RoactRodux.connect(mapStateToProps)(any_extend_result1)