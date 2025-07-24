-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:03:01
-- Luau version 6, Types version 3
-- Time taken: 0.005724 seconds

local FaceAnimatorService_upvr = game:GetService("FaceAnimatorService")
local ExpChat = script:FindFirstAncestor("ExpChat")
local Parent = ExpChat.Parent
local Roact_upvr = require(Parent.Roact)
local Config = require(ExpChat.Config)
local GlobalFlags_upvr = require(ExpChat.GlobalFlags)
local GetFFlagExpChatUseVoiceParticipantsStore_upvr = require(Parent.SharedFlags).GetFFlagExpChatUseVoiceParticipantsStore
local any_extend_result1 = Roact_upvr.PureComponent:extend("PlayerButtons")
any_extend_result1.defaultProps = {
	LayoutOrder = 1;
}
local game_DefineFastFlag_result1_upvr = game:DefineFastFlag("PreventMicToggleIfGameConsumedEvent", false)
local Permissions_upvr = Config.Permissions
function any_extend_result1.init(arg1) -- Line 41
	--[[ Upvalues[5]:
		[1]: FaceAnimatorService_upvr (readonly)
		[2]: game_DefineFastFlag_result1_upvr (readonly)
		[3]: GetFFlagExpChatUseVoiceParticipantsStore_upvr (readonly)
		[4]: GlobalFlags_upvr (readonly)
		[5]: Permissions_upvr (readonly)
	]]
	local tbl_3 = {}
	local var13
	if FaceAnimatorService_upvr then
		var13 = FaceAnimatorService_upvr:IsStarted()
		if var13 then
			var13 = FaceAnimatorService_upvr.VideoAnimationEnabled
			-- KONSTANTWARNING: GOTO [13] #12
		end
	else
		var13 = false
	end
	tbl_3.cameraEnabled = var13
	arg1:setState(tbl_3)
	function arg1.toggleMic(arg1_2, arg2) -- Line 49
		--[[ Upvalues[3]:
			[1]: game_DefineFastFlag_result1_upvr (copied, readonly)
			[2]: arg1 (readonly)
			[3]: GetFFlagExpChatUseVoiceParticipantsStore_upvr (copied, readonly)
		]]
		if game_DefineFastFlag_result1_upvr and arg1_2 then
		else
			local props = arg1.props
			if GetFFlagExpChatUseVoiceParticipantsStore_upvr() then
				props = arg2
			else
				props = arg1.props.voiceState
			end
			arg1.props.onClickedVoiceIndicator(props.userId, props)
		end
	end
	function arg1.onVideoButtonPressed() -- Line 61
		--[[ Upvalues[3]:
			[1]: GlobalFlags_upvr (copied, readonly)
			[2]: arg1 (readonly)
			[3]: Permissions_upvr (copied, readonly)
		]]
		-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [4] 4. Error Block 2 start (CF ANALYSIS FAILED)
		local hasCameraPermissions = arg1.props.hasCameraPermissions
		-- KONSTANTERROR: [4] 4. Error Block 2 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [18] 14. Error Block 4 start (CF ANALYSIS FAILED)
		arg1.props.getPermissions(hasCameraPermissions, Permissions_upvr.CAMERA_ACCESS)
		do
			return
		end
		-- KONSTANTERROR: [18] 14. Error Block 4 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [29] 22. Error Block 5 start (CF ANALYSIS FAILED)
		arg1:toggleVideo()
		-- KONSTANTERROR: [29] 22. Error Block 5 end (CF ANALYSIS FAILED)
	end
	function arg1.toggleVideo() -- Line 86
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		arg1.props.onClickedCameraIndicator()
	end
	function arg1.updateVideo() -- Line 90
		--[[ Upvalues[2]:
			[1]: arg1 (readonly)
			[2]: FaceAnimatorService_upvr (copied, readonly)
		]]
		arg1:setState({
			cameraEnabled = FaceAnimatorService_upvr.VideoAnimationEnabled;
		})
	end
end
function any_extend_result1.shouldShowCameraIndicator(arg1) -- Line 97
	local isLocalPlayer = arg1.props.isLocalPlayer
	if isLocalPlayer then
		isLocalPlayer = arg1:getCameraButtonVisibleAtMount()
	end
	return isLocalPlayer
end
function any_extend_result1.shouldShowMicOffIndicator(arg1) -- Line 101
	--[[ Upvalues[1]:
		[1]: GlobalFlags_upvr (readonly)
	]]
	if arg1.props.isLocalPlayer then
		local var22 = true
		if arg1.props.voiceState ~= "Muted" then
			if arg1.props.voiceState ~= "LOCAL_MUTED" then
				var22 = false
			else
				var22 = true
			end
		end
		if GlobalFlags_upvr.JoinWithoutMicPermissions then
			return var22
		end
		local var23 = var22
		if not var23 then
			var23 = not arg1.props.hasMicPermissions
		end
		return var23
	end
	return false
end
function any_extend_result1.getCameraButtonVisibleAtMount(arg1) -- Line 114
	--[[ Upvalues[1]:
		[1]: GlobalFlags_upvr (readonly)
	]]
	if GlobalFlags_upvr.EnableAlwaysAvailableCamera and arg1.props.isCameraOnlyUser and arg1.props.isCameraOnlyUser() then
		return false
	end
	if arg1.props.isCamEnabledForUserAndPlace then
		return arg1.props.isCamEnabledForUserAndPlace()
	end
	return false
