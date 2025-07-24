-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:02:39
-- Luau version 6, Types version 3
-- Time taken: 0.008110 seconds

local ExpChat = script:FindFirstAncestor("ExpChat")
local Parent = ExpChat.Parent
local Otter_upvr = require(Parent.Otter)
local ReactFocusNavigation_upvr = require(Parent.ReactFocusNavigation)
local Roact_upvr = require(Parent.Roact)
local Config_upvr = require(ExpChat.Config)
local Timer = require(ExpChat.Timer)
local FFlagEnableFocusNavigation_upvr = require(ExpChat.Flags.FFlagEnableFocusNavigation)
local GetFFlagUnreduxChatTransparency_upvr = require(Parent.SharedFlags).GetFFlagUnreduxChatTransparency
local SharedExperimentDefinition_upvr = require(Parent.SharedExperimentDefinition)
local isInExperienceUIVREnabled_upvr = SharedExperimentDefinition_upvr.isInExperienceUIVREnabled
if isInExperienceUIVREnabled_upvr then
	SharedExperimentDefinition_upvr = {}
	SharedExperimentDefinition_upvr.DEFAULT = UDim2.fromScale(0.95, 0.94)
	SharedExperimentDefinition_upvr.WITH_CHANNEL_BAR = UDim2.fromScale(0.95, 0.78)
	SharedExperimentDefinition_upvr.WITH_CHATINPUT_BAR = UDim2.fromScale(0.95, 0.76)
	SharedExperimentDefinition_upvr.WITH_CHANNEL_CHATINPUT_BAR = UDim2.fromScale(0.95, 0.6098)
else
	SharedExperimentDefinition_upvr = nil
