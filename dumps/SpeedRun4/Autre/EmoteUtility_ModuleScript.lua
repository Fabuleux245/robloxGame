-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:07:40
-- Luau version 6, Types version 3
-- Time taken: 0.025038 seconds

local game_DefineFastString_result1 = game:DefineFastString("EmoteUtilityFallbackKeyframeSequenceAssetId", "10921261056")
local RbxAnalyticsService_upvr = game:GetService("RbxAnalyticsService")
local module_5_upvr = {
	FallbackKeyframeSequenceAssetId = game_DefineFastString_result1;
	debugLoadAssetsFromFiles = false;
	mapAssetIdToFileName = nil;
	FALLBACK_KEYFRAME_SEQUENCE_ASSET_URL = "http://www.roblox.com/asset/?id="..game_DefineFastString_result1;
}
local tbl_8_upvw = {}
local function _() -- Line 68, Named "clearJointBlacklist"
	--[[ Upvalues[1]:
		[1]: tbl_8_upvw (read and write)
	]]
	tbl_8_upvw = {}
end
local function _(arg1) -- Line 72, Named "blacklistJoint"
	--[[ Upvalues[1]:
		[1]: tbl_8_upvw (read and write)
	]]
	tbl_8_upvw[arg1] = true
end
local function _(arg1) -- Line 76, Named "jointIsBlacklisted"
	--[[ Upvalues[1]:
		[1]: tbl_8_upvw (read and write)
	]]
	if not tbl_8_upvw[arg1] then
		return false
	end
	return true
end
local function _(arg1, arg2) -- Line 83, Named "getCameraOffset"
	return (math.sqrt(arg2.X ^ 2 + arg2.Y ^ 2 + arg2.Z ^ 2) / 2) * (1 / math.tan(math.rad(arg1) / 2))
end
local function _() -- Line 93, Named "isOnRCC"
	local pcall_result1_6, pcall_result2_6 = pcall(function() -- Line 99
		local game_8 = game
		if game_8.GetService(game, "ThumbnailGenerator") == nil then
			game_8 = false
		else
			game_8 = true
		end
		return game_8
	end)
	return pcall_result1_6 and pcall_result2_6
end
local function _(arg1, arg2) -- Line 109, Named "reportCounter"
	--[[ Upvalues[1]:
		[1]: RbxAnalyticsService_upvr (readonly)
	]]
	local var9
	local pcall_result1_8, pcall_result2_3 = pcall(function() -- Line 99
		local game_4 = game
		if game_4.GetService(game, "ThumbnailGenerator") == nil then
			game_4 = false
		else
			game_4 = true
		end
		return game_4
	end)
	local var14
	if pcall_result1_8 and pcall_result2_3 then
		var9 = "RCC"
	else
		var9 = "Client"
	end
	if arg2 then
		var14 = "Success"
	else
		var14 = "Failure"
	end
	RbxAnalyticsService_upvr:ReportCounter(var9..'_'..arg1..'_'..var14)
