-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:02:06
-- Luau version 6, Types version 3
-- Time taken: 0.000981 seconds

local var1_upvw
return function() -- Line 4, Named "getClientReplicator"
	--[[ Upvalues[1]:
		[1]: var1_upvw (read and write)
	]]
	if var1_upvw == nil then
		local game_FindService_result1 = game:FindService("NetworkClient")
		if game_FindService_result1 then
			var1_upvw = game_FindService_result1:FindFirstChildOfClass("ClientReplicator")
		end
	end
	if var1_upvw and var1_upvw:IsDescendantOf(game) then
		return var1_upvw
	end
	return nil
end