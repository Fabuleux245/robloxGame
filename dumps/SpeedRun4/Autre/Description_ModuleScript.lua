-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:05:17
-- Luau version 6, Types version 3
-- Time taken: 0.001838 seconds

local CorePackages = game:GetService("CorePackages")
local UIBlox_upvr = require(CorePackages.Packages.UIBlox)
local useStyle_upvr = UIBlox_upvr.Core.Style.useStyle
local FTUXSlideshowData_upvr = require(script.Parent.Parent.Parent.Resources.FTUXSlideshowData)
local withLocalization_upvr = require(CorePackages.Workspace.Packages.Localization).withLocalization
local React_upvr = require(CorePackages.Packages.React)
local LuauPolyfill_upvr = require(CorePackages.Packages.LuauPolyfill)
return function(arg1) -- Line 19, Named "Description"
	--[[ Upvalues[6]:
		[1]: useStyle_upvr (readonly)
		[2]: FTUXSlideshowData_upvr (readonly)
		[3]: withLocalization_upvr (readonly)
		[4]: React_upvr (readonly)
		[5]: LuauPolyfill_upvr (readonly)
		[6]: UIBlox_upvr (readonly)
	]]
	local useStyle_upvr_result1 = useStyle_upvr()
	local text_upvr = FTUXSlideshowData_upvr[arg1.platform][arg1.currentIndex].text
	local Font_upvr = useStyle_upvr_result1.Font
	local Theme_upvr = useStyle_upvr_result1.Theme
	return withLocalization_upvr(text_upvr)(function(arg1_2) -- Line 28
		--[[ Upvalues[6]:
			[1]: React_upvr (copied, readonly)
			[2]: LuauPolyfill_upvr (copied, readonly)
			[3]: text_upvr (readonly)
			[4]: UIBlox_upvr (copied, readonly)
			[5]: Font_upvr (readonly)
			[6]: Theme_upvr (readonly)
		]]
		return React_upvr.createElement("Frame", {
			Size = UDim2.new(1, 0, 0.4, 0);
			Position = UDim2.new(0, 0, 0, 0);
			LayoutOrder = 2;
			BackgroundTransparency = 1;
		}, React_upvr.createElement("UIListLayout", {
			Padding = UDim.new(0, 0);
			FillDirection = Enum.FillDirection.Vertical;
			HorizontalAlignment = Enum.HorizontalAlignment.Center;
			SortOrder = Enum.SortOrder.LayoutOrder;
		}), LuauPolyfill_upvr.Array.map(text_upvr, function(arg1_3, arg2) -- Line 43
			--[[ Upvalues[6]:
				[1]: React_upvr (copied, readonly)
				[2]: UIBlox_upvr (copied, readonly)
				[3]: arg1_2 (readonly)
				[4]: Font_upvr (copied, readonly)
				[5]: Theme_upvr (copied, readonly)
				[6]: text_upvr (copied, readonly)
			]]
			local module = {
				text = arg1_2[arg2];
				fontStyle = Font_upvr.CaptionBody;
				colorStyle = Theme_upvr.TextDefault;
				textXAlignment = Enum.TextXAlignment.Left;
				size = UDim2.new(1, 0, 1 / #text_upvr, 0);
			}
			module.layoutOrder = arg2
			return React_upvr.createElement(UIBlox_upvr.App.Text.StyledTextLabel, module)
		end))
	end)
end