-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:44:12
-- Luau version 6, Types version 3
-- Time taken: 0.001749 seconds

local RbxAnalyticsService_upvr = game:GetService("RbxAnalyticsService")
local module_2_upvr = {}
module_2_upvr.__index = module_2_upvr
local EventStream_upvr = require(game:GetService("CorePackages").Workspace.Packages.Analytics).AnalyticsReporters.EventStream
function module_2_upvr.new() -- Line 22
	--[[ Upvalues[3]:
		[1]: EventStream_upvr (readonly)
		[2]: RbxAnalyticsService_upvr (readonly)
		[3]: module_2_upvr (readonly)
	]]
	local module = {
		evenStream = EventStream_upvr.new(RbxAnalyticsService_upvr);
	}
	setmetatable(module, module_2_upvr)
	return module
end
local StarterGui_upvr = game:GetService("StarterGui")
function module_2_upvr.sendCoreGuiFinalAnalytic(arg1) -- Line 30
	--[[ Upvalues[2]:
		[1]: RbxAnalyticsService_upvr (readonly)
		[2]: StarterGui_upvr (readonly)
	]]
	local tbl = {
		placeid = tostring(game.PlaceId);
		universeid = tostring(game.GameId);
		sessionid = RbxAnalyticsService_upvr:GetSessionId();
	}
	for _, v in Enum.CoreGuiType:GetEnumItems() do
		tbl[v.Name] = tostring(StarterGui_upvr:GetCoreGuiEnabled(v))
	end
	local var14_upvw = ""
	pcall(function() -- Line 43
		--[[ Upvalues[2]:
			[1]: var14_upvw (read and write)
			[2]: StarterGui_upvr (copied, readonly)
		]]
		var14_upvw = tostring(StarterGui_upvr:GetCore("ResetButtonCallback"))
	end)
	tbl.ResetButtonCallback = var14_upvw
	arg1.evenStream:sendEventDeferred("core_gui_final_state", "core_gui_final_state", tbl)
end
return module_2_upvr