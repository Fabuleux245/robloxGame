-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:47:04
-- Luau version 6, Types version 3
-- Time taken: 0.002299 seconds

local Parent = script:FindFirstAncestor("AppBlox").Parent
local UIBlox = require(Parent.UIBlox)
local GuiService_upvr = game:GetService("GuiService")
local function onSelectionGained_upvr(arg1) -- Line 21, Named "onSelectionGained"
	--[[ Upvalues[1]:
		[1]: GuiService_upvr (readonly)
	]]
	GuiService_upvr:Select(arg1)
end
local React_upvr = require(Parent.React)
local useSelectionCursor_upvr = UIBlox.App.SelectionImage.useSelectionCursor
local CursorKind_upvr = UIBlox.App.SelectionImage.CursorKind
return function(arg1) -- Line 25, Named "DetailsPageRenderItem"
	--[[ Upvalues[4]:
		[1]: React_upvr (readonly)
		[2]: useSelectionCursor_upvr (readonly)
		[3]: CursorKind_upvr (readonly)
		[4]: onSelectionGained_upvr (readonly)
	]]
	local item_upvr = arg1.item
	local safeArea_upvr = arg1.safeArea
	local itemPadding_upvr = arg1.itemPadding
	local any_useBinding_result1, any_useBinding_result2_upvr = React_upvr.useBinding(0)
	return React_upvr.createElement("CanvasGroup", {
		key = item_upvr.key;
		Size = UDim2.new(1, 0, 0, 0);
		AutomaticSize = Enum.AutomaticSize.Y;
		ref = React_upvr.useRef(nil);
		[React_upvr.Change.AbsolutePosition] = React_upvr.useCallback(function(arg1_2) -- Line 37
			--[[ Upvalues[3]:
				[1]: safeArea_upvr (readonly)
				[2]: itemPadding_upvr (readonly)
				[3]: any_useBinding_result2_upvr (readonly)
			]]
			local class_ScrollingFrame = arg1_2:FindFirstAncestorOfClass("ScrollingFrame")
			if class_ScrollingFrame == nil then
				return nil
			end
			local var16 = arg1_2.AbsolutePosition.Y - class_ScrollingFrame.AbsolutePosition.Y - safeArea_upvr.Y
			local var17 = -(arg1_2.AbsoluteSize.Y + itemPadding_upvr)
			if var16 < 1 and var17 < var16 + safeArea_upvr.Y + 1 then
				any_useBinding_result2_upvr(var16 / var17)
			else
				any_useBinding_result2_upvr(0)
			end
			return nil
		end, {safeArea_upvr, itemPadding_upvr});
		GroupTransparency = any_useBinding_result1;
		BackgroundTransparency = 1;
		Selectable = item_upvr.useSelectionBumper;
		SelectionImageObject = useSelectionCursor_upvr(CursorKind_upvr.Invisible);
		[React_upvr.Event.SelectionGained] = onSelectionGained_upvr;
	}, {
		Padding = React_upvr.createElement("UIPadding", {
			PaddingLeft = UDim.new(0, safeArea_upvr.X);
			PaddingRight = UDim.new(0, safeArea_upvr.X);
		});
		View = React_upvr.useMemo(function() -- Line 30
			--[[ Upvalues[1]:
				[1]: item_upvr (readonly)
			]]
			return item_upvr.renderComponent()
		end, {item_upvr.renderComponent});
	})
end