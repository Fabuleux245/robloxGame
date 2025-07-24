-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:04:30
-- Luau version 6, Types version 3
-- Time taken: 0.002308 seconds

local InGameMenuDependencies = require(game:GetService("CorePackages").Packages.InGameMenuDependencies)
local t = InGameMenuDependencies.t
local Roact_upvr = InGameMenuDependencies.Roact
local UIBlox = InGameMenuDependencies.UIBlox
local tbl = {
	AnchorPoint = t.optional(t.Vector2);
	Position = t.optional(t.UDim2);
	layoutOrder = t.optional(t.integer);
	onActivated = t.callback;
	onSelectionGained = t.optional(t.callback);
	onSelectionLost = t.optional(t.callback);
	forwardRef = t.optional(t.table);
}
local ImageSetButton_upvr = UIBlox.Core.ImageSet.ImageSetButton
local CursorKind_upvr = UIBlox.App.SelectionImage.CursorKind
local function renderWithSelectionCursor_upvr(arg1, arg2) -- Line 44, Named "renderWithSelectionCursor"
	--[[ Upvalues[3]:
		[1]: Roact_upvr (readonly)
		[2]: ImageSetButton_upvr (readonly)
		[3]: CursorKind_upvr (readonly)
	]]
	return Roact_upvr.createElement(ImageSetButton_upvr, {
		Visible = true;
		AnchorPoint = arg1.AnchorPoint;
		BackgroundTransparency = 1;
		Image = "rbxasset://textures/ui/MenuBar/divider.png";
		Position = UDim2.new(0, 1, 0, 1);
		Size = UDim2.new(0, 28, 0, 36);
		LayoutOrder = arg1.layoutOrder;
		SelectionImageObject = arg2(CursorKind_upvr.RoundedRect);
		[Roact_upvr.Event.Activated] = function() -- Line 55
		end;
		[Roact_upvr.Event.SelectionGained] = arg1.onSelectionGained;
		[Roact_upvr.Event.SelectionLost] = arg1.onSelectionLost;
		[Roact_upvr.Ref] = arg1.forwardRef;
	})
end
local withSelectionCursorProvider_upvr = UIBlox.App.SelectionImage.withSelectionCursorProvider
local function VRBarSeparator_upvr(arg1) -- Line 64, Named "VRBarSeparator"
	--[[ Upvalues[2]:
		[1]: withSelectionCursorProvider_upvr (readonly)
		[2]: renderWithSelectionCursor_upvr (readonly)
	]]
	return withSelectionCursorProvider_upvr(function(arg1_2) -- Line 65
		--[[ Upvalues[2]:
			[1]: renderWithSelectionCursor_upvr (copied, readonly)
			[2]: arg1 (readonly)
		]]
		return renderWithSelectionCursor_upvr(arg1, arg1_2)
	end)
end
local Cryo_upvr = InGameMenuDependencies.Cryo
return Roact_upvr.forwardRef(function(arg1, arg2) -- Line 70
	--[[ Upvalues[3]:
		[1]: Roact_upvr (readonly)
		[2]: VRBarSeparator_upvr (readonly)
		[3]: Cryo_upvr (readonly)
	]]
	local module = {}
	module.forwardRef = arg2
	return Roact_upvr.createElement(VRBarSeparator_upvr, Cryo_upvr.Dictionary.join(arg1, module))
end)