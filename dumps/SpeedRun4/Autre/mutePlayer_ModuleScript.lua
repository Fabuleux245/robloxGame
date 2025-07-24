-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:23:13
-- Luau version 6, Types version 3
-- Time taken: 0.001038 seconds

local ChatLineReporting = script:FindFirstAncestor("ChatLineReporting")
local Parent = ChatLineReporting.Parent
local ExpChatShared_upvr = require(Parent.ExpChatShared)
local Constants_upvr = require(ChatLineReporting.Common.Constants)
local UserMuted_upvr = require(Parent.ExpChatShared).Actions.UserMuted
local RBXMuteCommand_upvr = require(Parent.ExpChatShared).Commands.RBXMuteCommand
function mutePlayer(arg1, arg2) -- Line 11
	--[[ Upvalues[4]:
		[1]: ExpChatShared_upvr (readonly)
		[2]: Constants_upvr (readonly)
		[3]: UserMuted_upvr (readonly)
		[4]: RBXMuteCommand_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [8] 6. Error Block 2 start (CF ANALYSIS FAILED)
	do
		return {
			key = Constants_upvr.ErrorDoesNotExistKey;
			args = {
				RBX_NAME = arg1.displayName;
			};
			metadata = "Roblox.Mute.Error.PlayerNotFound";
		}
	end
	-- KONSTANTERROR: [8] 6. Error Block 2 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [26] 18. Error Block 3 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [26] 18. Error Block 3 end (CF ANALYSIS FAILED)
end
return mutePlayer