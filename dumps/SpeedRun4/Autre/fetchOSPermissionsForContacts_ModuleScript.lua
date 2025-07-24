-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:24:59
-- Luau version 6, Types version 3
-- Time taken: 0.001344 seconds

local dependencies = require(script.Parent.Parent.dependencies)
local PermissionsProtocol_upvr = dependencies.PermissionsProtocol
local updateOptedInUsers_upvr = dependencies.SocialModalsCommon.Utils.updateOptedInUsers
local AppStorageService_upvr = dependencies.AppStorageService
return function(arg1, arg2) -- Line 10
	--[[ Upvalues[3]:
		[1]: PermissionsProtocol_upvr (readonly)
		[2]: updateOptedInUsers_upvr (readonly)
		[3]: AppStorageService_upvr (readonly)
	]]
	arg1:hasPermissions({PermissionsProtocol_upvr.Permissions.CONTACTS_ACCESS}):andThen(function(arg1_2) -- Line 13
		--[[ Upvalues[4]:
			[1]: PermissionsProtocol_upvr (copied, readonly)
			[2]: updateOptedInUsers_upvr (copied, readonly)
			[3]: AppStorageService_upvr (copied, readonly)
			[4]: arg2 (readonly)
		]]
		local var8 = arg1_2
		if var8 then
			if arg1_2.status ~= PermissionsProtocol_upvr.Status.AUTHORIZED then
				var8 = false
			else
				var8 = true
			end
		end
		if not var8 then
			updateOptedInUsers_upvr:clearLocalStorage(AppStorageService_upvr)
		end
		if arg2 then
			arg2(var8)
		end
	end):catch(function(arg1_3) -- Line 24
	end)
end