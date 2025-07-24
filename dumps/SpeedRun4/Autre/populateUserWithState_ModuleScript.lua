-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:54:03
-- Luau version 6, Types version 3
-- Time taken: 0.001263 seconds

local AppChat = script:FindFirstAncestor("AppChat")
local RoduxPresence_upvr = require(AppChat.Http.RoduxPresence)
local userPresenceUtils_upvr = require(script.Parent.userPresenceUtils)
local Cryo_upvr = require(AppChat.Parent.Cryo)
local getUserDisplayName_upvr = require(AppChat.SocialLibraries).User.getUserDisplayName
local getThumbnailsForUserIds_upvr = require(script.Parent.getThumbnailsForUserIds)
return function(arg1, arg2, arg3) -- Line 15
	--[[ Upvalues[5]:
		[1]: RoduxPresence_upvr (readonly)
		[2]: userPresenceUtils_upvr (readonly)
		[3]: Cryo_upvr (readonly)
		[4]: getUserDisplayName_upvr (readonly)
		[5]: getThumbnailsForUserIds_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	-- KONSTANTERROR: [0] 1. Error Block 20 start (CF ANALYSIS FAILED)
	local var8
	if arg2.id ~= arg1.LocalUserId then
		var8 = false
	else
		var8 = true
	end
	local any_getUserDisplayPresence_result1 = userPresenceUtils_upvr.getUserDisplayPresence(RoduxPresence_upvr.Selectors.getUserPresenceByUserId(arg1, arg2.id), var8)
	var8 = Cryo_upvr.Dictionary
	var8 = arg2
	local module = {}
	if arg1.LocalUserId ~= arg2.id then
		-- KONSTANTWARNING: GOTO [37] #26
	end
	-- KONSTANTERROR: [0] 1. Error Block 20 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [36] 25. Error Block 22 start (CF ANALYSIS FAILED)
	module.isLocalUser = true
	if arg3 then
		local combinedName = arg3.names.combinedName
	else
	end
	module.displayName = getUserDisplayName_upvr(arg1, arg2)
	module.presenceText = any_getUserDisplayPresence_result1.text
	module.presenceImage = any_getUserDisplayPresence_result1.image
	module.thumbnail = getThumbnailsForUserIds_upvr({arg2.id})[1]
	do
		return var8.join(var8, module)
	end
	-- KONSTANTERROR: [36] 25. Error Block 22 end (CF ANALYSIS FAILED)
end