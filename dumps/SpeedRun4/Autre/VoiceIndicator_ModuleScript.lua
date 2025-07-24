-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:42:55
-- Luau version 6, Types version 3
-- Time taken: 0.004273 seconds

local CorePackages = game:GetService("CorePackages")
local RunService_upvr = game:GetService("RunService")
local RobloxGui = game:GetService("CoreGui"):WaitForChild("RobloxGui")
local UIBlox = require(CorePackages.Packages.UIBlox)
local var5_upvw = require(RobloxGui.Modules.InGameChat.BubbleChat.Logger)(script.Name)
local Roact_upvr = require(CorePackages.Packages.Roact)
local t = require(CorePackages.Packages.t)
local Constants_upvw = require(RobloxGui.Modules.InGameChat.BubbleChat.Constants)
if require(RobloxGui.Modules.Flags.GetFFlagRemoveInGameChatBubbleChatReferences)() then
	var5_upvw = require(RobloxGui.Modules.VoiceChat.Logger)(script.Name)
	Constants_upvw = require(RobloxGui.Modules.VoiceChat.Constants)
end
local any_extend_result1 = Roact_upvr.PureComponent:extend("VoiceIndicator")
any_extend_result1.validateProps = t.strictInterface({
	onClicked = t.optional(t.callback);
	userId = t.string;
	hideOnError = t.optional(t.boolean);
	size = t.optional(t.UDim2);
	iconStyle = t.optional(t.union(t.literal("MicDark"), t.literal("MicLight"), t.literal("SpeakerDark"), t.literal("SpeakerLight")));
	iconTransparency = t.optional(t.union(t.number, t.table));
	voiceState = t.string;
})
any_extend_result1.defaultProps = {}
function any_extend_result1.getIcon(arg1, arg2) -- Line 55
	return "rbxasset://textures/ui/VoiceChat/"..arg2..".png"
end
local HttpService_upvr = game:GetService("HttpService")
local default_upvr = require(RobloxGui.Modules.VoiceChat.VoiceChatServiceManager).default
function any_extend_result1.init(arg1) -- Line 59
	--[[ Upvalues[5]:
		[1]: Roact_upvr (readonly)
		[2]: HttpService_upvr (readonly)
		[3]: RunService_upvr (readonly)
		[4]: Constants_upvw (read and write)
		[5]: default_upvr (readonly)
	]]
	local any_createBinding_result1_2, any_createBinding_result2_2 = Roact_upvr.createBinding(0)
	arg1.level = any_createBinding_result1_2
	arg1.updateLevel = any_createBinding_result2_2
	local any_createBinding_result1, any_createBinding_result2 = Roact_upvr.createBinding(arg1.props.voiceState)
	arg1.voiceState = any_createBinding_result1
	arg1.updateVoiceState = any_createBinding_result2
	arg1.renderStepName = HttpService_upvr:GenerateGUID()
	RunService_upvr:BindToRenderStep(arg1.renderStepName, 1, function() -- Line 66
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		arg1.updateLevel(math.random())
	end)
	arg1.levelIcon = Roact_upvr.joinBindings({arg1.voiceState, arg1.level}):map(function(arg1_2) -- Line 70
		--[[ Upvalues[3]:
			[1]: Constants_upvw (copied, read and write)
			[2]: default_upvr (copied, readonly)
			[3]: arg1 (readonly)
		]]
		local _1 = arg1_2[1]
		if _1 == Constants_upvw.VOICE_STATE.MUTED or _1 == Constants_upvw.VOICE_STATE.LOCAL_MUTED then
			return default_upvr:GetIcon("Muted", arg1.props.iconStyle)
		end
		if _1 == Constants_upvw.VOICE_STATE.CONNECTING then
			return default_upvr:GetIcon("Connecting", arg1.props.iconStyle)
		end
		if _1 == Constants_upvw.VOICE_STATE.INACTIVE then
			return default_upvr:GetIcon("Unmuted0", arg1.props.iconStyle)
		end
		if _1 == Constants_upvw.VOICE_STATE.TALKING then
			return default_upvr:GetIcon("Unmuted"..tostring(math.floor(arg1_2[2] * 5 + 0.5) * 20), arg1.props.iconStyle)
		end
		return default_upvr:GetIcon("Error", arg1.props.iconStyle)
	end)
