-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:24:58
-- Luau version 6, Types version 3
-- Time taken: 0.003473 seconds

local Constants_upvr = require(script.Parent.Parent.Parent.ContactImporter.Common.Constants)
local game_GetEngineFeature_result1_upvr = game:GetEngineFeature(Constants_upvr.UNIVERSAL_APP_CONTACT_IMPORTER_STORAGE_KEYS)
local module = {
	updateSyncTimestamp = function(arg1, arg2, arg3, arg4) -- Line 11, Named "updateSyncTimestamp"
		--[[ Upvalues[2]:
			[1]: game_GetEngineFeature_result1_upvr (readonly)
			[2]: Constants_upvr (readonly)
		]]
		-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
		if not game_GetEngineFeature_result1_upvr then
		else
			local pcall_result1_2, pcall_result2_2 = pcall(function() -- Line 15
				--[[ Upvalues[2]:
					[1]: arg2 (readonly)
					[2]: Constants_upvr (copied, readonly)
				]]
				return arg2:GetItem(Constants_upvr.LOCAL_STORAGE_KEY_CONTACTS_SYNC)
			end)
			if pcall_result1_2 then
				local var11
				if pcall_result2_2 == "" then
					var11 = arg3
				else
					var11 = false
					for i in string.gmatch(pcall_result2_2 or "", "([^,]+)") do
						local string_split_result1 = string.split(i, ':')
						local _1 = string_split_result1[1]
						local var17 = tonumber(string_split_result1[2]) or 0
						if _1 == arg3 then
							var11 = true
							var17 = arg4
						end
						if var11..':'..tostring(arg4) ~= "" then
							-- KONSTANTERROR: Expression was reused, decompilation is incorrect
						else
						end
					end
					if not var11 then
						i = ':'
						-- KONSTANTERROR: Expression was reused, decompilation is incorrect
					end
				end
				local var19_upvw = _1..':'..tostring(var17)..','..arg3..i..tostring(arg4)
				pcall(function() -- Line 46
					--[[ Upvalues[3]:
						[1]: arg2 (readonly)
						[2]: Constants_upvr (copied, readonly)
						[3]: var19_upvw (read and write)
					]]
					arg2:SetItem(Constants_upvr.LOCAL_STORAGE_KEY_CONTACTS_SYNC, var19_upvw)
					arg2:Flush()
				end)
			end
		end
	end;
}
local getFIntContactImporterSyncMinHours_upvr = require(script.Parent.Parent.Flags.getFIntContactImporterSyncMinHours)
function module.shouldSyncContacts(arg1, arg2, arg3, arg4) -- Line 53
	--[[ Upvalues[3]:
		[1]: game_GetEngineFeature_result1_upvr (readonly)
		[2]: Constants_upvr (readonly)
		[3]: getFIntContactImporterSyncMinHours_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 16 start (CF ANALYSIS FAILED)
	if not game_GetEngineFeature_result1_upvr then
		return true
	end
	local pcall_result1, pcall_result2 = pcall(function() -- Line 57
		--[[ Upvalues[2]:
			[1]: arg2 (readonly)
			[2]: Constants_upvr (copied, readonly)
		]]
		return arg2:GetItem(Constants_upvr.LOCAL_STORAGE_KEY_CONTACTS_SYNC)
	end)
	if not pcall_result1 then
		return true
	end
	local string_gmatch_result1, string_gmatch_result2, string_gmatch_result3 = string.gmatch(pcall_result2 or "", "([^,]+)")
	-- KONSTANTERROR: [0] 1. Error Block 16 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [35] 31. Error Block 8 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [35] 31. Error Block 8 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [20] 19. Error Block 6 start (CF ANALYSIS FAILED)
	-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [35.13]
	-- KONSTANTERROR: [20] 19. Error Block 6 end (CF ANALYSIS FAILED)
end
return module