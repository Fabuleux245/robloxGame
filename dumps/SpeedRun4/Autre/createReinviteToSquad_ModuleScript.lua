-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:37:46
-- Luau version 6, Types version 3
-- Time taken: 0.000492 seconds

local SQUAD_URL_upvr = require(script.Parent.Parent.SQUAD_URL)
return function(arg1) -- Line 4
	--[[ Upvalues[1]:
		[1]: SQUAD_URL_upvr (readonly)
	]]
	return arg1.roduxNetworking.POST({
		Name = "ReinviteToSquad";
	}, function(arg1_2, arg2) -- Line 9
		--[[ Upvalues[1]:
			[1]: SQUAD_URL_upvr (copied, readonly)
		]]
		return arg1_2(SQUAD_URL_upvr):path("group-up"):path("v1"):path("reinvite"):body({
			groupUpId = arg2.squadId;
		})
	end)
end