-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:53:49
-- Luau version 6, Types version 3
-- Time taken: 0.009250 seconds

local CorePackages = game:GetService("CorePackages")
local InGameMenuDependencies = require(CorePackages.Packages.InGameMenuDependencies)
local Roact_upvr = InGameMenuDependencies.Roact
local UIBlox = InGameMenuDependencies.UIBlox
local t = InGameMenuDependencies.t
local Parent = script.Parent.Parent
local any_extend_result1 = Roact_upvr.PureComponent:extend("PlayerCell")
any_extend_result1.validateProps = t.strictInterface({
	userId = t.number;
	username = t.string;
	displayName = t.optional(t.string);
	hasVerifiedBadge = t.optional(t.boolean);
	isOnline = t.optional(t.boolean);
	isSelected = t.optional(t.boolean);
	LayoutOrder = t.union(t.integer, t.table);
	Visible = t.optional(t.boolean);
	loadingStrategy = t.optional(UIBlox.App.Loading.Enum.LoadingStrategy.isEnumValue);
	onActivated = t.optional(t.callback);
	memoKey = t.optional(t.number);
	[Roact_upvr.Children] = t.optional(t.table);
	[Roact_upvr.Change.AbsolutePosition] = t.optional(t.callback);
	forwardRef = t.optional(t.union(t.callback, t.table));
	UserInputService = t.optional(t.union(t.Instance, t.table));
})
any_extend_result1.defaultProps = {
	Visible = true;
	UserInputService = game:GetService("UserInputService");
}
function any_extend_result1.init(arg1) -- Line 64
	function arg1.onActivated() -- Line 65
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		if arg1.props.onActivated and arg1.props.userId then
			arg1.props.onActivated(arg1.props.userId)
		end
	end
end
local Cryo_upvr = InGameMenuDependencies.Cryo
function any_extend_result1.renderButtons(arg1) -- Line 72
	--[[ Upvalues[2]:
		[1]: Roact_upvr (readonly)
		[2]: Cryo_upvr (readonly)
	]]
	local var12 = arg1.props[Roact_upvr.Children]
	if not var12 then
		var12 = {}
	end
	return Cryo_upvr.Dictionary.join(var12, {
		List = Roact_upvr.createElement("UIListLayout", {
			FillDirection = Enum.FillDirection.Horizontal;
			HorizontalAlignment = Enum.HorizontalAlignment.Right;
			SortOrder = Enum.SortOrder.LayoutOrder;
			VerticalAlignment = Enum.VerticalAlignment.Center;
			Padding = UDim.new(0, 5);
		});
	})
