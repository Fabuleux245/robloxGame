-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:04:45
-- Luau version 6, Types version 3
-- Time taken: 0.004362 seconds

local CorePackages = game:GetService("CorePackages")
local Roact_upvr = require(CorePackages.Packages.Roact)
local t = require(CorePackages.Packages.t)
local Cryo_upvr = require(CorePackages.Packages.Cryo)
local var5_upvr = require(script.Parent.Parent.Logger)(script.Name)
local any_extend_result1 = Roact_upvr.Component:extend("ChatBillboards")
any_extend_result1.validateProps = t.strictInterface({
	userMessages = t.map(t.string, t.array(t.string));
	bubbleChatEnabled = t.boolean;
	voiceEnabled = t.boolean;
	participants = t.map(t.string, t.string);
})
function any_extend_result1.getDerivedStateFromProps(arg1, arg2) -- Line 34
	--[[ Upvalues[1]:
		[1]: Cryo_upvr (readonly)
	]]
	local module = {}
	local userMessages = arg2.userMessages
	if not userMessages then
		userMessages = {}
	end
	module.userMessages = Cryo_upvr.Dictionary.join(userMessages, arg1.userMessages)
	return module
end
function any_extend_result1.init(arg1) -- Line 43
	--[[ Upvalues[2]:
		[1]: var5_upvr (readonly)
		[2]: Cryo_upvr (readonly)
	]]
	var5_upvr:debug("Initializing")
	arg1:setState({
		userMessages = {};
	})
	function arg1.onBillboardFadeOut(arg1_2) -- Line 49
		--[[ Upvalues[2]:
			[1]: arg1 (readonly)
			[2]: Cryo_upvr (copied, readonly)
		]]
		arg1:setState({
			userMessages = Cryo_upvr.Dictionary.join(arg1.state.userMessages, {
				[arg1_2] = Cryo_upvr.None;
			});
		})
	end
end
local any_GetFFlagAvatarChatCoreScriptSupport_result1_upvr = require(CorePackages.Workspace.Packages.SharedFlags).GetFFlagAvatarChatCoreScriptSupport()
local Constants_upvr = require(script.Parent.Parent.Constants)
local Players_upvr = game:GetService("Players")
local BubbleChatBillboard_upvr = require(script.Parent.BubbleChatBillboard)
function any_extend_result1.render(arg1) -- Line 56
	--[[ Upvalues[6]:
		[1]: any_GetFFlagAvatarChatCoreScriptSupport_result1_upvr (readonly)
		[2]: Constants_upvr (readonly)
		[3]: Players_upvr (readonly)
		[4]: var5_upvr (readonly)
		[5]: Roact_upvr (readonly)
		[6]: BubbleChatBillboard_upvr (readonly)
	]]
	if not arg1.props.voiceEnabled and not arg1.props.bubbleChatEnabled and not any_GetFFlagAvatarChatCoreScriptSupport_result1_upvr then return end
	for i, _ in pairs(arg1.state.userMessages) do
		({})[i] = false
		local var34
	end
	for i_2, v_2 in pairs(arg1.props.participants) do
		if v_2 ~= Constants_upvr.VOICE_STATE.HIDDEN then
			var34[i_2] = true
		end
	end
	if any_GetFFlagAvatarChatCoreScriptSupport_result1_upvr then
		i_2 = Players_upvr
		var34[tostring(i_2.LocalPlayer.UserId)] = true
	end
	for i_3, v_3 in pairs(var34) do
		var5_upvr:trace("Rendering billboard for ...{}", string.sub(tostring(i_3), -4))
		;({})["BubbleChat_"..i_3] = Roact_upvr.createElement(BubbleChatBillboard_upvr, {
			userId = i_3;
			onFadeOut = arg1.onBillboardFadeOut;
			voiceEnabled = arg1.props.voiceEnabled and v_3;
			bubbleChatEnabled = arg1.props.bubbleChatEnabled;
		})
		local var43
	end
	return Roact_upvr.createElement("ScreenGui", {
		ResetOnSpawn = false;
	}, var43)
end
local GetFFlagBubbleVoiceIndicatorSetting_upvr = require(game:GetService("CoreGui"):WaitForChild("RobloxGui").Modules.Flags.GetFFlagBubbleVoiceIndicatorSetting)
return require(CorePackages.Packages.RoactRodux).connect(function(arg1) -- Line 100, Named "mapStateToProps"
	--[[ Upvalues[1]:
		[1]: GetFFlagBubbleVoiceIndicatorSetting_upvr (readonly)
	]]
	local voiceEnabled_2 = arg1.components.voiceEnabled
	if GetFFlagBubbleVoiceIndicatorSetting_upvr() then
		local voiceEnabled = arg1.components.voiceEnabled
		if voiceEnabled then
			voiceEnabled = arg1.chatSettings.Voice.ShowIndicator
		end
		voiceEnabled_2 = voiceEnabled
	end
	return {
		userMessages = arg1.userMessages;
		voiceEnabled = voiceEnabled_2;
		bubbleChatEnabled = arg1.components.bubbleChatEnabled;
		participants = arg1.voiceState;
	}
end)(any_extend_result1)