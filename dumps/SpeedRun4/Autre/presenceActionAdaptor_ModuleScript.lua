-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:42:48
-- Luau version 6, Types version 3
-- Time taken: 0.001158 seconds

local llama_upvr = require(script:FindFirstAncestor("SocialReducerAdaptors").dependencies).llama
return function(arg1) -- Line 17
	--[[ Upvalues[1]:
		[1]: llama_upvr (readonly)
	]]
	local function var3_upvr(arg1_2) -- Line 18
		--[[ Upvalues[2]:
			[1]: arg1 (readonly)
			[2]: llama_upvr (copied, readonly)
		]]
		local module_2 = {
			presence = llama_upvr.None;
			userPresenceType = (table.find({"OFFLINE", "ONLINE", "IN_GAME", "IN_STUDIO"}, arg1_2.presence) or 1) - 1;
			gameInstanceId = llama_upvr.None;
			gameId = arg1_2.gameInstanceId;
		}
		local var6
		local function INLINED() -- Internal function, doesn't exist in bytecode
			var6 = DateTime.fromUnixTimestamp(arg1_2.lastOnline or 0):ToIsoDate()
			return var6
		end
		if not DateTime.now() or not INLINED() then
			var6 = "1970-01-01T00:00:00Z"
		end
		module_2.lastOnline = var6
		var6 = llama_upvr.None
		module_2.type = var6
		return arg1.Actions.ReceivedUserPresence(arg1.Models.Presence.new(llama_upvr.Dictionary.join(arg1_2, module_2)))
	end
	return {
		ReceivedUserPresence = function(arg1_3) -- Line 45, Named "ReceivedUserPresence"
			--[[ Upvalues[1]:
				[1]: var3_upvr (readonly)
			]]
			if arg1_3.payload then
				local module = {}
				module[1] = arg1_3
				return module
			end
			return {var3_upvr(arg1_3)}
		end;
	}
end