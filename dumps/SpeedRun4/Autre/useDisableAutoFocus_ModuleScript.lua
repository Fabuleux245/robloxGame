-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:05:55
-- Luau version 6, Types version 3
-- Time taken: 0.004371 seconds

local FocusNavigationUtils = script:FindFirstAncestor("FocusNavigationUtils")
local Parent = FocusNavigationUtils.Parent
local Navigation = require(Parent.Navigation)
local getRouteIsFocused_upvr = Navigation.getRouteIsFocused
local getCurrentNavigationState_upvr = Navigation.getCurrentNavigationState
local AvatarScreen = require(Parent.AvatarExperienceNavigation).Enums.AvatarScreen
local AppPage_upvr = require(Parent.RobloxAppEnums).AppPage
local SharedFlags = require(Parent.SharedFlags)
local tbl_upvr = {}
local getRouteInGreenList = true
tbl_upvr[AvatarScreen.CatalogContextMenu] = getRouteInGreenList
if SharedFlags.FFlagAXMigrateSaveOutfitPromptFromRoactGamepad then
	getRouteInGreenList = true
else
	getRouteInGreenList = nil
end
tbl_upvr[AvatarScreen.SaveOutfitPrompt] = getRouteInGreenList
if SharedFlags.FFlagAXEnableRecolorableBodiesDuringTryOn then
	getRouteInGreenList = true
else
	getRouteInGreenList = nil
end
tbl_upvr[AvatarScreen.ColorAdjustment] = getRouteInGreenList
local function _(arg1) -- Line 28, Named "getAvatarRouteIsFocused"
	--[[ Upvalues[2]:
		[1]: getRouteIsFocused_upvr (readonly)
		[2]: AppPage_upvr (readonly)
	]]
	return getRouteIsFocused_upvr(arg1, AppPage_upvr.AvatarExperienceRoot)
end
function getRouteInGreenList(arg1) -- Line 32
	--[[ Upvalues[2]:
		[1]: getCurrentNavigationState_upvr (readonly)
		[2]: tbl_upvr (readonly)
	]]
	local state = arg1.state
	local var5_result1_2 = getCurrentNavigationState_upvr(state)
	if var5_result1_2 then
		state = var5_result1_2.routeName
	else
		state = nil
	end
	if state then
		return tbl_upvr[state]
	end
	return false
end
local useLastInputMethod_upvr = require(FocusNavigationUtils.useLastInputMethod)
local useNavigation_upvr = Navigation.useNavigation
local FFlagAXMigrateCatalogContextMenuFromRoactGamepad_upvr = SharedFlags.FFlagAXMigrateCatalogContextMenuFromRoactGamepad
local useSelector_upvr = require(Parent.RoactUtils).Hooks.RoactRodux.useSelector
return function() -- Line 39, Named "useDisableAutoFocus"
	--[[ Upvalues[8]:
		[1]: useLastInputMethod_upvr (readonly)
		[2]: useNavigation_upvr (readonly)
		[3]: getRouteIsFocused_upvr (readonly)
		[4]: AppPage_upvr (readonly)
		[5]: FFlagAXMigrateCatalogContextMenuFromRoactGamepad_upvr (readonly)
		[6]: getCurrentNavigationState_upvr (readonly)
		[7]: tbl_upvr (readonly)
		[8]: useSelector_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local useNavigation_upvr_result1_2 = useNavigation_upvr()
	local AvatarExperienceRoot = AppPage_upvr.AvatarExperienceRoot
	local var4_result1 = getRouteIsFocused_upvr(useNavigation_upvr_result1_2.state, AvatarExperienceRoot)
	if var4_result1 then
		local var28
		if FFlagAXMigrateCatalogContextMenuFromRoactGamepad_upvr then
			var28 = useNavigation_upvr_result1_2.state
			local var5_result1 = getCurrentNavigationState_upvr(var28)
			if var5_result1 then
				var28 = var5_result1.routeName
			else
				var28 = nil
			end
			if var28 then
				AvatarExperienceRoot = tbl_upvr[var28]
			else
				AvatarExperienceRoot = false
			end
			var4_result1 = not AvatarExperienceRoot
		else
			var4_result1 = true
		end
	end
	if var4_result1 then
		if not useSelector_upvr(function(arg1) -- Line 45
			local var31
			if arg1.CentralOverlay.OverlayType == nil then
				var31 = false
			else
				var31 = true
			end
			return var31
		end) then
			if useLastInputMethod_upvr() ~= "Gamepad" then
			else
			end
		end
	end
	return true
end