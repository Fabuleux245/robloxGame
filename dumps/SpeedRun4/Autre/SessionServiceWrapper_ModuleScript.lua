-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:41:54
-- Luau version 6, Types version 3
-- Time taken: 0.001495 seconds

local SessionService_upvr = game:GetService("SessionService")
return {
	SessionChangedSignal = require(script:FindFirstAncestor("SessionizationUtil").Parent.AppCommonLib).Signal.new();
	GetRootSID = function(arg1) -- Line 15, Named "GetRootSID"
		--[[ Upvalues[1]:
			[1]: SessionService_upvr (readonly)
		]]
		return SessionService_upvr:GetRootSID()
	end;
	SetSession = function(arg1, arg2, arg3, arg4) -- Line 19, Named "SetSession"
		--[[ Upvalues[1]:
			[1]: SessionService_upvr (readonly)
		]]
		SessionService_upvr:SetSession(arg2, arg3, arg4)
		local any_GetSessionTag_result1_2 = SessionService_upvr:GetSessionTag(arg3)
		if any_GetSessionTag_result1_2 ~= SessionService_upvr:GetSessionTag(arg3) then
			arg1.SessionChangedSignal:fire(arg3, any_GetSessionTag_result1_2)
		end
	end;
	ReplaceSession = function(arg1, arg2, arg3) -- Line 31, Named "ReplaceSession"
		--[[ Upvalues[1]:
			[1]: SessionService_upvr (readonly)
		]]
		SessionService_upvr:ReplaceSession(arg2, arg3)
		local any_GetSessionTag_result1 = SessionService_upvr:GetSessionTag(arg2)
		if any_GetSessionTag_result1 ~= SessionService_upvr:GetSessionTag(arg2) then
			arg1.SessionChangedSignal:fire(arg2, any_GetSessionTag_result1)
		end
	end;
	RemoveSession = function(arg1, arg2) -- Line 43, Named "RemoveSession"
		--[[ Upvalues[1]:
			[1]: SessionService_upvr (readonly)
		]]
		SessionService_upvr:RemoveSession(arg2)
	end;
	RemoveSessionsWithMetadataKey = function(arg1, arg2) -- Line 47, Named "RemoveSessionsWithMetadataKey"
		--[[ Upvalues[1]:
			[1]: SessionService_upvr (readonly)
		]]
		SessionService_upvr:RemoveSessionsWithMetadataKey(arg2)
	end;
	GetMetadata = function(arg1, arg2, arg3) -- Line 51, Named "GetMetadata"
		--[[ Upvalues[1]:
			[1]: SessionService_upvr (readonly)
		]]
		return SessionService_upvr:GetMetadata(arg2, arg3)
	end;
	SetMetadata = function(arg1, arg2, arg3, arg4) -- Line 55, Named "SetMetadata"
		--[[ Upvalues[1]:
			[1]: SessionService_upvr (readonly)
		]]
		SessionService_upvr:SetMetadata(arg2, arg3, arg4)
	end;
	RemoveMetadata = function(arg1, arg2, arg3) -- Line 59, Named "RemoveMetadata"
		--[[ Upvalues[1]:
			[1]: SessionService_upvr (readonly)
		]]
		SessionService_upvr:RemoveMetadata(arg2, arg3)
	end;
	SessionExists = function(arg1, arg2) -- Line 63, Named "SessionExists"
		--[[ Upvalues[1]:
			[1]: SessionService_upvr (readonly)
		]]
		return SessionService_upvr:SessionExists(arg2)
	end;
	GetSessionTag = function(arg1, arg2) -- Line 67, Named "GetSessionTag"
		--[[ Upvalues[1]:
			[1]: SessionService_upvr (readonly)
		]]
		return SessionService_upvr:GetSessionTag(arg2)
	end;
	generateSessionInfoString = function(arg1, arg2, arg3, arg4, arg5) -- Line 71, Named "generateSessionInfoString"
		--[[ Upvalues[1]:
			[1]: SessionService_upvr (readonly)
		]]
		return SessionService_upvr:GenerateSessionInfoString(arg2, arg3, arg4, arg5)
	end;
}