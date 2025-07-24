-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:06:46
-- Luau version 6, Types version 3
-- Time taken: 0.001664 seconds

local ReplicatedStorage = game:GetService("ReplicatedStorage")
local module = require(ReplicatedStorage:WaitForChild("Theme"))
local tbl_upvr = {
	VIP = string.format("<font color='#%s'>%s</font> ", module.VIPChatTagColor:ToHex(), module.VIPChatTag);
}
local module_2_upvr = require(ReplicatedStorage:WaitForChild("Modules"):WaitForChild("ClientData"))
game:GetService("TextChatService").OnIncomingMessage = function(arg1) -- Line 26
	--[[ Upvalues[2]:
		[1]: module_2_upvr (readonly)
		[2]: tbl_upvr (readonly)
	]]
	local var9
	local TextSource_2 = arg1.TextSource
	if TextSource_2 then
		local var11 = module_2_upvr.PlayerState_ByUserId[TextSource_2.UserId]
		if var11 and var11.PlayerIdentity.IsVIP then
			var9 = Instance.new("TextChatMessageProperties")
			var9.PrefixText = tbl_upvr.VIP..arg1.PrefixText
		end
	end
	return var9
end
return {}