end
local function getAnimationAndIsIdle_upvr(arg1) -- Line 132, Named "getAnimationAndIsIdle"
	--[[ Upvalues[2]:
		[1]: module_5_upvr (readonly)
		[2]: RbxAnalyticsService_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 69 start (CF ANALYSIS FAILED)
	local var15 = true
	local var16
	if typeof(arg1) ~= "number" then
		if typeof(arg1) ~= "string" then
			var15 = false
		else
			var15 = true
		end
	end
	var16 = assert
	var16(var15, "getAnimationAndIsIdle expects animationAssetIdOrUrl to be a number or string")
	var16 = nil
	if typeof(arg1) == "number" then
		local any_LoadAsset_result1, any_LoadAsset_result2 = module_5_upvr.LoadAsset(arg1)
		local var19 = any_LoadAsset_result2
		if any_LoadAsset_result1 and var19 then
			var16 = var19:GetChildren()[1]
		end
		-- KONSTANTWARNING: GOTO [61] #51
	end
	-- KONSTANTERROR: [0] 1. Error Block 69 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [49] 40. Error Block 70 start (CF ANALYSIS FAILED)
	local pcall_result1_3, pcall_result2_8 = pcall(function() -- Line 151
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		return game:GetObjects(arg1)[1]
	end)
	local var23 = pcall_result1_3
	local var24 = pcall_result2_8
	local var33
	if var23 and var24 then
		var16 = var24
	end
	local const_string = "EmoteUtility_GetObjects"
	pcall_result2_8 = nil
	local var27 = pcall_result2_8
	var33 = nil
	local pcall_result1_9, pcall_result2_2 = pcall(function() -- Line 99
		local game_5 = game
		if game_5.GetService(game, "ThumbnailGenerator") == nil then
			game_5 = false
		else
			game_5 = true
		end
		return game_5
	end)
	if pcall_result1_9 and pcall_result2_2 then
		var27 = "RCC"
	else
		var27 = "Client"
	end
	if var23 then
		var33 = "Success"
	else
		var33 = "Failure"
	end
	RbxAnalyticsService_upvr:ReportCounter(var27..'_'..const_string..'_'..var33)
	if not var23 or not var16 then
		local var32
		function var33() -- Line 99
			local game_3 = game
			if game_3.GetService(game, "ThumbnailGenerator") == nil then
				game_3 = false
			else
				game_3 = true
			end
			return game_3
		end
		local pcall_result1, pcall_result2 = pcall(var33)
		if pcall_result1 and pcall_result2 then
			var32 = "RCC"
		else
			var32 = "Client"
		end
		pcall_result2 = "_Failed"
		local tbl_6 = {}
		tbl_6.animationAssetIdOrUrl = arg1
		RbxAnalyticsService_upvr:SendEventDeferred(var32, "EmoteUtility_getPoseAsset", const_string..pcall_result2, tbl_6)
		pcall_result2 = nil
		return nil, pcall_result2
	end
	assert(var16, "animation is non-nil. Silence type checker.")
	local var38 = false
	local var39
	if var39 == "Folder" then
		var38 = true
		pcall_result2 = "Pose"
		var39 = var16:FindFirstChild(pcall_result2, true)
		if not var39 then
			pcall_result2 = "pose"
			var39 = var16:FindFirstChild(pcall_result2, true)
		end
		if var39 == nil then
			local Idle = var16:FindFirstChild("Idle", true)
			if not Idle then
				Idle = var16:FindFirstChild("idle", true)
			end
		end
		if Idle then
			var16 = Idle:FindFirstChildWhichIsA("Animation", true)
		else
			var16 = var16:FindFirstChildWhichIsA("Animation", true)
		end
	end
	do
		return var16, var38
	end
	-- KONSTANTERROR: [49] 40. Error Block 70 end (CF ANALYSIS FAILED)
end
local AnimationClipProvider_upvr = game:GetService("AnimationClipProvider")
local function getAnimationClipByAssetId_upvr(arg1) -- Line 204, Named "getAnimationClipByAssetId"
	--[[ Upvalues[3]:
		[1]: module_5_upvr (readonly)
		[2]: AnimationClipProvider_upvr (readonly)
		[3]: RbxAnalyticsService_upvr (readonly)
	]]
	local var44
	local var45
	local var46
	if module_5_upvr.debugLoadAssetsFromFiles then
		var46 = arg1
		local string_gmatch_result1, string_gmatch_result2, string_gmatch_result3 = string.gmatch(var46, ".*id=([0-9]+)")
		local var50
		for i in string_gmatch_result1, string_gmatch_result2, string_gmatch_result3 do
			var50 = i
		end
		string_gmatch_result2 = var50
		assert(string_gmatch_result2, "assetId should be non-nil")
		string_gmatch_result2 = var50
		local tonumber_result1 = tonumber(string_gmatch_result2)
		string_gmatch_result2 = assert
		string_gmatch_result2(tonumber_result1, "assetIdAsNumber should be non-nil")
		string_gmatch_result2 = nil
		local any_LoadAsset_result1_2, any_LoadAsset_result2_2 = module_5_upvr.LoadAsset(tonumber_result1)
		var44 = any_LoadAsset_result1_2
		string_gmatch_result2 = any_LoadAsset_result2_2
		if var44 and string_gmatch_result2 then
			var45 = string_gmatch_result2
			-- KONSTANTWARNING: GOTO [55] #46
		end
	else
		var50 = pcall
		local function var54() -- Line 221
			--[[ Upvalues[2]:
				[1]: AnimationClipProvider_upvr (copied, readonly)
				[2]: arg1 (readonly)
			]]
			return AnimationClipProvider_upvr:GetAnimationClipAsync(arg1)
		end
		var50 = var50(var54)
		local var50_result1, var50_result2 = var50(var54)
		var44 = var50_result1
		var45 = var50_result2
	end
	var50_result2 = nil
	local var57 = var50_result2
	string_gmatch_result2 = nil
	local pcall_result1_5, pcall_result2_4 = pcall(function() -- Line 99
		local game_2 = game
		if game_2.GetService(game, "ThumbnailGenerator") == nil then
			game_2 = false
		else
			game_2 = true
		end
		return game_2
	end)
	if pcall_result1_5 and pcall_result2_4 then
		var57 = "RCC"
	else
		var57 = "Client"
	end
	if var44 then
		string_gmatch_result2 = "Success"
	else
		string_gmatch_result2 = "Failure"
	end
	RbxAnalyticsService_upvr:ReportCounter(var57..'_'.."EmoteUtility_GetAnimationClipAsync"..'_'..string_gmatch_result2)
	if not var44 then
		local var62
		string_gmatch_result2 = pcall
		local function var63() -- Line 99
			local game = game
			if game.GetService(game, "ThumbnailGenerator") == nil then
				game = false
			else
				game = true
			end
			return game
		end
		string_gmatch_result2 = string_gmatch_result2(var63)
		local string_gmatch_result2_result1, string_gmatch_result2_result2 = string_gmatch_result2(var63)
		if string_gmatch_result2_result1 and string_gmatch_result2_result2 then
			var62 = "RCC"
		else
			var62 = "Client"
		end
		local tbl_4 = {}
		tbl_4.keyframeSequenceId = arg1
		RbxAnalyticsService_upvr:SendEventDeferred(var62, "EmoteUtility_GetAnimationClip", "EmoteUtility_GetAnimationClip_GetAnimationClipAsyncFailed", tbl_4)
		return nil
	end
	return var45
end
local function _(arg1, arg2, arg3) -- Line 248, Named "trySetProperty"
	pcall(function() -- Line 249
		--[[ Upvalues[3]:
			[1]: arg1 (readonly)
			[2]: arg2 (readonly)
			[3]: arg3 (readonly)
		]]
		arg1[arg2] = arg3
	end)
end
local function applyControlsFolder_upvr(arg1, arg2, arg3) -- Line 257, Named "applyControlsFolder"
	if not arg2 then
	else
		assert(arg2, "parentPose is non-nil. Silence type checker.")
		local SOME = arg1:FindFirstChild(arg2.Name)
		if not SOME then return end
		local SOME_4_upvr = SOME:FindFirstChild(arg3.Name)
		if not SOME_4_upvr then return end
		for _, v_11 in arg3:GetChildren() do
			if v_11:IsA("NumberPose") then
				local Name_upvr = v_11.Name
				local Value_upvr = v_11.Value
				pcall(function() -- Line 249
					--[[ Upvalues[3]:
						[1]: SOME_4_upvr (readonly)
						[2]: Name_upvr (readonly)
						[3]: Value_upvr (readonly)
					]]
					SOME_4_upvr[Name_upvr] = Value_upvr
				end)
			end
		end
	end
end
local function applyKeyframeInner_upvr(arg1, arg2) -- Line 286, Named "applyKeyframeInner"
	--[[ Upvalues[3]:
		[1]: module_5_upvr (readonly)
		[2]: tbl_8_upvw (read and write)
		[3]: applyControlsFolder_upvr (readonly)
	]]
	local function recurApplyPoses_upvr(arg1_2, arg2_2) -- Line 287, Named "recurApplyPoses"
		--[[ Upvalues[5]:
			[1]: arg1 (readonly)
			[2]: module_5_upvr (copied, readonly)
			[3]: tbl_8_upvw (copied, read and write)
			[4]: applyControlsFolder_upvr (copied, readonly)
			[5]: recurApplyPoses_upvr (readonly)
		]]
		if arg1_2 and arg2_2:IsA("Pose") then
			local SOME_2 = arg1:FindFirstChild(arg2_2.Name)
			local any_GetMotor6DBetween_result1 = module_5_upvr.GetMotor6DBetween(arg1:FindFirstChild(arg1_2.Name), SOME_2)
			local var89 = any_GetMotor6DBetween_result1
			if var89 then
				if not tbl_8_upvw[any_GetMotor6DBetween_result1] then
					SOME_2 = false
				else
					SOME_2 = true
				end
				var89 = not SOME_2
			end
			if var89 then
				SOME_2 = assert
				SOME_2(any_GetMotor6DBetween_result1, "motor6d is non-nil. Silence type checker.")
				SOME_2 = arg2_2.CFrame
				any_GetMotor6DBetween_result1.Transform = SOME_2
				SOME_2 = tbl_8_upvw
				SOME_2[any_GetMotor6DBetween_result1] = true
			end
		end
		if arg2_2:IsA("Folder") then
			applyControlsFolder_upvr(arg1, arg1_2, arg2_2)
		else
			for _, v_12 in arg2_2:GetChildren() do
				recurApplyPoses_upvr(arg2_2, v_12)
			end
		end
	end
	if arg2 then
		for _, v in pairs(arg2:GetPoses()) do
			recurApplyPoses_upvr(nil, v)
		end
	end
end
local function getRotatedKeyframe_upvr(arg1, arg2) -- Line 322, Named "getRotatedKeyframe"
	if not arg2 or arg2 == 0 then
		return arg1
	end
	assert(arg2, "rotationDegrees is non-nil. Silence type checker.")
	local clone = arg1:Clone()
	local _1 = clone:GetPoses()[1]
	if _1 then
		local _1_3 = _1:GetSubPoses()[1]
		if _1_3 then
			_1_3.CFrame *= CFrame.Angles(0, math.rad(arg2), 0)
		end
	end
	return clone
end
local function getRotationCFrame_upvr(arg1, arg2) -- Line 343, Named "getRotationCFrame"
	if arg1:IsA("EulerRotationCurve") then
		return arg1:GetRotationAtTime(arg2)
	end
	if arg1:IsA("RotationCurve") then
		return arg1:GetValueAtTime(arg2)
	end
	error("Unsupported rotation type:"..arg1.ClassName)
	return nil
end
local function findAttachmentsRecur_upvr(arg1, arg2) -- Line 354, Named "findAttachmentsRecur"
	--[[ Upvalues[1]:
		[1]: findAttachmentsRecur_upvr (readonly)
	]]
	for _, v_2 in pairs(arg1:GetChildren()) do
		if v_2:IsA("Attachment") then
			arg2[v_2.Name] = v_2
		elseif not v_2:IsA("Tool") and not v_2:IsA("Accoutrement") then
			findAttachmentsRecur_upvr(v_2, arg2)
		end
	end
end
local function _(arg1) -- Line 365, Named "findAttachmentsInTool"
	--[[ Upvalues[1]:
		[1]: findAttachmentsRecur_upvr (readonly)
	]]
	local module_2 = {}
	findAttachmentsRecur_upvr(arg1, module_2)
	return module_2
end
local function _(arg1) -- Line 371, Named "findAttachmentsInCharacter"
	--[[ Upvalues[1]:
		[1]: findAttachmentsRecur_upvr (readonly)
	]]
	local module = {}
	findAttachmentsRecur_upvr(arg1, module)
	return module
end
local function _(arg1, arg2) -- Line 377, Named "weldAttachments"
	local Weld_2 = Instance.new("Weld")
	Weld_2.Part0 = arg1.Parent
	Weld_2.Part1 = arg2.Parent
	Weld_2.C0 = arg1.CFrame
	Weld_2.C1 = arg2.CFrame
	Weld_2.Parent = arg1.Parent
	return Weld_2
end
local function attachToolToCharacter_upvr(arg1, arg2, arg3) -- Line 387, Named "attachToolToCharacter"
	--[[ Upvalues[1]:
		[1]: findAttachmentsRecur_upvr (readonly)
	]]
	local tbl_3 = {}
	findAttachmentsRecur_upvr(arg1, tbl_3)
	local var131 = tbl_3
	local tbl_2 = {}
	findAttachmentsRecur_upvr(arg3, tbl_2)
	local var136
	for i_4, v_3 in pairs(tbl_2) do
		local var137 = var131[v_3.Name]
		if var137 then
			local Weld = Instance.new("Weld")
			Weld.Part0 = var137.Parent
			Weld.Part1 = v_3.Parent
			Weld.C0 = var137.CFrame
			Weld.C1 = v_3.CFrame
			Weld.Parent = var137.Parent
		end
	end
	if nil then
		arg3.Parent = arg1
	else
		arg3.Parent = nil
		local Handle = arg3:FindFirstChild("Handle")
		local Grip_2 = arg3.Grip
		if Handle and Grip_2 then
			local RightGripAttachment = var131.RightGripAttachment
			if RightGripAttachment then
				i_4 = RightGripAttachment.Parent
				v_3 = i_4.CFrame * RightGripAttachment.CFrame * Grip_2:Inverse()
				Handle.CFrame = v_3
			end
		end
		v_3 = arg3
		arg2:EquipTool(v_3)
	end
end
local function applyR15KeyframeWithTool_upvr(arg1, arg2, arg3, arg4, arg5, arg6, arg7) -- Line 419, Named "applyR15KeyframeWithTool"
	--[[ Upvalues[2]:
		[1]: applyKeyframeInner_upvr (readonly)
		[2]: attachToolToCharacter_upvr (readonly)
	]]
	if arg7 then
		applyKeyframeInner_upvr(arg1, arg7)
		applyKeyframeInner_upvr(arg1, arg5)
	else
		applyKeyframeInner_upvr(arg1, arg6)
		if arg4 ~= nil then
			applyKeyframeInner_upvr(arg1, arg5)
		end
	end
	attachToolToCharacter_upvr(arg1, arg2, arg3)
end
local function getMainThumbnailKeyframe_upvr(arg1, arg2, arg3, arg4) -- Line 473, Named "getMainThumbnailKeyframe"
	--[[ Upvalues[3]:
		[1]: getAnimationAndIsIdle_upvr (readonly)
		[2]: module_5_upvr (readonly)
		[3]: getAnimationClipByAssetId_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	local var150 = false
	local var151
	local var152
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [53] 47. Error Block 29 start (CF ANALYSIS FAILED)
	-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [54.12]
	if nil:IsA("KeyframeSequence") then
		-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [61.9]
		-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [63.11]
		var152 = module_5_upvr.GetThumbnailKeyframe(nil, nil, nil)
		return var152, var150, var151
	end
	if nil:IsA("CurveAnimation") then
		-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [75.10]
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect (x2)
		var152 = module_5_upvr.GetThumbnailKeyframeFromCurve(nil, nil, nil)
		return var152, var150, var151
	end
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	error("Unsupported Animation type:"..nil.ClassName)
	do
		return var152, var150, var151
	end
	-- KONSTANTERROR: [53] 47. Error Block 29 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [89] 77. Error Block 38 start (CF ANALYSIS FAILED)
	if arg4 then
		local FALLBACK_KEYFRAME_SEQUENCE_ASSET_URL = module_5_upvr.FALLBACK_KEYFRAME_SEQUENCE_ASSET_URL
		local var155
		if arg1:FindFirstChild("Animate") then
			var155 = arg1:FindFirstChild("Animate"):FindFirstChild("Pose")
			if not var155 then
				var155 = arg1:FindFirstChild("Animate"):FindFirstChild("pose")
			end
			if var155 then
				local class_Animation_2 = var155:FindFirstChildOfClass("Animation")
				if class_Animation_2 then
					FALLBACK_KEYFRAME_SEQUENCE_ASSET_URL = class_Animation_2.AnimationId
				end
			end
		end
		local getAnimationClipByAssetId_upvr_result1_2 = getAnimationClipByAssetId_upvr(FALLBACK_KEYFRAME_SEQUENCE_ASSET_URL)
		if getAnimationClipByAssetId_upvr_result1_2 then
			if not getAnimationClipByAssetId_upvr_result1_2:IsA("KeyframeSequence") then
				return nil, false, FALLBACK_KEYFRAME_SEQUENCE_ASSET_URL
			end
			var152 = getAnimationClipByAssetId_upvr_result1_2:GetKeyframes()[1]
		end
	end
	-- KONSTANTERROR: [89] 77. Error Block 38 end (CF ANALYSIS FAILED)
end
local function getMoodThumbnailKeyframe_upvr(arg1) -- Line 557, Named "getMoodThumbnailKeyframe"
	--[[ Upvalues[2]:
		[1]: getAnimationAndIsIdle_upvr (readonly)
		[2]: module_5_upvr (readonly)
	]]
	local var158
	if not arg1 then
		return nil
	end
	assert(arg1, "moodAssetId is non-nil. Silence type checker.")
	local getAnimationAndIsIdle_upvr_result1, _ = getAnimationAndIsIdle_upvr(arg1)
	if getAnimationAndIsIdle_upvr_result1 == nil then
		return nil
	end
	assert(getAnimationAndIsIdle_upvr_result1, "animation is non-nil. Silence type checker.")
	local any_GetAnimationClip_result1 = module_5_upvr.GetAnimationClip(getAnimationAndIsIdle_upvr_result1)
	if any_GetAnimationClip_result1 then
		if any_GetAnimationClip_result1:IsA("KeyframeSequence") then
			var158 = module_5_upvr.GetThumbnailKeyframe(module_5_upvr.GetNumberValueWithDefault(getAnimationAndIsIdle_upvr_result1, "ThumbnailKeyframe", nil), any_GetAnimationClip_result1, 0)
			return var158
		end
		if any_GetAnimationClip_result1:IsA("CurveAnimation") then
			var158 = module_5_upvr.GetThumbnailKeyframeFromCurve(module_5_upvr.GetNumberValueWithDefault(getAnimationAndIsIdle_upvr_result1, "ThumbnailTime", nil), any_GetAnimationClip_result1, 0)
			return var158
		end
		error("Unsupported Animation type:"..any_GetAnimationClip_result1.ClassName)
	end
	return var158
end
local function getToolKeyframes_upvr(arg1, arg2) -- Line 605, Named "getToolKeyframes"
	--[[ Upvalues[1]:
		[1]: module_5_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local class_Tool = arg1:FindFirstChildOfClass("Tool")
	local var170
	if not class_Tool then
		return nil, nil
	end
	assert(class_Tool, "tool is non-nil. Silence type checker.")
	local var171 = false
	if not arg2 then
		var170 = class_Tool:FindFirstChild("ThumbnailPose")
		if var170 and var170:IsA("Keyframe") then
			var171 = true
		end
	end
	if not var171 then
		var170 = nil
		local Animate_2 = arg1:FindFirstChild("Animate")
		if not Animate_2 then
			return nil, nil
		end
		assert(Animate_2, "animateScript is non-nil. Silence type checker.")
		local toolnone = Animate_2:FindFirstChild("toolnone")
		if not toolnone then
			return nil, nil
		end
		assert(toolnone, "toolNoneStringValue is non-nil. Silence type checker.")
		local ToolNoneAnim_2 = toolnone:FindFirstChild("ToolNoneAnim")
		if ToolNoneAnim_2 then
			local any_GetAnimationClip_result1_3 = module_5_upvr.GetAnimationClip(ToolNoneAnim_2)
			if not any_GetAnimationClip_result1_3 then
				return nil, nil
			end
			assert(any_GetAnimationClip_result1_3, "toolAnimationClip is non-nil. Silence type checker.")
			assert(any_GetAnimationClip_result1_3:IsA("KeyframeSequence"), "ToolNoneAnim must be a KeyframeSequence")
			if not class_Tool:IsDescendantOf(arg1) then
				return nil, nil
			end
		end
	end
	return var170, module_5_upvr.GetThumbnailKeyframe(nil, any_GetAnimationClip_result1_3, 0)
end
function module_5_upvr.ForceAnimationToStep(arg1) -- Line 668
	local class_Humanoid_6 = arg1:FindFirstChildOfClass("Humanoid")
	if class_Humanoid_6 then
		local class_Animator_2 = class_Humanoid_6:FindFirstChildOfClass("Animator")
		if class_Animator_2 then
			class_Animator_2:StepAnimations(0.1)
		end
	end
end
local InsertService_upvr = game:GetService("InsertService")
function module_5_upvr.LoadAsset(arg1) -- Line 682
	--[[ Upvalues[2]:
		[1]: module_5_upvr (readonly)
		[2]: InsertService_upvr (readonly)
	]]
	local pcall_result1_7, pcall_result2_7 = pcall(function() -- Line 683
		--[[ Upvalues[3]:
			[1]: module_5_upvr (copied, readonly)
			[2]: arg1 (readonly)
			[3]: InsertService_upvr (copied, readonly)
		]]
		if module_5_upvr.debugLoadAssetsFromFiles and module_5_upvr.mapAssetIdToFileName then
			return InsertService_upvr:LoadLocalAsset("rbxasset://"..module_5_upvr.mapAssetIdToFileName(arg1))
		end
		return InsertService_upvr:LoadAsset(arg1)
	end)
	return pcall_result1_7, pcall_result2_7
end
function module_5_upvr.SetDebugLoadAssetsFromFiles(arg1, arg2) -- Line 704
	--[[ Upvalues[1]:
		[1]: module_5_upvr (readonly)
	]]
	module_5_upvr.debugLoadAssetsFromFiles = arg1
	module_5_upvr.mapAssetIdToFileName = arg2
end
function module_5_upvr.GetMotor6DBetween(arg1, arg2) -- Line 712
	if not arg1 or not arg2 then
		return nil
	end
	assert(arg1, "part0 is non-nil. Silence type checker.")
	assert(arg2, "part1 is non-nil. Silence type checker.")
	for _, v_4 in pairs(arg2:GetChildren()) do
		if v_4:IsA("Motor6D") and v_4.Part0 == arg1 then
			return v_4
		end
	end
	return nil
end
function module_5_upvr.PoseKeyframeHasFaceAnimation(arg1) -- Line 731
	if not arg1 then
		return false
	end
	assert(arg1, "poseKeyframe is non-nil. Silence type checker.")
	local function recurHasFaceAnimation_upvr(arg1_3) -- Line 737, Named "recurHasFaceAnimation"
		--[[ Upvalues[1]:
			[1]: recurHasFaceAnimation_upvr (readonly)
		]]
		if arg1_3:IsA("Folder") then
			return true
		end
		for _, v_5 in arg1_3:GetChildren() do
			if recurHasFaceAnimation_upvr(v_5) then
				return true
			end
		end
		return false
	end
	for _, v_6 in pairs(arg1:GetPoses()) do
		if recurHasFaceAnimation_upvr(v_6) then
			return true
		end
	end
	return false
end
function module_5_upvr.ApplyKeyframe(arg1, arg2) -- Line 762
	--[[ Upvalues[3]:
		[1]: tbl_8_upvw (read and write)
		[2]: applyKeyframeInner_upvr (readonly)
		[3]: module_5_upvr (readonly)
	]]
	tbl_8_upvw = {}
	applyKeyframeInner_upvr(arg1, arg2)
	tbl_8_upvw = {}
	local pcall_result1_4, pcall_result2_9 = pcall(function() -- Line 99
		local game_7 = game
		if game_7.GetService(game, "ThumbnailGenerator") == nil then
			game_7 = false
		else
			game_7 = true
		end
		return game_7
	end)
	if pcall_result1_4 and pcall_result2_9 then
		module_5_upvr.ForceAnimationToStep(arg1)
	end
end
function module_5_upvr.GetNumberValueWithDefault(arg1, arg2, arg3) -- Line 771
	local SOME_3 = arg1:FindFirstChild(arg2)
	local var211
	if SOME_3 and SOME_3:IsA("NumberValue") then
		var211 = SOME_3.Value
	end
	return var211
end
function module_5_upvr.GetAnimationClip(arg1) -- Line 784
	--[[ Upvalues[1]:
		[1]: getAnimationClipByAssetId_upvr (readonly)
	]]
	if arg1:IsA("KeyframeSequence") then
		return arg1
	end
	if arg1:IsA("Animation") then
		return getAnimationClipByAssetId_upvr(arg1.AnimationId)
	end
	error("Unknown keyframeSequenceOrAnimation type:"..arg1.ClassName)
	return nil
end
function module_5_upvr.GetThumbnailKeyframe(arg1, arg2, arg3) -- Line 798
	--[[ Upvalues[1]:
		[1]: getRotatedKeyframe_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 11 start (CF ANALYSIS FAILED)
	local any_GetKeyframes_result1 = arg2:GetKeyframes()
	if arg1 then
		if 0 < arg1 and arg1 <= #any_GetKeyframes_result1 then
			-- KONSTANTWARNING: GOTO [20] #17
		end
	end
	-- KONSTANTERROR: [0] 1. Error Block 11 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [20] 17. Error Block 7 start (CF ANALYSIS FAILED)
	do
		return getRotatedKeyframe_upvr(any_GetKeyframes_result1[math.ceil(#any_GetKeyframes_result1 / 2)], arg3)
	end
	-- KONSTANTERROR: [20] 17. Error Block 7 end (CF ANALYSIS FAILED)
end
function module_5_upvr.GetCurveAnimationTimeLength(arg1) -- Line 816
	local var223
	for _, v_7 in arg1:GetDescendants() do
		if v_7:IsA("FloatCurve") then
			var223 = math.max(var223, v_7:GetKeyAtIndex(v_7.Length).Time)
		end
	end
	return var223
end
function module_5_upvr.GetThumbnailKeyframeFromCurve(arg1, arg2, arg3) -- Line 831
	--[[ Upvalues[3]:
		[1]: module_5_upvr (readonly)
		[2]: getRotationCFrame_upvr (readonly)
		[3]: getRotatedKeyframe_upvr (readonly)
	]]
	local any_GetCurveAnimationTimeLength_result1 = module_5_upvr.GetCurveAnimationTimeLength(arg2)
	local var230_upvw
	if not var230_upvw or var230_upvw < 0 or any_GetCurveAnimationTimeLength_result1 < var230_upvw then
		var230_upvw = any_GetCurveAnimationTimeLength_result1 / 2
	end
	assert(var230_upvw, "thumbnailTime should be non-nil. Silence type checker")
	local tbl_7_upvr = {
		Position = true;
		Rotation = true;
	}
	local function recurGenerateKeyframe_upvr(arg1_4, arg2_3) -- Line 849, Named "recurGenerateKeyframe"
		--[[ Upvalues[4]:
			[1]: getRotationCFrame_upvr (copied, readonly)
			[2]: var230_upvw (read and write)
			[3]: tbl_7_upvr (readonly)
			[4]: recurGenerateKeyframe_upvr (readonly)
		]]
		local Position = arg2_3:FindFirstChild("Position")
		local Rotation = arg2_3:FindFirstChild("Rotation")
		local var238
		if Position and Rotation then
			local getRotationCFrame_upvr_result1 = getRotationCFrame_upvr(Rotation, var230_upvw)
			if getRotationCFrame_upvr_result1 then
				local Pose = Instance.new("Pose")
				Pose.CFrame = getRotationCFrame_upvr_result1 + Vector3.new(table.unpack(Position:GetValueAtTime(var230_upvw)))
				Pose.Name = arg2_3.Name
				Pose.Parent = arg1_4
				var238 = Pose
				-- KONSTANTWARNING: GOTO [54] #41
			end
		else
			local Folder = Instance.new("Folder")
			Folder.Name = arg2_3.Name
			Folder.Parent = arg1_4
			var238 = Folder
		end
		for _, v_8 in arg2_3:GetChildren() do
			if v_8:IsA("FloatCurve") and not tbl_7_upvr[v_8] then
				local NumberPose = Instance.new("NumberPose")
				NumberPose.Name = v_8.Name
				local any_GetValueAtTime_result1 = v_8:GetValueAtTime(var230_upvw)
				if not any_GetValueAtTime_result1 then
					any_GetValueAtTime_result1 = 0
				end
				assert(any_GetValueAtTime_result1, "valueAtTime should be non-nil. Silence type checker.")
				NumberPose.Value = any_GetValueAtTime_result1
				NumberPose.Parent = var238
			elseif v_8:IsA("Folder") then
				recurGenerateKeyframe_upvr(var238, v_8)
			end
		end
	end
	local Keyframe = Instance.new("Keyframe")
	Keyframe.Name = arg2.Name
	Keyframe.Time = var230_upvw
	for _, v_9 in arg2:GetChildren() do
		if v_9:IsA("Folder") then
			recurGenerateKeyframe_upvr(Keyframe, v_9)
		end
	end
	return getRotatedKeyframe_upvr(Keyframe, arg3)
end
function module_5_upvr.ClearPlayerCharacterFace(arg1) -- Line 907
	local class_FaceControls = arg1:FindFirstChildWhichIsA("FaceControls", true)
	if class_FaceControls then
		Instance.new("FaceControls").Parent = class_FaceControls.Parent
		for _, v_10 in class_FaceControls:GetChildren(), nil do
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect
			v_10.Parent = Instance.new("FaceControls")
			local _
		end
		class_FaceControls:Destroy()
	end
end
function module_5_upvr.AdjustArmOnR6ForTool(arg1) -- Line 924
	local Torso = arg1:FindFirstChild("Torso")
	if Torso then
		local Right_Shoulder = Torso:FindFirstChild("Right Shoulder")
		if Right_Shoulder then
			if arg1:FindFirstChildOfClass("Tool") then
				Right_Shoulder.CurrentAngle = (math.pi/2)
				Right_Shoulder.DesiredAngle = (math.pi/2)
				return
			end
			Right_Shoulder.CurrentAngle = 0
			Right_Shoulder.DesiredAngle = 0
		end
	end
end
function module_5_upvr.SetPlayerCharacterFace(arg1, arg2) -- Line 946
	--[[ Upvalues[2]:
		[1]: getMoodThumbnailKeyframe_upvr (readonly)
		[2]: module_5_upvr (readonly)
	]]
	if not arg2 then
	else
		if arg2 == "" then return end
		if arg2 == 0 then return end
		local var264 = true
		if typeof(arg2) ~= "number" then
			if typeof(arg2) ~= "string" then
				var264 = false
			else
				var264 = true
			end
		end
		assert(var264, "EmoteUtility.SetPlayerCharacterFace expects animationAssetIdOrUrl to be a number or string")
		if not arg1:FindFirstChildOfClass("Humanoid") then return end
		local getMoodThumbnailKeyframe_result1 = getMoodThumbnailKeyframe_upvr(arg2)
		if not getMoodThumbnailKeyframe_result1 then return end
		module_5_upvr.ClearPlayerCharacterFace(arg1)
		module_5_upvr.ApplyKeyframe(arg1, getMoodThumbnailKeyframe_result1)
	end
end
function module_5_upvr.SetPlayerCharacterNeutralPose(arg1) -- Line 987
	--[[ Upvalues[1]:
		[1]: module_5_upvr (readonly)
	]]
	local class_Humanoid_4 = arg1:FindFirstChildOfClass("Humanoid")
	if not class_Humanoid_4 then
	else
		assert(class_Humanoid_4, "humanoid should be non-nil. Silence type checker.")
		class_Humanoid_4:BuildRigFromAttachments()
		if class_Humanoid_4.RigType ~= Enum.HumanoidRigType.R15 then return end
		module_5_upvr.ClearPlayerCharacterFace(arg1)
		local function recurResetJoint_upvr(arg1_5) -- Line 1002, Named "recurResetJoint"
			--[[ Upvalues[1]:
				[1]: recurResetJoint_upvr (readonly)
			]]
			if arg1_5:IsA("Motor6D") then
				arg1_5.Transform = CFrame.new()
			end
			for _, v_13 in arg1_5:GetChildren(), nil do
				recurResetJoint_upvr(v_13)
			end
		end
		recurResetJoint_upvr(arg1)
	end
end
local function loadKeyframesForPoseR15_upvr(arg1, arg2, arg3, arg4, arg5) -- Line 1017, Named "loadKeyframesForPoseR15"
	--[[ Upvalues[4]:
		[1]: getMainThumbnailKeyframe_upvr (readonly)
		[2]: getToolKeyframes_upvr (readonly)
		[3]: module_5_upvr (readonly)
		[4]: getMoodThumbnailKeyframe_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local module_4 = {}
	module_4.originalAnimationAssetId = arg2
	local var271
	if arg5 then
		var271 = false
	else
		var271 = true
	end
	local getMainThumbnailKeyframe_result1, getMainThumbnailKeyframe_result2, getMainThumbnailKeyframe_result3 = getMainThumbnailKeyframe_upvr(arg1, arg2, not arg4, var271)
	if not arg5 then
		if getMainThumbnailKeyframe_result1 then
			local getToolKeyframes_upvr_result1, getToolKeyframes_upvr_result2 = getToolKeyframes_upvr(arg1, getMainThumbnailKeyframe_result2)
		end
	end
	getToolKeyframes_upvr_result2 = false
	local var277
	if arg3 and arg3 ~= 0 then
		if arg2 == nil then
			var277 = true
		elseif not module_5_upvr.PoseKeyframeHasFaceAnimation(getMainThumbnailKeyframe_result1) then
			var277 = true
		end
	end
	if var277 then
	end
	module_4.poseKeyframe = getMainThumbnailKeyframe_result1
	module_4.moodKeyframe = getMoodThumbnailKeyframe_upvr(arg3)
	module_4.defaultToolKeyframe = getToolKeyframes_upvr_result2
	module_4.suggestedKeyframeFromTool = getToolKeyframes_upvr_result1
	module_4.finalAnimationAssetIdOrUrl = getMainThumbnailKeyframe_result3
	return module_4
end
function module_5_upvr.LoadKeyframesForPose(arg1, arg2, arg3, arg4, arg5) -- Line 1101
	--[[ Upvalues[1]:
		[1]: loadKeyframesForPoseR15_upvr (readonly)
	]]
	local var279 = arg1
	assert(var279, "character should be non-nil")
	if arg2 ~= nil then
		if typeof(arg2) ~= "number" then
			var279 = false
		else
			var279 = true
		end
		assert(var279, "EmoteUtility.LoadKeyframesForPose expects animationAssetId to be a number or nil")
		if 0 >= arg2 then
			var279 = false
		else
			var279 = true
		end
		assert(var279, "EmoteUtility.LoadKeyframesForPose expects animationAssetId to be a real asset ID (positive number)")
	end
	if arg3 ~= nil then
		if typeof(arg3) ~= "number" then
			var279 = false
		else
			var279 = true
		end
		assert(var279, "EmoteUtility.LoadKeyframesForPose expects moodAssetId to be a number or nil")
	end
	local class_Humanoid_5 = arg1:FindFirstChildOfClass("Humanoid")
	if not class_Humanoid_5 then
		return nil
	end
	assert(class_Humanoid_5, "humanoid should be non-nil. Silence type checker.")
	if class_Humanoid_5.RigType == Enum.HumanoidRigType.R15 then
		return loadKeyframesForPoseR15_upvr(arg1, arg2, arg3, arg4, arg5)
	end
	local module_3 = {}
	module_3.originalAnimationAssetId = arg2
	return module_3
end
function module_5_upvr.ApplyKeyframesForPose(arg1, arg2) -- Line 1149
	--[[ Upvalues[4]:
		[1]: module_5_upvr (readonly)
		[2]: tbl_8_upvw (read and write)
		[3]: applyR15KeyframeWithTool_upvr (readonly)
		[4]: applyKeyframeInner_upvr (readonly)
	]]
	assert(arg1, "character should be non-nil")
	if not arg2 then
	else
		assert(arg2, "keyframesForPose should be non-nil. Silence type checker.")
		local class_Humanoid_2 = arg1:FindFirstChildOfClass("Humanoid")
		if not class_Humanoid_2 then return end
		assert(class_Humanoid_2, "humanoid should be non-nil. Silence type checker.")
		module_5_upvr.SetPlayerCharacterNeutralPose(arg1)
		tbl_8_upvw = {}
		local class_Tool_2 = arg1:FindFirstChildOfClass("Tool")
		if class_Humanoid_2.RigType == Enum.HumanoidRigType.R15 then
			if class_Tool_2 then
				applyR15KeyframeWithTool_upvr(arg1, class_Humanoid_2, class_Tool_2, arg2.originalAnimationAssetId, arg2.poseKeyframe, arg2.defaultToolKeyframe, arg2.suggestedKeyframeFromTool)
			else
				applyKeyframeInner_upvr(arg1, arg2.poseKeyframe)
			end
		else
			module_5_upvr.AdjustArmOnR6ForTool(arg1)
		end
		if class_Humanoid_2.RigType == Enum.HumanoidRigType.R15 then
			applyKeyframeInner_upvr(arg1, arg2.moodKeyframe)
		end
		tbl_8_upvw = {}
		local pcall_result1_2, pcall_result2_5 = pcall(function() -- Line 99
			local game_6 = game
			if game_6.GetService(game, "ThumbnailGenerator") == nil then
				game_6 = false
			else
				game_6 = true
			end
			return game_6
		end)
		if pcall_result1_2 and pcall_result2_5 then
			module_5_upvr.ForceAnimationToStep(arg1)
		end
	end
end
function module_5_upvr.SetPlayerCharacterPoseWithMoodFallback(arg1, arg2, arg3, arg4, arg5) -- Line 1215
	--[[ Upvalues[1]:
		[1]: module_5_upvr (readonly)
	]]
	local class_Humanoid = arg1:FindFirstChildOfClass("Humanoid")
	if not class_Humanoid then
	else
		assert(class_Humanoid, "humanoid should be non-nil.  Silence type checker.")
		module_5_upvr.ApplyKeyframesForPose(arg1, module_5_upvr.LoadKeyframesForPose(arg1, arg2, arg3, arg4, arg5))
	end
end
function module_5_upvr.ThumbnailZoomExtents(arg1, arg2, arg3, arg4, arg5) -- Line 1239
	local any_GetModelCFrame_result1 = arg1:GetModelCFrame()
	local LookVector = any_GetModelCFrame_result1.LookVector
	local HumanoidRootPart = arg1:FindFirstChild("HumanoidRootPart")
	if HumanoidRootPart then
		LookVector = HumanoidRootPart.CFrame.LookVector
	end
	local cframe = CFrame.new(any_GetModelCFrame_result1.Position + LookVector * 5, any_GetModelCFrame_result1.Position)
	local any_GetExtentsSize_result1 = arg1:GetExtentsSize()
	return (cframe - cframe.Position) + (any_GetModelCFrame_result1.Position + Vector3.new(arg3, -arg4, 0)) + (LookVector) * (((math.sqrt(any_GetExtentsSize_result1.X ^ 2 + any_GetExtentsSize_result1.Y ^ 2 + any_GetExtentsSize_result1.Z ^ 2) / 2) * (1 / math.tan(math.rad(arg2) / 2))) * (1 / arg5))
end
return module_5_upvr