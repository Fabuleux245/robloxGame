-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:44:26
-- Luau version 6, Types version 3
-- Time taken: 0.008261 seconds

local RobloxGui = game:GetService("CoreGui"):WaitForChild("RobloxGui")
local CorePackages = game:GetService("CorePackages")
local Roact_upvr = require(CorePackages.Packages.Roact)
local t = require(CorePackages.Packages.t)
local Promise_upvr = require(CorePackages.Packages.Promise)
local var7_upvr = require(CorePackages.Packages.enumerate)("ReportPages", {
	SelectActions = 1;
	ConfirmAction = 2;
})
local any_extend_result1 = Roact_upvr.PureComponent:extend("ReportConfirmationContainer")
any_extend_result1.defaultProps = {
	blockingUtility = require(CorePackages.Workspace.Packages.BlockingUtility);
	voiceChatServiceManager = require(RobloxGui.Modules.VoiceChat.VoiceChatServiceManager).default;
	isVoiceReport = false;
	closeMenu = function() -- Line 33
	end;
}
any_extend_result1.validateProps = t.interface({
	player = t.strictInterface({
		UserId = t.number;
		Name = t.string;
		DisplayName = t.string;
	});
	isVoiceReport = t.boolean;
	closeMenu = t.callback;
	blockingAnalytics = t.optional(t.table);
	reportAbuseAnalytics = t.optional(t.table);
})
local function _(arg1, arg2) -- Line 54, Named "getIsPlayerBlockedByUserId"
	--[[ Upvalues[1]:
		[1]: Promise_upvr (readonly)
	]]
	return Promise_upvr.new(function(arg1_2, arg2_2) -- Line 55
		--[[ Upvalues[2]:
			[1]: arg1 (readonly)
			[2]: arg2 (readonly)
		]]
		arg1_2(arg1:IsPlayerBlockedByUserId(arg2))
	end)
