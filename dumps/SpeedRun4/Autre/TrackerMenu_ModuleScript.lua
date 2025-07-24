-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:43:11
-- Luau version 6, Types version 3
-- Time taken: 0.001121 seconds

local CoreGui_upvr = game:GetService("CoreGui")
local module_2_upvr = {}
module_2_upvr.__index = module_2_upvr
local Roact_upvr = require(game:GetService("CorePackages").Packages.Roact)
local TrackerPrompt_upvr = require(CoreGui_upvr:WaitForChild("RobloxGui").Modules.Tracker.TrackerPrompt)
function module_2_upvr.showPrompt(arg1, arg2) -- Line 20
	--[[ Upvalues[3]:
		[1]: Roact_upvr (readonly)
		[2]: TrackerPrompt_upvr (readonly)
		[3]: CoreGui_upvr (readonly)
	]]
	if arg1.trackerPrompt then
		local tbl_2 = {}
		tbl_2.promptType = arg2
		Roact_upvr.update(arg1.trackerPrompt, Roact_upvr.createElement(TrackerPrompt_upvr, tbl_2))
	else
		local tbl = {}
		tbl.promptType = arg2
		arg1.trackerPrompt = Roact_upvr.mount(Roact_upvr.createElement(TrackerPrompt_upvr, tbl), CoreGui_upvr, "RobloxTrackerPromptGui")
	end
end
function module_2_upvr.new() -- Line 39
	--[[ Upvalues[1]:
		[1]: module_2_upvr (readonly)
	]]
	local module = {
		trackerPrompt = nil;
	}
	setmetatable(module, module_2_upvr)
	return module
end
return module_2_upvr.new()