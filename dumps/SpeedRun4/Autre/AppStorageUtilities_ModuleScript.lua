-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:21:12
-- Luau version 6, Types version 3
-- Time taken: 0.007080 seconds

local AuthCommon = script:FindFirstAncestor("AuthCommon")
local Parent = AuthCommon.Parent
local AuthLocalStorageKeys_upvr = require(AuthCommon.Enums.AuthLocalStorageKeys)
local AppStorageService_upvr = game:GetService("AppStorageService")
local HttpService_upvr = game:GetService("HttpService")
local GetFFlagEnableMultiPageSignup_upvr = require(Parent.SharedFlags).GetFFlagEnableMultiPageSignup
local FFlagPasskeySignupDeferLaunchApp_upvr = require(Parent.SharedFlags).FFlagPasskeySignupDeferLaunchApp
local tbl_4_upvr = {
	passkeySignupName = "PasskeySignupName";
}
local module_upvr = {
	setRobloxLocaleId = function(arg1) -- Line 17, Named "setRobloxLocaleId"
		--[[ Upvalues[2]:
			[1]: AppStorageService_upvr (readonly)
			[2]: AuthLocalStorageKeys_upvr (readonly)
		]]
		AppStorageService_upvr:SetItem(AuthLocalStorageKeys_upvr.RobloxLocaleId, arg1)
	end;
	setGameLocaleId = function(arg1) -- Line 22, Named "setGameLocaleId"
		--[[ Upvalues[2]:
			[1]: AppStorageService_upvr (readonly)
			[2]: AuthLocalStorageKeys_upvr (readonly)
		]]
		AppStorageService_upvr:SetItem(AuthLocalStorageKeys_upvr.GameLocaleId, arg1)
	end;
	getAuthenticatedTheme = function() -- Line 26, Named "getAuthenticatedTheme"
		--[[ Upvalues[2]:
			[1]: AppStorageService_upvr (readonly)
			[2]: AuthLocalStorageKeys_upvr (readonly)
		]]
		return AppStorageService_upvr:GetItem(AuthLocalStorageKeys_upvr.AuthenticatedTheme)
	end;
	getIsFirstLaunchAfterInstall = function() -- Line 30, Named "getIsFirstLaunchAfterInstall"
		--[[ Upvalues[2]:
			[1]: AppStorageService_upvr (readonly)
			[2]: AuthLocalStorageKeys_upvr (readonly)
		]]
		if game:GetEngineFeature("IsFirstLaunchAfterInstallKeyAvailable") then
			return AppStorageService_upvr:GetItem(AuthLocalStorageKeys_upvr.IsFirstLaunchAfterInstall)
		end
		return ""
	end;
	setAuthenticatedTheme = function(arg1) -- Line 37, Named "setAuthenticatedTheme"
		--[[ Upvalues[2]:
			[1]: AppStorageService_upvr (readonly)
			[2]: AuthLocalStorageKeys_upvr (readonly)
		]]
		AppStorageService_upvr:SetItem(AuthLocalStorageKeys_upvr.AuthenticatedTheme, arg1)
	end;
	getAccountBlob = function() -- Line 41, Named "getAccountBlob"
		--[[ Upvalues[2]:
			[1]: AppStorageService_upvr (readonly)
			[2]: AuthLocalStorageKeys_upvr (readonly)
		]]
		if game:GetEngineFeature("AccountSwitchFeatureEnabled") then
			return AppStorageService_upvr:GetItem(AuthLocalStorageKeys_upvr.AccountBlob) or ""
		end
		return ""
	end;
	setAccountBlob = function(arg1) -- Line 48, Named "setAccountBlob"
		--[[ Upvalues[2]:
			[1]: AppStorageService_upvr (readonly)
			[2]: AuthLocalStorageKeys_upvr (readonly)
		]]
		if game:GetEngineFeature("AccountSwitchFeatureEnabled") then
			AppStorageService_upvr:SetItem(AuthLocalStorageKeys_upvr.AccountBlob, arg1 or "")
		end
	end;
	getDefaultUsername = function() -- Line 54, Named "getDefaultUsername"
		--[[ Upvalues[2]:
			[1]: AppStorageService_upvr (readonly)
			[2]: AuthLocalStorageKeys_upvr (readonly)
		]]
		return AppStorageService_upvr:GetItem(AuthLocalStorageKeys_upvr.CredentialValue)
	end;
	getSignupActionRequired = function() -- Line 58, Named "getSignupActionRequired"
		--[[ Upvalues[2]:
			[1]: AppStorageService_upvr (readonly)
			[2]: AuthLocalStorageKeys_upvr (readonly)
		]]
		return AppStorageService_upvr:GetItem(AuthLocalStorageKeys_upvr.SignupActionRequired)
	end;
	setSignupActionRequired = function(arg1) -- Line 62, Named "setSignupActionRequired"
		--[[ Upvalues[2]:
			[1]: AppStorageService_upvr (readonly)
			[2]: AuthLocalStorageKeys_upvr (readonly)
		]]
		AppStorageService_upvr:SetItem(AuthLocalStorageKeys_upvr.SignupActionRequired, arg1)
	end;
	getAccountSwitcherMetadataMap = function() -- Line 66, Named "getAccountSwitcherMetadataMap"
		--[[ Upvalues[2]:
			[1]: AppStorageService_upvr (readonly)
			[2]: AuthLocalStorageKeys_upvr (readonly)
		]]
		if game:GetEngineFeature("AccountSwitcherMetadataMapKeyAvailable") then
			return AppStorageService_upvr:GetItem(AuthLocalStorageKeys_upvr.AccountSwitcherMetadataMap) or ""
		end
		return ""
	end;
	setAccountSwitcherMetadataMap = function(arg1) -- Line 73, Named "setAccountSwitcherMetadataMap"
		--[[ Upvalues[2]:
			[1]: AppStorageService_upvr (readonly)
			[2]: AuthLocalStorageKeys_upvr (readonly)
		]]
		if game:GetEngineFeature("AccountSwitcherMetadataMapKeyAvailable") then
			AppStorageService_upvr:SetItem(AuthLocalStorageKeys_upvr.AccountSwitcherMetadataMap, arg1 or "")
		end
	end;
}
function module_upvr.getAccountSwitchTargetUsername() -- Line 79
	--[[ Upvalues[2]:
		[1]: module_upvr (readonly)
		[2]: HttpService_upvr (readonly)
	]]
	if game:GetEngineFeature("AccountSwitcherMetadataMapKeyAvailable") then
		local any_getAccountSwitcherMetadataMap_result1 = module_upvr.getAccountSwitcherMetadataMap()
		if any_getAccountSwitcherMetadataMap_result1 == nil or any_getAccountSwitcherMetadataMap_result1 == "" then
			return ""
		end
		local any_JSONDecode_result1_2 = HttpService_upvr:JSONDecode(any_getAccountSwitcherMetadataMap_result1)
		if any_JSONDecode_result1_2 == nil or any_JSONDecode_result1_2 == "" or next(any_JSONDecode_result1_2) == nil or next(any_JSONDecode_result1_2) == "" or any_JSONDecode_result1_2.AccountSwitchTargetUsername == nil then
			return ""
		end
		return any_JSONDecode_result1_2.AccountSwitchTargetUsername
	end
	return ""
