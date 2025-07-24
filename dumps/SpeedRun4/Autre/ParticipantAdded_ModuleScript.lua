-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:42:47
-- Luau version 6, Types version 3
-- Time taken: 0.001230 seconds

local RobloxGui = game:GetService("CoreGui"):WaitForChild("RobloxGui")
local maybeAssert_upvw = require(RobloxGui.Modules.InGameChat.BubbleChat.Helpers.maybeAssert)
if require(RobloxGui.Modules.Flags.GetFFlagRemoveInGameChatBubbleChatReferences)() then
	maybeAssert_upvw = require(RobloxGui.Modules.VoiceChat.Helpers.maybeAssert)
end
return require(game:GetService("CorePackages").Packages.Rodux).makeActionCreator(script.Name, function(arg1) -- Line 15
	--[[ Upvalues[1]:
		[1]: maybeAssert_upvw (read and write)
	]]
	local var5
	if tonumber(arg1) == nil then
		var5 = false
	else
		var5 = true
	end
	maybeAssert_upvw(var5)
	local module = {}
	var5 = tostring(arg1)
	module.userId = var5
	return module
end)