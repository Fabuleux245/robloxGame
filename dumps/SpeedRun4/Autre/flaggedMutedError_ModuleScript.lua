-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:14:21
-- Luau version 6, Types version 3
-- Time taken: 0.001104 seconds

game:DefineFastString("SuppressMutedErrorKeys", "")
local function _() -- Line 32, Named "getFStringSuppressMutedErrorKeys"
	return game:GetFastString("SuppressMutedErrorKeys")
end
local var1_upvw = ""
local module_upvw = {}
local function shouldSuppressMutedError_upvr(arg1) -- Line 39, Named "shouldSuppressMutedError"
	--[[ Upvalues[2]:
		[1]: var1_upvw (read and write)
		[2]: module_upvw (read and write)
	]]
	local game_GetFastString_result1 = game:GetFastString("SuppressMutedErrorKeys")
	if game_GetFastString_result1 ~= var1_upvw then
		var1_upvw = game_GetFastString_result1
		module_upvw = {}
		for _, v in game_GetFastString_result1:split(','), nil do
			module_upvw[v] = true
		end
	end
	return module_upvw[arg1] or false
end
local mutedError_upvr = require(script.Parent.mutedError)
return function(arg1, arg2, arg3) -- Line 53, Named "flaggedMutedError"
	--[[ Upvalues[2]:
		[1]: shouldSuppressMutedError_upvr (readonly)
		[2]: mutedError_upvr (readonly)
	]]
	if not shouldSuppressMutedError_upvr(arg1) then
		mutedError_upvr(arg2, arg3)
	end
end