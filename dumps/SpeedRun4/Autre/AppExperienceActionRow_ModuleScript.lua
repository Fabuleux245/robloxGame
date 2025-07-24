-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:33:59
-- Luau version 6, Types version 3
-- Time taken: 0.010807 seconds

-- KONSTANTERROR: [0] 1. Error Block 21 start (CF ANALYSIS FAILED)
local Parent = script:FindFirstAncestor("GameTile").Parent
local RoactServiceTags = require(Parent.RoactServiceTags)
local Roact_upvr = require(Parent.Roact)
local t = require(Parent.t)
local UIBlox = require(Parent.UIBlox)
local RobloxAppSessionization = require(Parent.RobloxAppSessionization)
local GamePlayButton = require(Parent.GamePlayButton)
local PlayButtonStates_upvr = GamePlayButton.PlayButtonStates
local FFlagLuaAppEnablePlaySquadButton_upvr = require(Parent.SharedFlags).FFlagLuaAppEnablePlaySquadButton
local FFlagLuaAppEnablePlayableStateWhenLoading_upvr = require(Parent.SharedFlags).FFlagLuaAppEnablePlayableStateWhenLoading
local FFlagLuaAppUnifyPlayButtonTile_upvr = require(Parent.SharedFlags).FFlagLuaAppUnifyPlayButtonTile
local var12_upvr
if FFlagLuaAppUnifyPlayButtonTile_upvr then
	var12_upvr = 40
else
	var12_upvr = nil
end
local any_extend_result1_upvr = Roact_upvr.PureComponent:extend("AppExperienceActionRow")
local tbl_2 = {
	universeId = t.string;
	launchExperienceEventContext = t.optional(t.string);
	referralSource = t.optional(t.string);
	launchSource = t.string;
	reportExperienceLaunched = t.optional(t.callback);
	entry = t.table;
	openGameDetails = t.callback;
	horizontalPadding = t.optional(t.number);
	verticalPadding = t.optional(t.number);
	height = t.optional(t.number);
	fetchDelayInSeconds = t.optional(t.number);
	index = t.optional(t.number);
	showButtonText = t.optional(t.boolean);
}
if FFlagLuaAppUnifyPlayButtonTile_upvr then
	-- KONSTANTWARNING: GOTO [295] #171
end
-- KONSTANTERROR: [0] 1. Error Block 21 end (CF ANALYSIS FAILED)
-- KONSTANTERROR: [294] 170. Error Block 23 start (CF ANALYSIS FAILED)
tbl_2.width = nil
local var62
var62 = t.optional(t.number)
tbl_2.price = var62
var62 = t.optional(t.string)
tbl_2.centralOverlayType = var62
var62 = t.optional(t.callback)
tbl_2.closeCentralOverlay = var62
var62 = t.string
tbl_2.playButtonState = var62
var62 = t.optional(t.table)
tbl_2.playabilityStatus = var62
var62 = t.callback
tbl_2.onPlayButtonActivated = var62
var62 = t.optional(t.callback)
tbl_2.onPlaySquadButtonActivated = var62
var62 = t.optional(t.union(t.Instance, t.table))
tbl_2.sessionService = var62
var62 = t.optional(t.string)
tbl_2.feedbackType = var62
if FFlagLuaAppUnifyPlayButtonTile_upvr and require(Parent.SharedFlags).FFlagLuaAppMigrateGameTile then
	var62 = t.optional(t.boolean)
else
	var62 = nil
end
tbl_2.isUnifiedGameTileEnabled = var62
any_extend_result1_upvr.validateProps = t.strictInterface(tbl_2)
local function _(arg1) -- Line 94, Named "modifyPlayButtonState"
	--[[ Upvalues[1]:
		[1]: PlayButtonStates_upvr (readonly)
	]]
	if arg1 == PlayButtonStates_upvr.Loading then
		return PlayButtonStates_upvr.Playable
	end
	return arg1