end
local AvatarChatUISettings_upvr = Config.AvatarChatUISettings
local Dictionary_upvr = require(Parent.llama).Dictionary
local ControlBubble_upvr = require(script.Parent.ControlBubble)
local HttpService_upvr = game:GetService("HttpService")
local ExternalEventConnection_upvr = require(Parent.UIBlox).Utility.ExternalEventConnection
function any_extend_result1.render(arg1) -- Line 130
	--[[ Upvalues[9]:
		[1]: GlobalFlags_upvr (readonly)
		[2]: GetFFlagExpChatUseVoiceParticipantsStore_upvr (readonly)
		[3]: AvatarChatUISettings_upvr (readonly)
		[4]: Roact_upvr (readonly)
		[5]: Dictionary_upvr (readonly)
		[6]: ControlBubble_upvr (readonly)
		[7]: HttpService_upvr (readonly)
		[8]: FaceAnimatorService_upvr (readonly)
		[9]: ExternalEventConnection_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	-- KONSTANTERROR: [0] 1. Error Block 114 start (CF ANALYSIS FAILED)
	local var29
	if not var29 then
		var29 = arg1.props.voiceEnabled
	end
	if GlobalFlags_upvr.JoinWithoutMicPermissions then
		var29 = arg1.props.voiceEnabled
	end
	local any_shouldShowCameraIndicator_result1 = arg1:shouldShowCameraIndicator()
	if GetFFlagExpChatUseVoiceParticipantsStore_upvr() then
	else
	end
	local var31 = any_shouldShowCameraIndicator_result1 and var29
	local chatSettings = arg1.props.chatSettings
	if not var31 or not AvatarChatUISettings_upvr.DoubleIconCornerRadiusOffset then
		local SingleIconCornerRadiusOffset = AvatarChatUISettings_upvr.SingleIconCornerRadiusOffset
	end
	if not var31 or not AvatarChatUISettings_upvr.DoubleIconButtonSize then
	end
	if arg1.props.isLocalPlayer then
	else
	end
	if arg1.state.cameraEnabled and arg1.props.hasCameraPermissions then
	else
	end
	-- KONSTANTERROR: [0] 1. Error Block 114 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [74] 53. Error Block 106 start (CF ANALYSIS FAILED)
	local var34
	if arg1.state.cameraEnabled and arg1:getCameraButtonVisibleAtMount() then
	else
	end
	-- KONSTANTERROR: [74] 53. Error Block 106 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [86] 62. Error Block 121 start (CF ANALYSIS FAILED)
	local tbl = {
		AnchorPoint = Vector2.new(0.5, 1);
	}
	var34 = -8
	tbl.Position = UDim2.new(0.5, 0, 1, var34)
	tbl.AutomaticSize = Enum.AutomaticSize.X
	tbl.Size = UDim2.fromOffset(0, AvatarChatUISettings_upvr.FrameHeight)
	tbl.LayoutOrder = arg1.props.LayoutOrder
	tbl.BackgroundTransparency = chatSettings.BackgroundTransparency
	tbl.BackgroundColor3 = chatSettings.BackgroundColor3
	tbl.Visible = var29 or any_shouldShowCameraIndicator_result1
	local tbl_4 = {}
	local tbl_2 = {}
	if not arg1.props.isInsideMaximizeDistance then
		var34 = 0.75
	else
		var34 = 1
	end
	tbl_2.Scale = var34
	tbl_4.Scale = Roact_upvr.createElement("UIScale", tbl_2)
	local tbl_5 = {}
	var34 = UDim.new(0, SingleIconCornerRadiusOffset)
	tbl_5.CornerRadius = var34
	tbl_4.UICorner = Roact_upvr.createElement("UICorner", tbl_5)
	var34 = Dictionary_upvr
	var34 = {}
	var34.Size = UDim2.fromScale(1, 1)
	var34.BackgroundTransparency = 1
	var34 = {}
	var34.UICorner = Roact_upvr.createElement("UICorner", {
		CornerRadius = UDim.new(0, SingleIconCornerRadiusOffset);
	})
	var34.UIListLayout = Roact_upvr.createElement("UIListLayout", {
		FillDirection = Enum.FillDirection.Horizontal;
		SortOrder = Enum.SortOrder.LayoutOrder;
		HorizontalAlignment = Enum.HorizontalAlignment.Center;
		VerticalAlignment = Enum.VerticalAlignment.Center;
	})
	-- KONSTANTERROR: [86] 62. Error Block 121 end (CF ANALYSIS FAILED)
end
local GetFFlagExpChatEnableVoiceReverseNudge_upvr = require(ExpChat.Flags.GetFFlagExpChatEnableVoiceReverseNudge)
if GetFFlagExpChatUseVoiceParticipantsStore_upvr() then
	return any_extend_result1
end
return require(Parent.RoactRodux).connect(function(arg1, arg2) -- Line 250, Named "mapStateToProps"
	--[[ Upvalues[1]:
		[1]: GetFFlagExpChatEnableVoiceReverseNudge_upvr (readonly)
	]]
	local var44
	if GetFFlagExpChatEnableVoiceReverseNudge_upvr() and arg1.ReverseNudgeToxicUsers then
		var44 = arg1.ReverseNudgeToxicUsers[arg2.userId]
		if var44 == nil then
			var44 = false
		end
	end
	return {
		voiceState = arg1.Voice.participants[arg2.userId];
		isUserToxic = var44;
	}
end)(any_extend_result1)