-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:20:50
-- Luau version 6, Types version 3
-- Time taken: 0.002151 seconds

local AuthCommon = script:FindFirstAncestor("AuthCommon")
local Parent = AuthCommon.Parent
local HttpService_upvr = game:GetService("HttpService")
local Url_upvr = require(Parent.Http).Url
local module = {
	configuration = function(arg1, arg2) -- Line 20
		--[[ Upvalues[1]:
			[1]: Url_upvr (readonly)
		]]
		return arg1(string.format("%sv1/users/%d/configuration", Url_upvr.TWOSTEPVERIFICATION_URL, arg2), "GET")
	end;
	resend = function(arg1, arg2, arg3) -- Line 26
		--[[ Upvalues[2]:
			[1]: Url_upvr (readonly)
			[2]: HttpService_upvr (readonly)
		]]
		local tbl_2 = {}
		tbl_2.username = arg2
		tbl_2.ticket = arg3
		tbl_2.actionType = "Login"
		return arg1(string.format("%sv1/twostepverification/resend", Url_upvr.AUTH_URL), "POST", {
			postBody = HttpService_upvr:JSONEncode(tbl_2);
			maxRetryCount = 0;
		})
	end;
	verify = function(arg1, arg2, arg3, arg4, arg5) -- Line 37
		--[[ Upvalues[2]:
			[1]: Url_upvr (readonly)
			[2]: HttpService_upvr (readonly)
		]]
		local tbl = {}
		tbl.username = arg2
		tbl.ticket = arg3
		tbl.code = arg4
		tbl.rememberDevice = arg5
		tbl.actionType = "Login"
		return arg1(string.format("%sv1/twostepverification/verify", Url_upvr.AUTH_URL), "POST", {
			postBody = HttpService_upvr:JSONEncode(tbl);
			maxRetryCount = 0;
		})
	end;
}
local FFlagEnableLuaAccountSwitch_upvr = require(Parent.SharedFlags).FFlagEnableLuaAccountSwitch
local AppStorageUtilities_upvr = require(AuthCommon.Utils.AppStorageUtilities)
function module.login(arg1, arg2, arg3, arg4, arg5) -- Line 50
	--[[ Upvalues[4]:
		[1]: Url_upvr (readonly)
		[2]: HttpService_upvr (readonly)
		[3]: FFlagEnableLuaAccountSwitch_upvr (readonly)
		[4]: AppStorageUtilities_upvr (readonly)
	]]
	local tbl_3 = {}
	tbl_3.challengeId = arg3
	tbl_3.verificationToken = arg4
	tbl_3.rememberDevice = arg5
	local var17
	local function INLINED() -- Internal function, doesn't exist in bytecode
		var17 = AppStorageUtilities_upvr.getAccountBlob()
		return var17
	end
	if not FFlagEnableLuaAccountSwitch_upvr or not INLINED() then
		var17 = nil
	end
	tbl_3.accountBlob = var17
	var17 = "POST"
	return arg1(string.format("%sv3/users/%s/two-step-verification/login", Url_upvr.AUTH_URL, arg2), var17, {
		postBody = HttpService_upvr:JSONEncode(tbl_3);
		maxRetryCount = 0;
	})
end
return module