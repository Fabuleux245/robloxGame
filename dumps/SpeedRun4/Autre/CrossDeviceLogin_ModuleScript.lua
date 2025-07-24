-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:20:57
-- Luau version 6, Types version 3
-- Time taken: 0.004046 seconds

local AuthCommon = script:FindFirstAncestor("AuthCommon")
local Parent = AuthCommon.Parent
local CentralOverlayType_upvr = require(Parent.RobloxAppEnums).CentralOverlayType
local SetCentralOverlay_upvr = require(Parent.CentralOverlay).Actions.SetCentralOverlay
local module_2 = {}
local PostEnterLoginCode_upvr = require(AuthCommon.Http.Requests.PostEnterLoginCode)
function module_2.EnterCode(arg1, arg2) -- Line 17
	--[[ Upvalues[1]:
		[1]: PostEnterLoginCode_upvr (readonly)
	]]
	return function(arg1_2) -- Line 18
		--[[ Upvalues[3]:
			[1]: PostEnterLoginCode_upvr (copied, readonly)
			[2]: arg1 (readonly)
			[3]: arg2 (readonly)
		]]
		return PostEnterLoginCode_upvr(arg1, arg2):andThen(function(arg1_3) -- Line 19
			local var9 = arg1_3
			if var9 then
				var9 = arg1_3.responseBody
			end
			if var9 then
				return {
					DeviceInfo = string.format("%s\n%s", arg1_3.responseBody.deviceInfo or "", arg1_3.responseBody.location or "");
				}
			end
			return nil
		end)
	end
end
local PostCreateLoginCode_upvr = require(AuthCommon.Http.Requests.PostCreateLoginCode)
local GetFFlagEnableCrossDeviceLoginUsingQRCodes_upvr = require(Parent.SharedFlags).GetFFlagEnableCrossDeviceLoginUsingQRCodes
function module_2.FetchDeviceCode(arg1) -- Line 36
	--[[ Upvalues[2]:
		[1]: PostCreateLoginCode_upvr (readonly)
		[2]: GetFFlagEnableCrossDeviceLoginUsingQRCodes_upvr (readonly)
	]]
	return function(arg1_4) -- Line 37
		--[[ Upvalues[3]:
			[1]: PostCreateLoginCode_upvr (copied, readonly)
			[2]: arg1 (readonly)
			[3]: GetFFlagEnableCrossDeviceLoginUsingQRCodes_upvr (copied, readonly)
		]]
		return PostCreateLoginCode_upvr(arg1):andThen(function(arg1_5) -- Line 38
			--[[ Upvalues[1]:
				[1]: GetFFlagEnableCrossDeviceLoginUsingQRCodes_upvr (copied, readonly)
			]]
			local var15 = arg1_5
			if var15 then
				var15 = arg1_5.responseBody
			end
			if var15 then
				local module = {
					DeviceCode = var15.code;
				}
				local privateKey = var15.privateKey
				module.PrivateKey = privateKey
				if GetFFlagEnableCrossDeviceLoginUsingQRCodes_upvr() then
					privateKey = var15.imagePath
				else
					privateKey = nil
				end
				module.QrCodePath = privateKey
				return module
			end
			return nil
		end)
	end
end
local PostLoginCodeStatus_upvr = require(AuthCommon.Http.Requests.PostLoginCodeStatus)
function module_2.GetLoginStatus(arg1, arg2, arg3) -- Line 53
	--[[ Upvalues[1]:
		[1]: PostLoginCodeStatus_upvr (readonly)
	]]
	return function(arg1_6) -- Line 54
		--[[ Upvalues[4]:
			[1]: PostLoginCodeStatus_upvr (copied, readonly)
			[2]: arg1 (readonly)
			[3]: arg2 (readonly)
			[4]: arg3 (readonly)
		]]
		return PostLoginCodeStatus_upvr(arg1, arg2, arg3):andThen(function(arg1_7) -- Line 55
			local var21 = arg1_7
			if var21 then
				var21 = arg1_7.responseBody
			end
			if var21 then
				return {
					Status = var21.status;
					AccountName = var21.accountName;
					AccountPictureUrl = var21.accountPictureUrl;
					ExpirationTime = var21.expirationTime;
				}
			end
			return nil
		end)
	end
end
function module_2.OpenLoginCodePrompt(arg1) -- Line 71
	--[[ Upvalues[2]:
		[1]: SetCentralOverlay_upvr (readonly)
		[2]: CentralOverlayType_upvr (readonly)
	]]
	return function(arg1_8) -- Line 72
		--[[ Upvalues[3]:
			[1]: SetCentralOverlay_upvr (copied, readonly)
			[2]: CentralOverlayType_upvr (copied, readonly)
			[3]: arg1 (readonly)
		]]
		arg1_8:dispatch(SetCentralOverlay_upvr(CentralOverlayType_upvr.CrossDeviceCodePrompt, arg1))
	end
end
local PostConfirmLoginCode_upvr = require(AuthCommon.Http.Requests.PostConfirmLoginCode)
function module_2.ConfirmDeviceAccess(arg1, arg2) -- Line 77
	--[[ Upvalues[1]:
		[1]: PostConfirmLoginCode_upvr (readonly)
	]]
	return function(arg1_9) -- Line 78
		--[[ Upvalues[3]:
			[1]: PostConfirmLoginCode_upvr (copied, readonly)
			[2]: arg1 (readonly)
			[3]: arg2 (readonly)
		]]
		return PostConfirmLoginCode_upvr(arg1, arg2)
	end
end
local PostCancelLoginCode_upvr = require(AuthCommon.Http.Requests.PostCancelLoginCode)
function module_2.CancelLoginCode(arg1, arg2) -- Line 83
	--[[ Upvalues[1]:
		[1]: PostCancelLoginCode_upvr (readonly)
	]]
	return function(arg1_10) -- Line 84
		--[[ Upvalues[3]:
			[1]: PostCancelLoginCode_upvr (copied, readonly)
			[2]: arg1 (readonly)
			[3]: arg2 (readonly)
		]]
		return PostCancelLoginCode_upvr(arg1, arg2)
	end
end
function module_2.OpenConfirmationOverlay(arg1, arg2, arg3, arg4) -- Line 89
	--[[ Upvalues[2]:
		[1]: SetCentralOverlay_upvr (readonly)
		[2]: CentralOverlayType_upvr (readonly)
	]]
	return function(arg1_11) -- Line 90
		--[[ Upvalues[6]:
			[1]: SetCentralOverlay_upvr (copied, readonly)
			[2]: CentralOverlayType_upvr (copied, readonly)
			[3]: arg1 (readonly)
			[4]: arg2 (readonly)
			[5]: arg3 (readonly)
			[6]: arg4 (readonly)
		]]
		local tbl = {}
		tbl.loginSuccess = arg1
		tbl.closeCallback = arg2
		tbl.retryCallback = arg3
		tbl.deviceString = arg4
		arg1_11:dispatch(SetCentralOverlay_upvr(CentralOverlayType_upvr.CrossDeviceLoginConfirmation, tbl))
	end
end
return module_2