-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:55:46
-- Luau version 6, Types version 3
-- Time taken: 0.003940 seconds

local CorePackages = game:GetService("CorePackages")
local CrossExperienceVoice = require(CorePackages.Workspace.Packages.CrossExperienceVoice)
local VoiceChat_upvr = require(CorePackages.Workspace.Packages.VoiceChat)
local function getLoadingIndicatorIcon_upvr(arg1, arg2, arg3, arg4, arg5) -- Line 24, Named "getLoadingIndicatorIcon"
	--[[ Upvalues[1]:
		[1]: VoiceChat_upvr (readonly)
	]]
	if not arg3 or not arg1 or arg2 then
		return VoiceChat_upvr.Utils.GetIcon("Muted", "MicLight")
	end
	if arg4 then
		return VoiceChat_upvr.Utils.GetIcon("Unmuted", "MicLight", arg5)
	end
	return VoiceChat_upvr.Utils.GetIcon("Unmuted0", "MicLight")
end
local Players_upvr = game:GetService("Players")
local useIsVoiceConnected_upvr = CrossExperienceVoice.Hooks.useIsVoiceConnected
local useParticipant_upvr = CrossExperienceVoice.Hooks.useParticipant
local useIsActiveParticipant_upvr = CrossExperienceVoice.Hooks.useIsActiveParticipant
local React_upvr = require(CorePackages.Packages.React)
local useIsParticipantMuted_upvr = CrossExperienceVoice.Hooks.useIsParticipantMuted
local HttpService_upvr = game:GetService("HttpService")
local game_DefineFastInt_result1_upvr = game:DefineFastInt("PartyMicVoiceIndicatorFrameBuffer", 3)
local RunService_upvr = game:GetService("RunService")
local ImageSetLabel_upvr = require(CorePackages.Packages.UIBlox).Core.ImageSet.ImageSetLabel
function PartyMicIcon(arg1) -- Line 40
	--[[ Upvalues[11]:
		[1]: Players_upvr (readonly)
		[2]: useIsVoiceConnected_upvr (readonly)
		[3]: useParticipant_upvr (readonly)
		[4]: useIsActiveParticipant_upvr (readonly)
		[5]: React_upvr (readonly)
		[6]: useIsParticipantMuted_upvr (readonly)
		[7]: HttpService_upvr (readonly)
		[8]: game_DefineFastInt_result1_upvr (readonly)
		[9]: RunService_upvr (readonly)
		[10]: getLoadingIndicatorIcon_upvr (readonly)
		[11]: ImageSetLabel_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local var14
	local function INLINED() -- Internal function, doesn't exist in bytecode
		var14 = Players_upvr.LocalPlayer.UserId
		return var14
	end
	if not Players_upvr or not Players_upvr.LocalPlayer or not INLINED() then
		var14 = -1
	end
	local var5_result1_upvr = useIsVoiceConnected_upvr()
	local var6_result1_upvr = useParticipant_upvr(var14)
	local var7_result1_upvr = useIsActiveParticipant_upvr(var14)
	local any_useRef_result1_upvr = React_upvr.useRef(var7_result1_upvr)
	if useIsParticipantMuted_upvr(var14) ~= true then
		local _ = false
		-- KONSTANTWARNING: Skipped task `defvar` above
	else
	end
	local any_useState_result1_upvr, any_useState_result2_upvr = React_upvr.useState(0)
	React_upvr.useEffect(function() -- Line 53
		--[[ Upvalues[2]:
			[1]: var6_result1_upvr (readonly)
			[2]: arg1 (readonly)
		]]
		if var6_result1_upvr then
			arg1.isLocalPlayerMutedSignal:fire(var6_result1_upvr.isMuted)
		end
	end, {var6_result1_upvr})
	React_upvr.useEffect(function() -- Line 59
		--[[ Upvalues[2]:
			[1]: arg1 (readonly)
			[2]: var5_result1_upvr (readonly)
		]]
		arg1.isVoiceConnectedSignal:fire(var5_result1_upvr)
	end, {var5_result1_upvr})
	local any_useRef_result1_upvr_2 = React_upvr.useRef(0)
	React_upvr.useEffect(function() -- Line 74
		--[[ Upvalues[2]:
			[1]: any_useRef_result1_upvr (readonly)
			[2]: var7_result1_upvr (readonly)
		]]
		any_useRef_result1_upvr.current = var7_result1_upvr
	end, {var7_result1_upvr})
	local any_useMemo_result1_upvr = React_upvr.useMemo(function() -- Line 49
		--[[ Upvalues[1]:
			[1]: HttpService_upvr (copied, readonly)
		]]
		return HttpService_upvr:GenerateGUID()
	end, {})
	local any_useCallback_result1_upvr = React_upvr.useCallback(function() -- Line 63
		--[[ Upvalues[4]:
			[1]: any_useRef_result1_upvr (readonly)
			[2]: any_useRef_result1_upvr_2 (readonly)
			[3]: game_DefineFastInt_result1_upvr (copied, readonly)
			[4]: any_useState_result2_upvr (readonly)
		]]
		if any_useRef_result1_upvr.current then
			if game_DefineFastInt_result1_upvr < any_useRef_result1_upvr_2.current then
				any_useState_result2_upvr(math.random())
				any_useRef_result1_upvr_2.current = 0
				return
			end
			any_useRef_result1_upvr_2.current += 1
		end
	end, {})
	React_upvr.useEffect(function() -- Line 78
		--[[ Upvalues[3]:
			[1]: RunService_upvr (copied, readonly)
			[2]: any_useMemo_result1_upvr (readonly)
			[3]: any_useCallback_result1_upvr (readonly)
		]]
		RunService_upvr:BindToRenderStep(any_useMemo_result1_upvr, 1, any_useCallback_result1_upvr)
		return function() -- Line 81
			--[[ Upvalues[2]:
				[1]: RunService_upvr (copied, readonly)
				[2]: any_useMemo_result1_upvr (copied, readonly)
			]]
			RunService_upvr:UnbindFromRenderStep(any_useMemo_result1_upvr)
		end
	end, {})
	local var36_upvr = true
	return React_upvr.createElement("Frame", {
		Size = UDim2.new(0, 36, 0, 36);
		BorderSizePixel = 0;
		BackgroundTransparency = 1;
	}, {
		UICorner = React_upvr.createElement("UICorner", {
			CornerRadius = UDim.new(1, 0);
		});
		Icon = React_upvr.createElement(ImageSetLabel_upvr, {
			AnchorPoint = Vector2.new(0.5, 0.5);
			Position = UDim2.fromScale(0.5, 0.5);
			Size = UDim2.fromOffset(36, 36);
			BackgroundTransparency = 1;
			Image = React_upvr.useMemo(function() -- Line 86
				--[[ Upvalues[6]:
					[1]: getLoadingIndicatorIcon_upvr (copied, readonly)
					[2]: var6_result1_upvr (readonly)
					[3]: var36_upvr (readonly)
					[4]: var5_result1_upvr (readonly)
					[5]: var7_result1_upvr (readonly)
					[6]: any_useState_result1_upvr (readonly)
				]]
				return getLoadingIndicatorIcon_upvr(var6_result1_upvr, var36_upvr, var5_result1_upvr, var7_result1_upvr, any_useState_result1_upvr)
			end, {var6_result1_upvr, var36_upvr, var5_result1_upvr, var7_result1_upvr, any_useState_result1_upvr});
		}, {React_upvr.createElement("UICorner", {
			Name = "Corner";
			CornerRadius = UDim.new(1, 0);
		})});
	})
end
return PartyMicIcon