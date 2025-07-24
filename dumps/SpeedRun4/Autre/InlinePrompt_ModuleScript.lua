-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:47:14
-- Luau version 6, Types version 3
-- Time taken: 0.001456 seconds

local Parent = script:FindFirstAncestor("AppBlox").Parent
local UIBlox = require(Parent.UIBlox)
local Core = UIBlox.Core
local App = UIBlox.App
local useStyle_upvr = Core.Style.useStyle
local getIconSize_upvr = App.ImageSet.getIconSize
local IconSize_upvr = App.ImageSet.Enum.IconSize
local React_upvr = require(Parent.React)
local Responsive_upvr = require(Parent.Responsive)
local ImageSetLabel_upvr = Core.ImageSet.ImageSetLabel
local Button_upvr = UIBlox.App.Button.Button
local Cryo_upvr = require(Parent.Cryo)
local IconButton_upvr = App.Button.IconButton
local icons_navigation_close_upvr = App.ImageSet.Images["icons/navigation/close"]
return function(arg1) -- Line 54, Named "InlinePrompt"
	--[[ Upvalues[10]:
		[1]: useStyle_upvr (readonly)
		[2]: getIconSize_upvr (readonly)
		[3]: IconSize_upvr (readonly)
		[4]: React_upvr (readonly)
		[5]: Responsive_upvr (readonly)
		[6]: ImageSetLabel_upvr (readonly)
		[7]: Button_upvr (readonly)
		[8]: Cryo_upvr (readonly)
		[9]: IconButton_upvr (readonly)
		[10]: icons_navigation_close_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 57 start (CF ANALYSIS FAILED)
	local var15
	if arg1.onDismiss then
		var15 = getIconSize_upvr(IconSize_upvr.Small)
	else
		var15 = 0
	end
	if arg1.iconImage then
		-- KONSTANTWARNING: GOTO [20] #17
	end
	-- KONSTANTERROR: [0] 1. Error Block 57 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [19] 16. Error Block 63 start (CF ANALYSIS FAILED)
	local _ = {
		BackgroundTransparency = 1;
		Size = UDim2.new(1, 0, 0, 0);
		AutomaticSize = Enum.AutomaticSize.Y;
		LayoutOrder = 1;
	}
	local tbl = {
		SortOrder = Enum.SortOrder.LayoutOrder;
		FillDirection = Enum.FillDirection.Horizontal;
	}
	if Responsive_upvr.useBreakpointXOrSmaller(Responsive_upvr.Keys.Small) then
		-- KONSTANTWARNING: GOTO [79] #58
	end
	-- KONSTANTERROR: [19] 16. Error Block 63 end (CF ANALYSIS FAILED)
end