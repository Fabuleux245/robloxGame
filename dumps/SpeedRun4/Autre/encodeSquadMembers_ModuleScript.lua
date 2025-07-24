-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:30:45
-- Luau version 6, Types version 3
-- Time taken: 0.000755 seconds

local SquadsCore = script:FindFirstAncestor("SquadsCore")
local Cryo_upvr = require(SquadsCore.Parent.Cryo)
local encodeUserIds_upvr = require(SquadsCore.Common.encodeUserIds)
return function(arg1) -- Line 8, Named "encodeSquadMembers"
	--[[ Upvalues[2]:
		[1]: Cryo_upvr (readonly)
		[2]: encodeUserIds_upvr (readonly)
	]]
	local var4 = arg1
	if not var4 then
		var4 = {}
	end
	return encodeUserIds_upvr(Cryo_upvr.List.map(var4, function(arg1_2) -- Line 9
		return arg1_2.userId
	end))
end