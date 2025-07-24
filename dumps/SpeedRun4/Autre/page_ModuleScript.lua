-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:53:43
-- Luau version 6, Types version 3
-- Time taken: 0.002355 seconds

local InGameMenuDependencies = require(game:GetService("CorePackages").Packages.InGameMenuDependencies)
local UIBlox = InGameMenuDependencies.UIBlox
local Parent = script.Parent.Parent
local withStyle_upvr = UIBlox.Core.Style.withStyle
local Roact_upvr = InGameMenuDependencies.Roact
local ImageSetButton_upvr = UIBlox.Core.ImageSet.ImageSetButton
local Assets_upvr = require(Parent.Resources.Assets)
local CursorKind_upvr = UIBlox.App.SelectionImage.CursorKind
local ThemedTextLabel_upvr = require(script.Parent.ThemedTextLabel)
local Constants_upvr = require(Parent.Resources.Constants)
local ZonePortal_upvr = require(Parent.Components.ZonePortal)
local Direction_upvr = require(Parent.Enums.Direction)
local function renderWithSelectionCursor_upvr(arg1, arg2) -- Line 28, Named "renderWithSelectionCursor"
	--[[ Upvalues[9]:
		[1]: withStyle_upvr (readonly)
		[2]: Roact_upvr (readonly)
		[3]: ImageSetButton_upvr (readonly)
		[4]: Assets_upvr (readonly)
		[5]: CursorKind_upvr (readonly)
		[6]: ThemedTextLabel_upvr (readonly)
		[7]: Constants_upvr (readonly)
		[8]: ZonePortal_upvr (readonly)
		[9]: Direction_upvr (readonly)
	]]
	return withStyle_upvr(function(arg1_2) -- Line 29
		--[[ Upvalues[10]:
			[1]: arg1 (readonly)
			[2]: Roact_upvr (copied, readonly)
			[3]: ImageSetButton_upvr (copied, readonly)
			[4]: Assets_upvr (copied, readonly)
			[5]: arg2 (readonly)
			[6]: CursorKind_upvr (copied, readonly)
			[7]: ThemedTextLabel_upvr (copied, readonly)
			[8]: Constants_upvr (copied, readonly)
			[9]: ZonePortal_upvr (copied, readonly)
			[10]: Direction_upvr (copied, readonly)
		]]
		local module = {
			AutoButtonColor = false;
			Text = "";
			BackgroundColor3 = arg1_2.Theme.BackgroundContrast.Color;
			BackgroundTransparency = arg1_2.Theme.BackgroundContrast.Transparency;
			BorderSizePixel = 0;
			Position = arg1.position;
			Size = UDim2.new(1, 0, 1, 0);
		}
		local visible = arg1.visible
		if visible then
			visible = not arg1.pageIsModal
		end
		module.Visible = visible
		module.ZIndex = arg1.zIndex
		module.Selectable = false
		return Roact_upvr.createElement("TextButton", module, {
			PageTitle = Roact_upvr.createElement(ThemedTextLabel_upvr, {
				fontKey = "Header1";
				themeKey = "TextEmphasis";
				AnchorPoint = Vector2.new(0.5, 0);
				Position = UDim2.new(0.5, 0, 0, 28);
				Size = UDim2.new(1, -48, 0, 28);
				Text = arg1.pageTitle;
			}, {
				ExtraChildren = arg1.titleChildren;
				BackButton = Roact_upvr.createElement(ImageSetButton_upvr, {
					BackgroundTransparency = 1;
					Image = Assets_upvr.Images.NavigateBack;
					AnchorPoint = Vector2.new(0, 0.5);
					ImageColor3 = arg1_2.Theme.IconEmphasis.Color;
					ImageTransparency = arg1_2.Theme.IconEmphasis.Transparency;
					Position = UDim2.new(0, 4, 0.5, 0);
					Size = UDim2.new(0, 36, 0, 36);
					NextSelectionDown = arg1.NextSelectionDown;
					[Roact_upvr.Event.Activated] = arg1.navigateUp;
					[Roact_upvr.Ref] = arg1.buttonRef;
					SelectionImageObject = arg2(CursorKind_upvr.RoundedRect);
				});
			});
			PageContainer = Roact_upvr.createElement("Frame", {
				AnchorPoint = Vector2.new(0, 1);
				BackgroundTransparency = 1;
				Position = UDim2.new(0, Constants_upvr.Zone.ContentOffset, 1, 0);
				Size = UDim2.new(1, -Constants_upvr.Zone.ContentOffset, 1, -68);
			}, arg1[Roact_upvr.Children]);
			ZonePortal = Roact_upvr.createElement(ZonePortal_upvr, {
				targetZone = 0;
				direction = Direction_upvr.Left;
			});
		})
	end)
end
local withSelectionCursorProvider_upvr = UIBlox.App.SelectionImage.withSelectionCursorProvider
local NavigateUp_upvr = require(Parent.Thunks.NavigateUp)
return InGameMenuDependencies.RoactRodux.UNSTABLE_connect2(nil, function(arg1) -- Line 88
	--[[ Upvalues[1]:
		[1]: NavigateUp_upvr (readonly)
	]]
	return {
		navigateUp = function() -- Line 90, Named "navigateUp"
			--[[ Upvalues[2]:
				[1]: arg1 (readonly)
				[2]: NavigateUp_upvr (copied, readonly)
			]]
			arg1(NavigateUp_upvr)
		end;
	}
end)(function(arg1) -- Line 82, Named "Page"
	--[[ Upvalues[2]:
		[1]: withSelectionCursorProvider_upvr (readonly)
		[2]: renderWithSelectionCursor_upvr (readonly)
	]]
	return withSelectionCursorProvider_upvr(function(arg1_3) -- Line 83
		--[[ Upvalues[2]:
			[1]: renderWithSelectionCursor_upvr (copied, readonly)
			[2]: arg1 (readonly)
		]]
		return renderWithSelectionCursor_upvr(arg1, arg1_3)
	end)
end)