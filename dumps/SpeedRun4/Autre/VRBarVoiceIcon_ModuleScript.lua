-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:04:30
-- Luau version 6, Types version 3
-- Time taken: 0.005336 seconds

local CorePackages = game:GetService("CorePackages")
local RobloxGui = game:GetService("CoreGui"):WaitForChild("RobloxGui")
local Roact_upvr = require(CorePackages.Packages.Roact)
local React_upvr = require(CorePackages.Packages.React)
local Constants_upvw = require(RobloxGui.Modules.InGameChat.BubbleChat.Constants)
local default_upvr = require(RobloxGui.Modules.VoiceChat.VoiceChatServiceManager).default
if require(RobloxGui.Modules.Flags.GetFFlagRemoveInGameChatBubbleChatReferences)() then
	Constants_upvw = require(RobloxGui.Modules.VoiceChat.Constants)
end
local function _(arg1) -- Line 22, Named "useJoinBinding"
	--[[ Upvalues[2]:
		[1]: React_upvr (readonly)
		[2]: Roact_upvr (readonly)
	]]
	return React_upvr.useMemo(function() -- Line 23
		--[[ Upvalues[2]:
			[1]: Roact_upvr (copied, readonly)
			[2]: arg1 (readonly)
		]]
		return Roact_upvr.joinBindings(arg1)
	end, {})
end
local function _(arg1) -- Line 28, Named "mapLevelToIcon"
	--[[ Upvalues[2]:
		[1]: Constants_upvw (read and write)
		[2]: default_upvr (readonly)
	]]
	return function(arg1_2) -- Line 30
		--[[ Upvalues[3]:
			[1]: Constants_upvw (copied, read and write)
			[2]: default_upvr (copied, readonly)
			[3]: arg1 (readonly)
		]]
		local _1 = arg1_2[1]
		if _1 == Constants_upvw.VOICE_STATE.MUTED or _1 == Constants_upvw.VOICE_STATE.LOCAL_MUTED then
			return default_upvr:GetIcon("Muted", arg1)
		end
		if _1 == Constants_upvw.VOICE_STATE.CONNECTING then
			return default_upvr:GetIcon("Connecting", arg1)
		end
		if _1 == Constants_upvw.VOICE_STATE.INACTIVE then
			return default_upvr:GetIcon("Unmuted0", arg1)
		end
		if _1 == Constants_upvw.VOICE_STATE.TALKING then
			return default_upvr:GetIcon("Unmuted"..tostring(math.floor(0.5 + 5 * arg1_2[2]) * 20), arg1)
		end
		return default_upvr:GetIcon("Error", arg1)
	end
end
local HttpService_upvr = game:GetService("HttpService")
local function GenerateGUID_upvr() -- Line 48, Named "GenerateGUID"
	--[[ Upvalues[1]:
		[1]: HttpService_upvr (readonly)
	]]
	return HttpService_upvr:GenerateGUID()
