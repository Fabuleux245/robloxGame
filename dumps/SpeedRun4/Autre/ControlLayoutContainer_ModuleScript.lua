-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:53:13
-- Luau version 6, Types version 3
-- Time taken: 0.004846 seconds

local InGameMenuDependencies = require(game:GetService("CorePackages").Packages.InGameMenuDependencies)
local Roact_upvr = InGameMenuDependencies.Roact
local UIBlox = InGameMenuDependencies.UIBlox
local t = InGameMenuDependencies.t
local Parent = script.Parent.Parent.Parent
local GlobalConfig_upvr = require(Parent.GlobalConfig)
local any_strictInterface_result1_upvr = t.strictInterface({
	titleText = t.string;
	[Roact_upvr.Children] = t.optional(t.table);
	onClosed = t.callback;
	closeButtonRef = t.optional(t.table);
})
local withLocalization_upvr = require(Parent.Localization.withLocalization)
local withStyle_upvr = UIBlox.Core.Style.withStyle
local ImageSetButton_upvr = UIBlox.Core.ImageSet.ImageSetButton
local Assets_upvr = require(Parent.Resources.Assets)
local CursorKind_upvr = UIBlox.App.SelectionImage.CursorKind
local ThemedTextLabel_upvr = require(script.Parent.Parent.ThemedTextLabel)
local Divider_upvr = require(script.Parent.Parent.Divider)
local ImageSetLabel_upvr = UIBlox.Core.ImageSet.ImageSetLabel
local function ControlLayoutContainerWithSelectionCursor_upvr(arg1, arg2) -- Line 43, Named "ControlLayoutContainerWithSelectionCursor"
	--[[ Upvalues[11]:
		[1]: GlobalConfig_upvr (readonly)
		[2]: any_strictInterface_result1_upvr (readonly)
		[3]: withLocalization_upvr (readonly)
		[4]: withStyle_upvr (readonly)
		[5]: Roact_upvr (readonly)
		[6]: ImageSetButton_upvr (readonly)
		[7]: Assets_upvr (readonly)
		[8]: CursorKind_upvr (readonly)
		[9]: ThemedTextLabel_upvr (readonly)
		[10]: Divider_upvr (readonly)
		[11]: ImageSetLabel_upvr (readonly)
	]]
	if GlobalConfig_upvr.propValidation then
		assert(any_strictInterface_result1_upvr(arg1))
	end
	return withLocalization_upvr({
		titleText = arg1.titleText;
	})(function(arg1_2) -- Line 50
		--[[ Upvalues[10]:
			[1]: withStyle_upvr (copied, readonly)
			[2]: Roact_upvr (copied, readonly)
			[3]: arg1 (readonly)
			[4]: ImageSetButton_upvr (copied, readonly)
			[5]: Assets_upvr (copied, readonly)
			[6]: arg2 (readonly)
			[7]: CursorKind_upvr (copied, readonly)
			[8]: ThemedTextLabel_upvr (copied, readonly)
			[9]: Divider_upvr (copied, readonly)
			[10]: ImageSetLabel_upvr (copied, readonly)
		]]
		return withStyle_upvr(function(arg1_3) -- Line 51
			--[[ Upvalues[10]:
				[1]: Roact_upvr (copied, readonly)
				[2]: arg1 (copied, readonly)
				[3]: ImageSetButton_upvr (copied, readonly)
				[4]: Assets_upvr (copied, readonly)
				[5]: arg2 (copied, readonly)
				[6]: CursorKind_upvr (copied, readonly)
				[7]: ThemedTextLabel_upvr (copied, readonly)
				[8]: arg1_2 (readonly)
				[9]: Divider_upvr (copied, readonly)
				[10]: ImageSetLabel_upvr (copied, readonly)
			]]
			return Roact_upvr.createElement("Frame", {
				Size = UDim2.new(1, 0, 1, 0);
				BackgroundColor3 = arg1_3.Theme.Overlay.Color;
				BackgroundTransparency = 0;
				Active = true;
			}, {
				PageContent = Roact_upvr.createElement("Frame", {
					BackgroundTransparency = 1;
					Size = UDim2.new(1, 0, 1, -132);
					Position = UDim2.new(0, 0, 0, 132);
					ClipsDescendants = true;
				}, arg1[Roact_upvr.Children]);
				HeaderContainer = Roact_upvr.createElement("Frame", {
					Size = UDim2.new(1, 0, 0, 132);
					BackgroundTransparency = 1;
				}, {
					Padding = Roact_upvr.createElement("UIPadding", {
						PaddingLeft = UDim.new(0, 95);
						PaddingRight = UDim.new(0, 95);
					});
					CloseButton = Roact_upvr.createElement(ImageSetButton_upvr, {
						AnchorPoint = Vector2.new(0, 0.5);
						Position = UDim2.new(0, 0, 0, 100);
						Size = UDim2.new(0, 36, 0, 36);
						Image = Assets_upvr.Images.CloseModal;
						BackgroundTransparency = 1;
						SelectionImageObject = arg2(CursorKind_upvr.RoundedRect);
						[Roact_upvr.Event.Activated] = arg1.onClosed;
						[Roact_upvr.Ref] = arg1.closeButtonRef;
					});
					HeaderTextLabel = Roact_upvr.createElement(ThemedTextLabel_upvr, {
						fontKey = "Header1";
						themeKey = "TextEmphasis";
						Size = UDim2.new(0, 250, 0, 28);
						AnchorPoint = Vector2.new(0.5, 0.5);
						Position = UDim2.new(0.5, 0, 0, 100);
						Text = arg1_2.titleText;
					});
					HeaderDivider = Roact_upvr.createElement(Divider_upvr, {
						Size = UDim2.new(1, 0, 0, 2);
						AnchorPoint = Vector2.new(0.5, 1);
						Position = UDim2.new(0.5, 0, 1, 0);
					});
				});
				RadialGlowBig = Roact_upvr.createElement(ImageSetLabel_upvr, {
					BackgroundTransparency = 1;
					Image = Assets_upvr.Images.RadialGlow;
					AnchorPoint = Vector2.new(0.5, 0.5);
					Position = UDim2.new(0.5, 0, 0.5, 0);
					SizeConstraint = Enum.SizeConstraint.RelativeXX;
					Size = UDim2.new(1, 0, 1, 0);
				});
				RadialGlowSquashed = Roact_upvr.createElement(ImageSetLabel_upvr, {
					BackgroundTransparency = 1;
					Image = Assets_upvr.Images.RadialGlow;
					AnchorPoint = Vector2.new(0.5, 0.5);
					Position = UDim2.new(0.5, 0, 1, 0);
					SizeConstraint = Enum.SizeConstraint.RelativeXX;
					Size = UDim2.new(1, 0, 0.6, 0);
				});
			})
		end)
	end)