end
local SetGamePlaySession_upvr = RobloxAppSessionization.SetGamePlaySession
local SessionType_upvr = RobloxAppSessionization.SessionType
function any_extend_result1_upvr.init(arg1) -- Line 103
	--[[ Upvalues[3]:
		[1]: SetGamePlaySession_upvr (readonly)
		[2]: SessionType_upvr (readonly)
		[3]: FFlagLuaAppUnifyPlayButtonTile_upvr (readonly)
	]]
	function arg1.onPlayPressed() -- Line 104
		--[[ Upvalues[3]:
			[1]: arg1 (readonly)
			[2]: SetGamePlaySession_upvr (copied, readonly)
			[3]: SessionType_upvr (copied, readonly)
		]]
		if arg1:requiresPurchase() or arg1:requiresFiatPurchase() then
			arg1.props.openGameDetails()
		elseif arg1:isButtonEnabled() then
			local var19 = SetGamePlaySession_upvr
			var19(arg1.props.sessionService, SessionType_upvr.StructuralIdentifier.GamePlayFromHoverTile, true)
			if arg1.props.reportExperienceLaunched then
				var19 = arg1.reportExperienceLaunched
			else
				var19 = nil
			end
			arg1.props.onPlayButtonActivated(arg1.props.playButtonState, var19)
		end
	end
	function arg1.reportExperienceLaunched() -- Line 118
		--[[ Upvalues[4]:
			[1]: FFlagLuaAppUnifyPlayButtonTile_upvr (copied, readonly)
			[2]: SetGamePlaySession_upvr (copied, readonly)
			[3]: arg1 (readonly)
			[4]: SessionType_upvr (copied, readonly)
		]]
		if FFlagLuaAppUnifyPlayButtonTile_upvr then
			SetGamePlaySession_upvr(arg1.props.sessionService, SessionType_upvr.StructuralIdentifier.GamePlayFromHoverTile, true)
		end
		arg1.props.reportExperienceLaunched(arg1.props.entry, arg1.props.referralSource, arg1.props.launchSource, arg1.props.launchExperienceEventContext, arg1.props.index)
	end
end
local CentralOverlayType_upvr = require(Parent.RobloxAppEnums).CentralOverlayType
function any_extend_result1_upvr.willUnmount(arg1) -- Line 133
	--[[ Upvalues[2]:
		[1]: FFlagLuaAppEnablePlaySquadButton_upvr (readonly)
		[2]: CentralOverlayType_upvr (readonly)
	]]
	if FFlagLuaAppEnablePlaySquadButton_upvr and arg1.props.centralOverlayType == CentralOverlayType_upvr.GameDetailsSquad then
		arg1.props.closeCentralOverlay()
	end
