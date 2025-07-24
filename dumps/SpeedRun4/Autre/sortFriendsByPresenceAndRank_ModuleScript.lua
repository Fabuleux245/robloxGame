-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:07:16
-- Luau version 6, Types version 3
-- Time taken: 0.005517 seconds

local dependencies = require(script:FindFirstAncestor("SocialLibraries").dependencies)
local UserModel_upvr = dependencies.UserModel
local t_upvr = dependencies.t
local PresenceType_upvr = dependencies.RoduxPresence.Enums.PresenceType
local tbl = {
	InGame = 3;
	Online = 2;
	InStudio = 1;
	Offline = 0;
}
local module_upvr = {
	[PresenceType_upvr.InGame.rawValue()] = tbl.InGame;
	[PresenceType_upvr.Online.rawValue()] = tbl.Online;
	[PresenceType_upvr.InStudio.rawValue()] = tbl.InStudio;
	[PresenceType_upvr.Offline.rawValue()] = tbl.Offline;
}
local tbl_2_upvr = {
	[UserModel_upvr.PresenceType.IN_GAME] = tbl.InGame;
	[UserModel_upvr.PresenceType.ONLINE] = tbl.Online;
	[UserModel_upvr.PresenceType.IN_STUDIO] = tbl.InStudio;
	[UserModel_upvr.PresenceType.OFFLINE] = tbl.Offline;
}
local function _(arg1) -- Line 43
	--[[ Upvalues[3]:
		[1]: t_upvr (readonly)
		[2]: module_upvr (readonly)
		[3]: PresenceType_upvr (readonly)
	]]
	local var9
	local function INLINED() -- Internal function, doesn't exist in bytecode
		var9 = module_upvr[arg1]
		return var9
	end
	if not t_upvr.number(arg1) or not INLINED() then
		var9 = module_upvr[PresenceType_upvr.Offline]
	end
	return var9
end
local function _(arg1) -- Line 48
	--[[ Upvalues[3]:
		[1]: t_upvr (readonly)
		[2]: tbl_2_upvr (readonly)
		[3]: UserModel_upvr (readonly)
	]]
	local var11
	local function INLINED_2() -- Internal function, doesn't exist in bytecode
		var11 = tbl_2_upvr[arg1]
		return var11
	end
	if not t_upvr.string(arg1) or not INLINED_2() then
		var11 = tbl_2_upvr[UserModel_upvr.PresenceType.OFFLINE]
	end
	return var11
end
local function var12_upvr(arg1, arg2) -- Line 53
	--[[ Upvalues[5]:
		[1]: t_upvr (readonly)
		[2]: module_upvr (readonly)
		[3]: PresenceType_upvr (readonly)
		[4]: tbl_2_upvr (readonly)
		[5]: UserModel_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [5] 5. Error Block 2 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [5] 5. Error Block 2 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [41] 33. Error Block 24 start (CF ANALYSIS FAILED)
	do
		return 0, module_upvr[PresenceType_upvr.Offline]
	end
	-- KONSTANTERROR: [41] 33. Error Block 24 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [47] 38. Error Block 29 start (CF ANALYSIS FAILED)
	if arg1.presence and arg2.presence then
		local presence_2 = arg1.presence
		if not t_upvr.string(presence_2) or not tbl_2_upvr[presence_2] then
		end
		local presence = arg2.presence
		if not t_upvr.string(presence) or not tbl_2_upvr[presence] then
		end
	end
	-- KONSTANTERROR: [47] 38. Error Block 29 end (CF ANALYSIS FAILED)
end
local function _(arg1, arg2) -- Line 68
	local username_3 = arg1.username
	if not username_3 then
		username_3 = arg1.name
		if not username_3 then
			username_3 = ""
		end
	end
	local username_2 = arg2.username
	if not username_2 then
		username_2 = arg2.name
		if not username_2 then
			username_2 = ""
		end
	end
	return username_3, username_2
end
return function(arg1, arg2) -- Line 72
	--[[ Upvalues[2]:
		[1]: var12_upvr (readonly)
		[2]: t_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local var32 = arg2
	local var12_upvr_result1_2, var12_result2 = var12_upvr(arg1, var32)
	if var12_upvr_result1_2 ~= var12_result2 then
		if var12_result2 >= var12_upvr_result1_2 then
			var32 = false
		else
			var32 = true
		end
		return var32
	end
	local function INLINED_4() -- Internal function, doesn't exist in bytecode
		var32 = arg1.friendRank
		return var32
	end
	if not t_upvr.number(arg1.friendRank) or not INLINED_4() then
		var32 = 0
	end
	if not t_upvr.number(arg2.friendRank) or not arg2.friendRank then
		local const_number = 0
		local var36
	end
	if var32 ~= const_number then
		if var32 >= const_number then
			var36 = false
		else
			var36 = true
		end
		return var36
	end
	local var37
	var37 = arg1.displayName
	if not var37.string(var37) or not arg1.displayName then
		local const_string_3 = ""
	end
	var37 = t_upvr.string(arg2.displayName)
	if not var37 or not arg2.displayName then
		local const_string_2 = ""
	end
	var37 = string.lower(const_string_3)
	if var37 ~= string.lower(const_string_2) then
		if string.lower(const_string_3) >= string.lower(const_string_2) then
			var37 = false
		else
			var37 = true
		end
		return var37
	end
	var37 = arg1.username
	local var40 = var37
	if not var40 then
		if not arg1.name then
		end
	end
	local username = arg2.username
	if not username then
		username = arg2.name
		if not username then
			username = ""
		end
	end
	if string.lower("") >= string.lower(username) then
	else
	end
	return true
end