end
local useVoiceState_upvr = require(RobloxGui.Modules.VoiceChat.Hooks.useVoiceState)
local RunService_upvr = game:GetService("RunService")
local udim2_upvr = UDim2.fromOffset(36, 36)
return function(arg1) -- Line 61, Named "VRBarVoiceIcon"
	--[[ Upvalues[8]:
		[1]: useVoiceState_upvr (readonly)
		[2]: React_upvr (readonly)
		[3]: Roact_upvr (readonly)
		[4]: GenerateGUID_upvr (readonly)
		[5]: Constants_upvw (read and write)
		[6]: RunService_upvr (readonly)
		[7]: default_upvr (readonly)
		[8]: udim2_upvr (readonly)
	]]
	local useVoiceState_upvr_result1 = useVoiceState_upvr(arg1.userId, arg1.disable or false)
	local any_useBinding_result1_2, any_useBinding_result2_upvr = React_upvr.useBinding(0)
	local any_useBinding_result1, any_useBinding_result2 = React_upvr.useBinding(useVoiceState_upvr_result1)
	local tbl_upvr = {any_useBinding_result1, any_useBinding_result1_2}
	tbl_upvr = React_upvr.useRef(GenerateGUID_upvr()).current or ""
	local var21_upvr = any_useBinding_result2
	var21_upvr(useVoiceState_upvr_result1)
	if useVoiceState_upvr_result1 ~= Constants_upvw.VOICE_STATE.TALKING then
		var21_upvr = false
	else
		var21_upvr = true
	end
	React_upvr.useEffect(function() -- Line 71
		--[[ Upvalues[4]:
			[1]: var21_upvr (readonly)
			[2]: RunService_upvr (copied, readonly)
			[3]: tbl_upvr (readonly)
			[4]: any_useBinding_result2_upvr (readonly)
		]]
		if var21_upvr then
			RunService_upvr:BindToRenderStep(tbl_upvr, 1, function() -- Line 73
				--[[ Upvalues[1]:
					[1]: any_useBinding_result2_upvr (copied, readonly)
				]]
				any_useBinding_result2_upvr(math.random())
			end)
		end
		return function() -- Line 77
			--[[ Upvalues[3]:
				[1]: var21_upvr (copied, readonly)
				[2]: RunService_upvr (copied, readonly)
				[3]: tbl_upvr (copied, readonly)
			]]
			if var21_upvr then
				RunService_upvr:UnbindFromRenderStep(tbl_upvr)
			end
		end
	end, {var21_upvr})
	local any_useMemo_result1_upvr = React_upvr.useMemo(function() -- Line 23
		--[[ Upvalues[2]:
			[1]: Roact_upvr (copied, readonly)
			[2]: tbl_upvr (readonly)
		]]
		return Roact_upvr.joinBindings(tbl_upvr)
	end, {})
	local module = {
		BackgroundTransparency = arg1.BackgroundTransparency or 1;
		Image = React_upvr.useMemo(function() -- Line 84
			--[[ Upvalues[4]:
				[1]: any_useMemo_result1_upvr (readonly)
				[2]: arg1 (readonly)
				[3]: Constants_upvw (copied, read and write)
				[4]: default_upvr (copied, readonly)
			]]
			local iconStyle_upvr = arg1.iconStyle
			return any_useMemo_result1_upvr:map(function(arg1_3) -- Line 30
				--[[ Upvalues[3]:
					[1]: Constants_upvw (copied, read and write)
					[2]: default_upvr (copied, readonly)
					[3]: iconStyle_upvr (readonly)
				]]
				local _1_2 = arg1_3[1]
				if _1_2 == Constants_upvw.VOICE_STATE.MUTED or _1_2 == Constants_upvw.VOICE_STATE.LOCAL_MUTED then
					return default_upvr:GetIcon("Muted", iconStyle_upvr)
				end
				if _1_2 == Constants_upvw.VOICE_STATE.CONNECTING then
					return default_upvr:GetIcon("Connecting", iconStyle_upvr)
				end
				if _1_2 == Constants_upvw.VOICE_STATE.INACTIVE then
					return default_upvr:GetIcon("Unmuted0", iconStyle_upvr)
				end
				if _1_2 == Constants_upvw.VOICE_STATE.TALKING then
					return default_upvr:GetIcon("Unmuted"..tostring(math.floor(0.5 + 5 * arg1_3[2]) * 20), iconStyle_upvr)
				end
				return default_upvr:GetIcon("Error", iconStyle_upvr)
			end)
		end, {arg1.iconStyle});
		ImageColor3 = arg1.ImageColor3;
		ImageTransparency = arg1.ImageTransparency;
		Position = arg1.Position;
	}
	local Size = arg1.Size
	if not Size then
		Size = udim2_upvr
	end
	module.Size = Size
	module[Roact_upvr.Children] = arg1[Roact_upvr.Children]
	return Roact_upvr.createElement("ImageLabel", module)
end