-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:41:03
-- Luau version 6, Types version 3
-- Time taken: 0.000715 seconds

local SessionType_upvr = require(script.Parent.SessionType)
return function(arg1, arg2, arg3) -- Line 8
	--[[ Upvalues[1]:
		[1]: SessionType_upvr (readonly)
	]]
	assert(arg1, "sessionManager can't be nil")
	arg1:RemoveSessionsWithMetadataKey(SessionType_upvr.Metadata.GamePlay.GamePlaySession)
	arg1:SetSession(SessionType_upvr.StructuralIdentifier.Level1, arg2, arg2)
	arg1:SetMetadata(arg2, SessionType_upvr.Metadata.GamePlay.GamePlaySession, "True")
	if arg3 then
		arg1:SetMetadata(arg2, SessionType_upvr.Metadata.GamePlay.DeleteOnGameLeave, "True")
	end
end