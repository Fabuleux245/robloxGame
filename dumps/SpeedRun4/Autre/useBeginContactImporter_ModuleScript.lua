-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:24:51
-- Luau version 6, Types version 3
-- Time taken: 0.007142 seconds

local ContactImporter = script:FindFirstAncestor("ContactImporter")
local Parent = ContactImporter.Parent
local MessageBusService_upvr = game:GetService("MessageBusService")
local PermissionsProtocol_upvr = require(Parent.PermissionsProtocol).PermissionsProtocol
local tbl_upvr = {PermissionsProtocol_upvr.Permissions.CONTACTS_ACCESS}
local SharedFlags = require(Parent.SharedFlags)
local useDispatch_upvr = require(Parent.RoactUtils).Hooks.RoactRodux.useDispatch
local useNavigation_upvr = require(Parent.Navigation).useNavigation
local React_upvr = require(Parent.React)
local useSelector_upvr = require(Parent.RoactUtils).Hooks.RoactRodux.useSelector
local getContactImporterParams_upvr = require(ContactImporter.Utils.getContactImporterParams)
local useAppPolicy_upvr = require(Parent.UniversalAppPolicy).useAppPolicy
local FFlagMoveCiEncouragedGatingToGuac_upvr = SharedFlags.FFlagMoveCiEncouragedGatingToGuac
local FFlagCIDeeplinkExperiment_upvr = SharedFlags.FFlagCIDeeplinkExperiment
local FFlagCIDeeplinkEnabledForAll_upvr = SharedFlags.FFlagCIDeeplinkEnabledForAll
local RoactAppExperiment_upvr = require(Parent.RoactAppExperiment)
local AppUserLayers_upvr = require(Parent.ExperimentLayers).AppUserLayers
local FFlagContactImporterFlowIXPEnabled_upvr = SharedFlags.FFlagContactImporterFlowIXPEnabled
local EnumScreens_upvr = require(Parent.SocialModalsCommon).EnumScreens
local default_upvr = PermissionsProtocol_upvr.default
local Promise_upvr = require(Parent.Promise)
local dependencyArray_upvr = require(Parent.RoactUtils).Hooks.dependencyArray
local FFlagRemoveCanUploadContacts_upvr = SharedFlags.FFlagRemoveCanUploadContacts
local SetContactImporterDisplayLogic_upvr = require(ContactImporter.Actions.SetContactImporterDisplayLogic)
local Cryo_upvr = require(Parent.Cryo)
local IXPService_upvr = game:GetService("IXPService")
local SettingsRoute_upvr = require(Parent.LinkingProtocol).Enums.SettingsRoute
local any_GetMessageId_result1_upvr = MessageBusService_upvr:GetMessageId("Realtime", "appResume")
return function(arg1) -- Line 45, Named "useBeginContactImporter"
	--[[ Upvalues[25]:
		[1]: useDispatch_upvr (readonly)
		[2]: useNavigation_upvr (readonly)
		[3]: React_upvr (readonly)
		[4]: useSelector_upvr (readonly)
		[5]: getContactImporterParams_upvr (readonly)
		[6]: useAppPolicy_upvr (readonly)
		[7]: FFlagMoveCiEncouragedGatingToGuac_upvr (readonly)
		[8]: FFlagCIDeeplinkExperiment_upvr (readonly)
		[9]: FFlagCIDeeplinkEnabledForAll_upvr (readonly)
		[10]: RoactAppExperiment_upvr (readonly)
		[11]: AppUserLayers_upvr (readonly)
		[12]: FFlagContactImporterFlowIXPEnabled_upvr (readonly)
		[13]: PermissionsProtocol_upvr (readonly)
		[14]: EnumScreens_upvr (readonly)
		[15]: default_upvr (readonly)
		[16]: tbl_upvr (readonly)
		[17]: Promise_upvr (readonly)
		[18]: dependencyArray_upvr (readonly)
		[19]: FFlagRemoveCanUploadContacts_upvr (readonly)
		[20]: SetContactImporterDisplayLogic_upvr (readonly)
		[21]: Cryo_upvr (readonly)
		[22]: IXPService_upvr (readonly)
		[23]: SettingsRoute_upvr (readonly)
		[24]: MessageBusService_upvr (readonly)
		[25]: any_GetMessageId_result1_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local useNavigation_upvr_result1_upvr = useNavigation_upvr()
	local any_useState_result1_upvr, any_useState_result2_upvr = React_upvr.useState(false)
	local any_useState_result1_upvr_2, any_useState_result2_upvr_2 = React_upvr.useState(false)
	local var12_result1_upvr = useAppPolicy_upvr(function(arg1_2) -- Line 52
		return arg1_2.getContactImporterEnabled()
	end)
	local var36
	if not arg1 or not arg1.entryPoint then
		local var37_upvr
	end
	if FFlagMoveCiEncouragedGatingToGuac_upvr then
		var36 = useAppPolicy_upvr
		var36 = var36(function(arg1_3) -- Line 59
			return arg1_3.getContactImporterEncouraged()
		end)
	else
		var36 = nil
	end
	if FFlagCIDeeplinkExperiment_upvr and not FFlagCIDeeplinkEnabledForAll_upvr then
		local tbl = {AppUserLayers_upvr.ContactImporterDevicePermissionNeededModalExposure}
		local any_useUserExperiment_result1_2_upvw = RoactAppExperiment_upvr.useUserExperiment(tbl, function(arg1_4) -- Line 70
			--[[ Upvalues[1]:
				[1]: AppUserLayers_upvr (copied, readonly)
			]]
			local var41 = arg1_4[AppUserLayers_upvr.ContactImporterDevicePermissionNeededModalExposure]
			if not var41 then
				var41 = {}
			end
			return var41.systemSettingsDeeplinkEnabled
		end, false)
	end
	local var43_upvw
	tbl = nil
	local var44_upvw = tbl
	if FFlagMoveCiEncouragedGatingToGuac_upvr then
		var43_upvw = var36
		var44_upvw = not var36
	elseif FFlagContactImporterFlowIXPEnabled_upvr then
		local any_useUserExperiment_result1, any_useUserExperiment_result2 = RoactAppExperiment_upvr.useUserExperiment({AppUserLayers_upvr.SocialFriendsCarouselAddFriendsEntryLayer}, function(arg1_5) -- Line 84
			--[[ Upvalues[1]:
				[1]: AppUserLayers_upvr (copied, readonly)
			]]
			-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
			local var47 = arg1_5[AppUserLayers_upvr.SocialFriendsCarouselAddFriendsEntryLayer]
			if not var47 then
				var47 = {}
			end
			if var47.ci_flow ~= "on_page_load" then
			else
			end
			if var47.ci_flow ~= "on_banner_click" then
			else
			end
			return true, true
		end, false)
		var43_upvw = any_useUserExperiment_result1
		var44_upvw = any_useUserExperiment_result2
	end
	local any_useCallback_result1_upvr_2 = React_upvr.useCallback(function(arg1_6) -- Line 92
		--[[ Upvalues[6]:
			[1]: PermissionsProtocol_upvr (copied, readonly)
			[2]: any_useState_result2_upvr (readonly)
			[3]: any_useState_result2_upvr_2 (readonly)
			[4]: useNavigation_upvr_result1_upvr (readonly)
			[5]: EnumScreens_upvr (copied, readonly)
			[6]: var37_upvr (readonly)
		]]
		local var51
		if arg1_6.status ~= PermissionsProtocol_upvr.Status.AUTHORIZED then
			var51 = false
		else
			var51 = true
		end
		any_useState_result2_upvr(var51)
		any_useState_result2_upvr_2(var51)
		if var51 then
			useNavigation_upvr_result1_upvr.navigate(EnumScreens_upvr.ContactsList, {
				shouldUpdateUserSettings = true;
				entrypoint = var37_upvr;
			})
		end
	end, {useNavigation_upvr_result1_upvr, var37_upvr})
	local var7_result1_upvr = useDispatch_upvr()
	local useSelector_upvr_result1_upvr = useSelector_upvr(getContactImporterParams_upvr)
	if FFlagCIDeeplinkExperiment_upvr then
	else
	end
	local any_useCallback_result1_upvr = React_upvr.useCallback(function(arg1_7) -- Line 105
		--[[ Upvalues[7]:
			[1]: PermissionsProtocol_upvr (copied, readonly)
			[2]: any_useState_result2_upvr (readonly)
			[3]: var43_upvw (read and write)
			[4]: default_upvr (copied, readonly)
			[5]: tbl_upvr (copied, readonly)
			[6]: any_useCallback_result1_upvr_2 (readonly)
			[7]: Promise_upvr (copied, readonly)
		]]
		local status = arg1_7.status
		if status == PermissionsProtocol_upvr.Status.AUTHORIZED then
			any_useState_result2_upvr(true)
		elseif status == PermissionsProtocol_upvr.Status.DENIED and var43_upvw then
			default_upvr:requestPermissions(tbl_upvr):andThen(any_useCallback_result1_upvr_2)
		end
		return Promise_upvr.resolve(arg1_7.status)
	end, dependencyArray_upvr(any_useCallback_result1_upvr_2, var43_upvw))
	React_upvr.useEffect(function() -- Line 219
		--[[ Upvalues[6]:
			[1]: default_upvr (copied, readonly)
			[2]: tbl_upvr (copied, readonly)
			[3]: var12_result1_upvr (readonly)
			[4]: var43_upvw (read and write)
			[5]: var44_upvw (read and write)
			[6]: any_useCallback_result1_upvr (readonly)
		]]
		if var12_result1_upvr and (var43_upvw or var44_upvw) then
			default_upvr:hasPermissions(tbl_upvr):andThen(any_useCallback_result1_upvr)
			return
		end
	end, {var12_result1_upvr, var43_upvw, var44_upvw})
	if FFlagCIDeeplinkExperiment_upvr or FFlagCIDeeplinkEnabledForAll_upvr then
		React_upvr.useEffect(function() -- Line 230
			--[[ Upvalues[9]:
				[1]: any_useUserExperiment_result1_2_upvw (read and write)
				[2]: FFlagCIDeeplinkEnabledForAll_upvr (copied, readonly)
				[3]: MessageBusService_upvr (copied, readonly)
				[4]: any_GetMessageId_result1_upvr (copied, readonly)
				[5]: default_upvr (copied, readonly)
				[6]: tbl_upvr (copied, readonly)
				[7]: PermissionsProtocol_upvr (copied, readonly)
				[8]: any_useState_result2_upvr (readonly)
				[9]: any_useState_result2_upvr_2 (readonly)
			]]
			if any_useUserExperiment_result1_2_upvw or FFlagCIDeeplinkEnabledForAll_upvr then
				local any_Subscribe_result1_upvr = MessageBusService_upvr:Subscribe(any_GetMessageId_result1_upvr, function() -- Line 232
					--[[ Upvalues[5]:
						[1]: default_upvr (copied, readonly)
						[2]: tbl_upvr (copied, readonly)
						[3]: PermissionsProtocol_upvr (copied, readonly)
						[4]: any_useState_result2_upvr (copied, readonly)
						[5]: any_useState_result2_upvr_2 (copied, readonly)
					]]
					default_upvr:hasPermissions(tbl_upvr):andThen(function(arg1_9) -- Line 233
						--[[ Upvalues[3]:
							[1]: PermissionsProtocol_upvr (copied, readonly)
							[2]: any_useState_result2_upvr (copied, readonly)
							[3]: any_useState_result2_upvr_2 (copied, readonly)
						]]
						local var78 = arg1_9
						if var78 then
							if arg1_9.status ~= PermissionsProtocol_upvr.Status.AUTHORIZED then
								var78 = false
							else
								var78 = true
							end
						end
						if var78 then
							any_useState_result2_upvr(true)
							any_useState_result2_upvr_2(true)
						end
					end)
				end, false, true)
				return function() -- Line 241
					--[[ Upvalues[1]:
						[1]: any_Subscribe_result1_upvr (readonly)
					]]
					any_Subscribe_result1_upvr:Disconnect()
				end
			end
			any_Subscribe_result1_upvr = nil
			return any_Subscribe_result1_upvr
		end, {any_useUserExperiment_result1_2_upvw})
	end
	if var12_result1_upvr then
		if var43_upvw or var44_upvw then
			return any_useState_result1_upvr, React_upvr.useCallback(function() -- Line 121
				--[[ Upvalues[22]:
					[1]: var43_upvw (read and write)
					[2]: any_useState_result1_upvr (readonly)
					[3]: FFlagRemoveCanUploadContacts_upvr (copied, readonly)
					[4]: useNavigation_upvr_result1_upvr (readonly)
					[5]: EnumScreens_upvr (copied, readonly)
					[6]: var37_upvr (readonly)
					[7]: any_useState_result1_upvr_2 (readonly)
					[8]: var7_result1_upvr (readonly)
					[9]: SetContactImporterDisplayLogic_upvr (copied, readonly)
					[10]: Cryo_upvr (copied, readonly)
					[11]: useSelector_upvr_result1_upvr (readonly)
					[12]: FFlagCIDeeplinkExperiment_upvr (copied, readonly)
					[13]: FFlagCIDeeplinkEnabledForAll_upvr (copied, readonly)
					[14]: IXPService_upvr (copied, readonly)
					[15]: AppUserLayers_upvr (copied, readonly)
					[16]: any_useUserExperiment_result1_2_upvw (read and write)
					[17]: SettingsRoute_upvr (copied, readonly)
					[18]: var44_upvw (read and write)
					[19]: default_upvr (copied, readonly)
					[20]: tbl_upvr (copied, readonly)
					[21]: PermissionsProtocol_upvr (copied, readonly)
					[22]: any_useState_result2_upvr (readonly)
				]]
				if var43_upvw then
					if any_useState_result1_upvr then
						if FFlagRemoveCanUploadContacts_upvr then
							useNavigation_upvr_result1_upvr.navigate(EnumScreens_upvr.ContactsList, {
								entrypoint = var37_upvr;
							})
						else
							if any_useState_result1_upvr_2 then
								var7_result1_upvr(SetContactImporterDisplayLogic_upvr(Cryo_upvr.Dictionary.join(useSelector_upvr_result1_upvr, {
									canUploadContacts = true;
								})))
								useNavigation_upvr_result1_upvr.navigate(EnumScreens_upvr.ContactsList, {
									shouldUpdateUserSettings = true;
									entrypoint = var37_upvr;
								})
								return
							end
							if useSelector_upvr_result1_upvr.canUploadContacts then
								useNavigation_upvr_result1_upvr.navigate(EnumScreens_upvr.ContactsList, {
									entrypoint = var37_upvr;
								})
								return
							end
							useNavigation_upvr_result1_upvr.navigate(EnumScreens_upvr.FindFriendsModal, {
								isFromAddFriendsPage = true;
							})
						end
					end
					if FFlagCIDeeplinkExperiment_upvr and not FFlagCIDeeplinkEnabledForAll_upvr then
						IXPService_upvr:LogUserLayerExposure(AppUserLayers_upvr.ContactImporterDevicePermissionNeededModalExposure)
					end
					if FFlagCIDeeplinkExperiment_upvr and any_useUserExperiment_result1_2_upvw or FFlagCIDeeplinkEnabledForAll_upvr then
						useNavigation_upvr_result1_upvr.navigate(EnumScreens_upvr.SettingsPermissionInteractiveAlert, {
							settingsRoute = SettingsRoute_upvr.Contacts;
						})
					else
						useNavigation_upvr_result1_upvr.navigate(EnumScreens_upvr.ContactsRevokedAccessDialog)
					end
				end
				if var44_upvw then
					default_upvr:requestPermissions(tbl_upvr):andThen(function(arg1_8) -- Line 165
						--[[ Upvalues[16]:
							[1]: PermissionsProtocol_upvr (copied, readonly)
							[2]: FFlagRemoveCanUploadContacts_upvr (copied, readonly)
							[3]: useNavigation_upvr_result1_upvr (copied, readonly)
							[4]: EnumScreens_upvr (copied, readonly)
							[5]: var37_upvr (copied, readonly)
							[6]: useSelector_upvr_result1_upvr (copied, readonly)
							[7]: any_useState_result2_upvr (copied, readonly)
							[8]: var7_result1_upvr (copied, readonly)
							[9]: SetContactImporterDisplayLogic_upvr (copied, readonly)
							[10]: Cryo_upvr (copied, readonly)
							[11]: FFlagCIDeeplinkExperiment_upvr (copied, readonly)
							[12]: FFlagCIDeeplinkEnabledForAll_upvr (copied, readonly)
							[13]: IXPService_upvr (copied, readonly)
							[14]: AppUserLayers_upvr (copied, readonly)
							[15]: any_useUserExperiment_result1_2_upvw (copied, read and write)
							[16]: SettingsRoute_upvr (copied, readonly)
						]]
						if arg1_8.status == PermissionsProtocol_upvr.Status.AUTHORIZED then
							if FFlagRemoveCanUploadContacts_upvr then
								useNavigation_upvr_result1_upvr.navigate(EnumScreens_upvr.ContactsList, {
									entrypoint = var37_upvr;
								})
							else
								if useSelector_upvr_result1_upvr.canUploadContacts == false then
									useNavigation_upvr_result1_upvr.navigate(EnumScreens_upvr.FindFriendsModal, {
										isFromAddFriendsPage = true;
									})
									return
								end
								any_useState_result2_upvr(true)
								var7_result1_upvr(SetContactImporterDisplayLogic_upvr(Cryo_upvr.Dictionary.join(useSelector_upvr_result1_upvr, {
									canUploadContacts = true;
								})))
								useNavigation_upvr_result1_upvr.navigate(EnumScreens_upvr.ContactsList, {
									shouldUpdateUserSettings = true;
									entrypoint = var37_upvr;
								})
							end
						end
						if FFlagCIDeeplinkExperiment_upvr and not FFlagCIDeeplinkEnabledForAll_upvr then
							IXPService_upvr:LogUserLayerExposure(AppUserLayers_upvr.ContactImporterDevicePermissionNeededModalExposure)
						end
						if FFlagCIDeeplinkExperiment_upvr and any_useUserExperiment_result1_2_upvw or FFlagCIDeeplinkEnabledForAll_upvr then
							useNavigation_upvr_result1_upvr.navigate(EnumScreens_upvr.SettingsPermissionInteractiveAlert, {
								settingsRoute = SettingsRoute_upvr.Contacts;
							})
						else
							useNavigation_upvr_result1_upvr.navigate(EnumScreens_upvr.ContactsRevokedAccessDialog)
						end
					end)
					return
				end
			end, dependencyArray_upvr(any_useState_result1_upvr, any_useState_result1_upvr_2, var12_result1_upvr, var43_upvw, var44_upvw, var37_upvr, nil))
		end
		return nil, nil
	end
	return nil, nil
end