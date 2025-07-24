-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:02:45
-- Luau version 6, Types version 3
-- Time taken: 0.019918 seconds

local ExpChat = script:FindFirstAncestor("ExpChat")
local Parent = ExpChat.Parent
local Roact_upvr = require(Parent.Roact)
local RoactRodux = require(Parent.RoactRodux)
local Otter_upvr = require(Parent.Otter)
local SharedFlags = require(Parent.SharedFlags)
local Players_upvr = game:GetService("Players")
local any_new_result1_upvr = require(Parent.ExpChatShared).Logger:new("ExpChat/"..script.Name)
local BubbleChat = script:FindFirstAncestor("BubbleChat")
local GlobalFlags_upvr = require(ExpChat.GlobalFlags)
local withSignalsData = require(script.Parent.withSignalsData)
local game_DefineFastFlag_result1 = game:DefineFastFlag("ExpChatMemoBillboardGui", false)
local FFlagExpChatUseAdorneeStore_upvr = SharedFlags.FFlagExpChatUseAdorneeStore
local any_extend_result1 = Roact_upvr.PureComponent:extend("BubbleChatBillboard")
local tbl_4_upvr = {
	dampingRatio = 1;
	frequency = 4;
}
local CurrentCamera_upvw = workspace.CurrentCamera
workspace:GetPropertyChangedSignal("CurrentCamera"):Connect(function() -- Line 59
	--[[ Upvalues[1]:
		[1]: CurrentCamera_upvw (read and write)
	]]
	CurrentCamera_upvw = workspace.CurrentCamera
end)
local game_DefineFastFlag_result1_upvr = game:DefineFastFlag("EasierUnmutingBasedOnCameraTCS", false)
function getEasierUnmutingDistance(arg1, arg2) -- Line 63
	--[[ Upvalues[2]:
		[1]: CurrentCamera_upvw (read and write)
		[2]: game_DefineFastFlag_result1_upvr (readonly)
	]]
	local var19
	if var19 then
		var19 = CurrentCamera_upvw.CFrame.Position
	end
	if game_DefineFastFlag_result1_upvr or not arg2 or arg1 and var19 then
		return (arg1 - var19).Magnitude
	end
	if arg1 and arg2 then
		return (arg1 - arg2).Magnitude
	end
	return nil
