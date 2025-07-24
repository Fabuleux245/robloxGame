-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:09:48
-- Luau version 6, Types version 3
-- Time taken: 0.000466 seconds

local var3_upvr = require(script.Parent.Parent.flags.getFIntUGCValidationMaxMsPerFrame)() / 1000
return function(arg1) -- Line 8
	--[[ Upvalues[1]:
		[1]: var3_upvr (readonly)
	]]
	if arg1.shouldYield and var3_upvr <= tick() - arg1.lastTickSeconds then
		task.wait()
		arg1.lastTickSeconds = tick()
	end
end