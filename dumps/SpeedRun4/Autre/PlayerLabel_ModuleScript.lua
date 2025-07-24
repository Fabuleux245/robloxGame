-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:53:50
-- Luau version 6, Types version 3
-- Time taken: 0.007477 seconds

local CorePackages = game:GetService("CorePackages")
local InGameMenuDependencies = require(CorePackages.Packages.InGameMenuDependencies)
local Roact_upvr = InGameMenuDependencies.Roact
local UIBlox = InGameMenuDependencies.UIBlox
local Cryo_upvr = InGameMenuDependencies.Cryo
local t = InGameMenuDependencies.t
local Parent = script.Parent.Parent
local FFlagLuaMenuPerfImprovements_upvr = require(Parent.Flags.FFlagLuaMenuPerfImprovements)
local tbl_4_upvr = {
	AnchorPoint = Vector2.new(0, 0.5);
	Position = UDim2.new(0, 24, 0.5, 0);
	Size = UDim2.new(0, 44, 0, 44);
}
local any_extend_result1_upvr = Roact_upvr.PureComponent:extend("PlayerLabel")
any_extend_result1_upvr.validateProps = t.strictInterface(require(CorePackages.Workspace.Packages.RoactUtils).validatePropsWithForwardRef({
	userId = t.number;
	username = t.string;
	isOnline = t.boolean;
	isSelected = t.boolean;
	LayoutOrder = t.integer;
	Visible = t.optional(t.boolean);
	onActivated = t.optional(t.callback);
	[Roact_upvr.Children] = t.optional(t.table);
	[Roact_upvr.Change.AbsolutePosition] = t.optional(t.callback);
	[Roact_upvr.Ref] = t.optional(t.union(t.callback, t.table));
}))
any_extend_result1_upvr.defaultProps = {
	Visible = true;
}
if FFlagLuaMenuPerfImprovements_upvr then
	function any_extend_result1_upvr.init(arg1) -- Line 72
		function arg1.onActivated() -- Line 73
			--[[ Upvalues[1]:
				[1]: arg1 (readonly)
			]]
			arg1.props.onActivated(arg1.props.userId)
		end
	end
end
function any_extend_result1_upvr.renderButtons(arg1) -- Line 79
	--[[ Upvalues[2]:
		[1]: Roact_upvr (readonly)
		[2]: Cryo_upvr (readonly)
	]]
	local var14 = arg1.props[Roact_upvr.Children]
	if not var14 then
		var14 = {}
	end
	return Cryo_upvr.Dictionary.join(var14, {
		List = Roact_upvr.createElement("UIListLayout", {
			FillDirection = Enum.FillDirection.Horizontal;
			HorizontalAlignment = Enum.HorizontalAlignment.Right;
			SortOrder = Enum.SortOrder.LayoutOrder;
			VerticalAlignment = Enum.VerticalAlignment.Center;
			Padding = UDim.new(0, 12);
		});
	})