end
local FFlagLuaAppMigrateGameTile_upvr = require(Parent.SharedFlags).FFlagLuaAppMigrateGameTile
local FFlagLuaAppMigrateGameTileIxp_upvr = require(Parent.SharedFlags).FFlagLuaAppMigrateGameTileIxp
local withLocalization_upvr = require(Parent.Localization).withLocalization
local PlayButton_upvr = GamePlayButton.PlayButton
local ButtonSize_upvr = require(Parent.Foundation).Enums.ButtonSize
local ExperienceActionRow_upvr = UIBlox.App.Tile.ExperienceActionRow
local GetFFlagEnableUISoundAndHaptics_upvr = require(Parent.SharedFlags).GetFFlagEnableUISoundAndHaptics
function any_extend_result1_upvr.render(arg1) -- Line 140
	--[[ Upvalues[11]:
		[1]: FFlagLuaAppUnifyPlayButtonTile_upvr (readonly)
		[2]: FFlagLuaAppMigrateGameTile_upvr (readonly)
		[3]: FFlagLuaAppMigrateGameTileIxp_upvr (readonly)
		[4]: withLocalization_upvr (readonly)
		[5]: Roact_upvr (readonly)
		[6]: PlayButton_upvr (readonly)
		[7]: ButtonSize_upvr (readonly)
		[8]: var12_upvr (readonly)
		[9]: ExperienceActionRow_upvr (readonly)
		[10]: FFlagLuaAppEnablePlaySquadButton_upvr (readonly)
		[11]: GetFFlagEnableUISoundAndHaptics_upvr (readonly)
	]]
	local var29
	if var29 then
		local function INLINED() -- Internal function, doesn't exist in bytecode
			var29 = not FFlagLuaAppMigrateGameTileIxp_upvr
			return var29
		end
		if not FFlagLuaAppMigrateGameTile_upvr or not INLINED() then
			var29 = FFlagLuaAppMigrateGameTileIxp_upvr
			if var29 then
				var29 = arg1.props.isUnifiedGameTileEnabled
			end
		end
		if var29 then
			local var32_upvr = arg1.props.horizontalPadding or 0
			local var33_upvr = arg1.props.verticalPadding or 0
			return withLocalization_upvr({
				buyText = "Feature.ExperienceDetails.PlayButtonText.Buy";
			})(function(arg1_2) -- Line 151
				--[[ Upvalues[7]:
					[1]: Roact_upvr (copied, readonly)
					[2]: PlayButton_upvr (copied, readonly)
					[3]: arg1 (readonly)
					[4]: ButtonSize_upvr (copied, readonly)
					[5]: var12_upvr (copied, readonly)
					[6]: var32_upvr (readonly)
					[7]: var33_upvr (readonly)
				]]
				local module = {
					universeId = arg1.props.universeId;
					referralSource = arg1.props.referralSource;
					eventContext = arg1.props.launchExperienceEventContext;
					launchSource = arg1.props.launchSource;
					reportExperienceLaunched = arg1.reportExperienceLaunched;
					fiatText = arg1_2.buyText;
					hideOptionalText = not arg1.props.showButtonText;
					buttonSize = ButtonSize_upvr.Medium;
					isPlayableWhenLoading = true;
				}
				local openGameDetails = arg1.props.openGameDetails
				module.onPurchaseRequiredCallback = openGameDetails
				if not arg1.props.width then
					openGameDetails = "Fill"
				else
					openGameDetails = nil
				end
				module.fillBehavior = openGameDetails
				module.width = arg1.props.width
				module.squadButtonHeight = UDim.new(0, var12_upvr)
				module.Position = UDim2.new(0, var32_upvr, 1, -var33_upvr - var12_upvr)
				return Roact_upvr.createElement(PlayButton_upvr, module)
			end)
		end
	end
	var32_upvr = {}
	local var37 = var32_upvr
	var33_upvr = "Feature.ExperienceDetails.PlayButtonText.ActionNeeded"
	var37.actionNeededText = var33_upvr
	var33_upvr = "Feature.ExperienceDetails.PlayButtonText.Unavailable"
	var37.unavailableText = var33_upvr
	var33_upvr = "Feature.ExperienceDetails.PlayButtonText.Buy"
	var37.buyText = var33_upvr
	function var37(arg1_3) -- Line 177
		--[[ Upvalues[5]:
			[1]: Roact_upvr (copied, readonly)
			[2]: ExperienceActionRow_upvr (copied, readonly)
			[3]: arg1 (readonly)
			[4]: FFlagLuaAppEnablePlaySquadButton_upvr (copied, readonly)
			[5]: GetFFlagEnableUISoundAndHaptics_upvr (copied, readonly)
		]]
		local module_3 = {
			isActionable = arg1:isButtonEnabled();
			text = arg1:getButtonText(arg1_3);
			icon = arg1:getButtonIcon();
			buttonType = arg1:getButtonType();
			onPlayPressed = arg1.onPlayPressed;
		}
		local var39
		if FFlagLuaAppEnablePlaySquadButton_upvr and arg1:isOverflowButtonVisible() then
			var39 = arg1.props.onPlaySquadButtonActivated
		else
			var39 = nil
		end
		module_3.onOverflowPressed = var39
		var39 = arg1.props.horizontalPadding
		module_3.horizontalPadding = var39
		var39 = arg1.props.verticalPadding
		module_3.verticalPadding = var39
		var39 = arg1.props.height
		module_3.height = var39
		if GetFFlagEnableUISoundAndHaptics_upvr() then
			var39 = "PlayExperienceButton"
		else
			var39 = nil
		end
		module_3.feedbackType = var39
		return Roact_upvr.createElement(ExperienceActionRow_upvr, module_3)
	end
	return withLocalization_upvr(var37)(var37)
