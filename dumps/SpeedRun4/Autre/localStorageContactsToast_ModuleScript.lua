-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:26:00
-- Luau version 6, Types version 3
-- Time taken: 0.002775 seconds

local AppStorageService_upvr = game:GetService("AppStorageService")
local Constants_upvr = require(script:FindFirstAncestor("ContactsToast").Common.Constants)
local game_GetEngineFeature_result1_upvr = game:GetEngineFeature(Constants_upvr.ENGINE_FEATURE_STORAGE_KEY)
return {
	AddUser = function(arg1, arg2) -- Line 8, Named "AddUser"
		--[[ Upvalues[3]:
			[1]: game_GetEngineFeature_result1_upvr (readonly)
			[2]: AppStorageService_upvr (readonly)
			[3]: Constants_upvr (readonly)
		]]
		if not game_GetEngineFeature_result1_upvr then
		else
			local pcall_result1_3, pcall_result2_3 = pcall(function() -- Line 13
				--[[ Upvalues[2]:
					[1]: AppStorageService_upvr (copied, readonly)
					[2]: Constants_upvr (copied, readonly)
				]]
				return AppStorageService_upvr:GetItem(Constants_upvr.TOAST_SEEN_STORAGE_KEY)
			end)
			if pcall_result1_3 then
				local tbl = {}
				tbl[1] = arg2
				if pcall_result2_3 ~= nil and pcall_result2_3 ~= "" then
					for i_3 in string.gmatch(pcall_result2_3, "([^,]+)") do
						if i_3 == arg2 then return end
						tbl[#tbl + 1] = i_3
					end
				end
				local any_gsub_result1_upvw = table.concat(tbl, ','):gsub("%s+", "")
				pcall(function() -- Line 32
					--[[ Upvalues[3]:
						[1]: AppStorageService_upvr (copied, readonly)
						[2]: Constants_upvr (copied, readonly)
						[3]: any_gsub_result1_upvw (read and write)
					]]
					AppStorageService_upvr:SetItem(Constants_upvr.TOAST_SEEN_STORAGE_KEY, any_gsub_result1_upvw)
					AppStorageService_upvr:Flush()
				end)
			end
		end
	end;
	CheckUserHasNotSeen = function(arg1, arg2) -- Line 39, Named "CheckUserHasNotSeen"
		--[[ Upvalues[3]:
			[1]: game_GetEngineFeature_result1_upvr (readonly)
			[2]: AppStorageService_upvr (readonly)
			[3]: Constants_upvr (readonly)
		]]
		if not game_GetEngineFeature_result1_upvr then
			return false
		end
		local pcall_result1_2, pcall_result2_2 = pcall(function() -- Line 44
			--[[ Upvalues[2]:
				[1]: AppStorageService_upvr (copied, readonly)
				[2]: Constants_upvr (copied, readonly)
			]]
			return AppStorageService_upvr:GetItem(Constants_upvr.TOAST_SEEN_STORAGE_KEY)
		end)
		if pcall_result1_2 then
			for i in string.gmatch(pcall_result2_2 or "", "([^,]+)") do
				if arg2 == i then
					return false
				end
			end
		end
		return true
	end;
	CheckUserHasNotOptedIn = function(arg1, arg2) -- Line 58, Named "CheckUserHasNotOptedIn"
		--[[ Upvalues[3]:
			[1]: game_GetEngineFeature_result1_upvr (readonly)
			[2]: AppStorageService_upvr (readonly)
			[3]: Constants_upvr (readonly)
		]]
		if not game_GetEngineFeature_result1_upvr then
			return false
		end
		local pcall_result1, pcall_result2 = pcall(function() -- Line 63
			--[[ Upvalues[2]:
				[1]: AppStorageService_upvr (copied, readonly)
				[2]: Constants_upvr (copied, readonly)
			]]
			return AppStorageService_upvr:GetItem(Constants_upvr.OPTED_IN_USERS_STORAGE_KEY)
		end)
		if pcall_result1 then
			for i_2 in string.gmatch(pcall_result2 or "", "([^,]+)") do
				if arg2 == i_2 then
					return false
				end
			end
		end
		return true
	end;
}