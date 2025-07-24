-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:55:46
-- Luau version 6, Types version 3
-- Time taken: 0.003623 seconds

local CorePackages = game:GetService("CorePackages")
local CrossExperienceVoice_upvr = require(CorePackages.Workspace.Packages.CrossExperienceVoice)
local game_DefineFastInt_result1_upvr = game:DefineFastInt("PartyVoiceTopbarActivityIndicatorAnimationMs", 50)
function createAnimations(arg1, arg2) -- Line 33
	--[[ Upvalues[1]:
		[1]: game_DefineFastInt_result1_upvr (readonly)
	]]
	local module = {
		ICON_OUT_ANIMATION = {
			value = 0;
			durationInMs = game_DefineFastInt_result1_upvr;
			easingStyle = Enum.EasingStyle.Linear;
		};
	}
	local tbl_2 = {}
	tbl_2.value = arg1
	tbl_2.durationInMs = game_DefineFastInt_result1_upvr
	tbl_2.easingStyle = Enum.EasingStyle.Linear
	module.ICON_IN_ANIMATION = tbl_2
	local tbl_4 = {}
	tbl_4.value = arg2
	tbl_4.durationInMs = game_DefineFastInt_result1_upvr
	tbl_4.easingStyle = Enum.EasingStyle.Linear
	module.AVATAR_IN_ANIMATION = tbl_4
	module.AVATAR_OUT_ANIMATION = {
		value = 0;
		durationInMs = game_DefineFastInt_result1_upvr;
		easingStyle = Enum.EasingStyle.Linear;
	}
	return module
end
local getStandardSizeAvatarHeadShotRbxthumb_upvr = require(CorePackages.Workspace.Packages.UserLib).Utils.getStandardSizeAvatarHeadShotRbxthumb
local getColorFromUserId_upvr = require(CorePackages.Workspace.Packages.SquadsCore).Common.getColorFromUserId
function getDisplayImage(arg1, arg2) -- Line 58
	--[[ Upvalues[2]:
		[1]: getStandardSizeAvatarHeadShotRbxthumb_upvr (readonly)
		[2]: getColorFromUserId_upvr (readonly)
	]]
	local module_2 = {}
	local var12
	if arg1 ~= -1 then
		var12 = getStandardSizeAvatarHeadShotRbxthumb_upvr(tostring(arg1))
	else
		var12 = arg2
	end
	module_2.thumbnail = var12
	if arg1 ~= -1 then
		var12 = getColorFromUserId_upvr(arg1)
	else
		var12 = nil
	end
	module_2.backgroundColor = var12
	return module_2
