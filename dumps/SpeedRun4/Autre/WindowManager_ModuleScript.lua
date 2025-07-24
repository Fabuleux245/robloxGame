-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:55:10
-- Luau version 6, Types version 3
-- Time taken: 0.000861 seconds

local ChromeShared = script:FindFirstAncestor("ChromeShared")
local useChromeWindowItems_upvr = require(ChromeShared.Hooks.useChromeWindowItems)
local React_upvr = require(game:GetService("CorePackages").Packages.React)
local WindowHost_upvr = require(ChromeShared.Unibar.ComponentHosts.WindowHost)
local GetFFlagChromeTrackWindowPosition_upvr = require(ChromeShared.Parent.Flags.GetFFlagChromeTrackWindowPosition)
local Service_upvr = require(ChromeShared.Service)
return function(arg1) -- Line 15
	--[[ Upvalues[5]:
		[1]: useChromeWindowItems_upvr (readonly)
		[2]: React_upvr (readonly)
		[3]: WindowHost_upvr (readonly)
		[4]: GetFFlagChromeTrackWindowPosition_upvr (readonly)
		[5]: Service_upvr (readonly)
	]]
	local module = {}
	for _, v in useChromeWindowItems_upvr(), nil do
		local tbl = {}
		local var14
		if GetFFlagChromeTrackWindowPosition_upvr() then
			var14 = Service_upvr:windowPosition(v.integration.id)
		else
			var14 = v.integration.startingWindowPosition
		end
		tbl.position = var14
		tbl.integration = v
		module["window_"..v.integration.id] = React_upvr.createElement(WindowHost_upvr, tbl)
	end
	return module
end