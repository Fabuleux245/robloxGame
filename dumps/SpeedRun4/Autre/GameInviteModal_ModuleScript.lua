-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:07:46
-- Luau version 6, Types version 3
-- Time taken: 0.003336 seconds

-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
local GameInvite = script:FindFirstAncestor("GameInvite")
local Components = GameInvite.Components
local Parent = GameInvite.Parent
local FocusNavigationUtils = require(Parent.FocusNavigationUtils)
local VrCompatibility = require(Parent.VrCompatibility)
game:DefineFastFlag("LuaEnableGameInviteModal2023V5", false)
local SharedFlags = require(Parent.SharedFlags)
local isInExperienceUIVREnabled_upvr = require(Parent.SharedExperimentDefinition).isInExperienceUIVREnabled
local FFlagLuaAppGameInviteFocusable_upvr = SharedFlags.FFlagLuaAppGameInviteFocusable
local var9_upvw
local var10_upvw
local var11_upvr
if isInExperienceUIVREnabled_upvr then
	var11_upvr = require(Parent.Responsive)
	var9_upvw = var11_upvr
	var11_upvr = require(Parent.VrSpatialUi)
	var10_upvw = var11_upvr.UIManager
end
if FFlagLuaAppGameInviteFocusable_upvr then
	var11_upvr = {}
	local tbl = {}
	local GameInviteModalManager_upvr = require(GameInvite.GameInviteModalManager)
	tbl.handler = require(Parent.InputHandlers).onRelease(function(arg1) -- Line 64
		--[[ Upvalues[1]:
			[1]: GameInviteModalManager_upvr (readonly)
		]]
		GameInviteModalManager_upvr:closeModal()
		arg1:cancel()
	end)
	var11_upvr[FocusNavigationUtils.FocusNavigationEventNameEnum.NavigateBack] = tbl
else
	var11_upvr = nil
end
local GetFFlagVRPanelWidthIXPEnabled_upvr = SharedFlags.GetFFlagVRPanelWidthIXPEnabled
local IxpUtils_upvr = require(Parent.IxpUtils)
local VRPanelWidthIXP_upvr = VrCompatibility.VRPanelWidthIXP
local React_upvr = require(Parent.React)
local RunService_upvr = game:GetService("RunService")
local GameInviteConstants_upvr = require(GameInvite.GameInviteConstants)
local useDispatch_upvr = require(Parent.RoactUtils).Hooks.RoactRodux.useDispatch
local ResetUserInviteStatus_upvr = require(GameInvite.State.Actions.ResetUserInviteStatus)
local GuiService_upvr = game:GetService("GuiService")
local Promise_upvr = require(Parent.Promise)
local RobloxReplicatedStorage_upvr = game:GetService("RobloxReplicatedStorage")
local GetGameNameAndDescription_upvr = require(Parent.GameDetailRodux).GetGameNameAndDescription
local networkImpl_upvr = require(GameInvite.GameInviteDependencies).networkImpl
local GameInviteModalWindow_upvr = require(Components.GameInviteModalWindow)
local GameInviteContentWrapper_upvr = require(Components.GameInviteContentWrapper)
local GetFFlagEnableGameInviteModalVRSupport_upvr = SharedFlags.GetFFlagEnableGameInviteModalVRSupport
local VRReadyWrapper_upvr = VrCompatibility.VRReadyWrapper
local VRConstants_upvr = VrCompatibility.VRConstants
local GetFFlagAdjustVRFloor_upvr = SharedFlags.GetFFlagAdjustVRFloor
local GameInviteModalLayoutProvider_upvr = require(GameInvite.Context.GameInviteModalLayoutProvider)
local FocusNavigableSurfaceWrapper_upvr = FocusNavigationUtils.FocusNavigableSurfaceWrapper
local FocusNavigableSurfaceIdentifierEnum_upvr = FocusNavigationUtils.FocusNavigableSurfaceIdentifierEnum
local PanelType_upvw = var11_upvr.Constants.PanelType
local ReactRoblox_upvr = require(Parent.ReactRoblox)
return function(arg1) -- Line 76
	--[[ Upvalues[30]:
		[1]: GetFFlagVRPanelWidthIXPEnabled_upvr (readonly)
		[2]: IxpUtils_upvr (readonly)
		[3]: VRPanelWidthIXP_upvr (readonly)
		[4]: React_upvr (readonly)
		[5]: RunService_upvr (readonly)
		[6]: GameInviteConstants_upvr (readonly)
		[7]: useDispatch_upvr (readonly)
		[8]: isInExperienceUIVREnabled_upvr (readonly)
		[9]: var9_upvw (read and write)
		[10]: ResetUserInviteStatus_upvr (readonly)
		[11]: GameInviteModalManager_upvr (readonly)
		[12]: GuiService_upvr (readonly)
		[13]: Promise_upvr (readonly)
		[14]: RobloxReplicatedStorage_upvr (readonly)
		[15]: GetGameNameAndDescription_upvr (readonly)
		[16]: networkImpl_upvr (readonly)
		[17]: FFlagLuaAppGameInviteFocusable_upvr (readonly)
		[18]: GameInviteModalWindow_upvr (readonly)
		[19]: GameInviteContentWrapper_upvr (readonly)
		[20]: GetFFlagEnableGameInviteModalVRSupport_upvr (readonly)
		[21]: VRReadyWrapper_upvr (readonly)
		[22]: VRConstants_upvr (readonly)
		[23]: GetFFlagAdjustVRFloor_upvr (readonly)
		[24]: GameInviteModalLayoutProvider_upvr (readonly)
		[25]: FocusNavigableSurfaceWrapper_upvr (readonly)
		[26]: FocusNavigableSurfaceIdentifierEnum_upvr (readonly)
		[27]: var11_upvr (readonly)
		[28]: var10_upvw (read and write)
		[29]: PanelType_upvw (read and write)
		[30]: ReactRoblox_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 94 start (CF ANALYSIS FAILED)
	if not game:GetFastFlag("LuaEnableGameInviteModal2023V5") then
		return nil
	end
	if GetFFlagVRPanelWidthIXPEnabled_upvr() then
	else
	end
	if GetFFlagVRPanelWidthIXPEnabled_upvr() then
		-- KONSTANTWARNING: GOTO [33] #28
	end
	-- KONSTANTERROR: [0] 1. Error Block 94 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [32] 27. Error Block 102 start (CF ANALYSIS FAILED)
	local _, _ = React_upvr.useState(false)
	local _, _ = React_upvr.useState(false)
	local _, _ = React_upvr.useState({})
	local any_useState_result1, _ = React_upvr.useState({})
	local _, _ = React_upvr.useState("")
	if arg1.renderLocation ~= GameInviteConstants_upvr.RenderLocation.CoreScripts then
		-- KONSTANTWARNING: GOTO [76] #59
	end
	-- KONSTANTERROR: [32] 27. Error Block 102 end (CF ANALYSIS FAILED)
end