end
local game_DefineFastFlag_result1_upvr_2 = game:DefineFastFlag("SelfViewNoApi", false)
local StarterGui_upvr = game:GetService("StarterGui")
local VoiceIndicator_upvr = require(BubbleChat.VoiceIndicator)
function any_extend_result1.init(arg1) -- Line 77
	--[[ Upvalues[7]:
		[1]: GlobalFlags_upvr (readonly)
		[2]: game_DefineFastFlag_result1_upvr_2 (readonly)
		[3]: StarterGui_upvr (readonly)
		[4]: Roact_upvr (readonly)
		[5]: Otter_upvr (readonly)
		[6]: Players_upvr (readonly)
		[7]: VoiceIndicator_upvr (readonly)
	]]
	local var38
	local var39
	if GlobalFlags_upvr.AvatarChatEnabled then
		var38 = arg1.props.selfViewListenerChanged.getSelfViewVisibility()
		local var40 = game_DefineFastFlag_result1_upvr_2
		if not var40 then
			var40 = StarterGui_upvr:GetCoreGuiEnabled(Enum.CoreGuiType.All)
			if not var40 then
				var40 = StarterGui_upvr:GetCoreGuiEnabled(Enum.CoreGuiType.SelfView)
			end
		end
		var39 = var40
	end
	arg1:setState({
		isInsideRenderDistance = false;
		isInsideMaximizeDistance = false;
		savedChatSettings = arg1.props.chatSettings;
		selfViewOpen = var38;
		selfViewEnabled = var39;
		voiceTimedOut = false;
		voiceStateCounter = 0;
		lastVoiceState = nil;
	})
	arg1.isMounted = false
	local any_createBinding_result1, any_createBinding_result2_2 = Roact_upvr.createBinding(Vector3.new())
	arg1.offset = any_createBinding_result1
	arg1.updateOffset = any_createBinding_result2_2
	arg1.offsetMotor = Otter_upvr.createSingleMotor(0)
	arg1.offsetMotor:onStep(function(arg1_4) -- Line 102
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		arg1.updateOffset(Vector3.new(0, arg1_4, 0))
	end)
	arg1.offsetGoal = 0
	arg1.heartbeatCount = 0
	arg1.lastDistanceUpdate = 0
	function arg1.onLastBubbleFadeOut() -- Line 111
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		if arg1.props.onFadeOut and not arg1.isFadingOut then
			arg1.isFadingOut = true
			arg1.props.onFadeOut(arg1.props.userId)
		end
	end
	function arg1.wrappedOnClickVoiceIndicator(arg1_5, arg2) -- Line 119
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		return arg1.props.onClickedVoiceIndicator(arg1_5, arg2, "bubblechat")
	end
	local var47_upvr = Players_upvr
	local LocalPlayer = var47_upvr.LocalPlayer
	if LocalPlayer then
		if arg1.props.userId ~= tostring(LocalPlayer.UserId) then
			var47_upvr = "SpeakerDark"
		else
			var47_upvr = "MicDark"
		end
	else
		var47_upvr = "SpeakerDark"
	end
	function arg1.renderInsert() -- Line 127
		--[[ Upvalues[4]:
			[1]: Roact_upvr (copied, readonly)
			[2]: VoiceIndicator_upvr (copied, readonly)
			[3]: arg1 (readonly)
			[4]: var47_upvr (readonly)
		]]
		return Roact_upvr.createElement(VoiceIndicator_upvr, {
			userId = arg1.props.userId;
			getIcon = arg1.props.getIconVoiceIndicator;
			onClicked = arg1.wrappedOnClickVoiceIndicator;
			iconStyle = var47_upvr;
		})
	end
	if GlobalFlags_upvr.AvatarChatEnabled then
		local getSelfViewVisibility_upvr = arg1.props.selfViewListenerChanged.getSelfViewVisibility
		arg1.selfViewConnection = arg1.props.selfViewListenerChanged.selfViewVisibilityUpdatedSignal:connect(function() -- Line 140, Named "callback"
			--[[ Upvalues[2]:
				[1]: arg1 (readonly)
				[2]: getSelfViewVisibility_upvr (readonly)
			]]
			arg1:setState({
				selfViewOpen = getSelfViewVisibility_upvr();
			})
		end)
	end
end
function any_extend_result1.checkCounterForTimeout(arg1, arg2) -- Line 149
	--[[ Upvalues[1]:
		[1]: Players_upvr (readonly)
	]]
	if Players_upvr.LocalPlayer and arg1.props.userId ~= tostring(Players_upvr.LocalPlayer.UserId) and arg1.state.lastVoiceState ~= "Talking" and arg1.state.voiceStateCounter ~= arg2 then
		local voiceStateCounter_upvr = arg1.state.voiceStateCounter
		delay(1, function() -- Line 159
			--[[ Upvalues[2]:
				[1]: arg1 (readonly)
				[2]: voiceStateCounter_upvr (readonly)
			]]
			if arg1.state.voiceStateCounter == voiceStateCounter_upvr and arg1.isMounted then
				arg1:setState({
					voiceTimedOut = true;
				})
			end
		end)
	end
end
function any_extend_result1.getVerticalOffset(arg1) -- Line 172
	local adornee = arg1.props.adornee
	if adornee and adornee:IsA("Model") then
		local any_GetBoundingBox_result1, any_GetBoundingBox_result2 = adornee:GetBoundingBox()
		local getAdorneeInstance_result1 = getAdorneeInstance(arg1.props.adornee, arg1.state.savedChatSettings.AdorneeName)
		if not getAdorneeInstance_result1 then
			return any_GetBoundingBox_result2.Y / 2
		end
		if getAdorneeInstance_result1:IsA("BasePart") then
			return any_GetBoundingBox_result2.Y / 2 - any_GetBoundingBox_result1:PointToObjectSpace(getAdorneeInstance_result1.Position).Y
		end
		return 0
	end
	if adornee and adornee:IsA("BasePart") then
		return adornee.Size.Y / 2
	end
	return 0
