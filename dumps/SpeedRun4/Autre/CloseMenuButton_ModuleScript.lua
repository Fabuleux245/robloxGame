-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:53:59
-- Luau version 6, Types version 3
-- Time taken: 0.001988 seconds

local InGameMenuDependencies = require(game:GetService("CorePackages").Packages.InGameMenuDependencies)
local t = InGameMenuDependencies.t
local Roact_upvr = InGameMenuDependencies.Roact
local UIBlox = InGameMenuDependencies.UIBlox
local Parent = script.Parent.Parent.Parent
local GlobalConfig_upvr = require(Parent.GlobalConfig)
local any_strictInterface_result1_upvr = t.strictInterface({
	AnchorPoint = t.optional(t.Vector2);
	Position = t.optional(t.UDim2);
	layoutOrder = t.optional(t.integer);
	onActivated = t.callback;
	onSelectionGained = t.optional(t.callback);
	onSelectionLost = t.optional(t.callback);
	forwardRef = t.optional(t.table);
})
local ImageSetButton_upvr = UIBlox.Core.ImageSet.ImageSetButton
local Assets_upvr = require(Parent.Resources.Assets)
local CursorKind_upvr = UIBlox.App.SelectionImage.CursorKind
local function renderWithSelectionCursor_upvr(arg1, arg2) -- Line 29, Named "renderWithSelectionCursor"
	--[[ Upvalues[6]:
		[1]: GlobalConfig_upvr (readonly)
		[2]: any_strictInterface_result1_upvr (readonly)
		[3]: Roact_upvr (readonly)
		[4]: ImageSetButton_upvr (readonly)
		[5]: Assets_upvr (readonly)
		[6]: CursorKind_upvr (readonly)
	]]
	if GlobalConfig_upvr.propValidation then
		assert(any_strictInterface_result1_upvr(arg1))
	end
	return Roact_upvr.createElement(ImageSetButton_upvr, {
		AnchorPoint = arg1.AnchorPoint;
		BackgroundTransparency = 1;
		Image = Assets_upvr.Images.CloseButton;
		Position = arg1.Position;
		Size = UDim2.new(0, 32, 0, 32);
		LayoutOrder = arg1.layoutOrder;
		SelectionImageObject = arg2(CursorKind_upvr.RoundedRect);
		[Roact_upvr.Event.Activated] = arg1.onActivated;
		[Roact_upvr.Event.SelectionGained] = arg1.onSelectionGained;
		[Roact_upvr.Event.SelectionLost] = arg1.onSelectionLost;
		[Roact_upvr.Ref] = arg1.forwardRef;
	})
end
local withSelectionCursorProvider_upvr = UIBlox.App.SelectionImage.withSelectionCursorProvider
local function CloseMenuButton_upvr(arg1) -- Line 50, Named "CloseMenuButton"
	--[[ Upvalues[2]:
		[1]: withSelectionCursorProvider_upvr (readonly)
		[2]: renderWithSelectionCursor_upvr (readonly)
	]]
	return withSelectionCursorProvider_upvr(function(arg1_2) -- Line 51
		--[[ Upvalues[2]:
			[1]: renderWithSelectionCursor_upvr (copied, readonly)
			[2]: arg1 (readonly)
		]]
		return renderWithSelectionCursor_upvr(arg1, arg1_2)
	end)
end
local Cryo_upvr = InGameMenuDependencies.Cryo
return Roact_upvr.forwardRef(function(arg1, arg2) -- Line 56
	--[[ Upvalues[3]:
		[1]: Roact_upvr (readonly)
		[2]: CloseMenuButton_upvr (readonly)
		[3]: Cryo_upvr (readonly)
	]]
	local module = {}
	module.forwardRef = arg2
	return Roact_upvr.createElement(CloseMenuButton_upvr, Cryo_upvr.Dictionary.join(arg1, module))
end)