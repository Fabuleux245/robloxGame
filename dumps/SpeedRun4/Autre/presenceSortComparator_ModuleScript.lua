-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:07:18
-- Luau version 6, Types version 3
-- Time taken: 0.002272 seconds

local UserModel = require(script:FindFirstAncestor("SocialLibraries").dependencies).UserModel
local tbl_2_upvr = {
	[UserModel.PresenceType.IN_GAME] = 3;
	[UserModel.PresenceType.ONLINE] = 2;
	[UserModel.PresenceType.IN_STUDIO] = 1;
	[UserModel.PresenceType.OFFLINE] = 0;
}
return function(arg1, arg2) -- Line 13
	--[[ Upvalues[1]:
		[1]: tbl_2_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	if not arg1 then
	end
	local tbl_5 = {}
	if not arg2 then
	end
	local tbl_4 = {}
	local presence_3 = tbl_5.presence
	local presence_4 = tbl_4.presence
	local var13
	if presence_3 and presence_4 then
		var13 = tbl_2_upvr[presence_3]
		if var13 ~= tbl_2_upvr[presence_4] then
			if tbl_2_upvr[presence_4] >= tbl_2_upvr[presence_3] then
				var13 = false
			else
				var13 = true
			end
			return var13
		end
	end
	if tbl_5.displayName >= tbl_4.displayName then
		var13 = false
	else
	end
	return true
end