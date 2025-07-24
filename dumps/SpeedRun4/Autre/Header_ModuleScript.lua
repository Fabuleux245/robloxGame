-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:05:18
-- Luau version 6, Types version 3
-- Time taken: 0.001564 seconds

local CorePackages = game:GetService("CorePackages")
local UIBlox_upvr = require(CorePackages.Packages.UIBlox)
local useStyle_upvr = UIBlox_upvr.Core.Style.useStyle
local FTUXConstants_upvr = require(script.Parent.Parent.Parent.Resources.FTUXConstants)
local withLocalization_upvr = require(CorePackages.Workspace.Packages.Localization).withLocalization
local React_upvr = require(CorePackages.Packages.React)
return function(arg1) -- Line 18, Named "Header"
	--[[ Upvalues[5]:
		[1]: useStyle_upvr (readonly)
		[2]: FTUXConstants_upvr (readonly)
		[3]: withLocalization_upvr (readonly)
		[4]: React_upvr (readonly)
		[5]: UIBlox_upvr (readonly)
	]]
	local useStyle_upvr_result1 = useStyle_upvr()
	local Theme_upvr = useStyle_upvr_result1.Theme
	local PanelConstants = FTUXConstants_upvr[arg1.platform].PanelConstants
	local var11_upvr = PanelConstants.CONTENT_PADDING / PanelConstants.SLIDESHOW_FRAME_WIDTH
	local Color_upvr = Theme_upvr.BackgroundContrast.Color
	local HEADER_HEIGHT_RATIO_upvr = PanelConstants.HEADER_HEIGHT_RATIO
	local var16_upvr = 1 - 2 * var11_upvr
	local Font_upvr = useStyle_upvr_result1.Font
	return withLocalization_upvr({
		headerText = "CoreScripts.VRFTUX.Heading.Header";
	})(function(arg1_2) -- Line 33
		--[[ Upvalues[8]:
			[1]: React_upvr (copied, readonly)
			[2]: Color_upvr (readonly)
			[3]: HEADER_HEIGHT_RATIO_upvr (readonly)
			[4]: var16_upvr (readonly)
			[5]: var11_upvr (readonly)
			[6]: UIBlox_upvr (copied, readonly)
			[7]: Font_upvr (readonly)
			[8]: Theme_upvr (readonly)
		]]
		return React_upvr.createElement("Frame", {
			BackgroundColor3 = Color_upvr;
			BackgroundTransparency = 0;
			Size = UDim2.new(1, 0, HEADER_HEIGHT_RATIO_upvr, 0);
			LayoutOrder = 1;
		}, {
			UICorner = React_upvr.createElement("UICorner", {
				CornerRadius = UDim.new(0.26, 0);
			});
			HeaderFrame = React_upvr.createElement("Frame", {
				Size = UDim2.new(1, 0, 1, 0);
				Position = UDim2.new(0, 0, 0, 0);
				BackgroundTransparency = 1;
			}, {
				Box = React_upvr.createElement("Frame", {
					Size = UDim2.new(var16_upvr, 0, 1, 0);
					Position = UDim2.new(var11_upvr, 0, 0, 0);
					BackgroundTransparency = 1;
				}, {
					HeaderText = React_upvr.createElement(UIBlox_upvr.App.Text.StyledTextLabel, {
						text = arg1_2.headerText;
						fontStyle = Font_upvr.Header1;
						colorStyle = Theme_upvr.TextEmphasis;
						textXAlignment = Enum.TextXAlignment.Left;
						size = UDim2.new(1, 0, 1, 0);
						fluidSizing = true;
						automaticSize = Enum.AutomaticSize.XY;
					});
				});
			});
		})
	end)
end