end
local withSelectionCursorProvider_upvr = UIBlox.App.SelectionImage.withSelectionCursorProvider
local NavigateBack_upvr = require(Parent.Actions.NavigateBack)
return InGameMenuDependencies.RoactRodux.UNSTABLE_connect2(nil, function(arg1) -- Line 139
	--[[ Upvalues[1]:
		[1]: NavigateBack_upvr (readonly)
	]]
	return {
		onClosed = function() -- Line 141, Named "onClosed"
			--[[ Upvalues[2]:
				[1]: arg1 (readonly)
				[2]: NavigateBack_upvr (copied, readonly)
			]]
			arg1(NavigateBack_upvr())
		end;
	}
end)(function(arg1) -- Line 133, Named "ControlLayoutContainer"
	--[[ Upvalues[2]:
		[1]: withSelectionCursorProvider_upvr (readonly)
		[2]: ControlLayoutContainerWithSelectionCursor_upvr (readonly)
	]]
	return withSelectionCursorProvider_upvr(function(arg1_4) -- Line 134
		--[[ Upvalues[2]:
			[1]: ControlLayoutContainerWithSelectionCursor_upvr (copied, readonly)
			[2]: arg1 (readonly)
		]]
		return ControlLayoutContainerWithSelectionCursor_upvr(arg1, arg1_4)
	end)
end)