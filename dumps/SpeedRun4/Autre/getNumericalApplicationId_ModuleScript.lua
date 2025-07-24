-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:55:47
-- Luau version 6, Types version 3
-- Time taken: 0.001066 seconds

game:DefineFastFlag("EnableContactInvitesForNonPhoneVerifiedForAll", false)
game:DefineFastInt("EnableContactInvitesForNonPhoneVerifiedRollout", 0)
local AppStorageService_upvr = game:GetService("AppStorageService")
return function(arg1) -- Line 7
	--[[ Upvalues[1]:
		[1]: AppStorageService_upvr (readonly)
	]]
	local var3 = AppStorageService_upvr
	if arg1 then
		var3 = arg1
	end
	local any_GetItem_result1 = var3:GetItem("AppInstallationId")
	local typeof_result1 = typeof(any_GetItem_result1)
	if typeof_result1 == "number" then
		return any_GetItem_result1
	end
	if typeof_result1 == "string" then
		if string.len(any_GetItem_result1) <= 0 then
			return nil
		end
		return tonumber(string.sub(any_GetItem_result1, -2))
	end
	return nil
end