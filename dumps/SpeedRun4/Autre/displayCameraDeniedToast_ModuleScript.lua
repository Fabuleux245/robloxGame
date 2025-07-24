-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:04:52
-- Luau version 6, Types version 3
-- Time taken: 0.000818 seconds

local RobloxGui = game:GetService("CoreGui"):WaitForChild("RobloxGui")
local TrackerMenu_upvr = require(RobloxGui.Modules.Tracker.TrackerMenu)
local TrackerPromptType_upvr = require(RobloxGui.Modules.Tracker.TrackerPromptType)
local Promise_upvr = require(game:GetService("CorePackages").Packages.Promise)
return function() -- Line 10
	--[[ Upvalues[3]:
		[1]: TrackerMenu_upvr (readonly)
		[2]: TrackerPromptType_upvr (readonly)
		[3]: Promise_upvr (readonly)
	]]
	TrackerMenu_upvr:showPrompt(TrackerPromptType_upvr.None)
	Promise_upvr.delay((1/60)):andThen(function() -- Line 12
		--[[ Upvalues[2]:
			[1]: TrackerMenu_upvr (copied, readonly)
			[2]: TrackerPromptType_upvr (copied, readonly)
		]]
		TrackerMenu_upvr:showPrompt(TrackerPromptType_upvr.VideoNoPermission)
	end)
end