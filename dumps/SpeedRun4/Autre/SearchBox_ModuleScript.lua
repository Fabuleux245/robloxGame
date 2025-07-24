-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:53:38
-- Luau version 6, Types version 3
-- Time taken: 0.004092 seconds

local InGameMenuDependencies = require(game:GetService("CorePackages").Packages.InGameMenuDependencies)
local Roact_upvr = InGameMenuDependencies.Roact
local t = InGameMenuDependencies.t
local UIBlox = InGameMenuDependencies.UIBlox
local Parent = script.Parent.Parent.Parent
local any_extend_result1 = Roact_upvr.PureComponent:extend("SearchBox")
any_extend_result1.validateProps = t.strictInterface({
	Size = t.UDim2;
	Position = t.UDim2;
	AnchorPoint = t.Vector2;
	searchUpdated = t.callback;
	searchCleared = t.callback;
	itemRef = t.optional(t.table);
})
function any_extend_result1.init(arg1) -- Line 41
	arg1.state = {
		searchText = "";
	}
end
local withLocalization_upvr = require(Parent.Localization.withLocalization)
local withStyle_upvr = UIBlox.Core.Style.withStyle
local CursorKind_upvr = UIBlox.App.SelectionImage.CursorKind
local ImageSetLabel_upvr = UIBlox.Core.ImageSet.ImageSetLabel
local Assets_upvr = require(Parent.Resources.Assets)
local ThemedTextLabel_upvr = require(Parent.Components.ThemedTextLabel)
function any_extend_result1.renderWithSelectionCursor(arg1, arg2) -- Line 47
	--[[ Upvalues[7]:
		[1]: withLocalization_upvr (readonly)
		[2]: withStyle_upvr (readonly)
		[3]: Roact_upvr (readonly)
		[4]: CursorKind_upvr (readonly)
		[5]: ImageSetLabel_upvr (readonly)
		[6]: Assets_upvr (readonly)
		[7]: ThemedTextLabel_upvr (readonly)
	]]
	return withLocalization_upvr({
		searchPlaceholder = "CoreScripts.InGameMenu.InviteFriends.Search";
	})(function(arg1_2) -- Line 50
		--[[ Upvalues[8]:
			[1]: withStyle_upvr (copied, readonly)
			[2]: arg1 (readonly)
			[3]: Roact_upvr (copied, readonly)
			[4]: arg2 (readonly)
			[5]: CursorKind_upvr (copied, readonly)
			[6]: ImageSetLabel_upvr (copied, readonly)
			[7]: Assets_upvr (copied, readonly)
			[8]: ThemedTextLabel_upvr (copied, readonly)
		]]
		return withStyle_upvr(function(arg1_3) -- Line 51
			--[[ Upvalues[8]:
				[1]: arg1 (copied, readonly)
				[2]: Roact_upvr (copied, readonly)
				[3]: arg2 (copied, readonly)
				[4]: CursorKind_upvr (copied, readonly)
				[5]: ImageSetLabel_upvr (copied, readonly)
				[6]: Assets_upvr (copied, readonly)
				[7]: ThemedTextLabel_upvr (copied, readonly)
				[8]: arg1_2 (readonly)
			]]
			local TextEmphasis = arg1_3.Theme.TextEmphasis
			local Body = arg1_3.Font.Body
			local var20
			local var21
			if arg1.state.searchText == "" then
				var20 = false
			else
				var20 = true
			end
			var21 = 49
			if var20 then
				var21 += 46
			end
			local module = {
				Border = Roact_upvr.createElement(ImageSetLabel_upvr, {
					Size = UDim2.new(1, 0, 1, 0);
					BackgroundTransparency = 1;
					Image = Assets_upvr.Images.RoundedRectBorder.Image;
					SliceCenter = Assets_upvr.Images.RoundedRectBorder.SliceCenter;
					ScaleType = Assets_upvr.Images.RoundedRectBorder.ScaleType;
					ImageColor3 = arg1_3.Theme.Divider.Color;
					ImageTransparency = arg1_3.Theme.Divider.Transparency;
				});
				SearchIcon = Roact_upvr.createElement(ImageSetLabel_upvr, {
					BackgroundTransparency = 1;
					Size = UDim2.new(0, 16, 0, 16);
					Position = UDim2.new(0, 22, 0.5, 0);
					AnchorPoint = Vector2.new(0.5, 0.5);
					Image = Assets_upvr.Images.SearchIcon;
					ImageColor3 = arg1_3.Theme.IconEmphasis.Color;
				});
				TextBox = Roact_upvr.createElement("TextBox", {
					Size = UDim2.new(1, -var21, 1, 0);
					Position = UDim2.new(0, 44, 0, 0);
					PlaceholderText = "";
					Text = arg1.state.searchText;
					ClearTextOnFocus = false;
					BackgroundTransparency = 1;
					TextXAlignment = Enum.TextXAlignment.Left;
					TextYAlignment = Enum.TextYAlignment.Center;
					TextColor3 = TextEmphasis.Color;
					TextTransparency = TextEmphasis.Transparency;
					Font = Body.Font;
					TextSize = Body.RelativeSize * arg1_3.Font.BaseSize;
					TextWrapped = false;
					SelectionImageObject = arg2(CursorKind_upvr.InputFields);
					[Roact_upvr.Change.Text] = function(arg1_4) -- Line 143
						--[[ Upvalues[1]:
							[1]: arg1 (copied, readonly)
						]]
						if arg1.state.searchText ~= arg1_4.Text then
							arg1:setState({
								searchText = arg1_4.Text;
							})
							arg1.props.searchUpdated(arg1_4.Text)
						end
					end;
					[Roact_upvr.Ref] = arg1.props.itemRef;
				});
			}
			local tbl = {
				themeKey = "TextEmphasis";
				fontKey = "Body";
				Text = arg1_2.searchPlaceholder;
				Size = UDim2.new(1, -44, 1, 0);
				Position = UDim2.new(0, 44, 0, 0);
				TextTransparency = 0.5;
				TextXAlignment = Enum.TextXAlignment.Left;
			}
			local var36 = 2
			tbl.ZIndex = var36
			if arg1.state.searchText ~= "" then
				var36 = false
			else
				var36 = true
			end
			tbl.Visible = var36
			module.PlaceholderText = Roact_upvr.createElement(ThemedTextLabel_upvr, tbl)
			module.ClearButton = Roact_upvr.createElement("TextButton", {
				Size = UDim2.fromOffset(32, 32);
				Position = UDim2.new(1, -7, 0.5, 0);
				AnchorPoint = Vector2.new(1, 0.5);
				BackgroundTransparency = 1;
				Visible = var20;
				SelectionImageObject = arg2(CursorKind_upvr.SmallPill);
				Selectable = true;
				[Roact_upvr.Event.Activated] = function() -- Line 72
					--[[ Upvalues[1]:
						[1]: arg1 (copied, readonly)
					]]
					arg1:setState({
						searchText = "";
					})
					arg1.props.searchCleared()
				end;
			}, {
				UIPadding = Roact_upvr.createElement("UIPadding", {
					PaddingLeft = UDim.new(0, 7);
					PaddingRight = UDim.new(0, 7);
					PaddingTop = UDim.new(0, 7);
					PaddingBottom = UDim.new(0, 7);
				});
				ClearImage = Roact_upvr.createElement(ImageSetLabel_upvr, {
					Size = UDim2.fromScale(1, 1);
					BackgroundTransparency = 1;
					Image = Assets_upvr.Images.ClearIcon;
					ImageColor3 = arg1_3.Theme.IconEmphasis.Color;
					Selectable = false;
				});
			})
			return Roact_upvr.createElement(ImageSetLabel_upvr, {
				BackgroundTransparency = 1;
				Size = arg1.props.Size;
				Position = arg1.props.Position;
				AnchorPoint = arg1.props.AnchorPoint;
				Image = Assets_upvr.Images.RoundedRect.Image;
				ImageColor3 = arg1_3.Theme.BackgroundUIContrast.Color;
				ImageTransparency = arg1_3.Theme.BackgroundUIContrast.Transparency;
				ScaleType = Assets_upvr.Images.RoundedRect.ScaleType;
				SliceCenter = Assets_upvr.Images.RoundedRect.SliceCenter;
			}, module)
		end)
	end)
end
local withSelectionCursorProvider_upvr = UIBlox.App.SelectionImage.withSelectionCursorProvider
function any_extend_result1.render(arg1) -- Line 173
	--[[ Upvalues[1]:
		[1]: withSelectionCursorProvider_upvr (readonly)
	]]
	return withSelectionCursorProvider_upvr(function(arg1_5) -- Line 174
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		return arg1:renderWithSelectionCursor(arg1_5)
	end)
end
return any_extend_result1