end
local any_extend_result1 = Roact_upvr.PureComponent:extend("AppLayout")
any_extend_result1.defaultProps = {
	addTopPadding = true;
	canLocalUserChat = false;
	isChatInputBarVisible = true;
	isChatWindowVisible = true;
	isChannelBarVisible = false;
	LayoutOrder = 1;
	mutedUserIds = nil;
	onSendChat = nil;
	textTimer = Timer.new(Config_upvr.ChatWindowTextFadeOutTime);
	timer = Timer.new(Config_upvr.ChatWindowBackgroundFadeOutTime);
	isSpatialUIEnabled = false;
}
local tbl_upvr = {
	frequency = 1.25;
	dampingRatio = 1;
}
local GetTransparencyStore_upvr = require(ExpChat.Stores.GetTransparencyStore)
local createEffect_upvr = require(Parent.Signals).createEffect
function any_extend_result1.init(arg1) -- Line 60
	--[[ Upvalues[8]:
		[1]: Roact_upvr (readonly)
		[2]: Otter_upvr (readonly)
		[3]: GetTransparencyStore_upvr (readonly)
		[4]: GetFFlagUnreduxChatTransparency_upvr (readonly)
		[5]: tbl_upvr (readonly)
		[6]: createEffect_upvr (readonly)
		[7]: FFlagEnableFocusNavigation_upvr (readonly)
		[8]: ReactFocusNavigation_upvr (readonly)
	]]
	local any_createBinding_result1, any_createBinding_result2 = Roact_upvr.createBinding(0)
	arg1.transparencyValue = any_createBinding_result1
	arg1.updateBackgroundTransparency = any_createBinding_result2
	arg1.backgroundTransparencyMotor = Otter_upvr.createSingleMotor(0)
	arg1.backgroundTransparencyMotor:onStep(arg1.updateBackgroundTransparency)
	local any_createBinding_result1_2, any_createBinding_result2_2 = Roact_upvr.createBinding(0)
	arg1.textTransparencyValue = any_createBinding_result1_2
	arg1.updateTextTransparencyValue = any_createBinding_result2_2
	arg1.textTransparencyMotor = Otter_upvr.createSingleMotor(0)
	arg1.textTransparencyMotor:onStep(arg1.updateTextTransparencyValue)
	local GetTransparencyStore_upvr_result1_upvr = GetTransparencyStore_upvr(false)
	function arg1.resetBackgroundTransparency() -- Line 71
		--[[ Upvalues[5]:
			[1]: GetFFlagUnreduxChatTransparency_upvr (copied, readonly)
			[2]: GetTransparencyStore_upvr_result1_upvr (readonly)
			[3]: arg1 (readonly)
			[4]: Otter_upvr (copied, readonly)
			[5]: tbl_upvr (copied, readonly)
		]]
		local var23
		if GetFFlagUnreduxChatTransparency_upvr() then
			var23 = GetTransparencyStore_upvr_result1_upvr.getIsTextBoxFocused(false)
		else
			var23 = arg1.props.isTextBoxFocused
		end
		arg1.backgroundTransparencyMotor:setGoal(Otter_upvr.instant(0))
		arg1.props.timer:stop()
		if var23 == false and arg1.props.isSpatialUIEnabled == false then
			arg1.props.timer:start():andThen(function() -- Line 80
				--[[ Upvalues[3]:
					[1]: arg1 (copied, readonly)
					[2]: Otter_upvr (copied, readonly)
					[3]: tbl_upvr (copied, readonly)
				]]
				arg1.backgroundTransparencyMotor:setGoal(Otter_upvr.spring(1, tbl_upvr))
			end)
		end
	end
	function arg1.resetTextTransparency() -- Line 86
		--[[ Upvalues[5]:
			[1]: GetFFlagUnreduxChatTransparency_upvr (copied, readonly)
			[2]: GetTransparencyStore_upvr_result1_upvr (readonly)
			[3]: arg1 (readonly)
			[4]: Otter_upvr (copied, readonly)
			[5]: tbl_upvr (copied, readonly)
		]]
		local var26
		if GetFFlagUnreduxChatTransparency_upvr() then
			var26 = GetTransparencyStore_upvr_result1_upvr.getIsTextBoxFocused(false)
		else
			var26 = arg1.props.isTextBoxFocused
		end
		arg1.textTransparencyMotor:setGoal(Otter_upvr.instant(0))
		arg1.props.textTimer:stop()
		if var26 == false then
			arg1.props.textTimer:start():andThen(function() -- Line 95
				--[[ Upvalues[3]:
					[1]: arg1 (copied, readonly)
					[2]: Otter_upvr (copied, readonly)
					[3]: tbl_upvr (copied, readonly)
				]]
				arg1.textTransparencyMotor:setGoal(Otter_upvr.spring(1, tbl_upvr))
			end)
		end
	end
	if GetFFlagUnreduxChatTransparency_upvr() then
		arg1.disposeBackgroundEffect = createEffect_upvr(function(arg1_2) -- Line 103
			--[[ Upvalues[2]:
				[1]: GetTransparencyStore_upvr_result1_upvr (readonly)
				[2]: arg1 (readonly)
			]]
			arg1.resetBackgroundTransparency()
			arg1.resetTextTransparency()
		end)
		arg1.disposeTextEffect = createEffect_upvr(function(arg1_3) -- Line 109
			--[[ Upvalues[2]:
				[1]: GetTransparencyStore_upvr_result1_upvr (readonly)
				[2]: arg1 (readonly)
			]]
			arg1.resetTextTransparency()
		end)
	end
	function arg1.onAbsolutePositionChanged(arg1_4, arg2) -- Line 115
		arg2.AbsolutePositionWrite = arg1_4.AbsolutePosition
	end
	function arg1.onAbsoluteSizeChanged(arg1_5, arg2) -- Line 119
		arg2.AbsoluteSizeWrite = arg1_5.AbsoluteSize
	end
	if FFlagEnableFocusNavigation_upvr then
		arg1.focusNavigationService = ReactFocusNavigation_upvr.FocusNavigationService.new(ReactFocusNavigation_upvr.EngineInterface.CoreGui)
	end
end
function any_extend_result1.didMount(arg1) -- Line 129
	--[[ Upvalues[2]:
		[1]: Otter_upvr (readonly)
		[2]: tbl_upvr (readonly)
	]]
	arg1.props.timer:start():andThen(function() -- Line 130
		--[[ Upvalues[3]:
			[1]: arg1 (readonly)
			[2]: Otter_upvr (copied, readonly)
			[3]: tbl_upvr (copied, readonly)
		]]
		arg1.backgroundTransparencyMotor:setGoal(Otter_upvr.spring(1, tbl_upvr))
	end)
	arg1.props.textTimer:start():andThen(function() -- Line 134
		--[[ Upvalues[3]:
			[1]: arg1 (readonly)
			[2]: Otter_upvr (copied, readonly)
			[3]: tbl_upvr (copied, readonly)
		]]
		arg1.textTransparencyMotor:setGoal(Otter_upvr.spring(1, tbl_upvr))
	end)