end
function module_upvr.setAccountSwitchTargetUsername(arg1) -- Line 100
	--[[ Upvalues[2]:
		[1]: module_upvr (readonly)
		[2]: HttpService_upvr (readonly)
	]]
	if game:GetEngineFeature("AccountSwitcherMetadataMapKeyAvailable") then
		local any_getAccountSwitcherMetadataMap_result1_3 = module_upvr.getAccountSwitcherMetadataMap()
		local var13
		if any_getAccountSwitcherMetadataMap_result1_3 == nil or any_getAccountSwitcherMetadataMap_result1_3 == "" then
			local tbl_5 = {}
			tbl_5.AccountSwitchTargetUsername = arg1
			var13 = tbl_5
		else
			var13 = HttpService_upvr:JSONDecode(any_getAccountSwitcherMetadataMap_result1_3)
			var13.AccountSwitchTargetUsername = arg1
		end
		module_upvr.setAccountSwitcherMetadataMap(HttpService_upvr:JSONEncode(var13))
	end
end
function module_upvr.getAccountSwitchStatus() -- Line 116
	--[[ Upvalues[2]:
		[1]: module_upvr (readonly)
		[2]: HttpService_upvr (readonly)
	]]
	if game:GetEngineFeature("AccountSwitcherMetadataMapKeyAvailable") then
		local any_getAccountSwitcherMetadataMap_result1_4 = module_upvr.getAccountSwitcherMetadataMap()
		if any_getAccountSwitcherMetadataMap_result1_4 == nil or any_getAccountSwitcherMetadataMap_result1_4 == "" then
			return ""
		end
		local any_JSONDecode_result1_4 = HttpService_upvr:JSONDecode(any_getAccountSwitcherMetadataMap_result1_4)
		if any_JSONDecode_result1_4 == nil or any_JSONDecode_result1_4 == "" or next(any_JSONDecode_result1_4) == nil or next(any_JSONDecode_result1_4) == "" or any_JSONDecode_result1_4.AccountSwitchStatus == nil then
			return ""
		end
		return any_JSONDecode_result1_4.AccountSwitchStatus
	end
	return ""
