-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:43:27
-- Luau version 6, Types version 3
-- Time taken: 0.065441 seconds

local Squads = script:FindFirstAncestor("Squads")
local dependencies = require(Squads.dependencies)
local Parent = Squads.Parent
local CrossExperienceVoice_upvr = require(Parent.CrossExperienceVoice)
local Foundation_upvr = dependencies.Foundation
local SharedFlags_upvr = dependencies.SharedFlags
local SquadInviteChangesExperimentation_upvr = dependencies.SocialExperiments.SquadInviteChangesExperimentation
local useLocalization_upvr = dependencies.Hooks.useLocalization
local useTokens_upvr = Foundation_upvr.Hooks.useTokens
local useAnimatedTransparency_upvr = CrossExperienceVoice_upvr.Hooks.useAnimatedTransparency
local game_DefineFastInt_result1_upvr_2 = game:DefineFastInt("PartyVoiceActivityIndicatorAnimationMs", 100)
local UserProfiles_upvr = require(Parent.UserProfiles)
local getStandardSizeAvatarHeadShotRbxthumb_upvr = require(Parent.UserLib).Utils.getStandardSizeAvatarHeadShotRbxthumb
local React_upvr = dependencies.React
local useSelector_upvr = dependencies.Hooks.useSelector
local PresenceType_upvr = dependencies.RoduxPresence.Enums.PresenceType
local useLocalUserId_upvr = require(Parent.RobloxAppHooks).useLocalUserId
local GetFFlagEnableCrossExpVoice_upvr = SharedFlags_upvr.GetFFlagEnableCrossExpVoice
local useIsVoiceConnected_upvr = CrossExperienceVoice_upvr.Hooks.useIsVoiceConnected
local useIsMicPermissionsError_upvr = CrossExperienceVoice_upvr.Hooks.useIsMicPermissionsError
local useParticipant_upvr = CrossExperienceVoice_upvr.Hooks.useParticipant
local useIsVoiceConnecting_upvr = CrossExperienceVoice_upvr.Hooks.useIsVoiceConnecting
local useIsActiveParticipant_upvr = CrossExperienceVoice_upvr.Hooks.useIsActiveParticipant
local useIsLocalPlayerPartyVoiceEligible_upvr = dependencies.SquadsCore.Hooks.useIsLocalPlayerPartyVoiceEligible
local useIsUserPartyVoiceEligible_upvr = dependencies.SquadsCore.Hooks.useIsUserPartyVoiceEligible
local useIsCurrentSquadPartyVoiceEligible_upvr = dependencies.SquadsCore.Hooks.useIsCurrentSquadPartyVoiceEligible
local useIsParticipantMutedLocally_upvr = CrossExperienceVoice_upvr.Hooks.useIsParticipantMutedLocally
local FFlagPartyVoiceMuteOthers_upvr = SharedFlags_upvr.FFlagPartyVoiceMuteOthers
local useIsParticipantMuted_upvr = CrossExperienceVoice_upvr.Hooks.useIsParticipantMuted
local game_DefineFastFlag_result1_upvr_2 = game:DefineFastFlag("EnablePartyVoiceCrossContextIdValidation", false)
local useIsParticipantInOtherAudioContext_upvr = CrossExperienceVoice_upvr.Hooks.useIsParticipantInOtherAudioContext
local game_DefineFastInt_result1_upvr = game:DefineFastInt("PartyVoiceActivityIndicatorDebounceMs", 100)
local SquadUserPartyStatus_upvr = require(Squads.Enums.SquadUserPartyStatus)
local game_DefineFastFlag_result1_upvr = game:DefineFastFlag("ApplyVoiceConnectingStatusInPartySheet", false)
local IconSize_upvr = Foundation_upvr.Enums.IconSize
local dependencyArray_upvr = dependencies.Hooks.dependencyArray
local FFlagEnableSquadUserCardHoverFix_upvr = SharedFlags_upvr.FFlagEnableSquadUserCardHoverFix
local useSquadUserDropdownMenuButtons_upvr = require(Squads.Hooks.useSquadUserDropdownMenuButtons)
local ImageSetLabel_upvr = require(Parent.UIBlox).Core.ImageSet.ImageSetLabel
return function(arg1) -- Line 76
	--[[ Upvalues[36]:
		[1]: SquadInviteChangesExperimentation_upvr (readonly)
		[2]: useLocalization_upvr (readonly)
		[3]: useTokens_upvr (readonly)
		[4]: useAnimatedTransparency_upvr (readonly)
		[5]: game_DefineFastInt_result1_upvr_2 (readonly)
		[6]: UserProfiles_upvr (readonly)
		[7]: getStandardSizeAvatarHeadShotRbxthumb_upvr (readonly)
		[8]: React_upvr (readonly)
		[9]: useSelector_upvr (readonly)
		[10]: PresenceType_upvr (readonly)
		[11]: useLocalUserId_upvr (readonly)
		[12]: GetFFlagEnableCrossExpVoice_upvr (readonly)
		[13]: useIsVoiceConnected_upvr (readonly)
		[14]: SharedFlags_upvr (readonly)
		[15]: useIsMicPermissionsError_upvr (readonly)
		[16]: useParticipant_upvr (readonly)
		[17]: useIsVoiceConnecting_upvr (readonly)
		[18]: useIsActiveParticipant_upvr (readonly)
		[19]: useIsLocalPlayerPartyVoiceEligible_upvr (readonly)
		[20]: useIsUserPartyVoiceEligible_upvr (readonly)
		[21]: useIsCurrentSquadPartyVoiceEligible_upvr (readonly)
		[22]: useIsParticipantMutedLocally_upvr (readonly)
		[23]: FFlagPartyVoiceMuteOthers_upvr (readonly)
		[24]: useIsParticipantMuted_upvr (readonly)
		[25]: game_DefineFastFlag_result1_upvr_2 (readonly)
		[26]: useIsParticipantInOtherAudioContext_upvr (readonly)
		[27]: CrossExperienceVoice_upvr (readonly)
		[28]: game_DefineFastInt_result1_upvr (readonly)
		[29]: SquadUserPartyStatus_upvr (readonly)
		[30]: game_DefineFastFlag_result1_upvr (readonly)
		[31]: Foundation_upvr (readonly)
		[32]: IconSize_upvr (readonly)
		[33]: dependencyArray_upvr (readonly)
		[34]: FFlagEnableSquadUserCardHoverFix_upvr (readonly)
		[35]: useSquadUserDropdownMenuButtons_upvr (readonly)
		[36]: ImageSetLabel_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local var324_upvr
	if SquadInviteChangesExperimentation_upvr.getInviteChangesEnabled() then
		var324_upvr = useLocalization_upvr
		var324_upvr = var324_upvr({
			connectingText = "Feature.Squads.Label.Connecting";
			inExperiencePresenceText = "Common.Presence.Label.InExperience";
			invitedText = "Feature.Squads.Description.Invited";
			noResponseText = "Feature.Squads.Description.NoResponse";
			onlinePresenceText = "Common.Presence.Label.Online";
		})
	else
		var324_upvr = useLocalization_upvr
		var324_upvr = var324_upvr({
			connectingText = "Feature.Squads.Label.Connecting";
			inExperiencePresenceText = "Common.Presence.Label.InExperience";
			onlinePresenceText = "Common.Presence.Label.Online";
		})
	end
	local useTokens_upvr_result1_upvr_2 = useTokens_upvr()
	local useAnimatedTransparency_upvr_result1_2, useAnimatedTransparency_upvr_result2_upvr_2 = useAnimatedTransparency_upvr(1, game_DefineFastInt_result1_upvr_2, Enum.EasingStyle.Cubic)
	local any_useUserProfilesFetch_result1_4 = UserProfiles_upvr.Hooks.useUserProfilesFetch({
		userIds = {tostring(arg1.user.userId)};
		query = UserProfiles_upvr.Queries.userProfilesCombinedNameByUserIds;
	})
	if any_useUserProfilesFetch_result1_4.data then
		local any_getCombinedNameFromId_result1_upvw_2 = UserProfiles_upvr.Selectors.getCombinedNameFromId(any_useUserProfilesFetch_result1_4.data, arg1.user.userId)
	end
	local useSelector_upvr_result1 = useSelector_upvr(React_upvr.useCallback(function(arg1_11) -- Line 105
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		return arg1_11.Squad.Presence.byUserId[tostring(arg1.user.userId)]
	end, {arg1.user.userId}))
	local var337_upvr = useSelector_upvr_result1
	if var337_upvr then
		if useSelector_upvr_result1.userPresenceType ~= PresenceType_upvr.InGame then
			var337_upvr = false
		else
			var337_upvr = true
		end
	end
	local var338_upvw
	if var337_upvr then
		if useSelector_upvr_result1.lastLocation and useSelector_upvr_result1.lastLocation ~= "" then
			var338_upvw = useSelector_upvr_result1.lastLocation
		else
			var338_upvw = var324_upvr.inExperiencePresenceText
		end
	else
		var338_upvw = var324_upvr.onlinePresenceText
	end
	local isConnecting_upvr_3 = arg1.isConnecting
	local var340
	local var341 = tonumber(useLocalUserId_upvr()) or 0
	if var341 ~= arg1.user.userId then
		local _ = false
		-- KONSTANTWARNING: Skipped task `defvar` above
	else
	end
	if GetFFlagEnableCrossExpVoice_upvr() then
		if SharedFlags_upvr.FFlagPartyVoiceEnableMicPermissionsBanner then
		end
		local var343_upvw = useIsVoiceConnecting_upvr() and true
		local useIsActiveParticipant_upvr_result1_upvw_2 = useIsActiveParticipant_upvr(arg1.user.userId)
		local useIsLocalPlayerPartyVoiceEligible_upvr_result1_3 = useIsLocalPlayerPartyVoiceEligible_upvr()
		local var26_result1_2 = useIsUserPartyVoiceEligible_upvr(arg1.user.userId)
		if useIsCurrentSquadPartyVoiceEligible_upvr() ~= true then
			local _ = false
			-- KONSTANTWARNING: Skipped task `defvar` above
		else
		end
		if useIsParticipantMutedLocally_upvr(arg1.user.userId) ~= true then
		else
		end
		if FFlagPartyVoiceMuteOthers_upvr then
			if var26_result1_2 and true then
				-- KONSTANTERROR: Expression was reused, decompilation is incorrect
				if not true then
				end
			end
		end
		local var348_upvw = true
		local var30_result1 = useIsParticipantMuted_upvr(arg1.user.userId)
		if var30_result1 then
			var30_result1 = not var348_upvw
		end
		local var350_upvw = var30_result1
		if game_DefineFastFlag_result1_upvr_2 then
			if useIsParticipantInOtherAudioContext_upvr(var341, arg1.user.userId) ~= true then
			else
			end
		end
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		if true then
			if useIsLocalPlayerPartyVoiceEligible_upvr_result1_3 then
				if var26_result1_2 then
					if not not useIsVoiceConnected_upvr() then
						if not not useParticipant_upvr(arg1.user.userId) then
							if not true then
							end
						end
					end
				end
			end
		end
		local useIsMicPermissionsError_upvr_result1_upvw = useIsMicPermissionsError_upvr()
		local var352 = true
		if var352 then
			var352 = useIsLocalPlayerPartyVoiceEligible_upvr_result1_3
			if var352 then
				var352 = not var26_result1_2
			end
		end
		local var353_upvw = var352
	end
	local function var354() -- Line 174
		--[[ Upvalues[3]:
			[1]: CrossExperienceVoice_upvr (copied, readonly)
			[2]: useAnimatedTransparency_upvr_result2_upvr_2 (readonly)
			[3]: game_DefineFastInt_result1_upvr (copied, readonly)
		]]
		return CrossExperienceVoice_upvr.Utils.debounce(function(arg1_12) -- Line 175
			--[[ Upvalues[1]:
				[1]: useAnimatedTransparency_upvr_result2_upvr_2 (copied, readonly)
			]]
			useAnimatedTransparency_upvr_result2_upvr_2(arg1_12)
		end, game_DefineFastInt_result1_upvr)
	end
	var354 = React_upvr.useEffect
	local var356_upvr = var354
	local any_useMemo_result1_upvr = React_upvr.useMemo(var354, {})
	var356_upvr(function() -- Line 180
		--[[ Upvalues[4]:
			[1]: GetFFlagEnableCrossExpVoice_upvr (copied, readonly)
			[2]: useIsActiveParticipant_upvr_result1_upvw_2 (read and write)
			[3]: any_useMemo_result1_upvr (readonly)
			[4]: useAnimatedTransparency_upvr_result2_upvr_2 (readonly)
		]]
		if GetFFlagEnableCrossExpVoice_upvr() then
			if useIsActiveParticipant_upvr_result1_upvw_2 then
				any_useMemo_result1_upvr.cancel()
				useAnimatedTransparency_upvr_result2_upvr_2(0)
				return
			end
			any_useMemo_result1_upvr.call(1)
		end
	end, {useIsActiveParticipant_upvr_result1_upvw_2})
	if SquadInviteChangesExperimentation_upvr.getInviteChangesEnabled() then
		var356_upvr = React_upvr.useMemo
		local tbl_52 = {}
		local user_4 = arg1.user
		if user_4 then
			user_4 = arg1.user.partyStatus
		end
		tbl_52[1] = user_4
		tbl_52[2] = var338_upvw
		tbl_52[3] = isConnecting_upvr_3
		tbl_52[4] = var343_upvw
		tbl_52[5] = var324_upvr.noResponse
		tbl_52[6] = var324_upvr.invitedText
		tbl_52[7] = var324_upvr.connectingText
		var356_upvr = var356_upvr(function() -- Line 193
			--[[ Upvalues[7]:
				[1]: arg1 (readonly)
				[2]: SquadUserPartyStatus_upvr (copied, readonly)
				[3]: var324_upvr (readonly)
				[4]: isConnecting_upvr_3 (readonly)
				[5]: game_DefineFastFlag_result1_upvr (copied, readonly)
				[6]: var343_upvw (read and write)
				[7]: var338_upvw (read and write)
			]]
			if arg1.user.partyStatus == SquadUserPartyStatus_upvr.NoResponse then
				return var324_upvr.noResponseText
			end
			if arg1.user.partyStatus == SquadUserPartyStatus_upvr.Invited then
				return var324_upvr.invitedText
			end
			if isConnecting_upvr_3 or game_DefineFastFlag_result1_upvr and var343_upvw then
				return var324_upvr.connectingText
			end
			return var338_upvw
		end, tbl_52)
	else
		var356_upvr = nil
	end
	if SquadInviteChangesExperimentation_upvr.getInviteChangesEnabled() then
		local function _() -- Line 217
			--[[ Upvalues[10]:
				[1]: arg1 (readonly)
				[2]: SquadUserPartyStatus_upvr (copied, readonly)
				[3]: React_upvr (copied, readonly)
				[4]: Foundation_upvr (copied, readonly)
				[5]: IconSize_upvr (copied, readonly)
				[6]: useTokens_upvr_result1_upvr_2 (readonly)
				[7]: isConnecting_upvr_3 (readonly)
				[8]: game_DefineFastFlag_result1_upvr (copied, readonly)
				[9]: var343_upvw (read and write)
				[10]: var337_upvr (readonly)
			]]
			if arg1.user.partyStatus == SquadUserPartyStatus_upvr.Invited then
				return React_upvr.createElement(Foundation_upvr.View, {
					tag = "auto-xy";
				}, {
					LoadingIcon = React_upvr.createElement(Foundation_upvr.Loading, {
						LayoutOrder = 1;
						size = IconSize_upvr.Small;
						Padding = useTokens_upvr_result1_upvr_2.Padding.XSmall;
					});
				})
			end
			if arg1.user.partyStatus == SquadUserPartyStatus_upvr.NoResponse then
				return nil
			end
			if isConnecting_upvr_3 or game_DefineFastFlag_result1_upvr and var343_upvw then
				return React_upvr.createElement(Foundation_upvr.View, {
					tag = "auto-xy";
				}, {
					LoadingIcon = React_upvr.createElement(Foundation_upvr.Loading, {
						LayoutOrder = 1;
						size = IconSize_upvr.Small;
						Padding = useTokens_upvr_result1_upvr_2.Padding.XSmall;
					});
				})
			end
			if var337_upvr then
				return React_upvr.createElement(Foundation_upvr.Icon, {
					LayoutOrder = 1;
					name = "icons/common/play";
					size = IconSize_upvr.Small;
					style = useTokens_upvr_result1_upvr_2.Color.Content.Emphasis;
				})
			end
			return nil
		end
		local tbl_63 = {}
		local user_3 = arg1.user
		if user_3 then
			user_3 = arg1.user.partyStatus
		end
		tbl_63[1] = user_3
		tbl_63[2] = isConnecting_upvr_3
		tbl_63[3] = var343_upvw
		tbl_63[4] = var337_upvr
		-- KONSTANTWARNING: GOTO [381] #295
	end
	local var373_upvr
	local function _() -- Line 336
		--[[ Upvalues[13]:
			[1]: React_upvr (copied, readonly)
			[2]: useTokens_upvr_result1_upvr_2 (readonly)
			[3]: SquadInviteChangesExperimentation_upvr (copied, readonly)
			[4]: var373_upvr (readonly)
			[5]: isConnecting_upvr_3 (readonly)
			[6]: game_DefineFastFlag_result1_upvr (copied, readonly)
			[7]: var343_upvw (read and write)
			[8]: Foundation_upvr (copied, readonly)
			[9]: IconSize_upvr (copied, readonly)
			[10]: var337_upvr (readonly)
			[11]: var356_upvr (readonly)
			[12]: var324_upvr (readonly)
			[13]: var338_upvw (read and write)
		]]
		-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
		-- KONSTANTERROR: [0] 1. Error Block 35 start (CF ANALYSIS FAILED)
		local module_7 = {
			UIListLayout = React_upvr.createElement("UIListLayout", {
				FillDirection = Enum.FillDirection.Horizontal;
				Padding = UDim.new(0, useTokens_upvr_result1_upvr_2.Gap.XSmall);
				SortOrder = Enum.SortOrder.LayoutOrder;
				VerticalAlignment = Enum.VerticalAlignment.Center;
			});
		}
		local var387
		if SquadInviteChangesExperimentation_upvr.getInviteChangesEnabled() then
			var387 = var373_upvr
			-- KONSTANTWARNING: GOTO [137] #96
		end
		-- KONSTANTERROR: [0] 1. Error Block 35 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [61] 42. Error Block 38 start (CF ANALYSIS FAILED)
		if isConnecting_upvr_3 or game_DefineFastFlag_result1_upvr and var343_upvw then
			var387 = React_upvr.createElement
			var387 = var387(Foundation_upvr.View, {
				tag = "auto-xy";
			}, {
				LoadingIcon = React_upvr.createElement(Foundation_upvr.Loading, {
					LayoutOrder = 1;
					size = IconSize_upvr.Small;
					Padding = useTokens_upvr_result1_upvr_2.Padding.XSmall;
				});
			})
		elseif var337_upvr then
			var387 = React_upvr.createElement
			var387 = var387(Foundation_upvr.Icon, {
				LayoutOrder = 1;
				name = "icons/common/play";
				size = IconSize_upvr.Small;
				style = useTokens_upvr_result1_upvr_2.Color.Content.Emphasis;
			})
		else
			var387 = nil
		end
		module_7.PresenceIcon = var387
		var387 = React_upvr.createElement
		local tbl_101 = {
			AutomaticSize = Enum.AutomaticSize.Y;
			backgroundStyle = useTokens_upvr_result1_upvr_2.Color.None;
			colorstyle = useTokens_upvr_result1_upvr_2.Color.Content.Default;
			fontStyle = useTokens_upvr_result1_upvr_2.Typography.BodyMedium;
			LayoutOrder = 2;
		}
		if SquadInviteChangesExperimentation_upvr.getInviteChangesEnabled() then
		elseif isConnecting_upvr_3 or game_DefineFastFlag_result1_upvr and var343_upvw then
		else
		end
		tbl_101.Text = var338_upvw
		tbl_101.TextXAlignment = Enum.TextXAlignment.Left
		tbl_101.TextYAlignment = Enum.TextYAlignment.Center
		tbl_101.TextTruncate = Enum.TextTruncate.AtEnd
		tbl_101.TextWrapped = false
		var387 = var387(Foundation_upvr.Text, tbl_101, {
			UIFlexItem = React_upvr.createElement("UIFlexItem", {
				FlexMode = Enum.UIFlexMode.Fill;
			});
		})
		module_7.PresenceTextLabel = var387
		do
			return React_upvr.createElement("Frame", {
				AutomaticSize = Enum.AutomaticSize.Y;
				Size = UDim2.fromScale(1, 0);
				BackgroundTransparency = 1;
				LayoutOrder = 2;
			}, module_7)
		end
		-- KONSTANTERROR: [61] 42. Error Block 38 end (CF ANALYSIS FAILED)
	end
	if SquadInviteChangesExperimentation_upvr.getInviteChangesEnabled() then
		-- KONSTANTWARNING: GOTO [440] #349
	end
	if SquadInviteChangesExperimentation_upvr.getInviteChangesEnabled() then
	else
	end
	if FFlagEnableSquadUserCardHoverFix_upvr then
		if #useSquadUserDropdownMenuButtons_upvr(arg1.user.userId, arg1.isInExperience) >= 1 then
		else
		end
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		if not true then
		end
	else
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	end
	local module_9 = {
		LayoutOrder = arg1.layoutOrder;
		Size = arg1.size;
		backgroundStyle = useTokens_upvr_result1_upvr_2.Color.Surface.Surface_200;
		cornerRadius = UDim.new(0, useTokens_upvr_result1_upvr_2.Radius.Medium);
	}
	if not isConnecting_upvr_3 and (not game_DefineFastFlag_result1_upvr or not var343_upvw) or SquadInviteChangesExperimentation_upvr.getInviteChangesEnabled() and arg1.user.partyStatus ~= SquadUserPartyStatus_upvr.Invited then
		if arg1.user.partyStatus ~= SquadUserPartyStatus_upvr.NoResponse then
		else
		end
	end
	module_9.isDisabled = true
	local var397
	if arg1.onActivated and not true then
		var397 = React_upvr.useCallback(function() -- Line 413
			--[[ Upvalues[1]:
				[1]: arg1 (readonly)
			]]
			if arg1.onActivated then
				arg1.onActivated(tostring(arg1.user.userId))
			end
		end, dependencyArray_upvr(arg1.onActivated, arg1.user.userId))
	else
		var397 = nil
	end
	module_9.onActivated = var397
	var397 = {}
	var397.AvatarImage = React_upvr.createElement(ImageSetLabel_upvr, {
		AnchorPoint = Vector2.new(0.5, 0.5);
		Position = UDim2.fromScale(0.5, 0.5);
		Size = UDim2.fromOffset(96, 96);
		BackgroundColor3 = useTokens_upvr_result1_upvr_2.Color.Shift.Shift_300.Color3;
		BackgroundTransparency = useTokens_upvr_result1_upvr_2.Color.Shift.Shift_300.Transparency;
		Image = getStandardSizeAvatarHeadShotRbxthumb_upvr(tostring(arg1.user.userId));
		ZIndex = 0;
	}, {
		UICorner = React_upvr.createElement("UICorner", {
			CornerRadius = UDim.new(1, 0);
		});
	})
	var397.GradientFrame = React_upvr.createElement("Frame", {
		Size = UDim2.fromScale(1, 0.5);
		Position = UDim2.fromScale(0, 1);
		AnchorPoint = Vector2.new(0, 1);
		BackgroundColor3 = useTokens_upvr_result1_upvr_2.Color.Surface.Surface_100.Color3;
		BackgroundTransparency = useTokens_upvr_result1_upvr_2.Color.Surface.Surface_100.Transparency;
		ZIndex = 1;
	}, {
		UICorner = React_upvr.createElement("UICorner", {
			CornerRadius = UDim.new(0, useTokens_upvr_result1_upvr_2.Radius.Medium);
		});
		UIGradient = React_upvr.createElement("UIGradient", {
			Rotation = 90;
			Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0, 1), NumberSequenceKeypoint.new(1, 0)});
		}, {});
	})
	if isConnecting_upvr_3 or useIsMicPermissionsError_upvr_result1_upvw or game_DefineFastFlag_result1_upvr and var343_upvw or SquadInviteChangesExperimentation_upvr.getInviteChangesEnabled() and (arg1.user.partyStatus == SquadUserPartyStatus_upvr.Invited or arg1.user.partyStatus == SquadUserPartyStatus_upvr.NoResponse) then
		({
			tag = "size-full radius-medium";
		}).backgroundStyle = {
			Color3 = useTokens_upvr_result1_upvr_2.Color.Surface.Surface_100.Color3;
			Transparency = 0.25;
		}
	else
	end
	var397.InactiveOverlay = nil
	local tbl_37 = {
		UIListLayout = React_upvr.createElement("UIListLayout", {
			FillDirection = Enum.FillDirection.Vertical;
			HorizontalAlignment = Enum.HorizontalAlignment.Left;
			SortOrder = Enum.SortOrder.LayoutOrder;
			VerticalAlignment = Enum.VerticalAlignment.Bottom;
		});
		UIPadding = React_upvr.createElement("UIPadding", {
			PaddingBottom = UDim.new(0, useTokens_upvr_result1_upvr_2.Padding.Medium);
			PaddingLeft = UDim.new(0, useTokens_upvr_result1_upvr_2.Padding.Medium);
			PaddingRight = UDim.new(0, useTokens_upvr_result1_upvr_2.Padding.Medium);
			PaddingTop = UDim.new(0, useTokens_upvr_result1_upvr_2.Padding.Medium);
		});
		Name = React_upvr.useMemo(function() -- Line 251
			--[[ Upvalues[11]:
				[1]: any_getCombinedNameFromId_result1_upvw_2 (read and write)
				[2]: React_upvr (copied, readonly)
				[3]: useTokens_upvr_result1_upvr_2 (readonly)
				[4]: arg1 (readonly)
				[5]: Foundation_upvr (copied, readonly)
				[6]: IconSize_upvr (copied, readonly)
				[7]: var348_upvw (read and write)
				[8]: var350_upvw (read and write)
				[9]: FFlagPartyVoiceMuteOthers_upvr (copied, readonly)
				[10]: useIsMicPermissionsError_upvr_result1_upvw (read and write)
				[11]: var353_upvw (read and write)
			]]
			-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
			local var375
			-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
			-- KONSTANTERROR: [3] 3. Error Block 60 start (CF ANALYSIS FAILED)
			local tbl_55 = {
				AutomaticSize = Enum.AutomaticSize.Y;
			}
			var375 = 1
			tbl_55.Size = UDim2.fromScale(var375, 0)
			tbl_55.BackgroundTransparency = 1
			tbl_55.LayoutOrder = 1
			local tbl_54 = {}
			var375 = React_upvr.createElement
			var375 = var375("UIListLayout", {
				FillDirection = Enum.FillDirection.Horizontal;
				Padding = UDim.new(0, useTokens_upvr_result1_upvr_2.Gap.XSmall + 2);
				SortOrder = Enum.SortOrder.LayoutOrder;
				VerticalAlignment = Enum.VerticalAlignment.Center;
			})
			tbl_54.UIListLayout = var375
			local var379
			if arg1.isBlocked then
				var375 = React_upvr.createElement
				local tbl_110 = {}
				var379 = 1
				tbl_110.LayoutOrder = var379
				var379 = "icons/status/unavailable_small"
				tbl_110.name = var379
				var379 = IconSize_upvr.Small
				tbl_110.size = var379
				var379 = useTokens_upvr_result1_upvr_2.Color.Extended.Red.Red_800
				tbl_110.style = var379
				var375 = var375(Foundation_upvr.Icon, tbl_110)
			else
				var375 = nil
			end
			tbl_54.BlockedIcon = var375
			if var348_upvw then
				local tbl_50 = {}
				var379 = 2
				tbl_50.LayoutOrder = var379
				var379 = "icons/controls/voice/microphone_off_small_dark"
				tbl_50.name = var379
				var379 = IconSize_upvr.Small
				tbl_50.size = var379
				var379 = useTokens_upvr_result1_upvr_2.Color.Extended.Red.Red_800
				tbl_50.style = var379
			else
			end
			tbl_54.MutedLocallyIcon = nil
			if var350_upvw then
				local tbl_49 = {}
				if FFlagPartyVoiceMuteOthers_upvr then
					var379 = 3
				else
					var379 = 2
				end
				tbl_49.LayoutOrder = var379
				var379 = "icons/controls/microphoneMute_small"
				tbl_49.name = var379
				var379 = IconSize_upvr.Small
				tbl_49.size = var379
				var379 = useTokens_upvr_result1_upvr_2.Color.Content.Emphasis
				tbl_49.style = var379
				-- KONSTANTWARNING: GOTO [168] #114
			end
			-- KONSTANTERROR: [3] 3. Error Block 60 end (CF ANALYSIS FAILED)
		end, dependencyArray_upvr(any_getCombinedNameFromId_result1_upvw_2, var350_upvw, var348_upvw, arg1.isBlocked, useTokens_upvr_result1_upvr_2, useIsMicPermissionsError_upvr_result1_upvw, var353_upvw));
	}
	if not arg1.isBlocked then
	else
	end
	tbl_37.Presence = nil
	var397.TextContainer = React_upvr.createElement("Frame", {
		AutomaticSize = Enum.AutomaticSize.Y;
		AnchorPoint = Vector2.new(0, 1);
		Position = UDim2.fromScale(0, 1);
		Size = UDim2.fromScale(1, 0);
		BackgroundTransparency = 1;
		ZIndex = 2;
	}, tbl_37)
	var397.ActiveBorder = React_upvr.createElement("Frame", {
		AnchorPoint = Vector2.new(0.5, 0.5);
		Position = UDim2.new(0.5, 0, 0.5, 0);
		Size = UDim2.new(1, -8, 1, -8);
		BackgroundTransparency = 1;
		ZIndex = 4;
	}, {
		UICorner = React_upvr.createElement("UICorner", {
			CornerRadius = UDim.new(0, useTokens_upvr_result1_upvr_2.Radius.Medium - 4);
		});
		UIStroke = React_upvr.createElement("UIStroke", {
			Thickness = 4;
			Color = useTokens_upvr_result1_upvr_2.Color.Extended.Green.Green_800.Color3;
			Transparency = useAnimatedTransparency_upvr_result1_2;
		});
	})
	var397.DefaultBorder = React_upvr.createElement("Frame", {
		AnchorPoint = Vector2.new(0.5, 0.5);
		Position = UDim2.new(0.5, 0, 0.5, 0);
		Size = UDim2.new(1, -2, 1, -2);
		BackgroundTransparency = 1;
		ZIndex = 3;
	}, {
		UICorner = React_upvr.createElement("UICorner", {
			CornerRadius = UDim.new(0, useTokens_upvr_result1_upvr_2.Radius.Medium - 1);
		});
		UIStroke = React_upvr.createElement("UIStroke", {
			Thickness = 1;
			Color = useTokens_upvr_result1_upvr_2.Color.Stroke.Default.Color3;
			Transparency = useAnimatedTransparency_upvr_result1_2:map(function(arg1_13) -- Line 542
				--[[ Upvalues[1]:
					[1]: useTokens_upvr_result1_upvr_2 (readonly)
				]]
				if arg1_13 < 0.9 then
					return 1
				end
				return useTokens_upvr_result1_upvr_2.Color.Stroke.Default.Transparency
			end);
		});
	})
	return React_upvr.createElement(Foundation_upvr.View, module_9, var397)
end