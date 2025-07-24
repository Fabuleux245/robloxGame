-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:41:11
-- Luau version 6, Types version 3
-- Time taken: 0.001940 seconds

local module = require(script.Parent.Parent.Parent:FindFirstChild("Utils"):WaitForChild("Fusion"))
local New_upvr = module.New
local Children_upvr = module.Children
local OnEvent_upvr = module.OnEvent
local function ScrollingFrame_upvr(arg1, arg2) -- Line 10, Named "ScrollingFrame"
	--[[ Upvalues[3]:
		[1]: New_upvr (readonly)
		[2]: Children_upvr (readonly)
		[3]: OnEvent_upvr (readonly)
	]]
	local var5_upvr
	if arg1 then
		var5_upvr = 0.3
	else
		var5_upvr = 0.3
	end
	local var6_upvr = arg2
	if not var6_upvr then
		var6_upvr = New_upvr
		var5_upvr = "UIGridLayout"
		var6_upvr = var6_upvr(var5_upvr)
		var5_upvr = {}
		var5_upvr.Name = "UIGridLayout"
		var5_upvr.CellPadding = UDim2.fromScale(0.009, 0.012)
		var5_upvr.CellSize = UDim2.fromScale(0.243, var5_upvr)
		var5_upvr.SortOrder = Enum.SortOrder.LayoutOrder
		var6_upvr = var6_upvr(var5_upvr)
	end
	var5_upvr = New_upvr("ScrollingFrame")
	var5_upvr = var5_upvr({
		Name = "ItemFrame";
		CanvasSize = UDim2.fromScale(0, 0);
		ScrollBarImageColor3 = Color3.fromRGB(0, 0, 0);
		ScrollBarThickness = 0;
		AutomaticCanvasSize = Enum.AutomaticSize.Y;
		ScrollingDirection = Enum.ScrollingDirection.Y;
		AnchorPoint = Vector2.new(0.5, 0);
		BackgroundColor3 = Color3.fromRGB(255, 255, 255);
		BackgroundTransparency = 1;
		Position = UDim2.fromScale(0.5, 0);
		Size = UDim2.fromScale(1, 1);
	})
	local var12 = New_upvr("Frame")({
		Name = "Frame";
		BackgroundTransparency = 1;
		Size = UDim2.fromScale(1, 1);
		SizeConstraint = Enum.SizeConstraint.RelativeXX;
		[Children_upvr] = {var6_upvr};
		[OnEvent_upvr("ChildAdded")] = function() -- Line 46
			--[[ Upvalues[2]:
				[1]: var5_upvr (readonly)
				[2]: var6_upvr (readonly)
			]]
			task.defer(function() -- Line 47
				--[[ Upvalues[2]:
					[1]: var5_upvr (copied, readonly)
					[2]: var6_upvr (copied, readonly)
				]]
				var5_upvr.CanvasSize = UDim2.new(0, 0, 0, var6_upvr.AbsoluteContentSize.Y)
			end)
		end;
	})
	var12.Parent = var5_upvr
	return var5_upvr, var12
end
return function(arg1, arg2, arg3, arg4) -- Line 57
	--[[ Upvalues[3]:
		[1]: ScrollingFrame_upvr (readonly)
		[2]: New_upvr (readonly)
		[3]: Children_upvr (readonly)
	]]
	local ScrollingFrame_result1, ScrollingFrame_result2 = ScrollingFrame_upvr(arg2, arg4)
	local var16 = not arg3
	if var16 then
		var16 = New_upvr("UIListLayout")
		var16 = var16({
			Name = "UIListLayout";
			SortOrder = Enum.SortOrder.LayoutOrder;
		})
	end
	return New_upvr("Frame")({
		Name = arg1 or "Frame";
		Active = true;
		AnchorPoint = Vector2.new(0.5, 0.5);
		BackgroundColor3 = Color3.fromRGB(255, 255, 255);
		BackgroundTransparency = 1;
		Position = UDim2.fromScale(0.5, 0.5);
		Selectable = false;
		Size = UDim2.fromScale(1, 1);
		[Children_upvr] = {var16, ScrollingFrame_result1};
	}), ScrollingFrame_result1, ScrollingFrame_result2
end