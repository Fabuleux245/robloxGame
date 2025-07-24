-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:52:08
-- Luau version 6, Types version 3
-- Time taken: 0.001106 seconds

local module = {}
local MockId_upvr = require(script.Parent.Parent.MockId)
local PlayabilityStatusEnum_upvr = require(game:GetService("CorePackages").Workspace.Packages.PlayabilityRodux).Enums.PlayabilityStatusEnum
function module.mock() -- Line 26
	--[[ Upvalues[2]:
		[1]: MockId_upvr (readonly)
		[2]: PlayabilityStatusEnum_upvr (readonly)
	]]
	return {
		universeId = MockId_upvr();
		name = "";
		rootPlaceId = MockId_upvr();
		isPlayable = true;
		playabilityStatus = PlayabilityStatusEnum_upvr.Playable;
	}
end
function module.fromGetPlayabilityStatus(arg1) -- Line 38
	return {
		universeId = tostring(arg1.universeId);
		isPlayable = arg1.isPlayable;
		playabilityStatus = arg1.playabilityStatus;
	}
end
function module.fromGetExperienceInfo(arg1) -- Line 48
	return {
		universeId = tostring(arg1.id);
		rootPlaceId = tostring(arg1.rootPlaceId);
		name = arg1.name;
	}
end
return module