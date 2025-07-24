-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:24:58
-- Luau version 6, Types version 3
-- Time taken: 0.001455 seconds

local Constants_upvr = require(script.Parent.Parent.Parent.ContactImporter.Common.Constants)
local game_GetEngineFeature_result1_upvr = game:GetEngineFeature(Constants_upvr.UNIVERSAL_APP_CONTACT_IMPORTER_STORAGE_KEYS)
return {
	getLastOSPermissionSettings = function(arg1, arg2) -- Line 8, Named "getLastOSPermissionSettings"
		--[[ Upvalues[2]:
			[1]: game_GetEngineFeature_result1_upvr (readonly)
			[2]: Constants_upvr (readonly)
		]]
		if not game_GetEngineFeature_result1_upvr then
			return true
		end
		local pcall_result1, pcall_result2 = pcall(function() -- Line 14
			--[[ Upvalues[2]:
				[1]: arg2 (readonly)
				[2]: Constants_upvr (copied, readonly)
			]]
			return arg2:GetItem(Constants_upvr.LOCAL_STORAGE_KEY_LAST_CONTACTS_OS_PERMISSIONS)
		end)
		local var7
		if pcall_result1 then
			if pcall_result2 ~= "true" then
				var7 = false
			else
				var7 = true
			end
			return var7
		end
		return false
	end;
	updateOSPermissionSettings = function(arg1, arg2, arg3) -- Line 25, Named "updateOSPermissionSettings"
		--[[ Upvalues[2]:
			[1]: game_GetEngineFeature_result1_upvr (readonly)
			[2]: Constants_upvr (readonly)
		]]
		if not game_GetEngineFeature_result1_upvr then
		else
			pcall(function() -- Line 30
				--[[ Upvalues[3]:
					[1]: arg2 (readonly)
					[2]: Constants_upvr (copied, readonly)
					[3]: arg3 (readonly)
				]]
				arg2:SetItem(Constants_upvr.LOCAL_STORAGE_KEY_LAST_CONTACTS_OS_PERMISSIONS, tostring(arg3))
				arg2:Flush()
			end)
		end
	end;
}