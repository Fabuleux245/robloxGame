-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:41:07
-- Luau version 6, Types version 3
-- Time taken: 0.002036 seconds

local Parent = script:FindFirstAncestor("RobloxAppToastsRodux").Parent
local ToastRodux = require(Parent.ToastRodux)
local HttpService_upvr = game:GetService("HttpService")
local game_DefineFastFlag_result1_upvr = game:DefineFastFlag("LuaAppMutedSetNetworkingErrorToast", false)
local mutedError_upvr = require(Parent.Loggers).mutedError
local tutils_upvr = require(Parent.tutils)
local function getUserFacingMessage_upvr(arg1) -- Line 13, Named "getUserFacingMessage"
	--[[ Upvalues[4]:
		[1]: HttpService_upvr (readonly)
		[2]: game_DefineFastFlag_result1_upvr (readonly)
		[3]: mutedError_upvr (readonly)
		[4]: tutils_upvr (readonly)
	]]
	local pcall_result1, pcall_result2 = pcall(HttpService_upvr.JSONDecode, HttpService_upvr, arg1.Body)
	if not pcall_result1 then
		return nil
	end
	local errors = pcall_result2.errors
	if errors then
		for i, v in ipairs(errors) do
			local userFacingMessage = v.userFacingMessage
			if userFacingMessage ~= nil then
				return userFacingMessage
			end
		end
	elseif game_DefineFastFlag_result1_upvr then
		v = tutils_upvr
		i = v.toString
		v = arg1
		i = i(v)
		mutedError_upvr("No errors given in err.Body, err = "..i)
	end
	return nil
end
local SetCurrentToastMessage_upvr = ToastRodux.Actions.SetCurrentToastMessage
local ToastType_upvr = ToastRodux.Enums.ToastType
local getLocalizedToastStringFromHttpError_upvr = require(script.Parent.getLocalizedToastStringFromHttpError)
return function(arg1) -- Line 37
	--[[ Upvalues[4]:
		[1]: getUserFacingMessage_upvr (readonly)
		[2]: SetCurrentToastMessage_upvr (readonly)
		[3]: ToastType_upvr (readonly)
		[4]: getLocalizedToastStringFromHttpError_upvr (readonly)
	]]
	local var20 = arg1
	if not var20 then
		var20 = {}
	end
	local var21_upvw = var20
	assert(var21_upvw, "not nil")
	return function(arg1_2) -- Line 41
		--[[ Upvalues[5]:
			[1]: getUserFacingMessage_upvr (copied, readonly)
			[2]: var21_upvw (read and write)
			[3]: SetCurrentToastMessage_upvr (copied, readonly)
			[4]: ToastType_upvr (copied, readonly)
			[5]: getLocalizedToastStringFromHttpError_upvr (copied, readonly)
		]]
		local getUserFacingMessage_upvr_result1 = getUserFacingMessage_upvr(var21_upvw)
		if getUserFacingMessage_upvr_result1 then
			arg1_2:dispatch(SetCurrentToastMessage_upvr({
				toastType = ToastType_upvr.InformationMessage;
				toastMessage = getUserFacingMessage_upvr_result1;
				isLocalized = true;
			}))
		else
			local var19_result1 = getLocalizedToastStringFromHttpError_upvr(var21_upvw.HttpError, var21_upvw.StatusCode)
			if var19_result1 ~= nil then
				arg1_2:dispatch(SetCurrentToastMessage_upvr({
					toastType = ToastType_upvr.NetworkingError;
					toastMessage = var19_result1;
				}))
			end
		end
	end
end