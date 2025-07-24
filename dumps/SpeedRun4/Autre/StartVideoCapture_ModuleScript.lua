-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:59:13
-- Luau version 6, Types version 3
-- Time taken: 0.000411 seconds

local game_GetEngineFeature_result1_upvr = game:GetEngineFeature("EnableVideoCaptureApiLua")
local CaptureService_upvr = game:GetService("CaptureService")
return function() -- Line 5
	--[[ Upvalues[2]:
		[1]: game_GetEngineFeature_result1_upvr (readonly)
		[2]: CaptureService_upvr (readonly)
	]]
	return function(arg1) -- Line 6
		--[[ Upvalues[2]:
			[1]: game_GetEngineFeature_result1_upvr (copied, readonly)
			[2]: CaptureService_upvr (copied, readonly)
		]]
		if game_GetEngineFeature_result1_upvr then
			CaptureService_upvr:StartVideoCaptureInternalAsync()
		end
	end
end