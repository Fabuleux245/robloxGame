-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:39:38
-- Luau version 6, Types version 3
-- Time taken: 0.000778 seconds

local ProfileQRCode = script:FindFirstAncestor("ProfileQRCode")
local useDispatch_upvr = require(ProfileQRCode.Parent.RoactUtils).Hooks.RoactRodux.useDispatch
local refreshQrSession_upvr = require(ProfileQRCode.Networking.refreshQrSession)
return function() -- Line 8
	--[[ Upvalues[2]:
		[1]: useDispatch_upvr (readonly)
		[2]: refreshQrSession_upvr (readonly)
	]]
	local useDispatch_upvr_result1_upvr = useDispatch_upvr()
	return function() -- Line 11
		--[[ Upvalues[2]:
			[1]: useDispatch_upvr_result1_upvr (readonly)
			[2]: refreshQrSession_upvr (copied, readonly)
		]]
		return useDispatch_upvr_result1_upvr(refreshQrSession_upvr.API()):catch(function() -- Line 12
		end)
	end
end