end
function any_extend_result1_upvr.isOverflowButtonVisible(arg1) -- Line 195
	--[[ Upvalues[2]:
		[1]: FFlagLuaAppEnablePlaySquadButton_upvr (readonly)
		[2]: PlayButtonStates_upvr (readonly)
	]]
	local var41 = FFlagLuaAppEnablePlaySquadButton_upvr
	if var41 then
		var41 = true
		if arg1.props.playButtonState ~= PlayButtonStates_upvr.PlayableWithParty then
			if arg1.props.playButtonState ~= PlayButtonStates_upvr.WaitingForParty then
				var41 = false
			else
				var41 = true
			end
		end
	end
	return var41
end
local GetFFlagLuaAppEnableSquadPage_upvr = require(Parent.SharedFlags).GetFFlagLuaAppEnableSquadPage
function any_extend_result1_upvr.isButtonEnabled(arg1) -- Line 205
	--[[ Upvalues[3]:
		[1]: FFlagLuaAppEnablePlayableStateWhenLoading_upvr (readonly)
		[2]: GetFFlagLuaAppEnableSquadPage_upvr (readonly)
		[3]: PlayButtonStates_upvr (readonly)
	]]
	if FFlagLuaAppEnablePlayableStateWhenLoading_upvr then
		if arg1.props.playabilityStatus == nil and GetFFlagLuaAppEnableSquadPage_upvr() and arg1.props.playButtonState == PlayButtonStates_upvr.WaitingForParty then
			return false
		end
	end
	local function INLINED_5() -- Internal function, doesn't exist in bytecode
		local var44
		return arg1.props.playButtonState ~= PlayButtonStates_upvr.Playable
	end
	local function INLINED_6() -- Internal function, doesn't exist in bytecode
		var44 = true
		return arg1.props.playButtonState ~= PlayButtonStates_upvr.Loading
	end
	local function INLINED_7() -- Internal function, doesn't exist in bytecode
		var44 = true
		return arg1.props.playButtonState ~= PlayButtonStates_upvr.PlayableWithParty
	end
	if arg1.props.playabilityStatus ~= nil and INLINED_5() and INLINED_6() and (not GetFFlagLuaAppEnableSquadPage_upvr() or INLINED_7()) then
		var44 = arg1:isActionNeeded()
		if not var44 then
			var44 = arg1:requiresPurchase()
			if not var44 then
				var44 = arg1:requiresFiatPurchase()
			end
		end
	end
	return var44
end
function any_extend_result1_upvr.requiresFiatPurchase(arg1) -- Line 230
	--[[ Upvalues[1]:
		[1]: PlayButtonStates_upvr (readonly)
	]]
	local var45
	if arg1.props.playButtonState ~= PlayButtonStates_upvr.FiatPaidAccess then
		var45 = false
	else
		var45 = true
	end
	return var45
end
function any_extend_result1_upvr.requiresPurchase(arg1) -- Line 234
	--[[ Upvalues[1]:
		[1]: PlayButtonStates_upvr (readonly)
	]]
	local var46
	if arg1.props.playButtonState ~= PlayButtonStates_upvr.PaidAccess then
		var46 = false
	else
		var46 = true
	end
	return var46
