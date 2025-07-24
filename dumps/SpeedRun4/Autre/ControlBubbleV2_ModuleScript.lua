-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:04:48
-- Luau version 6, Types version 3
-- Time taken: 0.003990 seconds

local CorePackages = game:GetService("CorePackages")
local UIBlox_upvr = require(CorePackages.Packages.UIBlox)
local pcall_result1, pcall_result2 = pcall(function() -- Line 16
	--[[ Upvalues[1]:
		[1]: UIBlox_upvr (readonly)
	]]
	return UIBlox_upvr.Core.ImageSet.ImageSetLabel
end)
local var6_upvr
local function INLINED() -- Internal function, doesn't exist in bytecode
	var6_upvr = pcall_result2
	return var6_upvr
end
if not pcall_result1 or not INLINED() then
	var6_upvr = UIBlox_upvr.Core.ImageSet.ImageSetLabel
end
local var7_upvw = 0.6
if game:DefineFastFlag("EnableDarkerShimmerTransparencyLegacyChatService", false) then
	var7_upvw = 0.4
end
local TweenService_upvr = game:GetService("TweenService")
local function createTweenShimmeringEffect_upvr(arg1) -- Line 49, Named "createTweenShimmeringEffect"
	--[[ Upvalues[1]:
		[1]: TweenService_upvr (readonly)
	]]
	return TweenService_upvr:Create(arg1:getValue(), TweenInfo.new(1, Enum.EasingStyle.Circular, Enum.EasingDirection.Out, -1), {
		Offset = Vector2.new(1, 0);
	})
