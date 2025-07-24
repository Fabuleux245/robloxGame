-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:05:17
-- Luau version 6, Types version 3
-- Time taken: 0.001842 seconds

local CorePackages = game:GetService("CorePackages")
local UIBlox_upvr = require(CorePackages.Packages.UIBlox)
local Parent = script.Parent.Parent.Parent
local useStyle_upvr = UIBlox_upvr.Core.Style.useStyle
local FTUXSlideshowData_upvr = require(Parent.Resources.FTUXSlideshowData)
local withLocalization_upvr = require(CorePackages.Workspace.Packages.Localization).withLocalization
local React_upvr = require(CorePackages.Packages.React)
local Button_upvr = require(Parent.Components.Slideshow.Button)
return function(arg1) -- Line 21, Named "EndItem"
	--[[ Upvalues[6]:
		[1]: useStyle_upvr (readonly)
		[2]: FTUXSlideshowData_upvr (readonly)
		[3]: withLocalization_upvr (readonly)
		[4]: React_upvr (readonly)
		[5]: Button_upvr (readonly)
		[6]: UIBlox_upvr (readonly)
	]]
	local useStyle_upvr_result1 = useStyle_upvr()
	local var12_upvr = FTUXSlideshowData_upvr[arg1.platform]
	local Font_upvr = useStyle_upvr_result1.Font
	local Theme_upvr = useStyle_upvr_result1.Theme
	return withLocalization_upvr({
		footerText = "CoreScripts.VRFTUX.Label.Footer";
	})(function(arg1_2) -- Line 31
		--[[ Upvalues[7]:
			[1]: arg1 (readonly)
			[2]: var12_upvr (readonly)
			[3]: React_upvr (copied, readonly)
			[4]: Button_upvr (copied, readonly)
			[5]: UIBlox_upvr (copied, readonly)
			[6]: Font_upvr (readonly)
			[7]: Theme_upvr (readonly)
		]]
		local var15
		local function INLINED() -- Internal function, doesn't exist in bytecode
			var15 = var15(Button_upvr, tbl)
			tbl.increaseCurrentIndex = arg1.increaseCurrentIndex
			tbl.currentIndex = arg1.currentIndex
			tbl.platform = arg1.platform
			local tbl = {}
			var15 = React_upvr.createElement
			return var15
		end
		if arg1.currentIndex == #var12_upvr or not INLINED() then
			var15 = React_upvr.createElement
			var15 = var15(UIBlox_upvr.App.Text.StyledTextLabel, {
				text = arg1_2.footerText;
				fontStyle = Font_upvr.CaptionHeader;
				colorStyle = Theme_upvr.TextEmphasis;
				textXAlignment = Enum.TextXAlignment.Center;
				textYAlignment = Enum.TextYAlignment.Center;
				size = UDim2.new(1, 0, 1, 0);
				layoutOrder = 2;
			})
		end
		return var15
	end)
end