end
local GetFFlagVoiceARUnblockingUnmutingEnabled_upvr = require(RobloxGui.Modules.Flags.GetFFlagVoiceARUnblockingUnmutingEnabled)
local Constants_upvr = require(RobloxGui.Modules.VoiceChat.Constants)
function any_extend_result1.init(arg1) -- Line 60
	--[[ Upvalues[4]:
		[1]: GetFFlagVoiceARUnblockingUnmutingEnabled_upvr (readonly)
		[2]: Constants_upvr (readonly)
		[3]: var7_upvr (readonly)
		[4]: Promise_upvr (readonly)
	]]
	local player_upvr = arg1.props.player
	arg1:setState({
		absoluteWidth = 0;
	})
	if arg1.props.onSizeChanged then
		arg1.props.onSizeChanged:Connect(function(arg1_3) -- Line 69
			--[[ Upvalues[1]:
				[1]: arg1 (readonly)
			]]
			arg1:setState({
				absoluteWidth = arg1_3.X;
			})
		end)
	end
	local var20 = arg1.props.voiceChatServiceManager.participants[tostring(player_upvr.UserId)]
	arg1.userFullName = player_upvr.DisplayName.."(@"..player_upvr.Name..')'
	function arg1.onMuteCheckboxActivated(arg1_4) -- Line 79
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		local tbl_4 = {}
		tbl_4.muteFlipped = arg1_4
		arg1:setState(tbl_4)
	end
	function arg1.onBlockCheckboxActivated(arg1_5) -- Line 85
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		local tbl_5 = {}
		tbl_5.blockFlipped = arg1_5
		arg1:setState(tbl_5)
	end
	function arg1.processMuteAndBlocking() -- Line 91
		--[[ Upvalues[4]:
			[1]: arg1 (readonly)
			[2]: player_upvr (readonly)
			[3]: GetFFlagVoiceARUnblockingUnmutingEnabled_upvr (copied, readonly)
			[4]: Constants_upvr (copied, readonly)
		]]
		-- KONSTANTERROR: [0] 1. Error Block 29 start (CF ANALYSIS FAILED)
		local blockFlipped = arg1.state.blockFlipped
		local muteFlipped_2 = arg1.state.muteFlipped
		if blockFlipped and not arg1.state.targetInitiallyBlocked then
			if arg1.props.blockingUtility:BlockPlayerAsync(player_upvr) then
				arg1.props.blockingAnalytics:action("SettingsHub", "blockUser", {
					blockeeUserId = player_upvr.UserId;
				})
				-- KONSTANTWARNING: GOTO [80] #57
			end
		elseif not blockFlipped and arg1.state.targetInitiallyBlocked and GetFFlagVoiceARUnblockingUnmutingEnabled_upvr() and arg1.props.blockingUtility:UnblockPlayerAsync(player_upvr) then
			arg1.props.blockingAnalytics:action("SettingsHub", "unblockUser", {
				blockeeUserId = player_upvr.UserId;
			})
		end
		local var35 = arg1.props.voiceChatServiceManager.participants[tostring(player_upvr.UserId)]
		if muteFlipped_2 and not arg1.state.targetInitiallyVoiceMuted then
			arg1.props.blockingUtility:MutePlayer(player_upvr)
			arg1.props.reportAbuseAnalytics:reportEventAndIncrement("muteUser")
			if var35 and not var35.isMutedLocally then
				arg1.props.voiceChatServiceManager:ToggleMutePlayer(player_upvr.UserId, Constants_upvr.VOICE_CONTEXT_TYPE.REPORT_MENU)
				-- KONSTANTWARNING: GOTO [189] #131
			end
		elseif not muteFlipped_2 and arg1.state.targetInitiallyVoiceMuted and GetFFlagVoiceARUnblockingUnmutingEnabled_upvr() then
			arg1.props.blockingUtility:UnmutePlayer(player_upvr)
			arg1.props.reportAbuseAnalytics:reportEventAndIncrement("unmuteUser")
			if var35 and var35.isMutedLocally then
				arg1.props.voiceChatServiceManager:ToggleMutePlayer(player_upvr.UserId, Constants_upvr.VOICE_CONTEXT_TYPE.REPORT_MENU)
			end
		end
		-- KONSTANTERROR: [0] 1. Error Block 29 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [189] 131. Error Block 21 start (CF ANALYSIS FAILED)
		arg1.props.closeMenu()
		-- KONSTANTERROR: [189] 131. Error Block 21 end (CF ANALYSIS FAILED)
	end
	function arg1.onActionSelectionDoneActivated(arg1_6, arg2) -- Line 148
		--[[ Upvalues[2]:
			[1]: arg1 (readonly)
			[2]: var7_upvr (copied, readonly)
		]]
		local tbl_3 = {}
		tbl_3.blockFlipped = arg1_6
		tbl_3.muteFlipped = arg2
		arg1:setState(tbl_3)
		if not arg1_6 and not arg2 or arg2 == arg1.state.targetInitiallyVoiceMuted and arg1_6 == arg1.state.targetInitiallyBlocked then
			arg1.processMuteAndBlocking()
		else
			arg1:setState({
				currentPage = var7_upvr.ConfirmAction;
			})
		end
	end
	function arg1.onYesOrNoConfirmation() -- Line 171
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		arg1.processMuteAndBlocking()
	end
	function arg1.onYesOrNoCancel() -- Line 175
		--[[ Upvalues[2]:
			[1]: arg1 (readonly)
			[2]: var7_upvr (copied, readonly)
		]]
		arg1:setState({
			currentPage = var7_upvr.SelectActions;
		})
	end
	arg1:setState({
		currentPage = var7_upvr.SelectActions;
	})
	if var20 then
		arg1:setState({
			targetInitiallyVoiceMuted = var20.isMutedLocally;
			muteFlipped = var20.isMutedLocally;
		})
	else
		arg1:setState({
			targetInitiallyVoiceMuted = false;
			muteFlipped = false;
		})
	end
	local blockingUtility_upvr = arg1.props.blockingUtility
	local UserId_upvr = player_upvr.UserId
	function UserId_upvr(arg1_8) -- Line 198
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		local tbl_2 = {}
		tbl_2.targetInitiallyBlocked = arg1_8
		tbl_2.blockFlipped = arg1_8
		arg1:setState(tbl_2)
	end
	Promise_upvr.new(function(arg1_7, arg2) -- Line 55
		--[[ Upvalues[2]:
			[1]: blockingUtility_upvr (readonly)
			[2]: UserId_upvr (readonly)
		]]
		arg1_7(blockingUtility_upvr:IsPlayerBlockedByUserId(UserId_upvr))
	end):andThen(UserId_upvr)
end
local withStyle_upvr = require(CorePackages.Packages.UIBlox).Core.Style.withStyle
local ReportActionSelection_upvr = require(script.Parent.ReportActionSelection)
local RobloxTranslator_upvr = require(CorePackages.Workspace.Packages.RobloxTranslator)
local ReportActionAreYouSure_upvr = require(script.Parent.ReportActionAreYouSure)
function any_extend_result1.render(arg1) -- Line 206
	--[[ Upvalues[6]:
		[1]: withStyle_upvr (readonly)
		[2]: Roact_upvr (readonly)
		[3]: ReportActionSelection_upvr (readonly)
		[4]: RobloxTranslator_upvr (readonly)
		[5]: ReportActionAreYouSure_upvr (readonly)
		[6]: var7_upvr (readonly)
	]]
	return withStyle_upvr(function(arg1_9) -- Line 207
		--[[ Upvalues[6]:
			[1]: arg1 (readonly)
			[2]: Roact_upvr (copied, readonly)
			[3]: ReportActionSelection_upvr (copied, readonly)
			[4]: RobloxTranslator_upvr (copied, readonly)
			[5]: ReportActionAreYouSure_upvr (copied, readonly)
			[6]: var7_upvr (copied, readonly)
		]]
		-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [12] 9. Error Block 39 start (CF ANALYSIS FAILED)
		if 800 <= arg1.state.absoluteWidth then
			-- KONSTANTWARNING: GOTO [28] #21
		end
		-- KONSTANTERROR: [12] 9. Error Block 39 end (CF ANALYSIS FAILED)
	end)
end
return any_extend_result1