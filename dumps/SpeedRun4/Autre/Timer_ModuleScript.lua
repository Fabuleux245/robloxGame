-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:04:44
-- Luau version 6, Types version 3
-- Time taken: 0.001019 seconds

local module_upvr = {}
module_upvr.__index = module_upvr
function module_upvr.new(arg1) -- Line 8
	--[[ Upvalues[1]:
		[1]: module_upvr (readonly)
	]]
	local module = {}
	module.goalTime = arg1
	return setmetatable(module, module_upvr)
end
local game_DefineFastFlag_result1_upvr = game:DefineFastFlag("IdempotentTimer", false)
local Promise_upvr = require(script:FindFirstAncestor("ExpChat").Parent.Promise)
function module_upvr.start(arg1) -- Line 16
	--[[ Upvalues[2]:
		[1]: game_DefineFastFlag_result1_upvr (readonly)
		[2]: Promise_upvr (readonly)
	]]
	if game_DefineFastFlag_result1_upvr then
		arg1:stop()
	end
	arg1.promise = Promise_upvr.delay(arg1.goalTime)
	return arg1.promise
end
function module_upvr.stop(arg1) -- Line 26
	if arg1.promise then
		arg1.promise:cancel()
	end
end
return module_upvr