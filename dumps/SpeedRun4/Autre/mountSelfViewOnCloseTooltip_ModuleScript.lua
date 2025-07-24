-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:46:59
-- Luau version 6, Types version 3
-- Time taken: 0.001317 seconds

local CorePackages = game:GetService("CorePackages")
local CoreGui_upvr = game:GetService("CoreGui")
local Constants = require(CoreGui_upvr:WaitForChild("RobloxGui").Modules.TopBar.Constants)
local UIBlox = require(CorePackages.Packages.UIBlox)
local Roact_upvr = require(CorePackages.Packages.Roact)
local AppStyleProvider_upvr = UIBlox.App.Style.AppStyleProvider
local Dark_upvr = UIBlox.App.Style.Constants.ThemeName.Dark
local ScreenSideOffset_upvr = Constants.ScreenSideOffset
local TopBarButtonHeight_upvr = Constants.TopBarButtonHeight
local SelfViewTooltipFTUX_upvr = require(script.Parent.SelfViewTooltipFTUX)
local Promise_upvr = require(CorePackages.Packages.Promise)
return function(arg1) -- Line 17
	--[[ Upvalues[8]:
		[1]: CoreGui_upvr (readonly)
		[2]: Roact_upvr (readonly)
		[3]: AppStyleProvider_upvr (readonly)
		[4]: Dark_upvr (readonly)
		[5]: ScreenSideOffset_upvr (readonly)
		[6]: TopBarButtonHeight_upvr (readonly)
		[7]: SelfViewTooltipFTUX_upvr (readonly)
		[8]: Promise_upvr (readonly)
	]]
	local ScreenGui = Instance.new("ScreenGui")
	ScreenGui.Name = "SelfViewTooltipOnCloseGui"
	ScreenGui.DisplayOrder = -1
	ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
	ScreenGui.Parent = CoreGui_upvr
	local any_mount_result1_upvr = Roact_upvr.mount(Roact_upvr.createElement(AppStyleProvider_upvr, {
		style = {
			themeName = Dark_upvr;
		};
	}, {
		frame = Roact_upvr.createElement("Frame", {
			Position = UDim2.fromOffset(ScreenSideOffset_upvr, -TopBarButtonHeight_upvr);
			Size = UDim2.fromOffset(TopBarButtonHeight_upvr, TopBarButtonHeight_upvr);
			BackgroundTransparency = 0;
			Visible = false;
		}, {
			tooltip = Roact_upvr.createElement(SelfViewTooltipFTUX_upvr, {
				fallbackText = arg1.fallbackText;
				translationKey = arg1.translationKey;
				tooltipLifetime = arg1.tooltipLifetime;
			});
		});
	}), ScreenGui, "SelfViewTooltipOnClose")
	Promise_upvr.delay(arg1.tooltipLifetime + 5):andThen(function() -- Line 45
		--[[ Upvalues[2]:
			[1]: Roact_upvr (copied, readonly)
			[2]: any_mount_result1_upvr (readonly)
		]]
		pcall(function() -- Line 46
			--[[ Upvalues[2]:
				[1]: Roact_upvr (copied, readonly)
				[2]: any_mount_result1_upvr (copied, readonly)
			]]
			Roact_upvr.unmount(any_mount_result1_upvr)
		end)
	end)
end