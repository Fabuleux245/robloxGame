-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:25:01
-- Luau version 6, Types version 3
-- Time taken: 0.000551 seconds

local contactImporterModalInfo_upvr = require(script.Parent.contactImporterModalInfo)
return function(arg1) -- Line 14
	--[[ Upvalues[1]:
		[1]: contactImporterModalInfo_upvr (readonly)
	]]
	local appStorageService = arg1.appStorageService
	local userid = arg1.userid
	if contactImporterModalInfo_upvr:isUserOptedInLocalStorage(appStorageService, userid) then
		return false
	end
	return contactImporterModalInfo_upvr:shouldUserSeeModalPotentiallyAgain(appStorageService, userid)
end