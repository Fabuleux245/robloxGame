-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:04:02
-- Luau version 6, Types version 3
-- Time taken: 0.001002 seconds

local ExpChat = script:FindFirstAncestor("ExpChat")
local Set_upvr = require(ExpChat.Parent.llama).Set
local tbl_upvw = {}
local getOtherDisplayNameInWhisperChannel_upvr = require(ExpChat.getOtherDisplayNameInWhisperChannel)
return function(arg1, arg2) -- Line 14
	--[[ Upvalues[3]:
		[1]: Set_upvr (readonly)
		[2]: tbl_upvw (read and write)
		[3]: getOtherDisplayNameInWhisperChannel_upvr (readonly)
	]]
	if arg1.TextChannel and string.find(arg1.TextChannel.Name, "^RBXWhisper") and not Set_upvr.has(tbl_upvw, arg1.TextChannel) and getOtherDisplayNameInWhisperChannel_upvr(arg1.TextChannel, arg2) then
		tbl_upvw = Set_upvr.add(tbl_upvw, arg1.TextChannel)
		local module = {
			key = "CoreScripts.TextChat.Notification.WhisperChat.Created";
		}
		local tbl = {}
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		tbl.RBX_NAME = getOtherDisplayNameInWhisperChannel_upvr(arg1.TextChannel, arg2)
		module.args = tbl
		module.metadata = "Roblox.Whisper.Welcome.Sent"
		return module
	end
	return nil
end