end
function any_extend_result1_upvr.isActionNeeded(arg1) -- Line 238
	--[[ Upvalues[1]:
		[1]: PlayButtonStates_upvr (readonly)
	]]
	local var47
	if arg1.props.playButtonState ~= PlayButtonStates_upvr.ActionNeeded then
		var47 = false
	else
		var47 = true
	end
	return var47
end
function any_extend_result1_upvr.getButtonText(arg1, arg2) -- Line 242
	--[[ Upvalues[2]:
		[1]: FFlagLuaAppEnablePlaySquadButton_upvr (readonly)
		[2]: PlayButtonStates_upvr (readonly)
	]]
	if arg1.props.showButtonText then
		if arg1:isActionNeeded() then
			return arg2.actionNeededText
		end
		if not arg1:isButtonEnabled() then
			if FFlagLuaAppEnablePlaySquadButton_upvr and arg1.props.playButtonState == PlayButtonStates_upvr.WaitingForParty then
				return nil
			end
			return arg2.unavailableText
		end
	end
	if arg1:requiresPurchase() then
		return tostring(arg1.props.price or "--")
	end
	if arg1:requiresFiatPurchase() then
		return arg2.buyText
	end
	return nil
end
local ButtonType_upvr = UIBlox.App.Button.Enum.ButtonType
function any_extend_result1_upvr.getButtonType(arg1) -- Line 267
	--[[ Upvalues[1]:
		[1]: ButtonType_upvr (readonly)
	]]
	if arg1:isActionNeeded() then
		return ButtonType_upvr.PrimarySystem
	end
	if not arg1:isButtonEnabled() then
		return ButtonType_upvr.Secondary
	end
	return ButtonType_upvr.PrimaryContextual
end
local Images_upvr = UIBlox.App.ImageSet.Images
function any_extend_result1_upvr.getButtonIcon(arg1) -- Line 277
	--[[ Upvalues[3]:
		[1]: Images_upvr (readonly)
		[2]: FFlagLuaAppEnablePlaySquadButton_upvr (readonly)
		[3]: PlayButtonStates_upvr (readonly)
	]]
	if arg1:isActionNeeded() then
		return Images_upvr["icons/status/private"]
	end
	if arg1:requiresPurchase() then
		return Images_upvr["icons/common/robux"]
	end
	if arg1:requiresFiatPurchase() then
		return nil
	end
	if not arg1:isButtonEnabled() then
		if FFlagLuaAppEnablePlaySquadButton_upvr and arg1.props.playButtonState == PlayButtonStates_upvr.WaitingForParty then
			return Images_upvr["icons/common/play"]
		end
		return Images_upvr["icons/status/unavailable"]
	end
	return Images_upvr["icons/common/play"]