end
function getAdorneeInstance(arg1, arg2) -- Line 195
	if not arg1 then
		return nil
	end
	local var60
	if var60 then
		var60 = arg1:FindFirstChild(arg2, true)
		if not var60 then
			var60 = arg1.PrimaryPart
		end
		if not var60 or var60:IsA("BasePart") or var60:IsA("Attachment") then
			do
				return var60
			end
			-- KONSTANTWARNING: GOTO [40] #34
		end
	elseif arg1:IsA("BasePart") or arg1:IsA("Attachment") then
		return arg1
	end
	return nil
end
function any_extend_result1.shouldRenderCaret(arg1) -- Line 211
	--[[ Upvalues[1]:
		[1]: GlobalFlags_upvr (readonly)
	]]
	local var63
	if not var63 then
		var63 = not arg1:shouldRenderLikelySpeakingBubble()
	end
	local TailVisible = arg1.state.savedChatSettings.TailVisible
	if TailVisible then
		TailVisible = not arg1:shouldRenderPlayerButtons()
		if TailVisible then
			TailVisible = var63
		end
	end
	return TailVisible
end
local GetFFlagEnableShowVoiceUI_upvr = SharedFlags.GetFFlagEnableShowVoiceUI
local VRService_upvr = game:GetService("VRService")
function any_extend_result1.shouldRenderPlayerButtons(arg1) -- Line 219
	--[[ Upvalues[4]:
		[1]: GetFFlagEnableShowVoiceUI_upvr (readonly)
		[2]: Players_upvr (readonly)
		[3]: VRService_upvr (readonly)
		[4]: GlobalFlags_upvr (readonly)
	]]
	local var67
	if var67 then
		var67 = arg1.props.voiceEnabled
		local function INLINED() -- Internal function, doesn't exist in bytecode
			var67 = arg1.props.isVoiceUIVisible
			return var67
		end
		if not var67 or not INLINED() then
			var67 = false
			do
				return var67
			end
			-- KONSTANTWARNING: GOTO [23] #18
		end
	else
		var67 = arg1.props.voiceEnabled
		if not var67 then
			var67 = false
			return var67
		end
	end
	if Players_upvr.LocalPlayer then
		if arg1.props.userId ~= tostring(Players_upvr.LocalPlayer.UserId) then
			var67 = false
		else
			var67 = true
		end
	else
		var67 = false
	end
	if var67 then
		if VRService_upvr.VREnabled or GlobalFlags_upvr.ChromeEnabled then
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
function any_extend_result1.shouldRenderLikelySpeakingBubble(arg1) -- Line 255
	--[[ Upvalues[1]:
		[1]: Players_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local var71
	if Players_upvr.LocalPlayer then
		if arg1.props.userId ~= tostring(Players_upvr.LocalPlayer.UserId) then
			var71 = false
		else
			var71 = true
		end
	else
		var71 = false
	end
	if not var71 then
		if arg1.props.isEligibleForLikelySpeakingBubbles then
		end
	end
	return arg1.props.isLikelySpeakingUser
end
local function _(arg1, arg2) -- Line 263, Named "messagesHaveChanged"
	local len_2 = #arg1
	local len_4 = #arg2
	if len_2 == 0 and len_4 == 0 then
		return false
	end
	if len_2 ~= len_4 then
		return true
	end
	for i, v in arg1 do
		if v.messageId ~= arg2[i].messageId then
			return true
		end
	end
	return false
end
local tbl_6_upvr = {
	filteredMessages = true;
}
local tutils_upvr = require(Parent.tutils)
function any_extend_result1.shouldComponentUpdate(arg1, arg2, arg3) -- Line 282
	--[[ Upvalues[2]:
		[1]: tutils_upvr (readonly)
		[2]: tbl_6_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 28 start (CF ANALYSIS FAILED)
	if arg1.state.isInsideRenderDistance ~= arg3.isInsideRenderDistance and not arg3.isInsideRenderDistance then
		return false
	end
	local len_3 = #arg1.state.filteredMessages
	local len = #arg3.filteredMessages
	if len_3 == 0 and len == 0 then
		-- KONSTANTWARNING: GOTO [47] #33
	end
	-- KONSTANTERROR: [0] 1. Error Block 28 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [27] 18. Error Block 25 start (CF ANALYSIS FAILED)
	if len_3 ~= len then
		-- KONSTANTWARNING: GOTO [47] #33
	end
	-- KONSTANTERROR: [27] 18. Error Block 25 end (CF ANALYSIS FAILED)
end
local vector2_upvr = Vector2.new(28, 28)
local PlayerButtons_upvr = require(BubbleChat.PlayerButtons)
local LikelySpeakingBubble_upvr = require(BubbleChat.LikelySpeakingBubble)
local BlankBubble_upvr = require(BubbleChat.BlankBubble)
local BubbleChatList_upvr = require(BubbleChat.BubbleChatList)
local ChatBubbleDistant_upvr = require(BubbleChat.ChatBubbleDistant)
function any_extend_result1.render(arg1) -- Line 296
	--[[ Upvalues[10]:
		[1]: Players_upvr (readonly)
		[2]: any_new_result1_upvr (readonly)
		[3]: GlobalFlags_upvr (readonly)
		[4]: vector2_upvr (readonly)
		[5]: Roact_upvr (readonly)
		[6]: PlayerButtons_upvr (readonly)
		[7]: LikelySpeakingBubble_upvr (readonly)
		[8]: BlankBubble_upvr (readonly)
		[9]: BubbleChatList_upvr (readonly)
		[10]: ChatBubbleDistant_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local adornee_2 = arg1.props.adornee
	local getAdorneeInstance_result1_2 = getAdorneeInstance(adornee_2, arg1.state.savedChatSettings.AdorneeName)
	if Players_upvr.LocalPlayer then
		if arg1.props.userId ~= tostring(Players_upvr.LocalPlayer.UserId) then
			adornee_2 = false
		else
			adornee_2 = true
		end
	else
		adornee_2 = false
	end
	local savedChatSettings = arg1.state.savedChatSettings
	if not getAdorneeInstance_result1_2 then
		any_new_result1_upvr:trace("No adornee for {}", arg1.state.shortId)
		return
	end
	if not arg1.state.isInsideRenderDistance then return end
	local module_2 = {}
	local filteredMessages = arg1.state.filteredMessages
	if filteredMessages then
		if 0 >= #arg1.state.filteredMessages then
			filteredMessages = false
		else
			filteredMessages = true
		end
	end
	if arg1.props.voiceEnabled then
	end
	if GlobalFlags_upvr.AvatarChatEnabled and adornee_2 then
		local var91 = not arg1.state.voiceTimedOut
		if var91 then
			var91 = not arg1.state.selfViewOpen
		end
	end
	if GlobalFlags_upvr.ChromeEnabled and adornee_2 then
		local var92 = false
	end
	if var92 and not GlobalFlags_upvr.AvatarChatEnabled then
	end
	if var92 then
	else
	end
	if GlobalFlags_upvr.AvatarChatEnabled or GlobalFlags_upvr.ChromeEnabled then
		if arg1:shouldRenderPlayerButtons() then
			module_2.PlayerButtons = Roact_upvr.createElement(PlayerButtons_upvr, {
				chatSettings = arg1.props.chatSettings;
				isInsideMaximizeDistance = arg1.state.isInsideMaximizeDistance;
				LayoutOrder = 2;
				isLocalPlayer = adornee_2;
				userId = arg1.props.userId;
				getIcon = arg1.props.getIconVoiceIndicator;
				hasCameraPermissions = arg1.props.hasCameraPermissions;
				hasMicPermissions = arg1.props.hasMicPermissions;
				onClickedVoiceIndicator = arg1.wrappedOnClickVoiceIndicator;
				onClickedCameraIndicator = arg1.props.onClickedCameraIndicator;
				voiceEnabled = arg1.props.voiceEnabled;
				displayCameraDeniedToast = arg1.props.displayCameraDeniedToast;
				isCamEnabledForUserAndPlace = arg1.props.isCamEnabledForUserAndPlace;
				setCameraPermissionStateFromControl = arg1.props.setCameraPermissionStateFromControl;
				getPermissions = arg1.props.getPermissions;
				isCameraOnlyUser = arg1.props.isCameraOnlyUser;
				isVoiceServiceInitialized = arg1.props.isVoiceServiceInitialized;
			})
			module_2.listLayout = Roact_upvr.createElement("UIListLayout", {
				SortOrder = Enum.SortOrder.LayoutOrder;
				HorizontalAlignment = Enum.HorizontalAlignment.Center;
				VerticalAlignment = Enum.VerticalAlignment.Bottom;
				Padding = UDim.new(0, 8);
			})
			module_2.padding = Roact_upvr.createElement("UIPadding", {
				PaddingBottom = UDim.new(0, 8);
			})
		elseif GlobalFlags_upvr.ShowLikelySpeakingBubbles and arg1:shouldRenderLikelySpeakingBubble() and arg1.state.isInsideLikelySpeakingDistance then
			module_2.LikelySpeakingBubble = Roact_upvr.createElement(LikelySpeakingBubble_upvr, {
				chatSettings = arg1.props.chatSettings;
				isInsideMaximizeDistance = arg1.state.isInsideMaximizeDistance;
				LayoutOrder = 2;
				onActivated = arg1.props.onClickedLikelySpeakingBubble;
			})
			module_2.listLayout = Roact_upvr.createElement("UIListLayout", {
				SortOrder = Enum.SortOrder.LayoutOrder;
				HorizontalAlignment = Enum.HorizontalAlignment.Center;
				VerticalAlignment = Enum.VerticalAlignment.Bottom;
				Padding = UDim.new(0, 8);
			})
			module_2.padding = Roact_upvr.createElement("UIPadding", {
				PaddingBottom = UDim.new(0, 8);
			})
			-- KONSTANTWARNING: GOTO [399] #253
		end
	elseif var92 and filteredMessages == false then
		module_2.VoiceBubble = Roact_upvr.createElement(BlankBubble_upvr, {
			chatSettings = savedChatSettings;
			userId = arg1.props.userId;
			renderInsert = nil;
			insertSize = vector2_upvr;
			isDistant = not arg1.state.isInsideMaximizeDistance;
			clientSettings = arg1.props.clientSettings;
		})
	end
	if arg1.state.isInsideMaximizeDistance then
		local tbl = {
			userId = arg1.props.userId;
			isVisible = arg1.state.isInsideMaximizeDistance;
		}
		local onLastBubbleFadeOut_2 = arg1.onLastBubbleFadeOut
		tbl.onLastBubbleFadeOut = onLastBubbleFadeOut_2
		tbl.chatSettings = savedChatSettings
		if not GlobalFlags_upvr.ChromeEnabled then
			onLastBubbleFadeOut_2 = nil
		else
			onLastBubbleFadeOut_2 = nil
		end
		tbl.renderFirstInsert = onLastBubbleFadeOut_2
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		tbl.insertSize = vector2_upvr
		tbl.messages = arg1.state.filteredMessages
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		tbl.clientSettings = arg1.props.clientSettings
		tbl.isTextChatServiceOn = arg1.props.isTextChatServiceOn
		tbl.showCaret = arg1:shouldRenderCaret()
		module_2.BubbleChatList = Roact_upvr.createElement(BubbleChatList_upvr, tbl)
		local var102
	elseif filteredMessages then
		local tbl_5 = {}
		local var104 = nil
		if not var104 then
			if #arg1.state.filteredMessages ~= 0 then
				var104 = false
			else
				var104 = true
			end
		end
		tbl_5.fadingOut = var104
		tbl_5.onFadeOut = arg1.onLastBubbleFadeOut
		tbl_5.chatSettings = savedChatSettings
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		if not GlobalFlags_upvr.ChromeEnabled then
		else
		end
		tbl_5.renderInsert = nil
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		tbl_5.insertSize = vector2_upvr
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		tbl_5.clientSettings = arg1.props.clientSettings
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		tbl_5.showCaret = arg1:shouldRenderCaret()
		module_2.DistantBubble = Roact_upvr.createElement(ChatBubbleDistant_upvr, tbl_5)
	end
	if not adornee_2 or not savedChatSettings.LocalPlayerStudsOffset then
	end
	if GlobalFlags_upvr.ShowLikelySpeakingBubbles then
	end
	local module_4 = {
		Adornee = getAdorneeInstance_result1_2;
	}
	if GlobalFlags_upvr.AvatarChatEnabled then
	else
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	end
	module_4.Active = var92 or arg1:shouldRenderLikelySpeakingBubble()
	module_4.Size = UDim2.fromOffset(500, 200)
	module_4.SizeOffset = Vector2.new(0, 0.5)
	module_4.StudsOffset = Vector3.new(0, 1, 0.10000) + Vector3.new(0, savedChatSettings.VerticalStudsOffset, 0)
	module_4.StudsOffsetWorldSpace = arg1.offset
	module_4.ResetOnSpawn = false
	return Roact_upvr.createElement("BillboardGui", module_4, module_2)
end
function any_extend_result1.didUpdate(arg1, arg2, arg3) -- Line 454
	if not arg1.state.filteredMessages or #arg1.state.filteredMessages == 0 then
		if not arg1.state.isInsideRenderDistance then
			arg1.onLastBubbleFadeOut()
		end
	end
	if arg1.state.filteredMessages and 0 < #arg1.state.filteredMessages then
		arg1.isFadingOut = false
	end
	arg1:checkCounterForTimeout(arg3.voiceStateCounter)
end
local List_upvr = require(Parent.llama).List
local function getRecentMessages_upvr(arg1, arg2, arg3) -- Line 470, Named "getRecentMessages"
	--[[ Upvalues[1]:
		[1]: List_upvr (readonly)
	]]
	local var107 = arg1
	if not var107 then
		var107 = {}
	end
	local var109_upvr = workspace:GetServerTimeNow() * 1000
	return List_upvr.filter(var107, function(arg1_6, arg2_2) -- Line 474
		--[[ Upvalues[4]:
			[1]: arg1 (readonly)
			[2]: arg3 (readonly)
			[3]: var109_upvr (readonly)
			[4]: arg2 (readonly)
		]]
		if arg1_6.isVisibleInBubbleChat then
			local var110 = false
			if #arg1 - arg3 < arg2_2 then
				if var109_upvr - arg1_6.timestamp.UnixTimestampMillis >= arg2 then
					var110 = false
				else
					var110 = true
				end
			end
			return var110
		end
		return false
	end)
end
local RunService_upvr = game:GetService("RunService")
local game_DefineFastInt_result1_upvr_2 = game:DefineFastInt("ExperienceChatHeartbeatIncrement", 5)
local game_DefineFastInt_result1_upvr = game:DefineFastInt("LikelySpeakingBubbleDisplayDistance", 50)
function any_extend_result1.didMount(arg1) -- Line 484
	--[[ Upvalues[8]:
		[1]: Otter_upvr (readonly)
		[2]: RunService_upvr (readonly)
		[3]: game_DefineFastInt_result1_upvr_2 (readonly)
		[4]: CurrentCamera_upvw (read and write)
		[5]: GlobalFlags_upvr (readonly)
		[6]: game_DefineFastInt_result1_upvr (readonly)
		[7]: tbl_4_upvr (readonly)
		[8]: getRecentMessages_upvr (readonly)
	]]
	arg1.isMounted = true
	local any_getVerticalOffset_result1 = arg1:getVerticalOffset()
	arg1.offsetGoal = any_getVerticalOffset_result1
	arg1.offsetMotor:setGoal(Otter_upvr.instant(any_getVerticalOffset_result1))
	arg1.heartbeatConn = RunService_upvr.Heartbeat:Connect(function(arg1_7) -- Line 492
		--[[ Upvalues[8]:
			[1]: arg1 (readonly)
			[2]: game_DefineFastInt_result1_upvr_2 (copied, readonly)
			[3]: CurrentCamera_upvw (copied, read and write)
			[4]: GlobalFlags_upvr (copied, readonly)
			[5]: game_DefineFastInt_result1_upvr (copied, readonly)
			[6]: Otter_upvr (copied, readonly)
			[7]: tbl_4_upvr (copied, readonly)
			[8]: getRecentMessages_upvr (copied, readonly)
		]]
		-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [31] 22. Error Block 65 start (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [31] 22. Error Block 65 end (CF ANALYSIS FAILED)
	end)
	arg1:checkCounterForTimeout(nil)
end
function any_extend_result1.willUnmount(arg1) -- Line 586
	--[[ Upvalues[1]:
		[1]: any_new_result1_upvr (readonly)
	]]
	any_new_result1_upvr:trace("Unmounting billboards for {}", arg1.state.shortId)
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
	if arg1.selfViewConnection then
		arg1.selfViewConnection:disconnect()
		arg1.selfViewConnection = nil
	end
	arg1.offsetMotor:destroy()
end
function any_extend_result1.getDerivedStateFromProps(arg1, arg2) -- Line 608
	--[[ Upvalues[1]:
		[1]: getRecentMessages_upvr (readonly)
	]]
	local var116
	local var117
	local var118
	if arg2.lastVoiceState ~= arg1.voiceState then
		var117 = (arg2.voiceStateCounter or 0) + 1
		var118 = false
		var116 = arg1.voiceState
	end
	local module_3 = {}
	local lastMessage = arg1.lastMessage
	if lastMessage then
		lastMessage = arg1.chatSettings
	end
	module_3.savedChatSettings = lastMessage
	module_3.shortId = "..."..string.sub(tostring(arg1.userId), -4)
	module_3.filteredMessages = getRecentMessages_upvr(arg1.messages, arg2.savedChatSettings.BubbleDuration * 1000, arg2.savedChatSettings.MaxBubbles)
	module_3.voiceStateCounter = var117
	module_3.voiceTimedOut = var118
	module_3.lastVoiceState = var116
	return module_3
end
local getSettingsForMessage_upvr = require(BubbleChat.Helpers.getSettingsForMessage)
local game_DefineFastFlag_result1_upvr_3 = game:DefineFastFlag("FixLikelySpeakingBubbles", false)
local FFlagEasierUnmuting_upvr = require(ExpChat.Flags.FFlagEasierUnmuting)
local function mapStateToProps(arg1, arg2) -- Line 639
	--[[ Upvalues[6]:
		[1]: Players_upvr (readonly)
		[2]: getSettingsForMessage_upvr (readonly)
		[3]: GlobalFlags_upvr (readonly)
		[4]: FFlagExpChatUseAdorneeStore_upvr (readonly)
		[5]: game_DefineFastFlag_result1_upvr_3 (readonly)
		[6]: FFlagEasierUnmuting_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 49 start (CF ANALYSIS FAILED)
	if arg1.Messages.messagesBySenderId[arg2.userId] ~= nil then
	else
	end
	if Players_upvr.LocalPlayer then
		-- KONSTANTWARNING: GOTO [28] #21
	end
	-- KONSTANTERROR: [0] 1. Error Block 49 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [27] 20. Error Block 54 start (CF ANALYSIS FAILED)
	if arg2.isTextChatServiceOn then
		-- KONSTANTWARNING: GOTO [41] #31
	end
	-- KONSTANTERROR: [27] 20. Error Block 54 end (CF ANALYSIS FAILED)
end
if FFlagExpChatUseAdorneeStore_upvr then
	local var125 = RoactRodux.connect(mapStateToProps)(any_extend_result1)
	if game_DefineFastFlag_result1 then
		return require(Parent.React).memo(withSignalsData(var125))
	end
	return withSignalsData(var125)
end
if game_DefineFastFlag_result1 then
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	return require(Parent.React).memo(RoactRodux.connect(mapStateToProps)(any_extend_result1))
end
return RoactRodux.connect(mapStateToProps)(any_extend_result1)