-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:53:48
-- Luau version 6, Types version 3
-- Time taken: 0.002916 seconds

local AppChat = script:FindFirstAncestor("AppChat")
local Parent = AppChat.Parent
local React_upvr = require(Parent.React)
local useStyle_upvr = require(Parent.UIBlox).Core.Style.useStyle
local Responsive_upvr = require(Parent.Responsive)
local configureTopBarWithNavigationOptions_upvr = require(AppChat.configureTopBarWithNavigationOptions)
local function _(arg1) -- Line 14, Named "wrapInOverlay"
	--[[ Upvalues[4]:
		[1]: Responsive_upvr (readonly)
		[2]: useStyle_upvr (readonly)
		[3]: React_upvr (readonly)
		[4]: configureTopBarWithNavigationOptions_upvr (readonly)
	]]
	return function(arg1_2) -- Line 15
		--[[ Upvalues[5]:
			[1]: Responsive_upvr (copied, readonly)
			[2]: useStyle_upvr (copied, readonly)
			[3]: React_upvr (copied, readonly)
			[4]: configureTopBarWithNavigationOptions_upvr (copied, readonly)
			[5]: arg1 (readonly)
		]]
		local module_3 = {
			AnchorPoint = Vector2.new(0.5, 0.5);
			BackgroundTransparency = 1;
			ClipsDescendants = true;
		}
		local var9 = 0
		module_3.Position = UDim2.new(0.5, var9, 0.5, 0)
		local var10
		if Responsive_upvr.useBreakpointXOrSmaller(Responsive_upvr.Keys.Small) then
			var9 = -24
		else
			var9 = -360
		end
		if Responsive_upvr.useBreakpointYOrSmaller(Responsive_upvr.Keys.Small) then
			var10 = -24
		else
			var10 = -72
		end
		module_3.Size = UDim2.new(1, var9, 1, var10)
		module_3.Image = "rbxasset://textures/ui/LuaChat/9-slice/modal.png"
		module_3.ImageColor3 = useStyle_upvr().Theme.BackgroundUIDefault.Color
		module_3.ScaleType = Enum.ScaleType.Slice
		var10 = 6
		module_3.SliceCenter = Rect.new(Vector2.new(5, 5), Vector2.new(6, var10))
		local module = {}
		local tbl_6 = {}
		var10 = Vector2.new(1000, 800)
		tbl_6.MaxSize = var10
		var10 = Vector2.new(0, 0)
		tbl_6.MinSize = var10
		module.sizeConstraint = React_upvr.createElement("UISizeConstraint", tbl_6)
		local tbl_3 = {}
		var10 = UDim.new(0, 2.5)
		tbl_3.PaddingBottom = var10
		var10 = UDim.new(0, 2.5)
		tbl_3.PaddingLeft = var10
		var10 = UDim.new(0, 2.5)
		tbl_3.PaddingRight = var10
		var10 = UDim.new(0, 2.5)
		tbl_3.PaddingTop = var10
		module.padding = React_upvr.createElement("UIPadding", tbl_3)
		local tbl_5 = {}
		var10 = Enum.SortOrder.LayoutOrder
		tbl_5.SortOrder = var10
		module.layout = React_upvr.createElement("UIListLayout", tbl_5)
		module.topBar = configureTopBarWithNavigationOptions_upvr(arg1_2.navigation)
		module.overlayContent = React_upvr.createElement(arg1, arg1_2)
		return React_upvr.createElement("ImageLabel", module_3, module)
	end
end
local RoactNavigation_upvr = require(Parent.RoactNavigation)
return function(arg1) -- Line 54
	--[[ Upvalues[5]:
		[1]: RoactNavigation_upvr (readonly)
		[2]: React_upvr (readonly)
		[3]: Responsive_upvr (readonly)
		[4]: useStyle_upvr (readonly)
		[5]: configureTopBarWithNavigationOptions_upvr (readonly)
	]]
	local any_createRobloxStackNavigator_result1_upvr = RoactNavigation_upvr.createRobloxStackNavigator(arg1)
	local any_extend_result1 = React_upvr.PureComponent:extend("OverlayNavigatorConnector")
	any_extend_result1.router = any_createRobloxStackNavigator_result1_upvr.router
	local function var19_upvr(arg1_3) -- Line 15
		--[[ Upvalues[5]:
			[1]: Responsive_upvr (copied, readonly)
			[2]: useStyle_upvr (copied, readonly)
			[3]: React_upvr (copied, readonly)
			[4]: configureTopBarWithNavigationOptions_upvr (copied, readonly)
			[5]: any_createRobloxStackNavigator_result1_upvr (readonly)
		]]
		local module_4 = {
			AnchorPoint = Vector2.new(0.5, 0.5);
			BackgroundTransparency = 1;
			ClipsDescendants = true;
		}
		local var21 = 0
		module_4.Position = UDim2.new(0.5, var21, 0.5, 0)
		local var22
		if Responsive_upvr.useBreakpointXOrSmaller(Responsive_upvr.Keys.Small) then
			var21 = -24
		else
			var21 = -360
		end
		if Responsive_upvr.useBreakpointYOrSmaller(Responsive_upvr.Keys.Small) then
			var22 = -24
		else
			var22 = -72
		end
		module_4.Size = UDim2.new(1, var21, 1, var22)
		module_4.Image = "rbxasset://textures/ui/LuaChat/9-slice/modal.png"
		module_4.ImageColor3 = useStyle_upvr().Theme.BackgroundUIDefault.Color
		module_4.ScaleType = Enum.ScaleType.Slice
		var22 = 6
		module_4.SliceCenter = Rect.new(Vector2.new(5, 5), Vector2.new(6, var22))
		local module_2 = {}
		local tbl_4 = {}
		var22 = Vector2.new(1000, 800)
		tbl_4.MaxSize = var22
		var22 = Vector2.new(0, 0)
		tbl_4.MinSize = var22
		module_2.sizeConstraint = React_upvr.createElement("UISizeConstraint", tbl_4)
		local tbl_2 = {}
		var22 = UDim.new(0, 2.5)
		tbl_2.PaddingBottom = var22
		var22 = UDim.new(0, 2.5)
		tbl_2.PaddingLeft = var22
		var22 = UDim.new(0, 2.5)
		tbl_2.PaddingRight = var22
		var22 = UDim.new(0, 2.5)
		tbl_2.PaddingTop = var22
		module_2.padding = React_upvr.createElement("UIPadding", tbl_2)
		local tbl = {}
		var22 = Enum.SortOrder.LayoutOrder
		tbl.SortOrder = var22
		module_2.layout = React_upvr.createElement("UIListLayout", tbl)
		module_2.topBar = configureTopBarWithNavigationOptions_upvr(arg1_3.navigation)
		module_2.overlayContent = React_upvr.createElement(any_createRobloxStackNavigator_result1_upvr, arg1_3)
		return React_upvr.createElement("ImageLabel", module_4, module_2)
	end
	function any_extend_result1.render(arg1_4) -- Line 61
		--[[ Upvalues[2]:
			[1]: React_upvr (copied, readonly)
			[2]: var19_upvr (readonly)
		]]
		return React_upvr.createElement(var19_upvr, arg1_4.props)
	end
	return any_extend_result1
end