end
local GetFFlagEnableCrossExpVoice_upvr = require(CorePackages.Workspace.Packages.SharedFlags).GetFFlagEnableCrossExpVoice
local useLastActiveParticipant_upvr = CrossExperienceVoice_upvr.Hooks.useLastActiveParticipant
local usePrevious_upvr = require(CorePackages.Workspace.Packages.RoactUtils).Hooks.usePrevious
local React_upvr = require(CorePackages.Packages.React)
local useSequentialAnimation_upvr = CrossExperienceVoice_upvr.Hooks.useSequentialAnimation
local game_DefineFastInt_result1_upvr_2 = game:DefineFastInt("PartyVoiceTopbarActivityIndicatorDebounceMs", 50)
function usePartyIcon(arg1, arg2, arg3) -- Line 65
	--[[ Upvalues[7]:
		[1]: GetFFlagEnableCrossExpVoice_upvr (readonly)
		[2]: useLastActiveParticipant_upvr (readonly)
		[3]: usePrevious_upvr (readonly)
		[4]: React_upvr (readonly)
		[5]: useSequentialAnimation_upvr (readonly)
		[6]: CrossExperienceVoice_upvr (readonly)
		[7]: game_DefineFastInt_result1_upvr_2 (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local var19_upvr
	if GetFFlagEnableCrossExpVoice_upvr() then
		local useLastActiveParticipant_upvr_result1 = useLastActiveParticipant_upvr()
		local function INLINED() -- Internal function, doesn't exist in bytecode
			var19_upvr = useLastActiveParticipant_upvr_result1.userId
			return var19_upvr
		end
		if not useLastActiveParticipant_upvr_result1 or not INLINED() then
			var19_upvr = -1
		end
		local any_useState_result1, any_useState_result2_upvr = React_upvr.useState(getDisplayImage(var19_upvr, arg3))
		if var19_upvr == -1 then
		else
		end
		local var17_result1, useSequentialAnimation_upvr_result2_upvr = useSequentialAnimation_upvr(arg2)
		local tbl = {}
		tbl[1] = arg1
		tbl[2] = arg2
		local any_useMemo_result1_upvr_2 = React_upvr.useMemo(function() -- Line 76
			--[[ Upvalues[2]:
				[1]: arg1 (readonly)
				[2]: arg2 (readonly)
			]]
			return createAnimations(arg1, arg2)
		end, tbl)
		local tbl_3 = {}
		tbl_3[1] = arg3
		tbl_3[2] = any_useState_result2_upvr
		local any_useCallback_result1_upvr = React_upvr.useCallback(function(arg1_2) -- Line 80
			--[[ Upvalues[2]:
				[1]: any_useState_result2_upvr (readonly)
				[2]: arg3 (readonly)
			]]
			any_useState_result2_upvr(function(arg1_3) -- Line 81
				--[[ Upvalues[2]:
					[1]: arg1_2 (readonly)
					[2]: arg3 (copied, readonly)
				]]
				local getDisplayImage_result1 = getDisplayImage(arg1_2, arg3)
				if arg1_3.thumbnail == getDisplayImage_result1.thumbnail and arg1_3.backgroundColor == getDisplayImage_result1.backgroundColor then
					return arg1_3
				end
				return getDisplayImage_result1
			end)
		end, tbl_3)
		local any_useMemo_result1_upvr = React_upvr.useMemo(function() -- Line 94
			--[[ Upvalues[3]:
				[1]: CrossExperienceVoice_upvr (copied, readonly)
				[2]: useSequentialAnimation_upvr_result2_upvr (readonly)
				[3]: game_DefineFastInt_result1_upvr_2 (copied, readonly)
			]]
			return CrossExperienceVoice_upvr.Utils.debounce(function(arg1_4, arg2_2) -- Line 96
				--[[ Upvalues[1]:
					[1]: useSequentialAnimation_upvr_result2_upvr (copied, readonly)
				]]
				useSequentialAnimation_upvr_result2_upvr(arg1_4, arg2_2)
			end, game_DefineFastInt_result1_upvr_2)
		end, {})
		local var15_result1_upvr = usePrevious_upvr(var19_upvr)
		React_upvr.useEffect(function() -- Line 104
			--[[ Upvalues[6]:
				[1]: var15_result1_upvr (readonly)
				[2]: var19_upvr (readonly)
				[3]: any_useMemo_result1_upvr (readonly)
				[4]: any_useMemo_result1_upvr_2 (readonly)
				[5]: any_useCallback_result1_upvr (readonly)
				[6]: useSequentialAnimation_upvr_result2_upvr (readonly)
			]]
			if var15_result1_upvr ~= nil and var19_upvr ~= var15_result1_upvr then
				any_useMemo_result1_upvr.cancel()
				if var19_upvr == -1 then
					any_useMemo_result1_upvr.call({any_useMemo_result1_upvr_2.AVATAR_OUT_ANIMATION, any_useMemo_result1_upvr_2.ICON_IN_ANIMATION}, function() -- Line 111
						--[[ Upvalues[1]:
							[1]: any_useCallback_result1_upvr (copied, readonly)
						]]
						any_useCallback_result1_upvr(-1)
					end)
				else
					if var15_result1_upvr == -1 then
						useSequentialAnimation_upvr_result2_upvr({any_useMemo_result1_upvr_2.ICON_OUT_ANIMATION, any_useMemo_result1_upvr_2.AVATAR_IN_ANIMATION}, function() -- Line 119
							--[[ Upvalues[2]:
								[1]: any_useCallback_result1_upvr (copied, readonly)
								[2]: var19_upvr (copied, readonly)
							]]
							any_useCallback_result1_upvr(var19_upvr)
						end)
						return
					end
					any_useCallback_result1_upvr(var19_upvr)
				end
			end
			any_useCallback_result1_upvr(var19_upvr)
		end, {var19_upvr, any_useCallback_result1_upvr, any_useMemo_result1_upvr, any_useMemo_result1_upvr_2})
		return {
			image = any_useState_result1;
			size = var17_result1;
		}
	end
	local any_createBinding_result1, any_createBinding_result2 = React_upvr.createBinding(arg1)
	var15_result1_upvr = {}
	local var46 = var15_result1_upvr
	any_useState_result2_upvr = -1
	var46.image = getDisplayImage(any_useState_result2_upvr, arg3)
	var46.size = any_createBinding_result1
	return var46
end
return usePartyIcon