-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:07:15
-- Luau version 6, Types version 3
-- Time taken: 0.004303 seconds

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
local module_upvr_2 = {
	[UserModel_upvr.PresenceType.IN_GAME] = tbl.InGame;
	[UserModel_upvr.PresenceType.ONLINE] = tbl.Online;
	[UserModel_upvr.PresenceType.IN_STUDIO] = tbl.InStudio;
	[UserModel_upvr.PresenceType.OFFLINE] = tbl.Offline;
}
local function _(arg1) -- Line 42
	--[[ Upvalues[1]:
		[1]: PresenceType_upvr (readonly)
	]]
	local userPresenceType_2 = arg1.userPresenceType
	if userPresenceType_2 == PresenceType_upvr.InGame or userPresenceType_2 == PresenceType_upvr.InStudio then
		if #(arg1.lastLocation or "") == 0 then
			return PresenceType_upvr.Online.rawValue()
		end
	end
	return userPresenceType_2.rawValue()
end
local function _(arg1) -- Line 51
	--[[ Upvalues[1]:
		[1]: UserModel_upvr (readonly)
	]]
	local presence = arg1.presence
	if presence == UserModel_upvr.PresenceType.IN_GAME or presence == UserModel_upvr.PresenceType.IN_STUDIO then
		if #(arg1.lastLocation or "") == 0 then
			return UserModel_upvr.PresenceType.ONLINE
		end
	end
	return presence
end
local function _(arg1) -- Line 63
	--[[ Upvalues[3]:
		[1]: PresenceType_upvr (readonly)
		[2]: t_upvr (readonly)
		[3]: module_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local userPresenceType = arg1.userPresenceType
	local var14
	if userPresenceType == PresenceType_upvr.InGame or userPresenceType == PresenceType_upvr.InStudio or #(arg1.lastLocation or "") == 0 then
		var14 = PresenceType_upvr.Online.rawValue()
	else
		var14 = userPresenceType.rawValue()
	end
	if not t_upvr.number(var14) or not module_upvr[var14] then
	end
	return module_upvr[PresenceType_upvr.Offline]
end
local function _(arg1) -- Line 69
	--[[ Upvalues[3]:
		[1]: UserModel_upvr (readonly)
		[2]: t_upvr (readonly)
		[3]: module_upvr_2 (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local presence_2 = arg1.presence
	local var17
	if presence_2 == UserModel_upvr.PresenceType.IN_GAME or presence_2 == UserModel_upvr.PresenceType.IN_STUDIO or #(arg1.lastLocation or "") == 0 then
		var17 = UserModel_upvr.PresenceType.ONLINE
	else
		var17 = presence_2
	end
	if not t_upvr.string(var17) or not module_upvr_2[var17] then
	end
	return module_upvr_2[UserModel_upvr.PresenceType.OFFLINE]
end
local function _(arg1, arg2) -- Line 75
	--[[ Upvalues[5]:
		[1]: PresenceType_upvr (readonly)
		[2]: t_upvr (readonly)
		[3]: module_upvr (readonly)
		[4]: UserModel_upvr (readonly)
		[5]: module_upvr_2 (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [5] 5. Error Block 2 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [5] 5. Error Block 2 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [91] 67. Error Block 56 start (CF ANALYSIS FAILED)
	do
		return 0, module_upvr[PresenceType_upvr.Offline]
	end
	-- KONSTANTERROR: [91] 67. Error Block 56 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [97] 72. Error Block 25 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [97] 72. Error Block 25 end (CF ANALYSIS FAILED)
end
local function _(arg1, arg2) -- Line 90
	local username = arg1.username
	if not username then
		username = arg1.name
		if not username then
			username = ""
		end
	end
	local username_2 = arg2.username
	if not username_2 then
		username_2 = arg2.name
		if not username_2 then
			username_2 = ""
		end
	end
	return username, username_2
end
return function(arg1, arg2) -- Line 94
	--[[ Upvalues[5]:
		[1]: PresenceType_upvr (readonly)
		[2]: t_upvr (readonly)
		[3]: module_upvr (readonly)
		[4]: UserModel_upvr (readonly)
		[5]: module_upvr_2 (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [5] 5. Error Block 2 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [5] 5. Error Block 2 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [97] 72. Error Block 108 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [97] 72. Error Block 108 end (CF ANALYSIS FAILED)
end