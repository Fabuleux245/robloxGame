-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:56:24
-- Luau version 6, Types version 3
-- Time taken: 0.001346 seconds

local Parent = script:FindFirstAncestor("BulkPurchaseApp").Parent
local useDesignTokens_upvr = require(Parent.Style).useDesignTokens
local useCursor_upvr = require(Parent.UIBlox).App.SelectionCursor.useCursor
local React_upvr = require(Parent.React)
return function(arg1) -- Line 14, Named "FullPagePromptScrollList"
	--[[ Upvalues[3]:
		[1]: useDesignTokens_upvr (readonly)
		[2]: useCursor_upvr (readonly)
		[3]: React_upvr (readonly)
	]]
	local useDesignTokens_upvr_result1 = useDesignTokens_upvr()
	local Space_175 = useDesignTokens_upvr_result1.Global.Space_175
	local any_useBinding_result1, any_useBinding_result2_upvr = React_upvr.useBinding(false)
	return React_upvr.createElement("ScrollingFrame", {
		LayoutOrder = arg1.LayoutOrder;
		BorderSizePixel = 0;
		BackgroundTransparency = 1;
		Size = arg1.size;
		ScrollBarThickness = useDesignTokens_upvr_result1.Global.Size_50;
		ScrollBarImageColor3 = useDesignTokens_upvr_result1.Semantic.Color.Ui.Emphasis.Color3;
		ScrollBarImageTransparency = useDesignTokens_upvr_result1.Semantic.Color.Ui.Emphasis.Transparency;
		AutomaticCanvasSize = Enum.AutomaticSize.Y;
		CanvasSize = UDim2.new(1, -Space_175, 0, 0);
		SelectionImageObject = useCursor_upvr(UDim.new(0, useDesignTokens_upvr_result1.Semantic.Radius.Small), useDesignTokens_upvr_result1.Global.Space_100);
		Selectable = any_useBinding_result1;
		[React_upvr.Change.AbsoluteCanvasSize] = function(arg1_2) -- Line 35
			--[[ Upvalues[1]:
				[1]: any_useBinding_result2_upvr (readonly)
			]]
			local var11
			if arg1_2.AbsoluteWindowSize.Y >= arg1_2.AbsoluteCanvasSize.Y then
				var11 = false
			else
				var11 = true
			end
			any_useBinding_result2_upvr(var11)
		end;
	}, React_upvr.createElement("UIPadding", {
		PaddingRight = UDim.new(0, Space_175);
	}), React_upvr.createElement("UIListLayout", {
		SortOrder = Enum.SortOrder.LayoutOrder;
		HorizontalAlignment = Enum.HorizontalAlignment.Center;
		VerticalAlignment = Enum.VerticalAlignment.Top;
		Padding = UDim.new(0, useDesignTokens_upvr_result1.Global.Space_300);
	}), arg1.children)
end