end
if not GetFFlagUnreduxChatTransparency_upvr() then
	function any_extend_result1.didUpdate(arg1, arg2, arg3) -- Line 140
		if arg2.lastGeneralActivityTimestamp ~= arg1.props.lastGeneralActivityTimestamp then
			arg1.resetBackgroundTransparency()
			arg1.resetTextTransparency()
		elseif arg2.lastMessageActivityTimestamp ~= arg1.props.lastMessageActivityTimestamp then
			arg1.resetTextTransparency()
		end
	end
end
local ClientSettingsUtility_upvr = require(ExpChat.ClientSettings.ClientSettingsUtility)
local getFFlagExpChatConditionallyMountAppLayout_upvr = require(ExpChat.Flags.getFFlagExpChatConditionallyMountAppLayout)
local getFFlagExpChatEnableChannelTabsUI_upvr = require(ExpChat.Flags.getFFlagExpChatEnableChannelTabsUI)
local SpatialUI_upvr = require(ExpChat.SpatialUI)
local getFFlagFixPaddingWithChannelTabs_upvr = require(ExpChat.Flags.getFFlagFixPaddingWithChannelTabs)
local ChatWindow_upvr = require(ExpChat.ChatWindow)
local getFFlagChatWindowGetSpatialUiContextFromProps_upvr = require(ExpChat.Flags.getFFlagChatWindowGetSpatialUiContextFromProps)
local ChatInput_upvr = require(ExpChat.ChatInput)
local ChannelBar_upvr = require(ExpChat.ChannelBar)
local CursorProvider_upvr = require(Parent.UIBlox).App.SelectionCursor.CursorProvider
function any_extend_result1.render(arg1) -- Line 150
	--[[ Upvalues[16]:
		[1]: ClientSettingsUtility_upvr (readonly)
		[2]: isInExperienceUIVREnabled_upvr (readonly)
		[3]: getFFlagExpChatConditionallyMountAppLayout_upvr (readonly)
		[4]: getFFlagExpChatEnableChannelTabsUI_upvr (readonly)
		[5]: SharedExperimentDefinition_upvr (readonly)
		[6]: Config_upvr (readonly)
		[7]: Roact_upvr (readonly)
		[8]: SpatialUI_upvr (readonly)
		[9]: getFFlagFixPaddingWithChannelTabs_upvr (readonly)
		[10]: ChatWindow_upvr (readonly)
		[11]: getFFlagChatWindowGetSpatialUiContextFromProps_upvr (readonly)
		[12]: ChatInput_upvr (readonly)
		[13]: ChannelBar_upvr (readonly)
		[14]: FFlagEnableFocusNavigation_upvr (readonly)
		[15]: ReactFocusNavigation_upvr (readonly)
		[16]: CursorProvider_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	local chatWindowSettings = arg1.props.chatWindowSettings
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [66] 49. Error Block 96 start (CF ANALYSIS FAILED)
	local var45 = Config_upvr.ChatWindowSize.X.Scale * chatWindowSettings.WidthScale
	local udim2 = UDim2.fromScale(var45, Config_upvr.ChatWindowSize.Y.Scale * chatWindowSettings.HeightScale)
	-- KONSTANTERROR: [66] 49. Error Block 96 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [50] 36. Error Block 112 start (CF ANALYSIS FAILED)
	if udim2 and not var45 then
	elseif not udim2 and var45 then
	else
	end
	-- KONSTANTERROR: [50] 36. Error Block 112 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [90] 64. Error Block 110 start (CF ANALYSIS FAILED)
	;({}).value = {
		isSpatialUIEnabled = arg1.props.isSpatialUIEnabled;
	}
	local tbl = {
		BackgroundColor3 = Color3.new(0, 0, 0);
		BackgroundTransparency = 1;
		Position = arg1.props.chatLayoutAlignment.Position;
		AnchorPoint = arg1.props.chatLayoutAlignment.AnchorPoint;
	}
	if isInExperienceUIVREnabled_upvr then
		-- KONSTANTWARNING: GOTO [177] #121
	end
	-- KONSTANTERROR: [90] 64. Error Block 110 end (CF ANALYSIS FAILED)
end
function any_extend_result1.willUnmount(arg1) -- Line 341
	--[[ Upvalues[1]:
		[1]: GetFFlagUnreduxChatTransparency_upvr (readonly)
	]]
	if GetFFlagUnreduxChatTransparency_upvr() then
		arg1.disposeBackgroundEffect()
		arg1.disposeTextEffect()
	end
	arg1.backgroundTransparencyMotor:destroy()
	arg1.textTransparencyMotor:destroy()
end
return any_extend_result1