end
function module_upvr.setAccountSwitchStatus(arg1) -- Line 138
	--[[ Upvalues[2]:
		[1]: module_upvr (readonly)
		[2]: HttpService_upvr (readonly)
	]]
	if game:GetEngineFeature("AccountSwitcherMetadataMapKeyAvailable") then
		local any_getAccountSwitcherMetadataMap_result1_2 = module_upvr.getAccountSwitcherMetadataMap()
		local var18
		if any_getAccountSwitcherMetadataMap_result1_2 == nil or any_getAccountSwitcherMetadataMap_result1_2 == "" then
			local tbl_6 = {}
			tbl_6.AccountSwitchStatus = arg1
			var18 = tbl_6
		else
			var18 = HttpService_upvr:JSONDecode(any_getAccountSwitcherMetadataMap_result1_2)
			var18.AccountSwitchStatus = arg1
		end
		module_upvr.setAccountSwitcherMetadataMap(HttpService_upvr:JSONEncode(var18))
	end
end
function module_upvr.getMultipageSignupMetadataMap() -- Line 154
	--[[ Upvalues[4]:
		[1]: GetFFlagEnableMultiPageSignup_upvr (readonly)
		[2]: FFlagPasskeySignupDeferLaunchApp_upvr (readonly)
		[3]: AppStorageService_upvr (readonly)
		[4]: AuthLocalStorageKeys_upvr (readonly)
	]]
	if GetFFlagEnableMultiPageSignup_upvr() or FFlagPasskeySignupDeferLaunchApp_upvr then
		return AppStorageService_upvr:GetItem(AuthLocalStorageKeys_upvr.MultipageSignupMetadataMap) or ""
	end
	return ""
end
function module_upvr.setMultipageSignupMetadataMap(arg1) -- Line 161
	--[[ Upvalues[4]:
		[1]: GetFFlagEnableMultiPageSignup_upvr (readonly)
		[2]: FFlagPasskeySignupDeferLaunchApp_upvr (readonly)
		[3]: AppStorageService_upvr (readonly)
		[4]: AuthLocalStorageKeys_upvr (readonly)
	]]
	if GetFFlagEnableMultiPageSignup_upvr() or FFlagPasskeySignupDeferLaunchApp_upvr then
		AppStorageService_upvr:SetItem(AuthLocalStorageKeys_upvr.MultipageSignupMetadataMap, arg1 or "")
	end
end
function module_upvr.getIncompleteSignupUserId() -- Line 167
	--[[ Upvalues[2]:
		[1]: module_upvr (readonly)
		[2]: HttpService_upvr (readonly)
	]]
	local any_getMultipageSignupMetadataMap_result1_3 = module_upvr.getMultipageSignupMetadataMap()
	if any_getMultipageSignupMetadataMap_result1_3 == nil or any_getMultipageSignupMetadataMap_result1_3 == "" then
		return ""
	end
	local any_JSONDecode_result1 = HttpService_upvr:JSONDecode(any_getMultipageSignupMetadataMap_result1_3)
	if any_JSONDecode_result1 == nil or any_JSONDecode_result1 == "" or next(any_JSONDecode_result1) == nil or next(any_JSONDecode_result1) == "" or any_JSONDecode_result1.IncompleteSignupUserId == nil then
		return ""
	end
	return any_JSONDecode_result1.IncompleteSignupUserId
