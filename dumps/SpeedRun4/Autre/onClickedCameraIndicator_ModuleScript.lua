-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:42:53
-- Luau version 6, Types version 3
-- Time taken: 0.000758 seconds

local Modules = game:GetService("CoreGui").RobloxGui.Modules
local FaceAnimatorService_upvr = game:GetService("FaceAnimatorService")
local any_new_result1_upvr = require(Modules.SelfView.Analytics).new()
local publicApi_upvr = require(Modules.SelfView.publicApi)
local toggleSelfViewSignal_upvr = require(Modules.SelfView.toggleSelfViewSignal)
return function() -- Line 9
	--[[ Upvalues[4]:
		[1]: FaceAnimatorService_upvr (readonly)
		[2]: any_new_result1_upvr (readonly)
		[3]: publicApi_upvr (readonly)
		[4]: toggleSelfViewSignal_upvr (readonly)
	]]
	if FaceAnimatorService_upvr and FaceAnimatorService_upvr:IsStarted() then
		FaceAnimatorService_upvr.VideoAnimationEnabled = not FaceAnimatorService_upvr.VideoAnimationEnabled
		any_new_result1_upvr:setLastCtx("bubbleChatToggle")
		if FaceAnimatorService_upvr.VideoAnimationEnabled and not publicApi_upvr.getSelfViewIsOpenAndVisible() then
			toggleSelfViewSignal_upvr:fire()
		end
	end
end