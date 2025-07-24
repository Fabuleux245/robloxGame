-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:30:44
-- Luau version 6, Types version 3
-- Time taken: 0.000406 seconds

local SquadsCore = script:FindFirstAncestor("SquadsCore")
local AppStorageService_upvr = game:GetService("AppStorageService")
local Constants_upvr = require(SquadsCore.Common.Constants)
local RoduxSquads_upvr = require(SquadsCore.RoduxSquads)
return function() -- Line 8
	--[[ Upvalues[3]:
		[1]: AppStorageService_upvr (readonly)
		[2]: Constants_upvr (readonly)
		[3]: RoduxSquads_upvr (readonly)
	]]
	AppStorageService_upvr:SetItem(Constants_upvr.ACTIVE_SQUAD_APP_STORAGE_KEY, "")
	AppStorageService_upvr:Flush()
	RoduxSquads_upvr.PersistManagers.currentSquadPersistManager.reset()
end