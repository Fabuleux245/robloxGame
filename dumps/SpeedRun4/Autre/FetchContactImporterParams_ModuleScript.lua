-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:24:55
-- Luau version 6, Types version 3
-- Time taken: 0.002775 seconds

local Parent = script.Parent.Parent
local dependencies = require(Parent.dependencies)
local function var3_upvr(arg1) -- Line 17
end
local NetworkingUserSettings_upvr = dependencies.NetworkingUserSettings
local Promise_upvr = dependencies.Promise
local FFlagRemoveCanUploadContacts_upvr = require(Parent.Parent.SharedFlags).FFlagRemoveCanUploadContacts
local NetworkingAccountInformation_upvr = dependencies.NetworkingAccountInformation
local PermissionsProtocol_upvr = dependencies.PermissionsProtocol
local updateOptedInUsers_upvr = dependencies.SocialModalsCommon.Utils.updateOptedInUsers
local llama_upvr = dependencies.llama
local contactImporterModalInfo_upvr = require(Parent.Utils.contactImporterModalInfo)
local Constants_upvr = require(Parent.Common.Constants)
local SetContactImporterDisplayLogic_upvr = require(Parent.Actions.SetContactImporterDisplayLogic)
local contactImporterOSPermissions_upvr = require(Parent.Utils.contactImporterOSPermissions)
return function(arg1, arg2, arg3) -- Line 21
	--[[ Upvalues[12]:
		[1]: NetworkingUserSettings_upvr (readonly)
		[2]: Promise_upvr (readonly)
		[3]: FFlagRemoveCanUploadContacts_upvr (readonly)
		[4]: var3_upvr (readonly)
		[5]: NetworkingAccountInformation_upvr (readonly)
		[6]: PermissionsProtocol_upvr (readonly)
		[7]: updateOptedInUsers_upvr (readonly)
		[8]: llama_upvr (readonly)
		[9]: contactImporterModalInfo_upvr (readonly)
		[10]: Constants_upvr (readonly)
		[11]: SetContactImporterDisplayLogic_upvr (readonly)
		[12]: contactImporterOSPermissions_upvr (readonly)
	]]
	return function(arg1_2) -- Line 22
		--[[ Upvalues[15]:
			[1]: NetworkingUserSettings_upvr (copied, readonly)
			[2]: Promise_upvr (copied, readonly)
			[3]: FFlagRemoveCanUploadContacts_upvr (copied, readonly)
			[4]: var3_upvr (copied, readonly)
			[5]: NetworkingAccountInformation_upvr (copied, readonly)
			[6]: arg2 (readonly)
			[7]: PermissionsProtocol_upvr (copied, readonly)
			[8]: updateOptedInUsers_upvr (copied, readonly)
			[9]: arg3 (readonly)
			[10]: llama_upvr (copied, readonly)
			[11]: contactImporterModalInfo_upvr (copied, readonly)
			[12]: arg1 (readonly)
			[13]: Constants_upvr (copied, readonly)
			[14]: SetContactImporterDisplayLogic_upvr (copied, readonly)
			[15]: contactImporterOSPermissions_upvr (copied, readonly)
		]]
		Promise_upvr.all({arg1_2:dispatch(NetworkingUserSettings_upvr.GetUserSettings.API({})):andThen(function(arg1_3) -- Line 25
			--[[ Upvalues[3]:
				[1]: Promise_upvr (copied, readonly)
				[2]: FFlagRemoveCanUploadContacts_upvr (copied, readonly)
				[3]: var3_upvr (copied, readonly)
			]]
			local module = {}
			local var20
			if FFlagRemoveCanUploadContacts_upvr then
				var20 = nil
			else
				var20 = arg1_3.responseBody.canUploadContacts
			end
			module.canUploadContacts = var20
			var20 = arg1_3.responseBody.phoneNumberDiscoverability
			module.phoneNumberDiscoverability = var20
			var20 = var3_upvr
			return Promise_upvr.resolve(module, var20)
		end), arg1_2:dispatch(NetworkingAccountInformation_upvr.GetPhoneInformation.API()):andThen(function(arg1_4) -- Line 33
			--[[ Upvalues[2]:
				[1]: Promise_upvr (copied, readonly)
				[2]: var3_upvr (copied, readonly)
			]]
			return Promise_upvr.resolve({
				isPhoneVerified = arg1_4.responseBody.isVerified;
			}, var3_upvr)
		end), arg2:hasPermissions({PermissionsProtocol_upvr.Permissions.CONTACTS_ACCESS}):andThen(function(arg1_5) -- Line 38
			--[[ Upvalues[4]:
				[1]: PermissionsProtocol_upvr (copied, readonly)
				[2]: updateOptedInUsers_upvr (copied, readonly)
				[3]: arg3 (copied, readonly)
				[4]: Promise_upvr (copied, readonly)
			]]
			local var25 = arg1_5
			if var25 then
				if arg1_5.status ~= PermissionsProtocol_upvr.Status.AUTHORIZED then
					var25 = false
				else
					var25 = true
				end
			end
			if not var25 then
				updateOptedInUsers_upvr:clearLocalStorage(arg3)
			end
			return Promise_upvr.resolve({
				hasOSPermissions = var25;
			})
		end, var3_upvr)}):andThen(function(arg1_6) -- Line 47
			--[[ Upvalues[10]:
				[1]: llama_upvr (copied, readonly)
				[2]: contactImporterModalInfo_upvr (copied, readonly)
				[3]: arg3 (copied, readonly)
				[4]: arg1 (copied, readonly)
				[5]: Constants_upvr (copied, readonly)
				[6]: arg1_2 (readonly)
				[7]: SetContactImporterDisplayLogic_upvr (copied, readonly)
				[8]: contactImporterOSPermissions_upvr (copied, readonly)
				[9]: FFlagRemoveCanUploadContacts_upvr (copied, readonly)
				[10]: NetworkingUserSettings_upvr (copied, readonly)
			]]
			local tbl = {}
			for _, v in arg1_6 do
				tbl = llama_upvr.Dictionary.join(tbl, v)
			end
			tbl[Constants_upvr.SHOULD_SHOW_CONTACT_IMPORTER_UPSELL_AGAIN] = contactImporterModalInfo_upvr:shouldUserSeeModalPotentiallyAgain(arg3, arg1)
			tbl[Constants_upvr.IS_USER_OPTED_IN_LOCAL_STORAGE] = contactImporterModalInfo_upvr:isUserOptedInLocalStorage(arg3, arg1)
			arg1_2:dispatch(SetContactImporterDisplayLogic_upvr(tbl))
			local hasOSPermissions = tbl.hasOSPermissions
			if contactImporterOSPermissions_upvr:getLastOSPermissionSettings(arg3) ~= hasOSPermissions then
				if FFlagRemoveCanUploadContacts_upvr then
				else
					arg1_2:dispatch(NetworkingUserSettings_upvr.UpdateUserSettings.API({
						canUploadContacts = hasOSPermissions;
					}))
				end
			end
			contactImporterOSPermissions_upvr:updateOSPermissionSettings(arg3, hasOSPermissions)
		end):catch(function() -- Line 76
			--[[ Upvalues[3]:
				[1]: FFlagRemoveCanUploadContacts_upvr (copied, readonly)
				[2]: arg1_2 (readonly)
				[3]: NetworkingUserSettings_upvr (copied, readonly)
			]]
			if FFlagRemoveCanUploadContacts_upvr then
			else
				arg1_2:dispatch(NetworkingUserSettings_upvr.UpdateUserSettings.API({
					canUploadContacts = false;
				}))
			end
		end)
	end
end