end
local useRoactService_upvr = require(Parent.RobloxAppHooks).useRoactService
local RoactNetworking_upvr = RoactServiceTags.RoactNetworking
local usePlayButtonState_upvr = GamePlayButton.usePlayButtonState
local useOnPlayButtonCallback_upvr = GamePlayButton.useOnPlayButtonCallback
local useOnPlaySquadButtonCallback_upvr = GamePlayButton.useOnPlaySquadButtonCallback
local MenuDirection_upvr = UIBlox.App.Menu.MenuDirection
local Cryo_upvr = require(Parent.Cryo)
local function _(arg1) -- Line 296
	--[[ Upvalues[12]:
		[1]: useRoactService_upvr (readonly)
		[2]: RoactNetworking_upvr (readonly)
		[3]: usePlayButtonState_upvr (readonly)
		[4]: FFlagLuaAppEnablePlayableStateWhenLoading_upvr (readonly)
		[5]: useOnPlayButtonCallback_upvr (readonly)
		[6]: FFlagLuaAppEnablePlaySquadButton_upvr (readonly)
		[7]: useOnPlaySquadButtonCallback_upvr (readonly)
		[8]: MenuDirection_upvr (readonly)
		[9]: Cryo_upvr (readonly)
		[10]: PlayButtonStates_upvr (readonly)
		[11]: Roact_upvr (readonly)
		[12]: any_extend_result1_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local var58
	if FFlagLuaAppEnablePlayableStateWhenLoading_upvr then
		var58 = true
	else
		var58 = nil
	end
	local usePlayButtonState_upvr_result1 = usePlayButtonState_upvr(useRoactService_upvr(RoactNetworking_upvr), arg1.universeId, arg1.fetchDelayInSeconds, var58)
	var58 = arg1.launchExperienceEventContext or "PlayButton"
	if FFlagLuaAppEnablePlaySquadButton_upvr then
		var58 = MenuDirection_upvr
		var58 = usePlayButtonState_upvr_result1.playButtonState
	else
	end
	var58 = Cryo_upvr.Dictionary
	var58 = arg1
	local tbl = {
		playabilityStatus = usePlayButtonState_upvr_result1.playabilityStatus;
		onPlayButtonActivated = useOnPlayButtonCallback_upvr(arg1.universeId, arg1.referralSource, var58, nil, arg1.launchSource or "UnknownLaunchSource", nil);
		onPlaySquadButtonActivated = nil;
	}
	if FFlagLuaAppEnablePlayableStateWhenLoading_upvr then
	else
		local playButtonState = usePlayButtonState_upvr_result1.playButtonState
		if playButtonState == PlayButtonStates_upvr.Loading then
		else
		end
	end
	tbl.playButtonState = playButtonState
	var58 = Roact_upvr.createElement(any_extend_result1_upvr, var58.join(var58, tbl))
	return var58
end
local GamesProductInfoReducer_upvr = require(Parent.GameProductInfoRodux).GamesProductInfoReducer
function var62(arg1, arg2) -- Line 337
	--[[ Upvalues[2]:
		[1]: GamesProductInfoReducer_upvr (readonly)
		[2]: FFlagLuaAppEnablePlaySquadButton_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	-- KONSTANTERROR: [0] 1. Error Block 20 start (CF ANALYSIS FAILED)
	local var64
	if arg1[GamesProductInfoReducer_upvr.key] then
		var64 = arg1[GamesProductInfoReducer_upvr.key][arg2.universeId]
	else
		var64 = nil
	end
	local module_2 = {}
	if var64 ~= nil then
		-- KONSTANTWARNING: GOTO [21] #17
	end
	-- KONSTANTERROR: [0] 1. Error Block 20 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [20] 16. Error Block 22 start (CF ANALYSIS FAILED)
	module_2.price = nil
	if FFlagLuaAppEnablePlaySquadButton_upvr then
	else
	end
	module_2.centralOverlayType = nil
	do
		return module_2
	end
	-- KONSTANTERROR: [20] 16. Error Block 22 end (CF ANALYSIS FAILED)
end
local CloseCentralOverlay_upvr = require(Parent.CentralOverlay).Thunks.CloseCentralOverlay
var62 = _
var62 = {}
var62.sessionService = RoactServiceTags.AppSessionService
var62 = require(Parent.RoactRodux).connect(var62, function(arg1) -- Line 346
	--[[ Upvalues[1]:
		[1]: CloseCentralOverlay_upvr (readonly)
	]]
	return {
		closeCentralOverlay = function() -- Line 348, Named "closeCentralOverlay"
			--[[ Upvalues[2]:
				[1]: arg1 (readonly)
				[2]: CloseCentralOverlay_upvr (copied, readonly)
			]]
			return arg1(CloseCentralOverlay_upvr())
		end;
	}
end)(var62)
do
	return require(Parent.RoactServices).RoactServices.connect(var62)(var62)
end
-- KONSTANTERROR: [294] 170. Error Block 23 end (CF ANALYSIS FAILED)