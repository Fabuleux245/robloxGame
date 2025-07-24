-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:47:10
-- Luau version 6, Types version 3
-- Time taken: 0.004867 seconds

local Parent = script:FindFirstAncestor("AppBlox").Parent
local Roact_upvr = require(Parent.Roact)
local any_extend_result1 = Roact_upvr.PureComponent:extend("FullscreenPageWithSafeArea")
local getSafeAreaSize_upvr = require(Parent.InputUi).getSafeAreaSize
local IsVRAppBuild_upvr = require(Parent.AppCommonLib).IsVRAppBuild
local GetFFlagFixPeekViewJitter_upvr = require(Parent.SharedFlags).GetFFlagFixPeekViewJitter
local Constants_upvr = require(Parent.AppSystemBar).Constants
function any_extend_result1.render(arg1) -- Line 14
	--[[ Upvalues[5]:
		[1]: Roact_upvr (readonly)
		[2]: getSafeAreaSize_upvr (readonly)
		[3]: IsVRAppBuild_upvr (readonly)
		[4]: GetFFlagFixPeekViewJitter_upvr (readonly)
		[5]: Constants_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local statusBarHeight = arg1.props.statusBarHeight
	local screenSize = arg1.props.screenSize
	local globalGuiInset = arg1.props.globalGuiInset
	local renderFullscreenBackground = arg1.props.renderFullscreenBackground
	local var12
	local function INLINED() -- Internal function, doesn't exist in bytecode
		var12 = screenSize.Y
		return var12 == 0
	end
	if var12 == 0 or INLINED() then
		var12 = nil
		return var12
	end
	var12 = getSafeAreaSize_upvr(screenSize, globalGuiInset)
	if arg1.props.useFullScalePage ~= nil then
		local useFullScalePage = arg1.props.useFullScalePage
	else
	end
	if arg1.props.includeStatusBar then
		var12 = UDim2.new(0, var12.X.Offset, 0, var12.Y.Offset - statusBarHeight)
		local var14 = globalGuiInset.top + statusBarHeight
	end
	local var15
	if GetFFlagFixPeekViewJitter_upvr() and arg1.props.includeBottomBar then
		var15 = var12.X
		var15 = 0
		var12 = UDim2.new(0, var15.Offset, var15, var12.Y.Offset - Constants_upvr.BOTTOM_BAR_SIZE)
	end
	local module = {}
	if IsVRAppBuild_upvr() then
		var15 = UDim2.new(0, 0, 0, 0)
	else
		var15 = UDim2.new(0, -globalGuiInset.left, 0, -globalGuiInset.top)
	end
	module.Position = var15
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	if IsVRAppBuild_upvr() then
		var15 = UDim2.new(1, 0, 1, 0)
	else
		var15 = UDim2.new(0, screenSize.X, 0, screenSize.Y)
	end
	module.Size = var15
	module.BackgroundColor3 = arg1.props.BackgroundColor3
	module.BackgroundTransparency = arg1.props.BackgroundTransparency
	var15 = true
	module.Active = var15
	var15 = 0
	module.BorderSizePixel = var15
	var15 = true
	module.ClipsDescendants = var15
	var15 = {}
	local var17 = renderFullscreenBackground
	if var17 then
		var17 = renderFullscreenBackground(var14)
	end
	var15.Background = var17
	local tbl = {}
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	if IsVRAppBuild_upvr() then
		local _ = UDim2.new(0, 0, 0, 0)
	else
	end
	tbl.Position = UDim2.new(0, globalGuiInset.left, 0, var14)
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	if IsVRAppBuild_upvr() then
	else
	end
	tbl.Size = var12
	tbl.BackgroundTransparency = 1
	if renderFullscreenBackground then
	else
	end
	tbl.ZIndex = 1
	var15.SafeAreaFrame = Roact_upvr.createElement("Frame", tbl, arg1.props[Roact_upvr.Children])
	return Roact_upvr.createElement("Frame", module, var15)
end
return require(Parent.RoactRodux).connect(function(arg1, arg2) -- Line 67
	return {
		statusBarHeight = arg1.TopBar.statusBarHeight;
		screenSize = arg1.ScreenSize;
		globalGuiInset = arg1.GlobalGuiInset;
	}
end)(any_extend_result1)