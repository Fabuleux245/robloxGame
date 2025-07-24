-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:46:39
-- Luau version 6, Types version 3
-- Time taken: 0.002066 seconds

local CorePackages = game:GetService("CorePackages")
local React_upvr = require(CorePackages.Packages.React)
local VrSpatialUi = require(CorePackages.Workspace.Packages.VrSpatialUi)
local Parent = script.Parent.Parent.Parent
local useSelector_upvr = require(CorePackages.Workspace.Packages.RoactUtils).Hooks.RoactRodux.useSelector
local MenuIcon_upvr = require(Parent.TopBar.Components.Presentation.MenuIcon)
local function MenuIconWrapper_upvr(arg1) -- Line 19, Named "MenuIconWrapper"
	--[[ Upvalues[3]:
		[1]: useSelector_upvr (readonly)
		[2]: React_upvr (readonly)
		[3]: MenuIcon_upvr (readonly)
	]]
	local function var7(arg1_2) -- Line 20
		if arg1_2 and arg1_2.displayOptions then
			return arg1_2.displayOptions.menuOpen
		end
		return false
	end
	if useSelector_upvr(var7) then
		var7 = 1.5
	else
		var7 = 1
	end
	return React_upvr.createElement(MenuIcon_upvr, {
		layout = arg1.layout;
		iconScale = var7;
		showBadgeOver12 = arg1.showBadgeOver12;
	})
end
local Panel3DInSpatialUI_upvr = VrSpatialUi.Panel3DInSpatialUI
local PanelType_upvr = VrSpatialUi.Constants.PanelType
local Unibar_upvr = require(Parent.Chrome.ChromeShared.Unibar)
return React_upvr.memo(function(arg1) -- Line 31, Named "VRBottomUnibar"
	--[[ Upvalues[5]:
		[1]: Panel3DInSpatialUI_upvr (readonly)
		[2]: React_upvr (readonly)
		[3]: PanelType_upvr (readonly)
		[4]: MenuIconWrapper_upvr (readonly)
		[5]: Unibar_upvr (readonly)
	]]
	if not Panel3DInSpatialUI_upvr then
		return nil
	end
	return React_upvr.createElement(Panel3DInSpatialUI_upvr, {
		panelType = PanelType_upvr.BottomBar;
		renderFunction = function() -- Line 37, Named "renderFunction"
			--[[ Upvalues[4]:
				[1]: React_upvr (copied, readonly)
				[2]: MenuIconWrapper_upvr (copied, readonly)
				[3]: arg1 (readonly)
				[4]: Unibar_upvr (copied, readonly)
			]]
			return React_upvr.createElement("Frame", {
				BackgroundTransparency = 1;
				BorderSizePixel = 0;
				Size = UDim2.new(1, 0, 1, 0);
			}, {
				ListLayout = React_upvr.createElement("UIListLayout", {
					FillDirection = Enum.FillDirection.Horizontal;
					HorizontalAlignment = Enum.HorizontalAlignment.Center;
					VerticalAlignment = Enum.VerticalAlignment.Center;
					Padding = UDim.new(0, 8);
				});
				MenuIconFrame = React_upvr.createElement("Frame", {
					BackgroundTransparency = 1;
					BorderSizePixel = 0;
					Size = UDim2.new(0, 0, 1, 0);
					AutomaticSize = Enum.AutomaticSize.X;
				}, {
					MenuIcon = React_upvr.createElement(MenuIconWrapper_upvr, {
						layout = 1;
						showBadgeOver12 = arg1.showBadgeOver12;
					});
				});
				UnibarFrame = React_upvr.createElement("Frame", {
					BackgroundTransparency = 1;
					BorderSizePixel = 0;
					Size = UDim2.new(0, 0, 0, 0);
					AutomaticSize = Enum.AutomaticSize.XY;
				}, {
					Unibar = React_upvr.createElement(Unibar_upvr, {
						layoutOrder = 1;
						onAreaChanged = function() -- Line 68, Named "onAreaChanged"
						end;
						onMinWidthChanged = function() -- Line 69, Named "onMinWidthChanged"
						end;
					});
				});
			})
		end;
		requireCanvasGroup = true;
	})
end)