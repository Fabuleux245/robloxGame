-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:04:08
-- Luau version 6, Types version 3
-- Time taken: 0.001199 seconds

local module_2_upvr = {
	canUploadContacts = nil;
}
local Rodux_upvr = require(script.Parent.Parent.Parent.Rodux)
return function(arg1) -- Line 10
	--[[ Upvalues[2]:
		[1]: Rodux_upvr (readonly)
		[2]: module_2_upvr (readonly)
	]]
	local networkingUserSettings = arg1.networkingUserSettings
	return Rodux_upvr.createReducer(module_2_upvr, {
		[networkingUserSettings.GetUserSettings.Succeeded.name] = function(arg1_2, arg2) -- Line 14
			local module = {}
			local responseBody = arg2.responseBody
			if responseBody then
				responseBody = arg2.responseBody.canUploadContacts
			end
			module.canUploadContacts = responseBody
			return module
		end;
		[networkingUserSettings.UpdateUserSettings.Succeeded.name] = function(arg1_3, arg2) -- Line 22
			if arg2.postBody and arg2.postBody.canUploadContacts ~= nil then
				return {
					canUploadContacts = arg2.postBody.canUploadContacts;
				}
			end
			return arg1_3
		end;
	})
end