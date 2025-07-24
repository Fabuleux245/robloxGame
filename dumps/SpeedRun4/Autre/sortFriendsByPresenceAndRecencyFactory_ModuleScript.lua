-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:34:18
-- Luau version 6, Types version 3
-- Time taken: 0.004008 seconds

local UserModel_upvr = require(script:FindFirstAncestor("GameTile").Parent.UserLib).Models.UserModel
local tbl_upvr = {
	[UserModel_upvr.PresenceType.IN_GAME] = 3;
	[UserModel_upvr.PresenceType.ONLINE] = 2;
	[UserModel_upvr.PresenceType.IN_STUDIO] = 1;
	[UserModel_upvr.PresenceType.OFFLINE] = 0;
}
local function _(arg1, arg2) -- Line 12, Named "useLastOnlineForSort"
	local var4 = false
	if typeof(arg1) == "number" then
		var4 = false
		if typeof(arg2) == "number" then
			if arg1 == arg2 then
				var4 = false
			else
				var4 = true
			end
		end
	end
	return var4
end
local function _(arg1) -- Line 16, Named "getFriendWeight"
	--[[ Upvalues[2]:
		[1]: tbl_upvr (readonly)
		[2]: UserModel_upvr (readonly)
	]]
	local var5
	if arg1 and arg1.presence then
		var5 = tbl_upvr[arg1.presence]
	end
	if var5 == nil then
		var5 = tbl_upvr[UserModel_upvr.PresenceType.OFFLINE]
	end
	return var5
end
return function(arg1) -- Line 27
	--[[ Upvalues[2]:
		[1]: tbl_upvr (readonly)
		[2]: UserModel_upvr (readonly)
	]]
	return function(arg1_2, arg2) -- Line 28
		--[[ Upvalues[3]:
			[1]: tbl_upvr (copied, readonly)
			[2]: UserModel_upvr (copied, readonly)
			[3]: arg1 (readonly)
		]]
		local var13
		if arg1_2 and arg1_2.presence then
			var13 = tbl_upvr[arg1_2.presence]
		end
		if var13 == nil then
			var13 = tbl_upvr[UserModel_upvr.PresenceType.OFFLINE]
		end
		local var14 = var13
		local var15
		if arg2 and arg2.presence then
			var15 = tbl_upvr[arg2.presence]
		end
		if var15 == nil then
			var15 = tbl_upvr[UserModel_upvr.PresenceType.OFFLINE]
		end
		var13 = var15
		local var16
		if var14 == var13 then
			var15 = arg1_2.presence
			var16 = UserModel_upvr.PresenceType
			if var15 ~= var16.OFFLINE then
				local lastOnline = arg1_2.lastOnline
				var16 = arg2.lastOnline
				var15 = false
				if typeof(lastOnline) == "number" then
					var15 = false
					if typeof(var16) == "number" then
						if lastOnline == var16 then
							var15 = false
						else
							var15 = true
						end
					end
				end
				if var15 then
					var16 = arg2.lastOnline
					if var16 >= arg1_2.lastOnline then
						var15 = false
					else
						var15 = true
					end
					return var15
				end
			end
			var16 = arg1
			var16 = arg2[arg1]
			if arg1_2[var16] or "":lower() >= var16 or "":lower() then
				var16 = false
			else
				var16 = true
			end
			return var16
		end
		if var13 >= var14 then
		else
		end
		return true
	end
end