end
function module_upvr.setIncompleteSignupUserId(arg1) -- Line 185
	--[[ Upvalues[3]:
		[1]: GetFFlagEnableMultiPageSignup_upvr (readonly)
		[2]: module_upvr (readonly)
		[3]: HttpService_upvr (readonly)
	]]
	if GetFFlagEnableMultiPageSignup_upvr() then
		local any_getMultipageSignupMetadataMap_result1 = module_upvr.getMultipageSignupMetadataMap()
		local var23
		if any_getMultipageSignupMetadataMap_result1 == nil or any_getMultipageSignupMetadataMap_result1 == "" then
			local tbl_3 = {}
			tbl_3.IncompleteSignupUserId = arg1
			var23 = tbl_3
		else
			var23 = HttpService_upvr:JSONDecode(any_getMultipageSignupMetadataMap_result1)
			var23.IncompleteSignupUserId = arg1
		end
		module_upvr.setMultipageSignupMetadataMap(HttpService_upvr:JSONEncode(var23))
	end
end
function module_upvr.getIncompleteSignupUsername() -- Line 201
	--[[ Upvalues[2]:
		[1]: module_upvr (readonly)
		[2]: HttpService_upvr (readonly)
	]]
	local any_getMultipageSignupMetadataMap_result1_5 = module_upvr.getMultipageSignupMetadataMap()
	if any_getMultipageSignupMetadataMap_result1_5 == nil or any_getMultipageSignupMetadataMap_result1_5 == "" then
		return ""
	end
	local any_JSONDecode_result1_3 = HttpService_upvr:JSONDecode(any_getMultipageSignupMetadataMap_result1_5)
	if any_JSONDecode_result1_3 == nil or any_JSONDecode_result1_3 == "" or next(any_JSONDecode_result1_3) == nil or next(any_JSONDecode_result1_3) == "" or any_JSONDecode_result1_3.IncompleteSignupUsername == nil then
		return ""
	end
	return any_JSONDecode_result1_3.IncompleteSignupUsername
end
function module_upvr.setIncompleteSignupUsername(arg1) -- Line 219
	--[[ Upvalues[3]:
		[1]: GetFFlagEnableMultiPageSignup_upvr (readonly)
		[2]: module_upvr (readonly)
		[3]: HttpService_upvr (readonly)
	]]
	if GetFFlagEnableMultiPageSignup_upvr() then
		local any_getMultipageSignupMetadataMap_result1_2 = module_upvr.getMultipageSignupMetadataMap()
		local var28
		if any_getMultipageSignupMetadataMap_result1_2 == nil or any_getMultipageSignupMetadataMap_result1_2 == "" then
			local tbl_2 = {}
			tbl_2.IncompleteSignupUsername = arg1
			var28 = tbl_2
		else
			var28 = HttpService_upvr:JSONDecode(any_getMultipageSignupMetadataMap_result1_2)
			var28.IncompleteSignupUsername = arg1
		end
		module_upvr.setMultipageSignupMetadataMap(HttpService_upvr:JSONEncode(var28))
	end
end
function getMultiPageSignupKey(arg1) -- Line 235
	--[[ Upvalues[2]:
		[1]: module_upvr (readonly)
		[2]: HttpService_upvr (readonly)
	]]
	local any_getMultipageSignupMetadataMap_result1_4 = module_upvr.getMultipageSignupMetadataMap()
	if any_getMultipageSignupMetadataMap_result1_4 == nil or any_getMultipageSignupMetadataMap_result1_4 == "" then
		return ""
	end
	local any_JSONDecode_result1_5 = HttpService_upvr:JSONDecode(any_getMultipageSignupMetadataMap_result1_4)
	if any_JSONDecode_result1_5 == nil or any_JSONDecode_result1_5 == "" or next(any_JSONDecode_result1_5) == nil or next(any_JSONDecode_result1_5) == "" or any_JSONDecode_result1_5[arg1] == nil then
		return ""
	end
	return any_JSONDecode_result1_5[arg1]
