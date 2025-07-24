-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:24:53
-- Luau version 6, Types version 3
-- Time taken: 0.002411 seconds

local Parent = script.Parent.Parent
local dependencies = require(Parent.dependencies)
local llama_upvr = dependencies.llama
local Constants_upvr = require(Parent.Common.Constants)
return dependencies.Rodux.createReducer({
	[Constants_upvr.SHOULD_SHOW_CONTACT_IMPORTER_FEATURE] = false;
	[Constants_upvr.SHOULD_SHOW_CONTACT_IMPORTER_UPSELL_MODAL] = false;
	hasOSPermissions = false;
	isPhoneVerified = false;
	canUploadContacts = false;
	isDiscoverabilityUnset = false;
}, {
	[require(Parent.Actions.SetContactImporterDisplayLogic).name] = function(arg1, arg2) -- Line 42
		--[[ Upvalues[1]:
			[1]: Constants_upvr (readonly)
		]]
		-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
		local hasOSPermissions = arg2.hasOSPermissions
		local canUploadContacts = arg2.canUploadContacts
		local var10
		if hasOSPermissions then
		end
		if canUploadContacts == false then
			var10 = false
		else
			var10 = true
		end
		local module = {
			[Constants_upvr.SHOULD_SHOW_CONTACT_IMPORTER_FEATURE] = var10;
			[Constants_upvr.SHOULD_SHOW_CONTACT_IMPORTER_UPSELL_MODAL] = not arg2.isUserOptedInLocalStorage and arg2.shouldShowContactImporterUpsellAgain;
			hasOSPermissions = hasOSPermissions;
			isPhoneVerified = arg2.isPhoneVerified;
			canUploadContacts = canUploadContacts;
		}
		if arg2.phoneNumberDiscoverability ~= Constants_upvr.DISCOVERABILITY_UNSET then
		else
		end
		module.isDiscoverabilityUnset = true
		return module
	end;
	[dependencies.SocialModalsCommon.Actions.UpdateContactImporterModalLogic.name] = function(arg1, arg2) -- Line 64
		--[[ Upvalues[2]:
			[1]: llama_upvr (readonly)
			[2]: Constants_upvr (readonly)
		]]
		return llama_upvr.Dictionary.join(arg1, {
			hasOSPermissions = arg2.hasOSPermissions;
			[Constants_upvr.SHOULD_SHOW_CONTACT_IMPORTER_UPSELL_MODAL] = arg2[Constants_upvr.SHOULD_SHOW_CONTACT_IMPORTER_UPSELL_MODAL];
		})
	end;
	[require(Parent.Actions.SetIsPhoneVerified).name] = function(arg1, arg2) -- Line 72
		--[[ Upvalues[1]:
			[1]: llama_upvr (readonly)
		]]
		return llama_upvr.Dictionary.join(arg1, {
			isPhoneVerified = arg2.isPhoneVerified;
		})
	end;
	[dependencies.SocialModalsCommon.Actions.UpdateIsDiscoverabilityUnset.name] = function(arg1, arg2) -- Line 77
		--[[ Upvalues[1]:
			[1]: llama_upvr (readonly)
		]]
		return llama_upvr.Dictionary.join(arg1, {
			isDiscoverabilityUnset = arg2.isDiscoverabilityUnset;
		})
	end;
})