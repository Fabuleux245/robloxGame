-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:42:56
-- Luau version 6, Types version 3
-- Time taken: 0.004234 seconds

local CorePackages = game:GetService("CorePackages")
local RobloxGui = game:GetService("CoreGui"):WaitForChild("RobloxGui")
local Roact_upvr = require(CorePackages.Packages.Roact)
local React_upvr = require(CorePackages.Packages.React)
local UIBlox = require(CorePackages.Packages.UIBlox)
local Constants_upvw = require(RobloxGui.Modules.InGameChat.BubbleChat.Constants)
local default_upvr = require(RobloxGui.Modules.VoiceChat.VoiceChatServiceManager).default
local game_DefineFastFlag_result1_upvr = game:DefineFastFlag("VoiceToggleShowConnectingIconWhenHidden", false)
if require(RobloxGui.Modules.Flags.GetFFlagRemoveInGameChatBubbleChatReferences)() then
	Constants_upvw = require(RobloxGui.Modules.VoiceChat.Constants)
end
local function _(arg1) -- Line 38, Named "useJoinBinding"
	--[[ Upvalues[2]:
		[1]: React_upvr (readonly)
		[2]: Roact_upvr (readonly)
	]]
	return React_upvr.useMemo(function() -- Line 39
		--[[ Upvalues[2]:
			[1]: Roact_upvr (copied, readonly)
			[2]: arg1 (readonly)
		]]
		return Roact_upvr.joinBindings(arg1)
	end, {})
end
local function _(arg1, arg2) -- Line 44, Named "mapLevelToIcon"
	--[[ Upvalues[3]:
		[1]: Constants_upvw (read and write)
		[2]: default_upvr (readonly)
		[3]: game_DefineFastFlag_result1_upvr (readonly)
	]]
	return function(arg1_2) -- Line 46
		--[[ Upvalues[5]:
			[1]: Constants_upvw (copied, read and write)
			[2]: default_upvr (copied, readonly)
			[3]: arg1 (readonly)
			[4]: game_DefineFastFlag_result1_upvr (copied, readonly)
			[5]: arg2 (readonly)
		]]
		-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
		local _1 = arg1_2[1]
		-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [9] 7. Error Block 2 start (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [9] 7. Error Block 2 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [16] 11. Error Block 29 start (CF ANALYSIS FAILED)
		do
			return default_upvr:GetIcon("Muted", arg1)
		end
		-- KONSTANTERROR: [16] 11. Error Block 29 end (CF ANALYSIS FAILED)
	end
end
local tbl_upvr = {
	[Constants_upvw.VOICE_STATE.ERROR] = true;
	[Constants_upvw.VOICE_STATE.HIDDEN] = true;
}
local HttpService_upvr = game:GetService("HttpService")
local function GenerateGUID_upvr() -- Line 77, Named "GenerateGUID"
	--[[ Upvalues[1]:
		[1]: HttpService_upvr (readonly)
	]]
	return HttpService_upvr:GenerateGUID()
end
local TweenService_upvr = game:GetService("TweenService")
local function createTweenShimmeringEffect_upvr(arg1) -- Line 93, Named "createTweenShimmeringEffect"
	--[[ Upvalues[1]:
		[1]: TweenService_upvr (readonly)
	]]
	return TweenService_upvr:Create(arg1:getValue(), TweenInfo.new(1, Enum.EasingStyle.Circular, Enum.EasingDirection.Out, -1), {
		Offset = Vector2.new(1, 0);
	})
end
local useVoiceState_upvr = require(RobloxGui.Modules.VoiceChat.Hooks.useVoiceState)
local RunService_upvr = game:GetService("RunService")
local ReactIs_upvr = require(CorePackages.Packages.ReactIs)
local udim2_upvr = UDim2.fromOffset(28, 28)
local useSelectionCursor_upvr = UIBlox.App.SelectionImage.useSelectionCursor
local CursorKind_upvr = UIBlox.App.SelectionImage.CursorKind
return function(arg1) -- Line 101, Named "VoiceIndicator"
	--[[ Upvalues[14]:
		[1]: useVoiceState_upvr (readonly)
		[2]: React_upvr (readonly)
		[3]: Roact_upvr (readonly)
		[4]: GenerateGUID_upvr (readonly)
		[5]: Constants_upvw (read and write)
		[6]: createTweenShimmeringEffect_upvr (readonly)
		[7]: RunService_upvr (readonly)
		[8]: tbl_upvr (readonly)
		[9]: ReactIs_upvr (readonly)
		[10]: default_upvr (readonly)
		[11]: game_DefineFastFlag_result1_upvr (readonly)
		[12]: udim2_upvr (readonly)
		[13]: useSelectionCursor_upvr (readonly)
		[14]: CursorKind_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 52 start (CF ANALYSIS FAILED)
	local useVoiceState_upvr_result1 = useVoiceState_upvr(arg1.userId, arg1.disable or false)
	local any_useBinding_result1, any_useBinding_result2_2 = React_upvr.useBinding(0)
	if arg1.selectable ~= nil then
	else
	end
	local any_useBinding_result1_2, any_useBinding_result2 = React_upvr.useBinding(useVoiceState_upvr_result1)
	local module_upvr = {any_useBinding_result1_2, any_useBinding_result1}
	local function _() -- Line 39
		--[[ Upvalues[2]:
			[1]: Roact_upvr (copied, readonly)
			[2]: module_upvr (readonly)
		]]
		return Roact_upvr.joinBindings(module_upvr)
	end
	module_upvr = React_upvr.useRef(GenerateGUID_upvr()).current or ""
	any_useBinding_result2(useVoiceState_upvr_result1)
	if useVoiceState_upvr_result1 ~= Constants_upvw.VOICE_STATE.TALKING then
		-- KONSTANTWARNING: GOTO [62] #47
	end
	-- KONSTANTERROR: [0] 1. Error Block 52 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [61] 46. Error Block 57 start (CF ANALYSIS FAILED)
	if useVoiceState_upvr_result1 ~= Constants_upvw.VOICE_STATE.CONNECTING then
		-- KONSTANTWARNING: GOTO [71] #53
	end
	-- KONSTANTERROR: [61] 46. Error Block 57 end (CF ANALYSIS FAILED)
end