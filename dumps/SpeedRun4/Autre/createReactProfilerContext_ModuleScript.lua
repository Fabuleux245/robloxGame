-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:18:46
-- Luau version 6, Types version 3
-- Time taken: 0.000337 seconds

local Signal_upvr = require(script:FindFirstAncestor("RoactUtils").Parent.AppCommonLib).Signal
return function() -- Line 8, Named "createReactProfilerContext"
	--[[ Upvalues[1]:
		[1]: Signal_upvr (readonly)
	]]
	return {
		onRender = Signal_upvr.new();
		onCommit = Signal_upvr.new();
	}
end