-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:31:26
-- Luau version 6, Types version 3
-- Time taken: 0.001161 seconds

local AppStorageService_upvr = game:GetService("AppStorageService")
local HttpService_upvr = game:GetService("HttpService")
return {
	getTableAppStorageKey = function(arg1) -- Line 4, Named "getTableAppStorageKey"
		--[[ Upvalues[2]:
			[1]: AppStorageService_upvr (readonly)
			[2]: HttpService_upvr (readonly)
		]]
		local pcall_result1, pcall_result2 = pcall(function() -- Line 5
			--[[ Upvalues[2]:
				[1]: AppStorageService_upvr (copied, readonly)
				[2]: arg1 (readonly)
			]]
			return AppStorageService_upvr:GetItem(arg1)
		end)
		if not pcall_result1 or pcall_result2 == nil then
			return {}
		end
		return HttpService_upvr:JSONDecode(pcall_result2)
	end;
	setTableAppStorageKey = function(arg1, arg2) -- Line 16, Named "setTableAppStorageKey"
		--[[ Upvalues[1]:
			[1]: AppStorageService_upvr (readonly)
		]]
		pcall(function() -- Line 17
			--[[ Upvalues[3]:
				[1]: AppStorageService_upvr (copied, readonly)
				[2]: arg1 (readonly)
				[3]: arg2 (readonly)
			]]
			AppStorageService_upvr:SetItem(arg1, tostring(arg2))
			AppStorageService_upvr:Flush()
		end)
	end;
}