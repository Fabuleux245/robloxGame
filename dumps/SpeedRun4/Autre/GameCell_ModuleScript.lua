-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:43:29
-- Luau version 6, Types version 3
-- Time taken: 0.001828 seconds

local CorePackages = game:GetService("CorePackages")
local Roact_upvr = require(CorePackages.Packages.Roact)
local UIBlox = require(CorePackages.Packages.UIBlox)
local t = require(CorePackages.Packages.t)
local Dependencies = require(script.Parent.Parent.Dependencies)
local any_extend_result1 = Roact_upvr.PureComponent:extend("GameCell")
any_extend_result1.validateProps = t.strictInterface({
	gameId = t.number;
	layoutOrder = t.optional(t.union(t.integer, t.table));
	onActivated = t.optional(t.callback);
})
local withLocalization_upvr = require(Dependencies.withLocalization)
local Cell_upvr = UIBlox.App.Table.Cell
local CursorKind_upvr = UIBlox.App.SelectionImage.CursorKind
local GameIcon_upvr = require(Dependencies.GameIcon)
local ThemedTextLabel_upvr = require(Dependencies.ThemedTextLabel)
function any_extend_result1.renderWithSelectionCursor(arg1, arg2) -- Line 28
	--[[ Upvalues[6]:
		[1]: withLocalization_upvr (readonly)
		[2]: Roact_upvr (readonly)
		[3]: Cell_upvr (readonly)
		[4]: CursorKind_upvr (readonly)
		[5]: GameIcon_upvr (readonly)
		[6]: ThemedTextLabel_upvr (readonly)
	]]
	local props_upvr = arg1.props
	return withLocalization_upvr({
		labelText = "CoreScripts.InGameMenu.Report.ReportExperience";
	})(function(arg1_2) -- Line 32
		--[[ Upvalues[7]:
			[1]: Roact_upvr (copied, readonly)
			[2]: Cell_upvr (copied, readonly)
			[3]: props_upvr (readonly)
			[4]: arg2 (readonly)
			[5]: CursorKind_upvr (copied, readonly)
			[6]: GameIcon_upvr (copied, readonly)
			[7]: ThemedTextLabel_upvr (copied, readonly)
		]]
		return Roact_upvr.createElement(Cell_upvr, {
			onActivated = props_upvr.onActivated;
			SelectionImageObject = arg2(CursorKind_upvr.Square);
			layoutOrder = props_upvr.layoutOrder;
			size = UDim2.new(1, 0, 0, 72);
			head = Roact_upvr.createElement("Frame", {
				BackgroundTransparency = 1;
				Size = UDim2.new(1, 0, 0, 72);
			}, {
				GameIcon = Roact_upvr.createElement(GameIcon_upvr, {
					gameId = props_upvr.gameId;
					iconSize = 48;
					cornerRadius = UDim.new(0, 8);
					Position = UDim2.new(0, 0, 0.5, 0);
					AnchorPoint = Vector2.new(0, 0.5);
				});
				Label = Roact_upvr.createElement(ThemedTextLabel_upvr, {
					fontKey = "Header2";
					themeKey = "TextEmphasis";
					BackgroundTransparency = 1;
					AnchorPoint = Vector2.new(0, 0.5);
					AutomaticSize = Enum.AutomaticSize.XY;
					Text = arg1_2.labelText;
					TextXAlignment = Enum.TextXAlignment.Left;
					Position = UDim2.new(0, 54, 0.5, 0);
				});
			});
			tail = Roact_upvr.createElement("Frame", {
				AnchorPoint = Vector2.new(1, 0);
				BackgroundTransparency = 1;
				Position = UDim2.new(1, 0, 0, 0);
				Size = UDim2.new(0, 0, 1, 0);
			});
		})
	end)
end
local withSelectionCursorProvider_upvr = UIBlox.App.SelectionImage.withSelectionCursorProvider
function any_extend_result1.render(arg1) -- Line 71
	--[[ Upvalues[1]:
		[1]: withSelectionCursorProvider_upvr (readonly)
	]]
	return withSelectionCursorProvider_upvr(function(arg1_3) -- Line 72
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		return arg1:renderWithSelectionCursor(arg1_3)
	end)
end
return any_extend_result1