-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:13:41
-- Luau version 6, Types version 3
-- Time taken: 0.001278 seconds

local LeaderboardStore_upvr = require(script.Parent.LeaderboardStore)
return function(arg1, arg2) -- Line 20, Named "createLeaderboardStore"
	--[[ Upvalues[1]:
		[1]: LeaderboardStore_upvr (readonly)
	]]
	return function() -- Line 21
		--[[ Upvalues[3]:
			[1]: arg1 (readonly)
			[2]: arg2 (readonly)
			[3]: LeaderboardStore_upvr (copied, readonly)
		]]
		-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
		local var4
		if arg1 then
			var4 = arg1
		else
			var4 = game:GetService("Teams")
		end
		if arg2 then
			local _ = arg2
		else
		end
		local any_new_result1_upvw = LeaderboardStore_upvr.new(var4, game:GetService("Players"))
		return {
			getGameStatsList = function() -- Line 28, Named "getGameStatsList"
				--[[ Upvalues[1]:
					[1]: any_new_result1_upvw (read and write)
				]]
				return any_new_result1_upvw:getGameStatsList()
			end;
			getTeamList = function() -- Line 31, Named "getTeamList"
				--[[ Upvalues[1]:
					[1]: any_new_result1_upvw (read and write)
				]]
				return any_new_result1_upvw:getTeamList()
			end;
			getTeamPlayerList = function(arg1_2, arg2_2) -- Line 34, Named "getTeamPlayerList"
				--[[ Upvalues[1]:
					[1]: any_new_result1_upvw (read and write)
				]]
				return any_new_result1_upvw:getTeamPlayerList(arg1_2, arg2_2)
			end;
			getPlayerEntry = function(arg1_3, arg2_3) -- Line 37, Named "getPlayerEntry"
				--[[ Upvalues[1]:
					[1]: any_new_result1_upvw (read and write)
				]]
				return any_new_result1_upvw:getPlayerEntry(arg1_3, arg2_3)
			end;
			cleanUp = function() -- Line 42, Named "cleanUp"
				--[[ Upvalues[1]:
					[1]: any_new_result1_upvw (read and write)
				]]
				any_new_result1_upvw:destroy()
				any_new_result1_upvw = nil
			end;
		}
	end
end