-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:56:27
-- Luau version 6, Types version 3
-- Time taken: 0.001095 seconds

local Parent = script:FindFirstAncestor("BulkPurchaseApp").Parent
local useDesignTokens_upvr = require(Parent.Style).useDesignTokens
local React_upvr = require(Parent.React)
return function(arg1) -- Line 11, Named "LineItemLayout"
	--[[ Upvalues[2]:
		[1]: useDesignTokens_upvr (readonly)
		[2]: React_upvr (readonly)
	]]
	local any_useBinding_result1, any_useBinding_result2_upvr = React_upvr.useBinding(Vector2.new(0, 0))
	local module = {}
	local tbl = {
		AnchorPoint = Vector2.new(0, 0);
		BackgroundTransparency = 1;
		BorderSizePixel = 0;
	}
	local useDesignTokens_upvr_result1_upvr = useDesignTokens_upvr()
	tbl.Size = any_useBinding_result1:map(function(arg1_2) -- Line 26
		--[[ Upvalues[1]:
			[1]: useDesignTokens_upvr_result1_upvr (readonly)
		]]
		return UDim2.new(1, -(arg1_2.X + useDesignTokens_upvr_result1_upvr.Global.Space_200), 1, 0)
	end)
	module.Start = React_upvr.createElement("Frame", tbl, arg1.startSlot)
	module.End = React_upvr.createElement("Frame", {
		AnchorPoint = Vector2.new(1, 0);
		BackgroundTransparency = 1;
		BorderSizePixel = 0;
		Size = UDim2.new(0, 0, 1, 0);
		Position = UDim2.new(1, 0, 0, 0);
		AutomaticSize = Enum.AutomaticSize.X;
		[React_upvr.Change.AbsoluteSize] = function(arg1_3) -- Line 37
			--[[ Upvalues[1]:
				[1]: any_useBinding_result2_upvr (readonly)
			]]
			any_useBinding_result2_upvr(arg1_3.AbsoluteSize)
		end;
	}, arg1.endSlot)
	return React_upvr.createElement("Frame", {
		Size = UDim2.fromScale(1, 0);
		AutomaticSize = Enum.AutomaticSize.Y;
		BackgroundTransparency = 1;
		BorderSizePixel = 0;
		LayoutOrder = arg1.LayoutOrder;
	}, module)
end