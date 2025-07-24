-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:41:14
-- Luau version 6, Types version 3
-- Time taken: 0.001045 seconds

local module_2_upvr = {}
module_2_upvr.__index = module_2_upvr
function module_2_upvr.new(arg1) -- Line 9
	--[[ Upvalues[1]:
		[1]: module_2_upvr (readonly)
	]]
	local module = {}
	module._appUpdate = arg1
	setmetatable(module, module_2_upvr)
	return module
end
local Promise_upvr = require(script:FindFirstAncestor("RobloxAppUpdate").Parent.Promise)
function module_2_upvr.checkForUpdate(arg1) -- Line 18
	--[[ Upvalues[1]:
		[1]: Promise_upvr (readonly)
	]]
	return Promise_upvr.new(function(arg1_2, arg2) -- Line 19
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		local pcall_result1, pcall_result2 = pcall(function() -- Line 20
			--[[ Upvalues[2]:
				[1]: arg1 (copied, readonly)
				[2]: arg1_2 (readonly)
			]]
			arg1._appUpdate:CheckForUpdate(function(arg1_3) -- Line 21
				--[[ Upvalues[1]:
					[1]: arg1_2 (copied, readonly)
				]]
				local tbl = {}
				tbl.appUpdateStatus = arg1_3
				arg1_2(tbl)
			end)
		end)
		if not pcall_result1 then
			arg1_2({
				errorMessage = pcall_result2;
			})
		end
	end)
end
function module_2_upvr.performManagedUpdate(arg1) -- Line 36
	arg1._appUpdate:PerformManagedUpdate()
end
function module_2_upvr.canPerformBinaryUpdate(arg1) -- Line 40
	return arg1._appUpdate:CanPerformBinaryUpdate()
end
return module_2_upvr