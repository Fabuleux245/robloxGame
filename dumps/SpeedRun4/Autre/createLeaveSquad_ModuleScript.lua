-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:37:45
-- Luau version 6, Types version 3
-- Time taken: 0.000671 seconds

local SQUAD_URL_upvr = require(script.Parent.Parent.SQUAD_URL)
return function(arg1) -- Line 5
	--[[ Upvalues[1]:
		[1]: SQUAD_URL_upvr (readonly)
	]]
	local any_POST_result1 = arg1.roduxNetworking.POST({
		Name = "LeaveSquad";
	}, function(arg1_2, arg2) -- Line 10
		--[[ Upvalues[1]:
			[1]: SQUAD_URL_upvr (copied, readonly)
		]]
		return arg1_2(SQUAD_URL_upvr):path("group-up"):path("v1"):path("leave"):body({
			groupUpId = arg2.squadId;
		})
	end)
	if arg1.useMockedResponse then
		any_POST_result1.Mock.clear()
		any_POST_result1.Mock.reply(function() -- Line 19
			return {
				responseBody = {};
			}
		end)
	end
	return any_POST_result1
end