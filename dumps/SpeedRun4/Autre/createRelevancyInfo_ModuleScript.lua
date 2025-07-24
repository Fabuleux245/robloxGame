-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:30:05
-- Luau version 6, Types version 3
-- Time taken: 0.002419 seconds

local FriendsLanding = script:FindFirstAncestor("FriendsLanding")
local dependencies = require(FriendsLanding.dependencies)
local getCorrectUserPresence_upvr = require(FriendsLanding.Friends.getCorrectUserPresence)
local Images_upvr = dependencies.UIBlox.App.ImageSet.Images
local PresenceType_upvr = dependencies.RoduxPresence.Enums.PresenceType
local udim2_upvr = UDim2.fromOffset(12, 12)
local isUserInGame_upvr = require(FriendsLanding.Friends.isUserInGame)
local NotLocalizedStrings_upvr = require(FriendsLanding.Enums.NotLocalizedStrings)
return function(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10) -- Line 14
	--[[ Upvalues[6]:
		[1]: getCorrectUserPresence_upvr (readonly)
		[2]: Images_upvr (readonly)
		[3]: PresenceType_upvr (readonly)
		[4]: udim2_upvr (readonly)
		[5]: isUserInGame_upvr (readonly)
		[6]: NotLocalizedStrings_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 51 start (CF ANALYSIS FAILED)
	local module = {}
	local var11
	local function INLINED() -- Internal function, doesn't exist in bytecode
		var11 = Images_upvr[arg3]
		return var11
	end
	if not arg3 or not INLINED() then
		var11 = nil
	end
	module.icon = var11
	var11 = PresenceType_upvr.Online
	if getCorrectUserPresence_upvr(arg1) == var11 then
		if not arg10 then
			var11 = udim2_upvr
			module.iconSize = var11
		end
		var11 = arg5.OnlineStatus.Color
		module.iconColor = var11
		var11 = arg5.OnlineStatus.Transparency
		module.iconTransparency = var11
	end
	var11 = arg1.isDeleted
	if var11 then
		module.text = arg9
		-- KONSTANTWARNING: GOTO [95] #64
	end
	-- KONSTANTERROR: [0] 1. Error Block 51 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [39] 27. Error Block 49 start (CF ANALYSIS FAILED)
	var11 = isUserInGame_upvr(arg1)
	if var11 then
		module.text = arg1.lastLocation
		module.onActivated = arg4(arg1.universeId, arg1.id, arg6)
	elseif arg1.userPresenceType == PresenceType_upvr.InStudio then
		if arg1.lastLocation and arg1.lastLocation ~= "" then
			module.text = arg1.lastLocation
		else
			if not arg7 or not NotLocalizedStrings_upvr.StudioPresenceTextLuobu.rawValue() then
			end
			module.text = NotLocalizedStrings_upvr.StudioPresenceTextGlobal.rawValue()
		end
	else
		module.text = arg2
	end
	if not arg10 and arg8 then
		if not isUserInGame_upvr(arg1) or not arg8.CaptionHeader then
		end
		module.fontStyle = arg8.CaptionBody
	end
	do
		return module
	end
	-- KONSTANTERROR: [39] 27. Error Block 49 end (CF ANALYSIS FAILED)
end