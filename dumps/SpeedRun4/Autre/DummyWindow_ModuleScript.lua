-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:55:39
-- Luau version 6, Types version 3
-- Time taken: 0.003616 seconds

local Chrome_2 = script:FindFirstAncestor("Chrome")
local CorePackages_2 = game:GetService("CorePackages")
local Service_2 = require(Chrome_2.Service)
local Constants_upvr_2 = require(Chrome_2.ChromeShared.Unibar.Constants)
local UIBlox = require(CorePackages_2.Packages.UIBlox)
local any_new_result1_upvr_2 = require(Chrome_2.ChromeShared.Service.WindowSizeSignal).new(Constants_upvr_2.DEFAULT_WIDTH, Constants_upvr_2.DEFAULT_HEIGHT)
local var26
if not require(Chrome_2.Flags.GetFFlagChromeTrackWindowPosition)() then
	var26 = UDim2.new(1, -95, 0, 165)
	Service_2:updateWindowPosition("dummy_window", var26)
end
local module = {}
if require(CorePackages_2.Workspace.Packages.SharedFlags).GetFFlagDebugEnableUnibarDummyIntegrations() then
	var26 = Service_2.AvailabilitySignal.Available
else
	var26 = Service_2.AvailabilitySignal.Unavailable
end
module.initialAvailability = var26
var26 = "dummy_window"
module.id = var26
var26 = "CoreScripts.TopBar.Menu"
module.label = var26
var26 = true
module.draggable = var26
var26 = true
module.cachePosition = var26
module.startingWindowPosition = UDim2.new(1, -95, 0, 165)
module.windowSize = any_new_result1_upvr_2
var26 = require(Chrome_2.Flags.GetFFlagChromeTrackWindowPosition)()
if not var26 then
	var26 = require(Chrome_2.Flags.GetFFlagChromeTrackWindowStatus)()
	if not var26 then
		var26 = nil
	end
end
module.persistWindowState = var26
local CommonIcon_upvr = require(Chrome_2.Integrations.CommonIcon)
;({}).Icon = function(arg1) -- Line 41, Named "Icon"
	--[[ Upvalues[1]:
		[1]: CommonIcon_upvr (readonly)
	]]
	return CommonIcon_upvr("icons/menu/avatar_on")
end
local React_upvr_2 = require(CorePackages_2.Packages.React)
local IconButton_upvr_2 = UIBlox.App.Button.IconButton
local icons_navigation_cycleUp_upvr_2 = UIBlox.App.ImageSet.Images["icons/navigation/cycleUp"]
local var32_upvw = false
-- KONSTANTERROR: Expression was reused, decompilation is incorrect
;({}).Window = function(arg1) -- Line 44, Named "Window"
	--[[ Upvalues[6]:
		[1]: React_upvr_2 (readonly)
		[2]: Constants_upvr_2 (readonly)
		[3]: IconButton_upvr_2 (readonly)
		[4]: icons_navigation_cycleUp_upvr_2 (readonly)
		[5]: var32_upvw (read and write)
		[6]: any_new_result1_upvr_2 (readonly)
	]]
	return React_upvr_2.createElement("Frame", {
		BackgroundTransparency = 0;
		Size = UDim2.new(1, 0, 1, 0);
	}, {
		Corner = React_upvr_2.createElement("UICorner", {
			CornerRadius = Constants_upvr_2.CORNER_RADIUS;
		});
		SizeIcon = React_upvr_2.createElement(IconButton_upvr_2, {
			icon = icons_navigation_cycleUp_upvr_2;
			iconSize = Constants_upvr_2.CLOSE_ICON_SIZE;
			anchorPoint = Vector2.new(0.5, 1);
			position = UDim2.new(0.5, 0, 1, 0);
			backgroundTransparency = 0.5;
			onActivated = function() -- Line 58, Named "onActivated"
				--[[ Upvalues[3]:
					[1]: var32_upvw (copied, read and write)
					[2]: any_new_result1_upvr_2 (copied, readonly)
					[3]: Constants_upvr_2 (copied, readonly)
				]]
				if var32_upvw then
					any_new_result1_upvr_2:requestSize(Constants_upvr_2.DEFAULT_WIDTH, Constants_upvr_2.DEFAULT_HEIGHT)
					var32_upvw = false
				else
					any_new_result1_upvr_2:requestSize(Constants_upvr_2.DEFAULT_WIDTH_LARGE, Constants_upvr_2.DEFAULT_HEIGHT_LARGE)
					var32_upvw = true
				end
			end;
		});
	})
end
-- KONSTANTERROR: Expression was reused, decompilation is incorrect
module.components = {}
return Service_2:register(module)