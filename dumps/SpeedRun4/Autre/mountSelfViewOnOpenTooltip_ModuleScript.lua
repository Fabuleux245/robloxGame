-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:46:59
-- Luau version 6, Types version 3
-- Time taken: 0.002553 seconds

local CorePackages = game:GetService("CorePackages")
local UIBlox = require(CorePackages.Packages.UIBlox)
local CoreGui_upvr = game:GetService("CoreGui")
local Roact_upvr = require(CorePackages.Packages.Roact)
local AppStyleProvider_upvr = UIBlox.App.Style.AppStyleProvider
local Dark_upvr = UIBlox.App.Style.Constants.ThemeName.Dark
local SelfViewTooltipFTUX_upvr = require(script.Parent.SelfViewTooltipFTUX)
local Promise_upvr = require(CorePackages.Packages.Promise)
return function(arg1) -- Line 13
	--[[ Upvalues[6]:
		[1]: CoreGui_upvr (readonly)
		[2]: Roact_upvr (readonly)
		[3]: AppStyleProvider_upvr (readonly)
		[4]: Dark_upvr (readonly)
		[5]: SelfViewTooltipFTUX_upvr (readonly)
		[6]: Promise_upvr (readonly)
	]]
	local ScreenGui = Instance.new("ScreenGui")
	ScreenGui.Name = "SelfViewTooltipOnOpenGui"
	ScreenGui.DisplayOrder = -1
	ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
	ScreenGui.Parent = CoreGui_upvr
	local any_mount_result1_upvr = Roact_upvr.mount(Roact_upvr.createElement(AppStyleProvider_upvr, {
		style = {
			themeName = Dark_upvr;
		};
	}, {
		frame = Roact_upvr.createElement("Frame", {
			Position = arg1.position;
			Size = arg1.size;
			BackgroundTransparency = 0;
			AnchorPoint = arg1.anchorPoint;
			Visible = false;
		}, {
			aspectRatioConstraint = Roact_upvr.createElement("UIAspectRatioConstraint", {
				AspectRatio = arg1.aspectRatio;
				AspectType = "ScaleWithParentSize";
				DominantAxis = "Width";
			});
			sizeConstraint = Roact_upvr.createElement("UISizeConstraint", {
				MaxSize = arg1.maxSize;
				MinSize = arg1.minSize;
			});
			bottomButtonsMock = Roact_upvr.createElement("Frame", {
				Position = arg1.bottomButtonsFramePosition;
				Size = arg1.bottomButtonsFrameSize;
				Visible = false;
				BackgroundTransparency = 0;
			}, {
				tooltip = Roact_upvr.createElement(SelfViewTooltipFTUX_upvr, {
					fallbackText = arg1.fallbackText;
					translationKey = arg1.translationKey;
					tooltipLifetime = arg1.tooltipLifetime;
				});
			});
		});
	}), ScreenGui, "SelfViewTooltipOnOpenGui")
	Promise_upvr.delay(arg1.tooltipLifetime + 5):andThen(function() -- Line 62
		--[[ Upvalues[2]:
			[1]: Roact_upvr (copied, readonly)
			[2]: any_mount_result1_upvr (readonly)
		]]
		pcall(function() -- Line 58
			--[[ Upvalues[2]:
				[1]: Roact_upvr (copied, readonly)
				[2]: any_mount_result1_upvr (copied, readonly)
			]]
			Roact_upvr.unmount(any_mount_result1_upvr)
		end)
	end)
	return {
		instance = any_mount_result1_upvr;
		unmount = function() -- Line 57
			--[[ Upvalues[2]:
				[1]: Roact_upvr (copied, readonly)
				[2]: any_mount_result1_upvr (readonly)
			]]
			pcall(function() -- Line 58
				--[[ Upvalues[2]:
					[1]: Roact_upvr (copied, readonly)
					[2]: any_mount_result1_upvr (copied, readonly)
				]]
				Roact_upvr.unmount(any_mount_result1_upvr)
			end)
		end;
	}
end