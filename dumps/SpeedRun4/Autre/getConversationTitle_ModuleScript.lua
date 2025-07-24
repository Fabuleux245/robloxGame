-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:51:59
-- Luau version 6, Types version 3
-- Time taken: 0.001211 seconds

local AppChat = script:FindFirstAncestor("AppChat")
local FFlagAppChatRemoveUserProfileTitles_upvr = require(AppChat.Flags.FFlagAppChatRemoveUserProfileTitles)
local Cryo_upvr = require(AppChat.Parent.Cryo)
local getConversationDisplayTitle_upvr = require(AppChat.SocialLibraries).Conversation.getConversationDisplayTitle
return function(arg1, arg2, arg3) -- Line 10
	--[[ Upvalues[3]:
		[1]: FFlagAppChatRemoveUserProfileTitles_upvr (readonly)
		[2]: Cryo_upvr (readonly)
		[3]: getConversationDisplayTitle_upvr (readonly)
	]]
	local var6
	if nil then
		if arg1 then
			local var7 = nil
			if not var7 then
				var7 = arg1.titleForViewer
			end
			if var7 then
				return string.gsub(tostring(var7), '\n', "")
			end
		end
		return ""
	end
	if arg1 and arg1.isDefaultTitle then
		if not arg2 then
			return ""
		end
		if Cryo_upvr.isEmpty(arg2) then
			return arg3
		end
		return table.concat(Cryo_upvr.List.map(Cryo_upvr.List.sort(arg2, function(arg1_2, arg2_2) -- Line 38
			local var9
			if string.lower(arg1_2.names.combinedName) >= string.lower(arg2_2.names.combinedName) then
				var9 = false
			else
				var9 = true
			end
			return var9
		end), function(arg1_3) -- Line 42
			return arg1_3.names.combinedName
		end), ", ")
	end
	return getConversationDisplayTitle_upvr(arg1)
end