end
local withStyle_upvr = UIBlox.Core.Style.withStyle
local Cell_upvr = UIBlox.App.Table.Cell
local CursorKind_upvr = UIBlox.App.SelectionImage.CursorKind
local ImageSetLabel_upvr = UIBlox.Core.ImageSet.ImageSetLabel
local Images_upvr = UIBlox.App.ImageSet.Images
local udim_upvr = UDim.new(0, 24)
local LoadableImage_upvr = UIBlox.App.Loading.LoadableImage
local Assets_upvr = require(Parent.Resources.Assets)
local VerifiedBadges_upvr = require(CorePackages.Workspace.Packages.VerifiedBadges)
local ThemedTextLabel_upvr = require(Parent.Components.ThemedTextLabel)
function any_extend_result1.renderWithSelectionCursor(arg1, arg2) -- Line 87
	--[[ Upvalues[11]:
		[1]: withStyle_upvr (readonly)
		[2]: Roact_upvr (readonly)
		[3]: Cell_upvr (readonly)
		[4]: CursorKind_upvr (readonly)
		[5]: ImageSetLabel_upvr (readonly)
		[6]: Images_upvr (readonly)
		[7]: udim_upvr (readonly)
		[8]: LoadableImage_upvr (readonly)
		[9]: Assets_upvr (readonly)
		[10]: VerifiedBadges_upvr (readonly)
		[11]: ThemedTextLabel_upvr (readonly)
	]]
	local props_upvr = arg1.props
	local var26_upvr
	local function INLINED() -- Internal function, doesn't exist in bytecode
		var26_upvr = props_upvr.displayName
		return var26_upvr
	end
	if props_upvr.displayName == "" or not INLINED() then
		var26_upvr = props_upvr.username
	end
	return withStyle_upvr(function(arg1_2) -- Line 97
		--[[ Upvalues[14]:
			[1]: arg1 (readonly)
			[2]: Roact_upvr (copied, readonly)
			[3]: Cell_upvr (copied, readonly)
			[4]: arg2 (readonly)
			[5]: CursorKind_upvr (copied, readonly)
			[6]: props_upvr (readonly)
			[7]: ImageSetLabel_upvr (copied, readonly)
			[8]: Images_upvr (copied, readonly)
			[9]: udim_upvr (copied, readonly)
			[10]: LoadableImage_upvr (copied, readonly)
			[11]: Assets_upvr (copied, readonly)
			[12]: VerifiedBadges_upvr (copied, readonly)
			[13]: ThemedTextLabel_upvr (copied, readonly)
			[14]: var26_upvr (readonly)
		]]
		-- KONSTANTERROR: [0] 1. Error Block 39 start (CF ANALYSIS FAILED)
		local BackgroundContrast = arg1_2.Theme.BackgroundContrast
		local var29
		if arg1.props.isSelected then
			BackgroundContrast = arg1_2.Theme.BackgroundOnHover
		end
		local tbl_2 = {}
		local function INLINED_2() -- Internal function, doesn't exist in bytecode
			var29 = var29("Frame", tbl)
			tbl.BackgroundTransparency = BackgroundContrast.Transparency
			tbl.BackgroundColor3 = BackgroundContrast.Color
			tbl.Size = UDim2.new(1, 0, 1, 0)
			local tbl = {}
			var29 = Roact_upvr.createElement
			return var29
		end
		if not arg1.props.isSelected or not INLINED_2() then
			var29 = nil
		end
		tbl_2.background = var29
		var29 = arg1.onActivated
		tbl_2.onActivated = var29
		var29 = Roact_upvr.Change.AbsolutePosition
		tbl_2[var29] = arg1.props[Roact_upvr.Change.AbsolutePosition]
		var29 = Roact_upvr.Ref
		tbl_2[var29] = arg1.props.forwardRef or nil
		var29 = arg2(CursorKind_upvr.Square)
		tbl_2.SelectionImageObject = var29
		var29 = props_upvr.LayoutOrder
		tbl_2.layoutOrder = var29
		var29 = UDim2.new(1, 0, 0, 72)
		tbl_2.size = var29
		var29 = Roact_upvr.createElement
		local tbl_3 = {
			BackgroundTransparency = 1;
			BorderSizePixel = 0;
			AnchorPoint = Vector2.new(0, 0);
			Size = UDim2.new(1, -20, 0, 72);
			AutomaticSize = Enum.AutomaticSize.XY;
		}
		;({}).HeadListLayout = Roact_upvr.createElement("UIListLayout", {
			FillDirection = Enum.FillDirection.Horizontal;
			SortOrder = Enum.SortOrder.LayoutOrder;
			VerticalAlignment = Enum.VerticalAlignment.Center;
		})
		local _ = {
			BackgroundTransparency = 1;
			Image = Images_upvr["component_assets/userBG_dark"];
			Size = UDim2.new(0, 48, 0, 48);
		}
		;({}).BorderRadius = Roact_upvr.createElement("UICorner", {
			CornerRadius = udim_upvr;
		})
		local _ = {
			loadingStrategy = arg1.props.loadingStrategy;
			Size = UDim2.fromScale(1, 1);
		}
		-- KONSTANTERROR: [0] 1. Error Block 39 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [215] 149. Error Block 8 start (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [215] 149. Error Block 8 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [222] 155. Error Block 45 start (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [222] 155. Error Block 45 end (CF ANALYSIS FAILED)
	end)
end
local withSelectionCursorProvider_upvr = UIBlox.App.SelectionImage.withSelectionCursorProvider
function any_extend_result1.render(arg1) -- Line 247
	--[[ Upvalues[1]:
		[1]: withSelectionCursorProvider_upvr (readonly)
	]]
	return withSelectionCursorProvider_upvr(function(arg1_3) -- Line 248
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		return arg1:renderWithSelectionCursor(arg1_3)
	end)
end
return require(CorePackages.Packages.React).memo(any_extend_result1, function(arg1, arg2) -- Line 253
	--[[ Upvalues[1]:
		[1]: Roact_upvr (readonly)
	]]
	local var44 = false
	if arg1.isSelected == arg2.isSelected then
		var44 = false
		if arg1.isOnline == arg2.isOnline then
			var44 = false
			if arg1[Roact_upvr.Change.AbsolutePosition] == arg2[Roact_upvr.Change.AbsolutePosition] then
				var44 = false
				if arg1.forwardRef == arg2.forwardRef then
					var44 = false
					if arg1.memoKey == arg2.memoKey then
						if arg1.loadingStrategy ~= arg2.loadingStrategy then
							var44 = false
						else
							var44 = true
						end
					end
				end
			end
		end
	end
	return var44
end)