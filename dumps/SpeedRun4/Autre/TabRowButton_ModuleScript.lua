-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:01:52
-- Luau version 6, Types version 3
-- Time taken: 0.001216 seconds

local Constants_upvr = require(script.Parent.Parent.Constants)
local Roact_upvr = require(game:GetService("CorePackages").Packages.Roact)
local FrameHeight_upvr = Constants_upvr.TabRowFormatting.FrameHeight
local HighlightHeight_upvr = Constants_upvr.TabRowFormatting.HighlightHeight
return function(arg1) -- Line 10, Named "TabRowButton"
	--[[ Upvalues[4]:
		[1]: Constants_upvr (readonly)
		[2]: Roact_upvr (readonly)
		[3]: FrameHeight_upvr (readonly)
		[4]: HighlightHeight_upvr (readonly)
	]]
	local isSelected = arg1.isSelected
	local UnselectedTextTransparency = Constants_upvr.TabRowFormatting.UnselectedTextTransparency
	if isSelected then
		UnselectedTextTransparency = Constants_upvr.TabRowFormatting.SelectedTextTransparency
	end
	local module_2 = {
		Text = arg1.name;
		TextSize = Constants_upvr.DefaultFontSize.TabBar;
		Font = Constants_upvr.Font.TabBar;
		TextScaled = false;
		TextTransparency = UnselectedTextTransparency;
		Size = UDim2.new(0, arg1.textWidth + arg1.padding, 0, FrameHeight_upvr);
		AutoButtonColor = false;
		TextColor3 = Constants_upvr.Color.Text;
		BackgroundColor3 = Constants_upvr.Color.UnselectedGray;
		BorderSizePixel = 0;
		LayoutOrder = arg1.layoutOrder;
	}
	local onTabButtonClicked_upvr = arg1.onTabButtonClicked
	local index_upvr = arg1.index
	local function var8(arg1_2) -- Line 38
		--[[ Upvalues[2]:
			[1]: onTabButtonClicked_upvr (readonly)
			[2]: index_upvr (readonly)
		]]
		onTabButtonClicked_upvr(index_upvr)
	end
	module_2[Roact_upvr.Event.Activated] = var8
	local module = {}
	var8 = isSelected
	local var12 = var8
	if var12 then
		var12 = Roact_upvr.createElement
		var12 = var12("Frame", {
			Size = UDim2.new(1, 0, 0, -HighlightHeight_upvr);
			Position = UDim2.new(0, 0, 1, 0);
			BorderSizePixel = 0;
			BackgroundColor3 = Constants_upvr.Color.HighlightBlue;
		})
	end
	module.BlueHighlight = var12
	return Roact_upvr.createElement("TextButton", module_2, module)
end