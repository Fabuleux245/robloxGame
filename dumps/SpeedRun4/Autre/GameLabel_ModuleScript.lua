-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:53:54
-- Luau version 6, Types version 3
-- Time taken: 0.004005 seconds

local CorePackages = game:GetService("CorePackages")
local InGameMenuDependencies = require(CorePackages.Packages.InGameMenuDependencies)
local Roact_upvr = InGameMenuDependencies.Roact
local UIBlox = InGameMenuDependencies.UIBlox
local t = InGameMenuDependencies.t
local Cryo_upvr = InGameMenuDependencies.Cryo
local Parent = script.Parent.Parent.Parent
local any_extend_result1_upvr = Roact_upvr.PureComponent:extend("GameLabel")
any_extend_result1_upvr.validateProps = t.strictInterface({
	gameId = t.number;
	gameName = t.string;
	LayoutOrder = t.integer;
	onActivated = t.optional(t.callback);
	[Roact_upvr.Children] = t.optional(t.table);
	buttonRef = t.optional(t.table);
})
function any_extend_result1_upvr.renderButtons(arg1) -- Line 42
	--[[ Upvalues[2]:
		[1]: Roact_upvr (readonly)
		[2]: Cryo_upvr (readonly)
	]]
	local var10 = arg1.props[Roact_upvr.Children]
	if not var10 then
		var10 = {}
	end
	return Cryo_upvr.Dictionary.join(var10, {
		List = Roact_upvr.createElement("UIListLayout", {
			FillDirection = Enum.FillDirection.Horizontal;
			HorizontalAlignment = Enum.HorizontalAlignment.Right;
			SortOrder = Enum.SortOrder.LayoutOrder;
			VerticalAlignment = Enum.VerticalAlignment.Center;
			Padding = UDim.new(0, 12);
		});
	})
end
local Assets_upvr = require(Parent.Resources.Assets)
local withStyle_upvr = UIBlox.Core.Style.withStyle
local React_upvr = require(CorePackages.Packages.React)
local CursorKind_upvr = UIBlox.App.SelectionImage.CursorKind
local ImageSetLabel_upvr = UIBlox.Core.ImageSet.ImageSetLabel
local ThemedTextLabel_upvr = require(Parent.Components.ThemedTextLabel)
function any_extend_result1_upvr.renderWithSelectionCursor(arg1, arg2) -- Line 57
	--[[ Upvalues[7]:
		[1]: Assets_upvr (readonly)
		[2]: withStyle_upvr (readonly)
		[3]: Roact_upvr (readonly)
		[4]: React_upvr (readonly)
		[5]: CursorKind_upvr (readonly)
		[6]: ImageSetLabel_upvr (readonly)
		[7]: ThemedTextLabel_upvr (readonly)
	]]
	local PlaceholderGameIcon_upvw = Assets_upvr.Images.PlaceholderGameIcon
	if 0 < arg1.props.gameId then
		PlaceholderGameIcon_upvw = "rbxthumb://type=GameIcon&id="..arg1.props.gameId.."&w=150&h=150"
	end
	return withStyle_upvr(function(arg1_2) -- Line 64
		--[[ Upvalues[8]:
			[1]: Roact_upvr (copied, readonly)
			[2]: React_upvr (copied, readonly)
			[3]: arg1 (readonly)
			[4]: arg2 (readonly)
			[5]: CursorKind_upvr (copied, readonly)
			[6]: ImageSetLabel_upvr (copied, readonly)
			[7]: PlaceholderGameIcon_upvw (read and write)
			[8]: ThemedTextLabel_upvr (copied, readonly)
		]]
		return Roact_upvr.createElement("TextButton", {
			[React_upvr.Tag] = "data-testid=experienceLabel";
			BackgroundTransparency = 1;
			LayoutOrder = arg1.props.LayoutOrder;
			Size = UDim2.new(1, 0, 0, 70);
			Text = "";
			AutoButtonColor = false;
			SelectionImageObject = arg2(CursorKind_upvr.Square);
			[Roact_upvr.Ref] = arg1.props.buttonRef;
			[Roact_upvr.Event.Activated] = arg1.props.onActivated;
		}, {
			GameIcon = Roact_upvr.createElement(ImageSetLabel_upvr, {
				AnchorPoint = Vector2.new(0, 0.5);
				Position = UDim2.new(0, 24, 0.5, 0);
				Size = UDim2.new(0, 44, 0, 44);
				BackgroundTransparency = 1;
				Image = PlaceholderGameIcon_upvw;
			});
			GameNameLabel = Roact_upvr.createElement(ThemedTextLabel_upvr, {
				fontKey = "Header2";
				themeKey = "TextEmphasis";
				AnchorPoint = Vector2.new(0, 0.5);
				Position = UDim2.new(0, 80, 0.5, 0);
				Size = UDim2.new(0, 219, 0, 22);
				Text = arg1.props.gameName;
				TextXAlignment = Enum.TextXAlignment.Left;
				TextTruncate = Enum.TextTruncate.AtEnd;
			});
			ButtonContainer = Roact_upvr.createElement("Frame", {
				AnchorPoint = Vector2.new(1, 0);
				BackgroundTransparency = 1;
				Position = UDim2.new(1, -24, 0, 0);
				Size = UDim2.new(0, 0, 1, 0);
			}, arg1:renderButtons());
		})
	end)
end
local withSelectionCursorProvider_upvr = UIBlox.App.SelectionImage.withSelectionCursorProvider
function any_extend_result1_upvr.render(arg1) -- Line 106
	--[[ Upvalues[1]:
		[1]: withSelectionCursorProvider_upvr (readonly)
	]]
	return withSelectionCursorProvider_upvr(function(arg1_3) -- Line 107
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		return arg1:renderWithSelectionCursor(arg1_3)
	end)
end
return Roact_upvr.forwardRef(function(arg1, arg2) -- Line 112
	--[[ Upvalues[3]:
		[1]: Roact_upvr (readonly)
		[2]: any_extend_result1_upvr (readonly)
		[3]: Cryo_upvr (readonly)
	]]
	local module = {}
	module.buttonRef = arg2
	return Roact_upvr.createElement(any_extend_result1_upvr, Cryo_upvr.Dictionary.join(arg1, module))
end)