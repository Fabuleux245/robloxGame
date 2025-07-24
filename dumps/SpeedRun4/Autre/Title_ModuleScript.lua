-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:05:19
-- Luau version 6, Types version 3
-- Time taken: 0.000877 seconds

local CorePackages = game:GetService("CorePackages")
local UIBlox_upvr = require(CorePackages.Packages.UIBlox)
local useStyle_upvr = UIBlox_upvr.Core.Style.useStyle
local FTUXSlideshowData_upvr = require(script.Parent.Parent.Parent.Resources.FTUXSlideshowData)
local withLocalization_upvr = require(CorePackages.Workspace.Packages.Localization).withLocalization
local React_upvr = require(CorePackages.Packages.React)
return function(arg1) -- Line 19, Named "Title"
	--[[ Upvalues[5]:
		[1]: useStyle_upvr (readonly)
		[2]: FTUXSlideshowData_upvr (readonly)
		[3]: withLocalization_upvr (readonly)
		[4]: React_upvr (readonly)
		[5]: UIBlox_upvr (readonly)
	]]
	local var4_result1 = useStyle_upvr()
	local Font_upvr = var4_result1.Font
	local Theme_upvr = var4_result1.Theme
	return withLocalization_upvr({
		titleText = FTUXSlideshowData_upvr[arg1.platform][arg1.currentIndex].title;
	})(function(arg1_2) -- Line 30
		--[[ Upvalues[4]:
			[1]: React_upvr (copied, readonly)
			[2]: UIBlox_upvr (copied, readonly)
			[3]: Font_upvr (readonly)
			[4]: Theme_upvr (readonly)
		]]
		return React_upvr.createElement(UIBlox_upvr.App.Text.StyledTextLabel, {
			text = arg1_2.titleText;
			fontStyle = Font_upvr.SubHeader1;
			colorStyle = Theme_upvr.TextEmphasis;
			textXAlignment = Enum.TextXAlignment.Left;
			size = UDim2.new(1, 0, 0.031, 0);
			layoutOrder = 1;
		})
	end)
end