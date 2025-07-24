-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:45:35
-- Luau version 6, Types version 3
-- Time taken: 0.000899 seconds

local API_URL_upvr = require(script.Parent.Parent.API_URL)
return function(arg1) -- Line 14
	--[[ Upvalues[1]:
		[1]: API_URL_upvr (readonly)
	]]
	return arg1.roduxNetworking.GET({
		Name = "GetBlockedUsers";
	}, function(arg1_2, arg2) -- Line 17
		--[[ Upvalues[1]:
			[1]: API_URL_upvr (copied, readonly)
		]]
		local module_2 = {}
		local var6
		local function INLINED() -- Internal function, doesn't exist in bytecode
			var6 = arg2.currentUserId
			return var6
		end
		if not arg2 or not INLINED() then
			var6 = nil
		end
		module_2.currentUserId = var6
		local module = {}
		local function INLINED_2() -- Internal function, doesn't exist in bytecode
			var6 = arg2.cursor
			return var6
		end
		if not arg2 or not INLINED_2() then
			var6 = nil
		end
		module.cursor = var6
		local function INLINED_3() -- Internal function, doesn't exist in bytecode
			var6 = arg2.count
			return var6
		end
		if not arg2 or not INLINED_3() then
			var6 = nil
		end
		module.count = var6
		return arg1_2(API_URL_upvr, module_2):path("user-blocking-api"):path("v1"):path("users"):path("get-blocked-users"):queryArgs(module)
	end)
end