end
local ReactIs_upvr = require(CorePackages.Packages.ReactIs)
local CursorKind_upvr = UIBlox.App.SelectionImage.CursorKind
function any_extend_result1.renderWithSelectionCursor(arg1, arg2) -- Line 90
	--[[ Upvalues[4]:
		[1]: Constants_upvw (read and write)
		[2]: ReactIs_upvr (readonly)
		[3]: Roact_upvr (readonly)
		[4]: CursorKind_upvr (readonly)
	]]
	local var23 = true
	local var24_upvr
	if var24_upvr ~= Constants_upvw.VOICE_STATE.ERROR then
		var24_upvr = arg1.props.voiceState
		if var24_upvr ~= Constants_upvw.VOICE_STATE.HIDDEN then
			var23 = false
		else
			var23 = true
		end
	end
	var24_upvr = arg1.props.hideOnError
	local function INLINED() -- Internal function, doesn't exist in bytecode
		var24_upvr = arg1.props.voiceState
		return var24_upvr
	end
	if var24_upvr and (not INLINED() or var23) then
		var24_upvr = nil
		return var24_upvr
	end
	if arg1.props.voiceState == Constants_upvw.VOICE_STATE.LOCAL_MUTED then
		var24_upvr = 0.5
	else
		var24_upvr = 0
	end
	if arg1.props.iconTransparency then
		if ReactIs_upvr.isBinding(arg1.props.iconTransparency) then
			var24_upvr = arg1.props.iconTransparency:map(function(arg1_3) -- Line 102
				--[[ Upvalues[1]:
					[1]: var24_upvr (readonly)
				]]
				return 1 - (1 - arg1_3) * (1 - var24_upvr)
			end)
		else
			var24_upvr = 1 - (1 - arg1.props.iconTransparency) * (1 - var24_upvr)
		end
	end
	local module = {}
	local size = arg1.props.size
	if not size then
		size = UDim2.fromOffset(28, 28)
	end
	module.Size = size
	module.BackgroundTransparency = 1
	module.BorderSizePixel = 0
	module.Image = arg1.levelIcon
	module.ImageTransparency = var24_upvr
	module.SelectionImageObject = arg2(CursorKind_upvr.RoundedRectNoInset)
	module[Roact_upvr.Event.Activated] = arg1.props.onClicked
	return Roact_upvr.createElement("ImageButton", module)
end
local withSelectionCursorProvider_upvr = UIBlox.App.SelectionImage.withSelectionCursorProvider
function any_extend_result1.render(arg1) -- Line 121
	--[[ Upvalues[1]:
		[1]: withSelectionCursorProvider_upvr (readonly)
	]]
	return withSelectionCursorProvider_upvr(function(arg1_4) -- Line 122
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		return arg1:renderWithSelectionCursor(arg1_4)
	end)
end
function any_extend_result1.didUpdate(arg1, arg2, arg3) -- Line 127
	--[[ Upvalues[1]:
		[1]: var5_upvw (read and write)
	]]
	var5_upvw:trace("Voice state updated to {} for ...{}", arg1.props.voiceState, string.sub(tostring(arg1.props.userId), -4))
	if arg2.voiceState ~= arg1.props.voiceState then
		arg1.updateVoiceState(arg1.props.voiceState)
	end
end
function any_extend_result1.willUnmount(arg1) -- Line 134
	--[[ Upvalues[1]:
		[1]: RunService_upvr (readonly)
	]]
	pcall(function() -- Line 135
		--[[ Upvalues[2]:
			[1]: RunService_upvr (copied, readonly)
			[2]: arg1 (readonly)
		]]
		RunService_upvr:UnbindFromRenderStep(arg1.renderStepName)
	end)
end
return require(CorePackages.Packages.RoactRodux).connect(function(arg1, arg2) -- Line 140, Named "mapStateToProps"
	return {
		voiceState = arg1.voiceState[arg2.userId];
	}
end)(any_extend_result1)