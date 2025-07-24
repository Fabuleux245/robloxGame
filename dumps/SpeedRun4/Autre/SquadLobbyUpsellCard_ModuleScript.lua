-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:43:26
-- Luau version 6, Types version 3
-- Time taken: 0.007269 seconds

local Squads = script:FindFirstAncestor("Squads")
local Parent = Squads.Parent
local dependencies = require(Squads.dependencies)
local Foundation_upvr = dependencies.Foundation
local SquadsCore = dependencies.SquadsCore
local useDispatch_upvr = dependencies.Hooks.useDispatch
local useTokens_upvr = Foundation_upvr.Hooks.useTokens
local Responsive_upvr = require(Parent.Responsive)
local useLocalUserId_upvr = require(Parent.RobloxAppHooks).useLocalUserId
local useLocalization_upvr = dependencies.Hooks.useLocalization
local SquadInviteChangesExperimentation_upvr = dependencies.SocialExperiments.SquadInviteChangesExperimentation
local useCurrentSquadSelector_upvr = dependencies.Hooks.useCurrentSquadSelector
local useCurrentSquadId_upvr = SquadsCore.Hooks.useCurrentSquadId
local React_upvr = dependencies.React
local FFlagReinviteButtonSpamClickFixEnabled_upvr = require(Squads.Flags.FFlagReinviteButtonSpamClickFixEnabled)
local NetworkingSquads_upvr = dependencies.NetworkingSquads
local useSelector_upvr = dependencies.Hooks.useSelector
local SquadExternalContractContext_upvr = SquadsCore.SquadExternalContractProvider.SquadExternalContractContext
local dependencyArray_upvr = dependencies.Hooks.dependencyArray
local getStandardSizeAvatarHeadShotRbxthumb_upvr = require(Parent.UserLib).Utils.getStandardSizeAvatarHeadShotRbxthumb
local HorizontalFacepileGroup_upvr = require(Squads.Common.HorizontalFacepileGroup)
local useEffectOnce_upvr = dependencies.Hooks.useEffectOnce
local EventNames_upvr = SquadsCore.Analytics.EventNames
local NoResponseInviteAgainOrAddOthersEnum_upvr = require(Squads.Enums.NoResponseInviteAgainOrAddOthersEnum)
local reinviteToSquad_upvr = SquadsCore.Thunks.reinviteToSquad
local SquadInvitePageNavSourceEnum_upvr = require(Squads.Enums.SquadInvitePageNavSourceEnum)
local NetworkStatus_upvr = dependencies.RoduxNetworking.Enum.NetworkStatus
return function(arg1) -- Line 43
	--[[ Upvalues[23]:
		[1]: useDispatch_upvr (readonly)
		[2]: useTokens_upvr (readonly)
		[3]: Responsive_upvr (readonly)
		[4]: useLocalUserId_upvr (readonly)
		[5]: useLocalization_upvr (readonly)
		[6]: SquadInviteChangesExperimentation_upvr (readonly)
		[7]: useCurrentSquadSelector_upvr (readonly)
		[8]: useCurrentSquadId_upvr (readonly)
		[9]: React_upvr (readonly)
		[10]: FFlagReinviteButtonSpamClickFixEnabled_upvr (readonly)
		[11]: NetworkingSquads_upvr (readonly)
		[12]: useSelector_upvr (readonly)
		[13]: SquadExternalContractContext_upvr (readonly)
		[14]: Foundation_upvr (readonly)
		[15]: dependencyArray_upvr (readonly)
		[16]: getStandardSizeAvatarHeadShotRbxthumb_upvr (readonly)
		[17]: HorizontalFacepileGroup_upvr (readonly)
		[18]: useEffectOnce_upvr (readonly)
		[19]: EventNames_upvr (readonly)
		[20]: NoResponseInviteAgainOrAddOthersEnum_upvr (readonly)
		[21]: reinviteToSquad_upvr (readonly)
		[22]: SquadInvitePageNavSourceEnum_upvr (readonly)
		[23]: NetworkStatus_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local useTokens_upvr_result1_upvr = useTokens_upvr()
	local any_useBreakpointXOrSmaller_result1 = Responsive_upvr.useBreakpointXOrSmaller(Responsive_upvr.Keys.Small)
	local useLocalUserId_upvr_result1_upvr = useLocalUserId_upvr()
	local tbl_4 = {
		addOthers = "Feature.Squads.Action.AddOthers";
	}
	local var33_upvr
	if SquadInviteChangesExperimentation_upvr.getInviteChangesEnabled() then
		var33_upvr = "Feature.Squads.Description.upsellInviteText"
	else
		var33_upvr = "Feature.Squads.Description.UpsellMessage"
	end
	tbl_4.upsellText = var33_upvr
	var33_upvr = "Feature.Squads.Action.Invite"
	tbl_4.inviteText = var33_upvr
	var33_upvr = "Feature.Squads.Action.InviteAgain"
	tbl_4.inviteAgain = var33_upvr
	local var11_result1_upvr = useLocalization_upvr(tbl_4)
	local var13_result1 = useCurrentSquadSelector_upvr()
	if var13_result1 and var13_result1.parentChannelId then
		var33_upvr = var13_result1.parentChannelId
	else
		var33_upvr = nil
	end
	local useCurrentSquadId_upvr_result1_upvr = useCurrentSquadId_upvr()
	local useSelector_upvr_result1_upvr = useSelector_upvr(React_upvr.useCallback(function(arg1_2) -- Line 64
		--[[ Upvalues[3]:
			[1]: FFlagReinviteButtonSpamClickFixEnabled_upvr (copied, readonly)
			[2]: NetworkingSquads_upvr (copied, readonly)
			[3]: useCurrentSquadId_upvr_result1_upvr (readonly)
		]]
		if FFlagReinviteButtonSpamClickFixEnabled_upvr then
			return NetworkingSquads_upvr.ReinviteToSquad.getStatus(arg1_2, {
				squadId = useCurrentSquadId_upvr_result1_upvr;
			})
		end
	end, {useCurrentSquadId_upvr_result1_upvr}))
	local any_useContext_result1_upvr = React_upvr.useContext(SquadExternalContractContext_upvr)
	local any_useGetConversationFromId_result1_upvr = any_useContext_result1_upvr.useGetConversationFromId(var33_upvr or "")
	if SquadInviteChangesExperimentation_upvr.getInviteChangesEnabled() then
		local function _() -- Line 88
			--[[ Upvalues[6]:
				[1]: any_useGetConversationFromId_result1_upvr (readonly)
				[2]: useLocalUserId_upvr_result1_upvr (readonly)
				[3]: getStandardSizeAvatarHeadShotRbxthumb_upvr (copied, readonly)
				[4]: React_upvr (copied, readonly)
				[5]: HorizontalFacepileGroup_upvr (copied, readonly)
				[6]: useTokens_upvr_result1_upvr (readonly)
			]]
			if any_useGetConversationFromId_result1_upvr and any_useGetConversationFromId_result1_upvr.participants then
				for _, v in ipairs(any_useGetConversationFromId_result1_upvr.participants) do
					if v ~= useLocalUserId_upvr_result1_upvr then
						table.insert({}, getStandardSizeAvatarHeadShotRbxthumb_upvr(v))
					end
				end
			end
			local module_3 = {
				avatarSize = useTokens_upvr_result1_upvr.Size.Size_800;
			}
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect
			module_3.images = {}
			module_3.imageBackgroundStyle = {
				Color3 = useTokens_upvr_result1_upvr.Color.OverMedia.OverMedia_300.Color3;
				Transparency = useTokens_upvr_result1_upvr.Color.OverMedia.OverMedia_300.Transparency;
			}
			module_3.imageBorderStyle = {
				Color = useTokens_upvr_result1_upvr.Color.Surface.Surface_0.Color3;
				Transparency = useTokens_upvr_result1_upvr.Color.Surface.Surface_0.Transparency;
			}
			return React_upvr.createElement(HorizontalFacepileGroup_upvr, module_3)
		end
		local var55 = any_useGetConversationFromId_result1_upvr
		if var55 then
			var55 = any_useGetConversationFromId_result1_upvr.participants
		end
	else
	end
	if SquadInviteChangesExperimentation_upvr.getInviteChangesEnabled() then
		useEffectOnce_upvr(function() -- Line 114
			--[[ Upvalues[4]:
				[1]: any_useContext_result1_upvr (readonly)
				[2]: EventNames_upvr (copied, readonly)
				[3]: NoResponseInviteAgainOrAddOthersEnum_upvr (copied, readonly)
				[4]: var33_upvr (readonly)
			]]
			any_useContext_result1_upvr.fireSquadAnalytics(EventNames_upvr.NoResponseInviteAgainOrAddOthers, {
				actionType = NoResponseInviteAgainOrAddOthersEnum_upvr.Impression;
				button = NoResponseInviteAgainOrAddOthersEnum_upvr.InviteAgain;
				conversationId = var33_upvr;
			})
			any_useContext_result1_upvr.fireSquadAnalytics(EventNames_upvr.NoResponseInviteAgainOrAddOthers, {
				actionType = NoResponseInviteAgainOrAddOthersEnum_upvr.Impression;
				button = NoResponseInviteAgainOrAddOthersEnum_upvr.AddOthers;
				conversationId = var33_upvr;
			})
		end, var33_upvr)
	end
	local var7_result1_upvr = useDispatch_upvr()
	local any_useCallback_result1_upvr = React_upvr.useCallback(function() -- Line 128
		--[[ Upvalues[7]:
			[1]: var7_result1_upvr (readonly)
			[2]: reinviteToSquad_upvr (copied, readonly)
			[3]: useCurrentSquadId_upvr_result1_upvr (readonly)
			[4]: any_useContext_result1_upvr (readonly)
			[5]: EventNames_upvr (copied, readonly)
			[6]: NoResponseInviteAgainOrAddOthersEnum_upvr (copied, readonly)
			[7]: var33_upvr (readonly)
		]]
		var7_result1_upvr(reinviteToSquad_upvr(useCurrentSquadId_upvr_result1_upvr, any_useContext_result1_upvr.setSquadPrompt))
		any_useContext_result1_upvr.fireSquadAnalytics(EventNames_upvr.NoResponseInviteAgainOrAddOthers, {
			actionType = NoResponseInviteAgainOrAddOthersEnum_upvr.Click;
			button = NoResponseInviteAgainOrAddOthersEnum_upvr.InviteAgain;
			conversationId = var33_upvr;
		})
	end, {any_useContext_result1_upvr.fireSquadAnalytics, var33_upvr})
	local any_useCallback_result1_upvr_2 = React_upvr.useCallback(function() -- Line 139
		--[[ Upvalues[6]:
			[1]: any_useContext_result1_upvr (readonly)
			[2]: EventNames_upvr (copied, readonly)
			[3]: NoResponseInviteAgainOrAddOthersEnum_upvr (copied, readonly)
			[4]: var33_upvr (readonly)
			[5]: SquadInvitePageNavSourceEnum_upvr (copied, readonly)
			[6]: arg1 (readonly)
		]]
		any_useContext_result1_upvr.fireSquadAnalytics(EventNames_upvr.NoResponseInviteAgainOrAddOthers, {
			actionType = NoResponseInviteAgainOrAddOthersEnum_upvr.Click;
			button = NoResponseInviteAgainOrAddOthersEnum_upvr.AddOthers;
			conversationId = var33_upvr;
		})
		any_useContext_result1_upvr.fireSquadAnalytics(EventNames_upvr.SquadInvitePageNavSource, {
			inviteNavSource = SquadInvitePageNavSourceEnum_upvr.SquadLobbyUpsellCardClicked;
			parentChannelId = var33_upvr;
		})
		arg1.navigateToSquadInviteFriends()
	end, {var33_upvr, any_useContext_result1_upvr.fireSquadAnalytics, arg1.navigateToSquadInviteFriends})
	local function _() -- Line 158
		--[[ Upvalues[7]:
			[1]: React_upvr (copied, readonly)
			[2]: Foundation_upvr (copied, readonly)
			[3]: FFlagReinviteButtonSpamClickFixEnabled_upvr (copied, readonly)
			[4]: useSelector_upvr_result1_upvr (readonly)
			[5]: NetworkStatus_upvr (copied, readonly)
			[6]: any_useCallback_result1_upvr (readonly)
			[7]: var11_result1_upvr (readonly)
		]]
		local module_2 = {}
		local Fill = Foundation_upvr.Enums.FillBehavior.Fill
		module_2.fillBehavior = Fill
		if FFlagReinviteButtonSpamClickFixEnabled_upvr then
			if useSelector_upvr_result1_upvr ~= NetworkStatus_upvr.Fetching then
				Fill = false
			else
				Fill = true
			end
		else
			Fill = false
		end
		module_2.isDisabled = Fill
		module_2.LayoutOrder = 1
		module_2.onActivated = any_useCallback_result1_upvr
		module_2.text = var11_result1_upvr.inviteAgain
		module_2.size = Foundation_upvr.Enums.InputSize.Medium
		module_2.variant = Foundation_upvr.Enums.ButtonVariant.Standard
		return React_upvr.createElement(Foundation_upvr.Button, module_2)
	end
	local tbl_2 = {}
	if FFlagReinviteButtonSpamClickFixEnabled_upvr then
	else
	end
	tbl_2[1] = any_useCallback_result1_upvr
	tbl_2[2] = var11_result1_upvr.inviteAgain
	tbl_2[3] = nil
	local function _() -- Line 176
		--[[ Upvalues[4]:
			[1]: React_upvr (copied, readonly)
			[2]: Foundation_upvr (copied, readonly)
			[3]: any_useCallback_result1_upvr_2 (readonly)
			[4]: var11_result1_upvr (readonly)
		]]
		return React_upvr.createElement(Foundation_upvr.Button, {
			fillBehavior = Foundation_upvr.Enums.FillBehavior.Fill;
			LayoutOrder = 2;
			onActivated = any_useCallback_result1_upvr_2;
			text = var11_result1_upvr.addOthers;
			size = Foundation_upvr.Enums.ButtonSize.Medium;
			variant = Foundation_upvr.Enums.ButtonVariant.Standard;
		})
	end
	local _ = {any_useCallback_result1_upvr_2, var11_result1_upvr.addOthers}
	local module = {}
	local tbl_3 = {}
	if SquadInviteChangesExperimentation_upvr.getInviteChangesEnabled() then
		local _ = {
			LayoutOrder = 1;
			tag = "size-full-0 gap-medium align-x-center auto-y col";
		}
		local _ = {
			UpsellFacepile = nil;
			UpsellLabel = React_upvr.useMemo(function() -- Line 74
				--[[ Upvalues[4]:
					[1]: React_upvr (copied, readonly)
					[2]: Foundation_upvr (copied, readonly)
					[3]: useTokens_upvr_result1_upvr (readonly)
					[4]: var11_result1_upvr (readonly)
				]]
				return React_upvr.createElement(Foundation_upvr.Text, {
					AutomaticSize = Enum.AutomaticSize.Y;
					Size = UDim2.fromScale(1, 0);
					fontStyle = useTokens_upvr_result1_upvr.Typography.BodyLarge;
					LayoutOrder = 1;
					Text = var11_result1_upvr.upsellText;
					textStyle = useTokens_upvr_result1_upvr.Color.Content.Default;
					TextXAlignment = Enum.TextXAlignment.Center;
					TextWrapped = true;
				})
			end, dependencyArray_upvr(useTokens_upvr_result1_upvr, var11_result1_upvr.upsellText));
		}
		-- KONSTANTWARNING: GOTO [364] #267
	end
	tbl_3.UpsellInformation = nil
	if not SquadInviteChangesExperimentation_upvr.getInviteChangesEnabled() then
		-- KONSTANTWARNING: GOTO [374] #275
	end
	tbl_3.UpsellLabel = nil
	local tbl = {}
	if SquadInviteChangesExperimentation_upvr.getInviteChangesEnabled() then
		-- KONSTANTWARNING: GOTO [407] #298
	end
	tbl.InviteAgainButton = nil
	if SquadInviteChangesExperimentation_upvr.getInviteChangesEnabled() then
	else
	end
	tbl.AddOthersButton = nil
	tbl_3.Buttons = React_upvr.createElement(Foundation_upvr.View, {
		LayoutOrder = 2;
		tag = {
			["size-full-0 gap-small align-x-center flex-fill align-y-center auto-y"] = true;
			col = any_useBreakpointXOrSmaller_result1;
			row = not any_useBreakpointXOrSmaller_result1;
		};
	}, tbl)
	module[1] = React_upvr.createElement(Foundation_upvr.View, {
		AnchorPoint = Vector2.new(0.5, 0.5);
		Position = UDim2.fromScale(0.5, 0.5);
		Size = UDim2.new(1, -2 * useTokens_upvr_result1_upvr.Stroke.Standard, 1, -2 * useTokens_upvr_result1_upvr.Stroke.Standard);
		cornerRadius = UDim.new(0, useTokens_upvr_result1_upvr.Radius.Medium);
		padding = useTokens_upvr_result1_upvr.Padding.XXLarge;
		layout = {
			FillDirection = Enum.FillDirection.Vertical;
			HorizontalAlignment = Enum.HorizontalAlignment.Center;
			Padding = UDim.new(0, useTokens_upvr_result1_upvr.Gap.XXLarge);
			SortOrder = Enum.SortOrder.LayoutOrder;
			VerticalAlignment = Enum.VerticalAlignment.Center;
		};
		stroke = {
			Color = useTokens_upvr_result1_upvr.Color.Stroke.Default.Color3;
			Transparency = useTokens_upvr_result1_upvr.Color.Stroke.Default.Transparency;
			Thickness = useTokens_upvr_result1_upvr.Stroke.Standard;
		};
	}, tbl_3)
	return React_upvr.createElement("Frame", {
		Size = arg1.size;
		BackgroundTransparency = 1;
		LayoutOrder = arg1.layoutOrder;
	}, module)
end