end
local React_upvr = require(CorePackages.Packages.React)
local getFFlagEnableShimmeringIconLegacyChatService_upvr = require(game:GetService("CoreGui").RobloxGui.Modules.Flags.getFFlagEnableShimmeringIconLegacyChatService)
local RunService_upvr = game:GetService("RunService")
local vector2_upvr = Vector2.new(-1, 0)
local getVoiceIndicatorAssetName_upvr = require(script.Parent.Parent.Helpers.getVoiceIndicatorAssetName)
local Images_upvr = UIBlox_upvr.App.ImageSet.Images
return function(arg1) -- Line 57
	--[[ Upvalues[9]:
		[1]: React_upvr (readonly)
		[2]: getFFlagEnableShimmeringIconLegacyChatService_upvr (readonly)
		[3]: RunService_upvr (readonly)
		[4]: createTweenShimmeringEffect_upvr (readonly)
		[5]: vector2_upvr (readonly)
		[6]: getVoiceIndicatorAssetName_upvr (readonly)
		[7]: var6_upvr (readonly)
		[8]: Images_upvr (readonly)
		[9]: var7_upvw (read and write)
	]]
	local any_useState_result1, any_useState_result2_upvr = React_upvr.useState(0)
	local any_useRef_result1_upvw = React_upvr.useRef(nil)
	if getFFlagEnableShimmeringIconLegacyChatService_upvr() then
		local any_useRef_result1_upvw_2 = React_upvr.useRef(nil)
		any_useRef_result1_upvw = React_upvr.useRef(nil)
		React_upvr.useEffect(function() -- Line 65
			--[[ Upvalues[2]:
				[1]: any_useRef_result1_upvw_2 (read and write)
				[2]: any_useRef_result1_upvw (read and write)
			]]
			if any_useRef_result1_upvw_2.current then
				local class_UIGradient_2 = any_useRef_result1_upvw_2.current:FindFirstChildWhichIsA("UIGradient", true)
				if class_UIGradient_2 then
					any_useRef_result1_upvw.current = class_UIGradient_2
				end
			end
		end, {any_useRef_result1_upvw_2})
	end
	React_upvr.useEffect(function() -- Line 75
		--[[ Upvalues[7]:
			[1]: arg1 (readonly)
			[2]: RunService_upvr (copied, readonly)
			[3]: any_useState_result2_upvr (readonly)
			[4]: getFFlagEnableShimmeringIconLegacyChatService_upvr (copied, readonly)
			[5]: any_useRef_result1_upvw (read and write)
			[6]: createTweenShimmeringEffect_upvr (copied, readonly)
			[7]: vector2_upvr (copied, readonly)
		]]
		if arg1.voiceState then
			if arg1.voiceState == "Talking" and arg1.renderStepName then
				RunService_upvr:BindToRenderStep(arg1.renderStepName, 1, function() -- Line 77
					--[[ Upvalues[1]:
						[1]: any_useState_result2_upvr (copied, readonly)
					]]
					any_useState_result2_upvr(math.random())
				end)
				return function() -- Line 81
					--[[ Upvalues[2]:
						[1]: RunService_upvr (copied, readonly)
						[2]: arg1 (copied, readonly)
					]]
					RunService_upvr:UnbindFromRenderStep(arg1.renderStepName)
				end
			end
		end
		if getFFlagEnableShimmeringIconLegacyChatService_upvr() and arg1.voiceState and arg1.voiceState == "Connecting" and any_useRef_result1_upvw then
			local createTweenShimmeringEffect_upvr_result1_upvr = createTweenShimmeringEffect_upvr(any_useRef_result1_upvw)
			createTweenShimmeringEffect_upvr_result1_upvr:Play()
			return function() -- Line 93
				--[[ Upvalues[3]:
					[1]: createTweenShimmeringEffect_upvr_result1_upvr (readonly)
					[2]: any_useRef_result1_upvw (copied, read and write)
					[3]: vector2_upvr (copied, readonly)
				]]
				createTweenShimmeringEffect_upvr_result1_upvr:Cancel()
				if any_useRef_result1_upvw and any_useRef_result1_upvw.current then
					any_useRef_result1_upvw.current.Offset = vector2_upvr
				end
			end
		end
		function createTweenShimmeringEffect_upvr_result1_upvr() -- Line 101
			--[[ Upvalues[2]:
				[1]: arg1 (copied, readonly)
				[2]: RunService_upvr (copied, readonly)
			]]
			if arg1.renderStepName then
				RunService_upvr:UnbindFromRenderStep(arg1.renderStepName)
			end
		end
		return createTweenShimmeringEffect_upvr_result1_upvr
	end, {arg1.voiceState})
	local iconAssetName = arg1.iconAssetName
	if not iconAssetName then
		iconAssetName = getVoiceIndicatorAssetName_upvr(arg1.voiceState, any_useState_result1, arg1.iconStyle)
	end
	local module = {
		UICorner = React_upvr.createElement("UICorner", {
			CornerRadius = UDim.new(0, arg1.cornerRadiusOffset);
		});
	}
	local tbl_2 = {
		UICorner = React_upvr.createElement("UICorner", {
			CornerRadius = UDim.new(0, arg1.cornerRadiusOffset);
		});
	}
	local tbl_3 = {}
	local getFFlagEnableShimmeringIconLegacyChatService_upvr_result1 = getFFlagEnableShimmeringIconLegacyChatService_upvr()
	if getFFlagEnableShimmeringIconLegacyChatService_upvr_result1 then
		getFFlagEnableShimmeringIconLegacyChatService_upvr_result1 = React_upvr.createElement
		local tbl = {}
		local ColorSequence_new_result1 = ColorSequence.new({ColorSequenceKeypoint.new(0, Color3.new(var7_upvw, var7_upvw, var7_upvw)), ColorSequenceKeypoint.new(0.5, Color3.new(0.8, 0.8, 0.8)), ColorSequenceKeypoint.new(1, Color3.new(var7_upvw, var7_upvw, var7_upvw))})
		tbl.Color = ColorSequence_new_result1
		if arg1.voiceState ~= "Connecting" then
			ColorSequence_new_result1 = false
		else
			ColorSequence_new_result1 = true
		end
		tbl.Enabled = ColorSequence_new_result1
		tbl.Rotation = -45
		tbl.Offset = vector2_upvr
		getFFlagEnableShimmeringIconLegacyChatService_upvr_result1 = getFFlagEnableShimmeringIconLegacyChatService_upvr_result1("UIGradient", tbl)
	end
	tbl_3.ShimmerGradient = getFFlagEnableShimmeringIconLegacyChatService_upvr_result1
	tbl_2.Icon = React_upvr.createElement(var6_upvr, {
		AnchorPoint = Vector2.new(0.5, 0.5);
		Position = UDim2.fromScale(0.5, 0.5);
		Size = arg1.iconSize;
		BackgroundTransparency = 1;
		ImageTransparency = arg1.iconTransparency;
		BorderSizePixel = 0;
		Image = Images_upvr[iconAssetName];
	}, tbl_3)
	module.Contents = React_upvr.createElement("Frame", {
		Size = UDim2.fromScale(1, 1);
		BorderSizePixel = 0;
		BackgroundTransparency = 1;
	}, tbl_2)
	return React_upvr.createElement("ImageButton", {
		AnchorPoint = Vector2.new(0.5, 1);
		Size = arg1.controlBubbleSize;
		LayoutOrder = arg1.LayoutOrder;
		BorderSizePixel = 0;
		Transparency = 1;
		ZIndex = 2;
		[React_upvr.Event.Activated] = arg1.onActivated;
		BackgroundTransparency = 1;
		ref = getFFlagEnableShimmeringIconLegacyChatService_upvr() and any_useRef_result1_upvw_2;
	}, module)
end