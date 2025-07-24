-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:05:16
-- Luau version 6, Types version 3
-- Time taken: 0.001761 seconds

local CorePackages = game:GetService("CorePackages")
local UIBlox = require(CorePackages.Packages.UIBlox)
local Parent = script.Parent.Parent.Parent
local useStyle_upvr = UIBlox.Core.Style.useStyle
local FTUXSlideshowData_upvr = require(Parent.Resources.FTUXSlideshowData)
local withLocalization_upvr = require(CorePackages.Workspace.Packages.Localization).withLocalization
local ButtonType_upvr = UIBlox.App.Button.Enum.ButtonType
local ButtonEnum_upvr = require(Parent.Enums.ButtonEnum)
local React_upvr = require(CorePackages.Packages.React)
local Button_upvr = UIBlox.App.Button.Button
return function(arg1) -- Line 23, Named "SlideshowButton"
	--[[ Upvalues[7]:
		[1]: useStyle_upvr (readonly)
		[2]: FTUXSlideshowData_upvr (readonly)
		[3]: withLocalization_upvr (readonly)
		[4]: ButtonType_upvr (readonly)
		[5]: ButtonEnum_upvr (readonly)
		[6]: React_upvr (readonly)
		[7]: Button_upvr (readonly)
	]]
	local button_upvr = FTUXSlideshowData_upvr[arg1.platform][arg1.currentIndex].button
	local Font_upvr = useStyle_upvr().Font
	local increaseCurrentIndex_upvr = arg1.increaseCurrentIndex
	return withLocalization_upvr({
		skip = "CoreScripts.VRFTUX.Action.Skip";
		next = "CoreScripts.VRFTUX.Action.Next";
	})(function(arg1_2) -- Line 36
		--[[ Upvalues[7]:
			[1]: ButtonType_upvr (copied, readonly)
			[2]: button_upvr (readonly)
			[3]: ButtonEnum_upvr (copied, readonly)
			[4]: React_upvr (copied, readonly)
			[5]: Button_upvr (copied, readonly)
			[6]: Font_upvr (readonly)
			[7]: increaseCurrentIndex_upvr (readonly)
		]]
		local Secondary = ButtonType_upvr.Secondary
		local skip = arg1_2.skip
		if button_upvr == ButtonEnum_upvr.NextButton then
			Secondary = ButtonType_upvr.PrimaryContextual
			skip = arg1_2.next
		end
		return React_upvr.createElement(Button_upvr, {
			buttonType = Secondary;
			text = skip;
			fontStyle = Font_upvr.Body;
			layoutOrder = 4;
			size = UDim2.new(1, 0, 0.6, 0);
			onActivated = increaseCurrentIndex_upvr;
		})
	end)
end