-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:05:15
-- Luau version 6, Types version 3
-- Time taken: 0.001815 seconds

local CorePackages = game:GetService("CorePackages")
local Parent = script.Parent.Parent
local useStyle_upvr = require(CorePackages.Packages.UIBlox).Core.Style.useStyle
local FTUXConstants_upvr = require(Parent.Resources.FTUXConstants)
local React_upvr = require(CorePackages.Packages.React)
local game_DefineFastInt_result1_upvr = game:DefineFastInt("FTUXPanelXOffset", 50)
local FTUXSlideshow_upvr = require(Parent.Components.FTUXSlideshow)
return function(arg1) -- Line 20, Named "FTUXPanel"
	--[[ Upvalues[5]:
		[1]: useStyle_upvr (readonly)
		[2]: FTUXConstants_upvr (readonly)
		[3]: React_upvr (readonly)
		[4]: game_DefineFastInt_result1_upvr (readonly)
		[5]: FTUXSlideshow_upvr (readonly)
	]]
	local PanelConstants = FTUXConstants_upvr[arg1.platform].PanelConstants
	local MAIN_SCREEN_SIZE_WIDTH = PanelConstants.MAIN_SCREEN_SIZE_WIDTH
	local MAIN_SCREEN_SIZE_HEIGHT = PanelConstants.MAIN_SCREEN_SIZE_HEIGHT
	return React_upvr.createElement("Frame", {
		BackgroundTransparency = 1;
		Size = UDim2.new(1, 0, 1, 0);
		Position = UDim2.new(0, game_DefineFastInt_result1_upvr, 0, 0);
	}, {
		Slideshow = React_upvr.createElement("Frame", {
			BackgroundColor3 = useStyle_upvr().Theme.BackgroundDefault.Color;
			BackgroundTransparency = 0;
			Size = UDim2.new(PanelConstants.SLIDESHOW_FRAME_WIDTH / MAIN_SCREEN_SIZE_WIDTH, 0, PanelConstants.SLIDESHOW_FRAME_HEIGHT / MAIN_SCREEN_SIZE_HEIGHT, 0);
			Position = UDim2.new(PanelConstants.SLIDESHOW_FRAME_X / MAIN_SCREEN_SIZE_WIDTH, 0, PanelConstants.SLIDESHOW_FRAME_Y / MAIN_SCREEN_SIZE_HEIGHT, 0);
			BorderSizePixel = 0;
			ClipsDescendants = true;
		}, {
			UICorner = React_upvr.createElement("UICorner", {
				CornerRadius = UDim.new(0.02, 0);
			});
			Slideshow = React_upvr.createElement(FTUXSlideshow_upvr, {
				platform = arg1.platform;
			}, {});
		});
	})
end