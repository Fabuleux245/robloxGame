-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:00:54
-- Luau version 6, Types version 3
-- Time taken: 0.002338 seconds

local MemStorageService_upvr = game:GetService("MemStorageService")
local HttpService_upvr = game:GetService("HttpService")
return function(arg1) -- Line 8
	--[[ Upvalues[2]:
		[1]: MemStorageService_upvr (readonly)
		[2]: HttpService_upvr (readonly)
	]]
	local module_upvr = {
		persist = function(arg1_2, arg2) -- Line 10, Named "persist"
			--[[ Upvalues[3]:
				[1]: MemStorageService_upvr (copied, readonly)
				[2]: arg1 (readonly)
				[3]: HttpService_upvr (copied, readonly)
			]]
			local pcall_result1_3, _ = pcall(function() -- Line 11
				--[[ Upvalues[4]:
					[1]: MemStorageService_upvr (copied, readonly)
					[2]: arg1 (copied, readonly)
					[3]: HttpService_upvr (copied, readonly)
					[4]: arg2 (readonly)
				]]
				MemStorageService_upvr:SetItem(arg1.storeKey, HttpService_upvr:JSONEncode(arg2))
			end)
			if not pcall_result1_3 then
				print("PersistenceMiddleware - failed to update the store", arg1.storeKey)
			end
			return pcall_result1_3
		end;
		restore = function() -- Line 19, Named "restore"
			--[[ Upvalues[3]:
				[1]: MemStorageService_upvr (copied, readonly)
				[2]: arg1 (readonly)
				[3]: HttpService_upvr (copied, readonly)
			]]
			local pcall_result1, pcall_result2 = pcall(function() -- Line 20
				--[[ Upvalues[3]:
					[1]: MemStorageService_upvr (copied, readonly)
					[2]: arg1 (copied, readonly)
					[3]: HttpService_upvr (copied, readonly)
				]]
				local any_GetItem_result1 = MemStorageService_upvr:GetItem(arg1.storeKey)
				if any_GetItem_result1 and any_GetItem_result1 ~= "" then
					return HttpService_upvr:JSONDecode(any_GetItem_result1)
				end
				return nil
			end)
			if pcall_result1 then
				return pcall_result2
			end
			return nil
		end;
		clean = function() -- Line 32, Named "clean"
			--[[ Upvalues[2]:
				[1]: MemStorageService_upvr (copied, readonly)
				[2]: arg1 (readonly)
			]]
			local pcall_result1_2, pcall_result2_2 = pcall(function() -- Line 33
				--[[ Upvalues[2]:
					[1]: MemStorageService_upvr (copied, readonly)
					[2]: arg1 (copied, readonly)
				]]
				MemStorageService_upvr:SetItem(arg1.storeKey, "")
			end)
			if not pcall_result1_2 then
				print("PersistenceMiddleware - failed to clean the store", arg1.storeKey)
			end
			return pcall_result1_2
		end;
	}
	function module_upvr.getMiddleware(arg1_3) -- Line 43
		--[[ Upvalues[1]:
			[1]: module_upvr (readonly)
		]]
		return function(arg1_4, arg2) -- Line 44
			--[[ Upvalues[1]:
				[1]: module_upvr (copied, readonly)
			]]
			arg2.changed:connect(function(arg1_5, arg2_2) -- Line 47
				--[[ Upvalues[2]:
					[1]: module_upvr (copied, readonly)
					[2]: arg2 (readonly)
				]]
				module_upvr.persist(arg2, arg1_5)
			end)
			return function(arg1_6) -- Line 50
				--[[ Upvalues[1]:
					[1]: arg1_4 (readonly)
				]]
				return arg1_4(arg1_6)
			end
		end
	end
	return module_upvr
end