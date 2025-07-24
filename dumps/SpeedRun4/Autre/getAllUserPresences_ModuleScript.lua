-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:52:10
-- Luau version 6, Types version 3
-- Time taken: 0.001023 seconds

local NetworkingPresence_upvr = require(script:FindFirstAncestor("AppChat").Http.NetworkingPresence)
return function() -- Line 5
	--[[ Upvalues[1]:
		[1]: NetworkingPresence_upvr (readonly)
	]]
	return function(arg1) -- Line 6
		--[[ Upvalues[1]:
			[1]: NetworkingPresence_upvr (copied, readonly)
		]]
		for i, _ in pairs(arg1:getState().Users) do
			if i ~= "-1" then
				table.insert({}, i)
			end
		end
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		arg1:dispatch(NetworkingPresence_upvr.GetPresencesFromUserIds.API({})):catch(function(arg1_2) -- Line 17
			warn("NetworkingPresence failure in getAllUserPresences, Status: "..tostring(arg1_2))
		end)
	end
end