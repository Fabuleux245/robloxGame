-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:55:40
-- Luau version 6, Types version 3
-- Time taken: 0.002092 seconds

local Chrome = script:FindFirstAncestor("Chrome")
local CorePackages_2 = game:GetService("CorePackages")
local module = {}
local var14
if require(CorePackages_2.Workspace.Packages.SharedFlags).GetFFlagDebugEnableUnibarDummyIntegrations() then
	var14 = require(Chrome.Service).AvailabilitySignal.Available
else
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	var14 = require(Chrome.Service).AvailabilitySignal.Unavailable
end
module.initialAvailability = var14
var14 = "dummy_window_2"
module.id = var14
var14 = "CoreScripts.TopBar.Menu"
module.label = var14
var14 = UDim2.new(1, -245, 0, 95)
module.startingWindowPosition = var14
var14 = require(Chrome.Flags.GetFFlagChromeTrackWindowPosition)()
if not var14 then
	var14 = require(Chrome.Flags.GetFFlagChromeTrackWindowStatus)()
	if not var14 then
		var14 = nil
	end
end
module.persistWindowState = var14
local CommonIcon_upvr_2 = require(Chrome.Integrations.CommonIcon)
;({}).Icon = function(arg1) -- Line 24, Named "Icon"
	--[[ Upvalues[1]:
		[1]: CommonIcon_upvr_2 (readonly)
	]]
	return CommonIcon_upvr_2("icons/menu/home_on")
end
local React_upvr = require(CorePackages_2.Packages.React)
local Constants_upvr_2 = require(Chrome.ChromeShared.Unibar.Constants)
-- KONSTANTERROR: Expression was reused, decompilation is incorrect
;({}).Window = function(arg1) -- Line 27, Named "Window"
	--[[ Upvalues[2]:
		[1]: React_upvr (readonly)
		[2]: Constants_upvr_2 (readonly)
	]]
	return React_upvr.createElement("Frame", {
		BackgroundTransparency = 0;
		Size = UDim2.new(1, 0, 1, 0);
	}, {
		Corner = React_upvr.createElement("UICorner", {
			CornerRadius = Constants_upvr_2.CORNER_RADIUS;
		});
	})
end
-- KONSTANTERROR: Expression was reused, decompilation is incorrect
module.components = {}
return require(Chrome.Service):register(module)