end
local withStyle_upvr = UIBlox.Core.Style.withStyle
local CursorKind_upvr = UIBlox.App.SelectionImage.CursorKind
local ImageSetLabel_upvr = UIBlox.Core.ImageSet.ImageSetLabel
local Assets_upvr = require(Parent.Resources.Assets)
local ThemedTextLabel_upvr = require(Parent.Components.ThemedTextLabel)
local GetFFlagLuaAppEnableOpenTypeSupport_upvr = require(CorePackages.Workspace.Packages.SharedFlags).GetFFlagLuaAppEnableOpenTypeSupport
local GetFFlagLuaAppEnableOpenTypeIGMFix_upvr = require(CorePackages.Workspace.Packages.SharedFlags).GetFFlagLuaAppEnableOpenTypeIGMFix
local OpenTypeSupport_upvr = UIBlox.Utility.OpenTypeSupport
function any_extend_result1_upvr.renderWithSelectionCursor(arg1, arg2) -- Line 94
	--[[ Upvalues[12]:
		[1]: withStyle_upvr (readonly)
		[2]: FFlagLuaMenuPerfImprovements_upvr (readonly)
		[3]: Roact_upvr (readonly)
		[4]: CursorKind_upvr (readonly)
		[5]: ImageSetLabel_upvr (readonly)
		[6]: Cryo_upvr (readonly)
		[7]: tbl_4_upvr (readonly)
		[8]: Assets_upvr (readonly)
		[9]: ThemedTextLabel_upvr (readonly)
		[10]: GetFFlagLuaAppEnableOpenTypeSupport_upvr (readonly)
		[11]: GetFFlagLuaAppEnableOpenTypeIGMFix_upvr (readonly)
		[12]: OpenTypeSupport_upvr (readonly)
	]]
	local props_upvr = arg1.props
	return withStyle_upvr(function(arg1_2) -- Line 97
		--[[ Upvalues[14]:
			[1]: arg1 (readonly)
			[2]: FFlagLuaMenuPerfImprovements_upvr (copied, readonly)
			[3]: Roact_upvr (copied, readonly)
			[4]: props_upvr (readonly)
			[5]: arg2 (readonly)
			[6]: CursorKind_upvr (copied, readonly)
			[7]: ImageSetLabel_upvr (copied, readonly)
			[8]: Cryo_upvr (copied, readonly)
			[9]: tbl_4_upvr (copied, readonly)
			[10]: Assets_upvr (copied, readonly)
			[11]: ThemedTextLabel_upvr (copied, readonly)
			[12]: GetFFlagLuaAppEnableOpenTypeSupport_upvr (copied, readonly)
			[13]: GetFFlagLuaAppEnableOpenTypeIGMFix_upvr (copied, readonly)
			[14]: OpenTypeSupport_upvr (copied, readonly)
		]]
		-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
		local BackgroundContrast = arg1_2.Theme.BackgroundContrast
		local var28
		if arg1.props.isSelected then
			local tbl = {
				Color = Color3.fromRGB(48, 50, 52);
				Transparency = 0;
			}
			BackgroundContrast = tbl
		end
		tbl = arg1.props.onActivated
		local var30 = tbl
		local var31
		if var31 then
			local function INLINED() -- Internal function, doesn't exist in bytecode
				var31 = arg1.onActivated
				return var31
			end
			if not arg1.props.onActivated or not INLINED() then
				var31 = nil
			end
			var30 = var31
		end
		local module = {}
		local tbl_3 = {}
		var28 = 1
		tbl_3.BackgroundTransparency = var28
		var28 = Assets_upvr.Images.CircleCutout
		tbl_3.Image = var28
		var28 = BackgroundContrast.Color
		tbl_3.ImageColor3 = var28
		var28 = 3
		tbl_3.ZIndex = var28
		module.PlayerCutout = Roact_upvr.createElement(ImageSetLabel_upvr, Cryo_upvr.Dictionary.join(tbl_4_upvr, tbl_3))
		local tbl_2 = {}
		var28 = 1
		tbl_2.BackgroundTransparency = var28
		local function INLINED_2() -- Internal function, doesn't exist in bytecode
			var28 = "rbxthumb://type=AvatarHeadShot&id="..props_upvr.userId.."&w=48&h=48"
			return var28
		end
		if 0 >= props_upvr.userId or not INLINED_2() then
			var28 = ""
		end
		tbl_2.Image = var28
		var28 = 2
		tbl_2.ZIndex = var28
		module.PlayerIcon = Roact_upvr.createElement(ImageSetLabel_upvr, Cryo_upvr.Dictionary.join(tbl_4_upvr, tbl_2))
		local tbl_6 = {}
		var28 = arg1_2.Theme.UIDefault.Color
		tbl_6.BackgroundColor3 = var28
		var28 = 0
		tbl_6.BackgroundTransparency = var28
		var28 = 0
		tbl_6.BorderSizePixel = var28
		module.PlayerBackground = Roact_upvr.createElement("Frame", Cryo_upvr.Dictionary.join(tbl_4_upvr, tbl_6))
		local tbl_5 = {}
		var28 = 0.5
		tbl_5.AnchorPoint = Vector2.new(0, var28)
		tbl_5.BackgroundTransparency = 1
		var28 = Assets_upvr
		tbl_5.Image = var28.Images.Circle
		var28 = props_upvr
		local function INLINED_3() -- Internal function, doesn't exist in bytecode
			var28 = arg1_2.Theme
			return var28.OnlineStatus.Color
		end
		if not var28.isOnline or not INLINED_3() then
			var28 = arg1_2.Theme
		end
		tbl_5.ImageColor3 = var28.UIDefault.Color
		var28 = 80
		tbl_5.Position = UDim2.new(0, var28, 0.5, 0)
		var28 = 16
		tbl_5.Size = UDim2.new(0, var28, 0, 16)
		module.OnlineIndicator = Roact_upvr.createElement(ImageSetLabel_upvr, tbl_5)
		local tbl_8 = {
			fontKey = "Header2";
			themeKey = "TextEmphasis";
		}
		var28 = 0.5
		tbl_8.AnchorPoint = Vector2.new(0, var28)
		var28 = 100
		tbl_8.Position = UDim2.new(0, var28, 0.5, 0)
		var28 = 219
		tbl_8.Size = UDim2.new(0, var28, 0, 22)
		tbl_8.Text = props_upvr.username
		tbl_8.TextXAlignment = Enum.TextXAlignment.Left
		tbl_8.TextTruncate = Enum.TextTruncate.AtEnd
		if GetFFlagLuaAppEnableOpenTypeSupport_upvr() and GetFFlagLuaAppEnableOpenTypeIGMFix_upvr() then
		else
		end
		tbl_8.OpenTypeFeatures = nil
		module.UsernameLabel = Roact_upvr.createElement(ThemedTextLabel_upvr, tbl_8)
		local tbl_7 = {}
		var28 = 0
		tbl_7.AnchorPoint = Vector2.new(1, var28)
		tbl_7.BackgroundTransparency = 1
		var28 = -24
		tbl_7.Position = UDim2.new(1, var28, 0, 0)
		var28 = 0
		tbl_7.Size = UDim2.new(0, var28, 1, 0)
		module.ButtonContainer = Roact_upvr.createElement("Frame", tbl_7, arg1:renderButtons())
		return Roact_upvr.createElement("TextButton", {
			BackgroundTransparency = BackgroundContrast.Transparency;
			BackgroundColor3 = BackgroundContrast.Color;
			BorderSizePixel = 0;
			LayoutOrder = props_upvr.LayoutOrder;
			Size = UDim2.new(1, 0, 0, 70);
			Visible = props_upvr.Visible;
			Text = "";
			AutoButtonColor = false;
			[Roact_upvr.Event.Activated] = var30;
			[Roact_upvr.Change.AbsolutePosition] = arg1.props[Roact_upvr.Change.AbsolutePosition];
			[Roact_upvr.Ref] = arg1.props.forwardRef;
			SelectionImageObject = arg2(CursorKind_upvr.Square);
		}, module)
	end)
end
local withSelectionCursorProvider_upvr = UIBlox.App.SelectionImage.withSelectionCursorProvider
function any_extend_result1_upvr.render(arg1) -- Line 190
	--[[ Upvalues[1]:
		[1]: withSelectionCursorProvider_upvr (readonly)
	]]
	return withSelectionCursorProvider_upvr(function(arg1_3) -- Line 191
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		return arg1:renderWithSelectionCursor(arg1_3)
	end)
end
return Roact_upvr.forwardRef(function(arg1, arg2) -- Line 196
	--[[ Upvalues[3]:
		[1]: Roact_upvr (readonly)
		[2]: any_extend_result1_upvr (readonly)
		[3]: Cryo_upvr (readonly)
	]]
	local module_2 = {}
	module_2.forwardRef = arg2
	return Roact_upvr.createElement(any_extend_result1_upvr, Cryo_upvr.Dictionary.join(arg1, module_2))
end)