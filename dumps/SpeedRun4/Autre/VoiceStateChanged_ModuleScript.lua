-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:42:50
-- Luau version 6, Types version 3
-- Time taken: 0.000895 seconds

local CorePackages = game:GetService("CorePackages")
local RobloxGui = game:GetService("CoreGui"):WaitForChild("RobloxGui")
local maybeAssert_upvw = require(RobloxGui.Modules.InGameChat.BubbleChat.Helpers.maybeAssert)
if require(RobloxGui.Modules.Flags.GetFFlagRemoveInGameChatBubbleChatReferences)() then
	maybeAssert_upvw = require(RobloxGui.Modules.VoiceChat.Helpers.maybeAssert)
end
local t_upvr = require(CorePackages.Packages.t)
return require(CorePackages.Packages.Rodux).makeActionCreator(script.Name, function(arg1, arg2) -- Line 15
	--[[ Upvalues[2]:
		[1]: maybeAssert_upvw (read and write)
		[2]: t_upvr (readonly)
	]]
	local var6
	if tonumber(arg1) == nil then
		var6 = false
	else
		var6 = true
	end
	maybeAssert_upvw(var6)
	var6 = t_upvr.string(arg2)
	maybeAssert_upvw(var6)
	local module = {}
	var6 = tostring(arg1)
	module.userId = var6
	module.newState = arg2
	return module
end)