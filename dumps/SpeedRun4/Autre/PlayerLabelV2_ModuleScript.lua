-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:53:51
-- Luau version 6, Types version 3
-- Time taken: 0.006292 seconds

local CorePackages = game:GetService("CorePackages")
local InGameMenuDependencies = require(CorePackages.Packages.InGameMenuDependencies)
local Roact_upvr = InGameMenuDependencies.Roact
local UIBlox = InGameMenuDependencies.UIBlox
local Cryo_upvr = InGameMenuDependencies.Cryo
local t = InGameMenuDependencies.t
local Parent = script.Parent.Parent
local FFlagLuaMenuPerfImprovements_upvr = require(Parent.Flags.FFlagLuaMenuPerfImprovements)
local tbl_upvr = {
	AnchorPoint = Vector2.new(0, 1);
	Position = UDim2.new(0, 24, 1, 1);
	Size = UDim2.new(0, 56, 0, 56);
}
local any_extend_result1_upvr = Roact_upvr.PureComponent:extend("PlayerLabelV2")
any_extend_result1_upvr.validateProps = t.strictInterface(require(CorePackages.Workspace.Packages.RoactUtils).validatePropsWithForwardRef({
	userId = t.number;
	username = t.string;
	displayName = t.string;
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
	function any_extend_result1_upvr.init(arg1) -- Line 71
		function arg1.onActivated() -- Line 72
			--[[ Upvalues[1]:
				[1]: arg1 (readonly)
			]]
			arg1.props.onActivated(arg1.props.userId)
		end
	end
end
function any_extend_result1_upvr.renderButtons(arg1) -- Line 78
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
local CachedPolicyService_upvr = require(CorePackages.Workspace.Packages.CachedPolicyService)
local FFlagAlwaysShowDisplayNameInExpMenu_upvr = require(Parent.Flags.FFlagAlwaysShowDisplayNameInExpMenu)
local withStyle_upvr = UIBlox.Core.Style.withStyle
local CursorKind_upvr = UIBlox.App.SelectionImage.CursorKind
local ImageSetLabel_upvr = UIBlox.Core.ImageSet.ImageSetLabel
local ThemedTextLabel_upvr = require(Parent.Components.ThemedTextLabel)
local GetFFlagLuaAppEnableOpenTypeSupport_upvr = require(CorePackages.Workspace.Packages.SharedFlags).GetFFlagLuaAppEnableOpenTypeSupport
local GetFFlagLuaAppEnableOpenTypeIGMFix_upvr = require(CorePackages.Workspace.Packages.SharedFlags).GetFFlagLuaAppEnableOpenTypeIGMFix
local OpenTypeSupport_upvr = UIBlox.Utility.OpenTypeSupport
function any_extend_result1_upvr.renderWithSelectionCursor(arg1, arg2) -- Line 93
	--[[ Upvalues[13]:
		[1]: CachedPolicyService_upvr (readonly)
		[2]: FFlagAlwaysShowDisplayNameInExpMenu_upvr (readonly)
		[3]: withStyle_upvr (readonly)
		[4]: FFlagLuaMenuPerfImprovements_upvr (readonly)
		[5]: Roact_upvr (readonly)
		[6]: CursorKind_upvr (readonly)
		[7]: ImageSetLabel_upvr (readonly)
		[8]: Cryo_upvr (readonly)
		[9]: tbl_upvr (readonly)
		[10]: ThemedTextLabel_upvr (readonly)
		[11]: GetFFlagLuaAppEnableOpenTypeSupport_upvr (readonly)
		[12]: GetFFlagLuaAppEnableOpenTypeIGMFix_upvr (readonly)
		[13]: OpenTypeSupport_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local props_upvr = arg1.props
	local any_IsSubjectToChinaPolicies_result1_upvr = CachedPolicyService_upvr:IsSubjectToChinaPolicies()
	if not any_IsSubjectToChinaPolicies_result1_upvr then
		any_IsSubjectToChinaPolicies_result1_upvr = FFlagAlwaysShowDisplayNameInExpMenu_upvr
	end
	if props_upvr.displayName == "" or not props_upvr.displayName then
	end
	local username_upvr = props_upvr.username
	return withStyle_upvr(function(arg1_2) -- Line 104
		--[[ Upvalues[15]:
			[1]: arg1 (readonly)
			[2]: FFlagLuaMenuPerfImprovements_upvr (copied, readonly)
			[3]: Roact_upvr (copied, readonly)
			[4]: props_upvr (readonly)
			[5]: arg2 (readonly)
			[6]: CursorKind_upvr (copied, readonly)
			[7]: ImageSetLabel_upvr (copied, readonly)
			[8]: Cryo_upvr (copied, readonly)
			[9]: tbl_upvr (copied, readonly)
			[10]: ThemedTextLabel_upvr (copied, readonly)
			[11]: any_IsSubjectToChinaPolicies_result1_upvr (readonly)
			[12]: username_upvr (readonly)
			[13]: GetFFlagLuaAppEnableOpenTypeSupport_upvr (copied, readonly)
			[14]: GetFFlagLuaAppEnableOpenTypeIGMFix_upvr (copied, readonly)
			[15]: OpenTypeSupport_upvr (copied, readonly)
		]]
		-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
		local BackgroundContrast = arg1_2.Theme.BackgroundContrast
		local var31
		if arg1.props.isSelected then
			BackgroundContrast = arg1_2.Theme.BackgroundOnHover
		end
		local onActivated_2 = arg1.props.onActivated
		local var33
		if var33 then
			local function INLINED() -- Internal function, doesn't exist in bytecode
				var33 = arg1.onActivated
				return var33
			end
			if not arg1.props.onActivated or not INLINED() then
				var33 = nil
			end
			onActivated_2 = var33
		end
		local module = {}
		local tbl_4 = {}
		local function INLINED_2() -- Internal function, doesn't exist in bytecode
			var31 = Color3.fromRGB(255, 255, 255)
			return var31
		end
		if not props_upvr.isOnline or not INLINED_2() then
			var31 = Color3.fromRGB(115, 115, 115)
		end
		tbl_4.ImageColor3 = var31
		var31 = 1
		tbl_4.BackgroundTransparency = var31
		local function INLINED_3() -- Internal function, doesn't exist in bytecode
			var31 = "rbxthumb://type=AvatarHeadShot&id="..props_upvr.userId.."&w=60&h=60"
			return var31
		end
		if 0 >= props_upvr.userId or not INLINED_3() then
			var31 = ""
		end
		tbl_4.Image = var31
		var31 = 2
		tbl_4.ZIndex = var31
		module.PlayerIcon = Roact_upvr.createElement(ImageSetLabel_upvr, Cryo_upvr.Dictionary.join(tbl_upvr, tbl_4))
		local tbl = {
			fontKey = "Header2";
			themeKey = "TextEmphasis";
		}
		var31 = 104
		if any_IsSubjectToChinaPolicies_result1_upvr then
		else
		end
		tbl.Position = UDim2.new(0, var31, 0, 35.5)
		local function INLINED_4() -- Internal function, doesn't exist in bytecode
			var31 = 0
			return Vector2.new(0, var31)
		end
		if not any_IsSubjectToChinaPolicies_result1_upvr or not INLINED_4() then
			var31 = 0.5
		end
		tbl.AnchorPoint = Vector2.new(0, var31)
		var31 = 219
		tbl.Size = UDim2.new(0, var31, 0, 22)
		if not any_IsSubjectToChinaPolicies_result1_upvr or not username_upvr then
		end
		tbl.Text = props_upvr.username
		tbl.TextXAlignment = Enum.TextXAlignment.Left
		tbl.TextTruncate = Enum.TextTruncate.AtEnd
		module.DisplayNameLabel = Roact_upvr.createElement(ThemedTextLabel_upvr, tbl)
		local var38 = any_IsSubjectToChinaPolicies_result1_upvr
		if var38 then
			var38 = Roact_upvr.createElement
			local tbl_3 = {
				fontKey = "Header2";
				themeKey = "TextDefault";
			}
			var31 = 104
			tbl_3.Position = UDim2.new(0, var31, 0, 36)
			var31 = 219
			tbl_3.Size = UDim2.new(0, var31, 0, 22)
			var31 = props_upvr.username
			tbl_3.Text = '@'..var31
			tbl_3.TextXAlignment = Enum.TextXAlignment.Left
			tbl_3.TextTruncate = Enum.TextTruncate.AtEnd
			local var40
			if GetFFlagLuaAppEnableOpenTypeSupport_upvr() and GetFFlagLuaAppEnableOpenTypeIGMFix_upvr() then
				var40 = OpenTypeSupport_upvr:getUserNameStylisticAlternative()
			else
				var40 = nil
			end
			tbl_3.OpenTypeFeatures = var40
			var38 = var38(ThemedTextLabel_upvr, tbl_3)
		end
		module.UsernameLabel = var38
		local tbl_2 = {}
		var31 = 0
		tbl_2.AnchorPoint = Vector2.new(1, var31)
		tbl_2.BackgroundTransparency = 1
		var31 = -24
		tbl_2.Position = UDim2.new(1, var31, 0, 0)
		var31 = 0
		tbl_2.Size = UDim2.new(0, var31, 1, 0)
		module.ButtonContainer = Roact_upvr.createElement("Frame", tbl_2, arg1:renderButtons())
		return Roact_upvr.createElement("TextButton", {
			BackgroundTransparency = BackgroundContrast.Transparency;
			BackgroundColor3 = BackgroundContrast.Color;
			BorderSizePixel = 0;
			LayoutOrder = props_upvr.LayoutOrder;
			Size = UDim2.new(1, 0, 0, 71);
			Visible = props_upvr.Visible;
			Text = "";
			AutoButtonColor = false;
			[Roact_upvr.Event.Activated] = onActivated_2;
			[Roact_upvr.Change.AbsolutePosition] = arg1.props[Roact_upvr.Change.AbsolutePosition];
			[Roact_upvr.Ref] = arg1.props.forwardRef;
			SelectionImageObject = arg2(CursorKind_upvr.Square);
		}, module)
	end)
end
local withSelectionCursorProvider_upvr = UIBlox.App.SelectionImage.withSelectionCursorProvider
function any_extend_result1_upvr.render(arg1) -- Line 186
	--[[ Upvalues[1]:
		[1]: withSelectionCursorProvider_upvr (readonly)
	]]
	return withSelectionCursorProvider_upvr(function(arg1_3) -- Line 187
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		return arg1:renderWithSelectionCursor(arg1_3)
	end)
end
return Roact_upvr.forwardRef(function(arg1, arg2) -- Line 192
	--[[ Upvalues[3]:
		[1]: Roact_upvr (readonly)
		[2]: any_extend_result1_upvr (readonly)
		[3]: Cryo_upvr (readonly)
	]]
	local module_2 = {}
	module_2.forwardRef = arg2
	return Roact_upvr.createElement(any_extend_result1_upvr, Cryo_upvr.Dictionary.join(arg1, module_2))
end)