end
function setMultiPageSignupKey(arg1, arg2) -- Line 247
	--[[ Upvalues[2]:
		[1]: module_upvr (readonly)
		[2]: HttpService_upvr (readonly)
	]]
	if game:GetEngineFeature("MultipageSignupMetadataMapKeyAvailable") then
		local any_getMultipageSignupMetadataMap_result1_6 = module_upvr.getMultipageSignupMetadataMap()
		local var33
		if any_getMultipageSignupMetadataMap_result1_6 == nil or any_getMultipageSignupMetadataMap_result1_6 == "" then
			local tbl = {}
			tbl[arg1] = arg2
			var33 = tbl
		else
			var33 = HttpService_upvr:JSONDecode(any_getMultipageSignupMetadataMap_result1_6)
			var33[arg1] = arg2
		end
		module_upvr.setMultipageSignupMetadataMap(HttpService_upvr:JSONEncode(var33))
	end
end
function module_upvr.getPasskeySignupUsername() -- Line 263
	--[[ Upvalues[1]:
		[1]: tbl_4_upvr (readonly)
	]]
	return getMultiPageSignupKey(tbl_4_upvr.passkeySignupName)
end
function module_upvr.setPasskeySignupUsername(arg1) -- Line 267
	--[[ Upvalues[1]:
		[1]: tbl_4_upvr (readonly)
	]]
	setMultiPageSignupKey(tbl_4_upvr.passkeySignupName, arg1)
end
function module_upvr.getPreviousAccountsList() -- Line 271
	--[[ Upvalues[3]:
		[1]: AppStorageService_upvr (readonly)
		[2]: AuthLocalStorageKeys_upvr (readonly)
		[3]: HttpService_upvr (readonly)
	]]
	if game:GetEngineFeature("PreviousAccountsListAvailable") then
		local var35 = AppStorageService_upvr:GetItem(AuthLocalStorageKeys_upvr.PreviousAccountsList) or ""
		if var35 == "" then
			return {}
		end
		return HttpService_upvr:JSONDecode(var35)
	end
	return {}
end
function module_upvr.setPreviousAccountsList(arg1) -- Line 290
	--[[ Upvalues[3]:
		[1]: HttpService_upvr (readonly)
		[2]: AppStorageService_upvr (readonly)
		[3]: AuthLocalStorageKeys_upvr (readonly)
	]]
	if game:GetEngineFeature("PreviousAccountsListAvailable") then
		AppStorageService_upvr:SetItem(AuthLocalStorageKeys_upvr.PreviousAccountsList, HttpService_upvr:JSONEncode(arg1))
	end
end
function module_upvr.getLastSuccessfulSignInMethod() -- Line 297
	--[[ Upvalues[2]:
		[1]: AppStorageService_upvr (readonly)
		[2]: AuthLocalStorageKeys_upvr (readonly)
	]]
	if game:GetEngineFeature("LastSuccessfulSignInMethodKeyAvailable") then
		return AppStorageService_upvr:GetItem(AuthLocalStorageKeys_upvr.LastSuccessfulSignInMethod)
	end
	return ""
end
function module_upvr.setLastSuccessfulSignInMethod(arg1) -- Line 304
	--[[ Upvalues[2]:
		[1]: AppStorageService_upvr (readonly)
		[2]: AuthLocalStorageKeys_upvr (readonly)
	]]
	if game:GetEngineFeature("LastSuccessfulSignInMethodKeyAvailable") then
		AppStorageService_upvr:SetItem(AuthLocalStorageKeys_upvr.LastSuccessfulSignInMethod, arg1)
	end
end
function module_upvr.flush() -- Line 310
	--[[ Upvalues[1]:
		[1]: AppStorageService_upvr (readonly)
	]]
	AppStorageService_upvr:flush()
end
return module_upvr