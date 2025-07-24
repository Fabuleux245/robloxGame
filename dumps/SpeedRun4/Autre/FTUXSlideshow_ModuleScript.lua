-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:05:16
-- Luau version 6, Types version 3
-- Time taken: 0.004590 seconds

local Parent = script.Parent.Parent
local React_upvr = require(game:GetService("CorePackages").Packages.React)
local FTUXSlideshowData_upvr = require(Parent.Resources.FTUXSlideshowData)
local FTUXConstants_upvr = require(Parent.Resources.FTUXConstants)
local EventHandler_upvr = require(Parent.Events.EventHandler)
local Header_upvr = require(Parent.Components.Slideshow.Header)
local Title_upvr = require(Parent.Components.Slideshow.Title)
local Description_upvr = require(Parent.Components.Slideshow.Description)
local Stepper_upvr = require(Parent.Components.Slideshow.Stepper)
local EndItem_upvr = require(Parent.Components.Slideshow.EndItem)
return function(arg1) -- Line 24, Named "FTUXSlideshow"
	--[[ Upvalues[9]:
		[1]: React_upvr (readonly)
		[2]: FTUXSlideshowData_upvr (readonly)
		[3]: FTUXConstants_upvr (readonly)
		[4]: EventHandler_upvr (readonly)
		[5]: Header_upvr (readonly)
		[6]: Title_upvr (readonly)
		[7]: Description_upvr (readonly)
		[8]: Stepper_upvr (readonly)
		[9]: EndItem_upvr (readonly)
	]]
	local any_useState_result1_upvr, any_useState_result2_upvr = React_upvr.useState(1)
	local platform_upvr = arg1.platform
	local var14 = FTUXSlideshowData_upvr[platform_upvr]
	local PanelConstants = FTUXConstants_upvr[platform_upvr].PanelConstants
	local var16 = PanelConstants.CONTENT_PADDING / PanelConstants.SLIDESHOW_FRAME_WIDTH
	local var17 = 1 - 2 * var16
	local any_useCallback_result1_upvr = React_upvr.useCallback(function() -- Line 37
		--[[ Upvalues[2]:
			[1]: any_useState_result2_upvr (readonly)
			[2]: any_useState_result1_upvr (readonly)
		]]
		any_useState_result2_upvr(any_useState_result1_upvr + 1)
	end, {any_useState_result1_upvr})
	React_upvr.useEffect(function() -- Line 41
		--[[ Upvalues[4]:
			[1]: EventHandler_upvr (copied, readonly)
			[2]: platform_upvr (readonly)
			[3]: any_useState_result1_upvr (readonly)
			[4]: any_useCallback_result1_upvr (readonly)
		]]
		EventHandler_upvr.StartEvents(platform_upvr, any_useState_result1_upvr, any_useCallback_result1_upvr)
		return function() -- Line 44
			--[[ Upvalues[3]:
				[1]: EventHandler_upvr (copied, readonly)
				[2]: platform_upvr (copied, readonly)
				[3]: any_useState_result1_upvr (copied, readonly)
			]]
			EventHandler_upvr.StopEvents(platform_upvr, any_useState_result1_upvr)
		end
	end, {any_useState_result1_upvr})
	local module = {
		UICorner = React_upvr.createElement("UICorner", {
			CornerRadius = UDim.new(0.05, 0);
		});
		SlideshowLayout = React_upvr.createElement("UIListLayout", {
			Padding = UDim.new(0.05, 0);
			FillDirection = Enum.FillDirection.Vertical;
			HorizontalAlignment = Enum.HorizontalAlignment.Center;
			SortOrder = Enum.SortOrder.LayoutOrder;
		});
		Header = React_upvr.createElement(Header_upvr, {
			platform = platform_upvr;
		});
		ContentFrame = React_upvr.createElement("Frame", {
			LayoutOrder = 2;
			BackgroundTransparency = 1;
			Size = UDim2.new(1, 0, PanelConstants.CONTENT_HEIGHT_RATIO, 0);
			Position = UDim2.new(0, 0, 0, 0);
		}, {
			Content = React_upvr.createElement("Frame", {
				BackgroundTransparency = 1;
				Size = UDim2.new(var17, 0, 1, 0);
				Position = UDim2.new(var16, 0, 0, 0);
			}, {
				ContentLayout = React_upvr.createElement("UIListLayout", {
					Padding = UDim.new(0.05, 0);
					FillDirection = Enum.FillDirection.Vertical;
					HorizontalAlignment = Enum.HorizontalAlignment.Center;
					SortOrder = Enum.SortOrder.LayoutOrder;
				});
				Title = React_upvr.createElement(Title_upvr, {
					platform = platform_upvr;
					currentIndex = any_useState_result1_upvr;
				});
				Description = React_upvr.createElement(Description_upvr, {
					platform = platform_upvr;
					currentIndex = any_useState_result1_upvr;
				});
				ImageFrame = React_upvr.createElement("Frame", {
					LayoutOrder = 3;
					BackgroundTransparency = 1;
					Size = UDim2.new(1.2, 0, 0.4, 0);
					Position = UDim2.new(0, 0, 0, 0);
				}, {
					Image = React_upvr.createElement("ImageLabel", {
						Image = var14[any_useState_result1_upvr].image;
						BackgroundTransparency = 1;
						Size = UDim2.new(1, 0, 1, 0);
						LayoutOrder = 3;
						ScaleType = Enum.ScaleType.Fit;
					});
				});
			});
		});
	}
	local tbl_4 = {}
	local tbl = {}
	local tbl_3 = {}
	local var44
	local function INLINED() -- Internal function, doesn't exist in bytecode
		var44 = UDim.new(0.2, 0)
		return var44
	end
	if any_useState_result1_upvr == #var14 or not INLINED() then
		var44 = UDim.new(0, 0)
	end
	tbl_3.Padding = var44
	var44 = Enum.FillDirection.Vertical
	tbl_3.FillDirection = var44
	var44 = Enum.HorizontalAlignment.Center
	tbl_3.HorizontalAlignment = var44
	var44 = Enum.SortOrder.LayoutOrder
	tbl_3.SortOrder = var44
	tbl.ContentLayout = React_upvr.createElement("UIListLayout", tbl_3)
	local tbl_2 = {}
	var44 = 1
	tbl_2.layoutOrder = var44
	tbl_2.numberActivated = any_useState_result1_upvr
	var44 = #var14
	tbl_2.numberOfSteps = var44
	var44 = {}
	tbl.Stepper = React_upvr.createElement(Stepper_upvr, tbl_2, var44)
	tbl.EndItem = React_upvr.createElement(EndItem_upvr, {
		platform = platform_upvr;
		currentIndex = any_useState_result1_upvr;
		increaseCurrentIndex = any_useCallback_result1_upvr;
	})
	tbl_4.Footer = React_upvr.createElement("Frame", {
		BackgroundTransparency = 1;
		Size = UDim2.new(var17, 0, 1, 0);
		Position = UDim2.new(var16, 0, 0, 0);
	}, tbl)
	module.FooterFrame = React_upvr.createElement("Frame", {
		LayoutOrder = 3;
		BackgroundTransparency = 1;
		Size = UDim2.new(1, 0, PanelConstants.FOOTER_HEIGHT_RATIO, 0);
		Position = UDim2.new(0, 0, 0, 0);
	}, tbl_4)
	return React_upvr.createElement("Frame", {
		BackgroundTransparency = 1;
		Size = UDim2.new(1, 0, 1, 0);
		Position = UDim2.new(0, 0, 0, 0);
	}, module)
end