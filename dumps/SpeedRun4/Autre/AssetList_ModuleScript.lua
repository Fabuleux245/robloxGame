-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:51:44
-- Luau version 6, Types version 3
-- Time taken: 0.005803 seconds

local CorePackages = game:GetService("CorePackages")
local Parent = script.Parent.Parent
local Roact_upvr = require(CorePackages.Packages.Roact)
local Cryo_upvr = require(CorePackages.Packages.Cryo)
local any_extend_result1_upvr = Roact_upvr.PureComponent:extend("AssetList")
function any_extend_result1_upvr.calculateCanvasSize(arg1, arg2, arg3, arg4) -- Line 21
	local current = arg1.gridFrameRef.current
	if current then
		current.Parent.CanvasSize = UDim2.new(1, 0, 0, (math.ceil(arg3 / arg2) * (arg4 + 10)) + (arg1.props.views[arg1.props.view].TopSizeY + 15))
	end
end
function any_extend_result1_upvr.init(arg1) -- Line 34
	--[[ Upvalues[1]:
		[1]: Roact_upvr (readonly)
	]]
	local var7 = arg1.props.views[arg1.props.view]
	arg1.gridFrameRef = Roact_upvr.createRef()
	arg1.state = {
		assetCardSizeX = var7.AssetCardMaxSizeX;
		assetCardSizeY = var7.AssetCardMaxSizeY;
	}
end
local AssetCard_upvr = require(Parent.Components.AssetCard)
local ShimmerPanel_upvr = require(CorePackages.Packages.UIBlox).App.Loading.ShimmerPanel
local function render(arg1) -- Line 47
	--[[ Upvalues[3]:
		[1]: Roact_upvr (readonly)
		[2]: AssetCard_upvr (readonly)
		[3]: ShimmerPanel_upvr (readonly)
	]]
	local var17 = arg1.props.views[arg1.props.view]
	local MaxAssetCardsPerRow = var17.MaxAssetCardsPerRow
	local assetCardSizeX = arg1.state.assetCardSizeX
	local assetCardSizeY = arg1.state.assetCardSizeY
	local module = {}
	local var22 = 0
	module.UIGridLayout = Roact_upvr.createElement("UIGridLayout", {
		CellPadding = UDim2.new(0, 10, 0, 10);
		CellSize = UDim2.new(0, assetCardSizeX, 0, assetCardSizeY);
		SortOrder = Enum.SortOrder.LayoutOrder;
		HorizontalAlignment = Enum.HorizontalAlignment.Left;
		VerticalAlignment = Enum.VerticalAlignment.Top;
		FillDirectionMaxCells = MaxAssetCardsPerRow;
	})
	for i, v in pairs(arg1.props.assets) do
		var22 += 1
		module[v.assetId] = Roact_upvr.createElement(AssetCard_upvr, {
			assetInfo = v;
			assetCardSizeX = assetCardSizeX;
		})
	end
	if var22 == 0 then
		for i_2 = 1, 30 do
			v = Roact_upvr
			i = v.createElement
			v = ShimmerPanel_upvr
			i = i(v, {
				Size = UDim2.new(1, 0, 0, assetCardSizeX);
			})
			module[i_2] = i
		end
	end
	arg1:calculateCanvasSize(MaxAssetCardsPerRow, var22, assetCardSizeY)
	return Roact_upvr.createElement("Frame", {
		Size = UDim2.new(1, -(2 * var17.BorderPaddingSize), 1, 0);
		BackgroundTransparency = 1;
		BorderSizePixel = 0;
		LayoutOrder = 3;
		[Roact_upvr.Ref] = arg1.gridFrameRef;
		[Roact_upvr.Change.AbsoluteSize] = function(arg1_2) -- Line 93
			--[[ Upvalues[1]:
				[1]: arg1 (readonly)
			]]
			spawn(function() -- Line 94
				--[[ Upvalues[1]:
					[1]: arg1 (copied, readonly)
				]]
				arg1:resize()
			end)
		end;
	}, module)
end
any_extend_result1_upvr.render = render
function any_extend_result1_upvr.didMount(arg1) -- Line 101
	arg1:resize()
	arg1.mounted = true
end
function any_extend_result1_upvr.updateAssetsFromBundles(arg1) -- Line 115
	--[[ Upvalues[1]:
		[1]: Cryo_upvr (readonly)
	]]
	local bundles = arg1.props.bundles
	local assets = arg1.props.assets
	if not bundles or Cryo_upvr.isEmpty(bundles) then
	else
		for _, v_2 in pairs(bundles) do
			local assetIds = v_2.assetIds
			for i_4 = 1, #assetIds do
				local tostring_result1 = tostring(assetIds[i_4])
				local var45
				if var45 then
					var45 = arg1.props.assetBundles[tostring_result1]
					if not var45 then
						var45 = {}
					end
					if #var45 == 1 or 1 == 1 and 1 < #var45 and assets[tostring_result1] and assets[tostring_result1].parentBundleId == nil then
						arg1.props.dispatchSetAssetFromBundleInfo(tostring_result1, v_2)
					end
				end
			end
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		end
	end
end
local GuiService_upvr = game:GetService("GuiService")
function any_extend_result1_upvr.didUpdate(arg1, arg2) -- Line 155
	--[[ Upvalues[1]:
		[1]: GuiService_upvr (readonly)
	]]
	if arg1.props.view ~= arg2.view then
		arg1:resize()
	end
	if arg1.mounted and arg1.props.gamepadEnabled and not arg1.props.detailsInformation.viewingDetails and arg1.props.visible then
		GuiService_upvr.SelectedCoreObject = arg1.gridFrameRef.current:FindFirstChildWhichIsA("GuiObject")
	end
	if arg1.props.assetBundles ~= arg2.assetBundles or arg1.props.bundles ~= arg2.bundles then
		arg1:updateAssetsFromBundles()
	end
end
function any_extend_result1_upvr.willUnmount(arg1) -- Line 174
	arg1.mounted = false
end
function any_extend_result1_upvr.resize(arg1) -- Line 178
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local current_2 = arg1.gridFrameRef.current
	local var48 = arg1.props.views[arg1.props.view]
	local var49
	local function INLINED() -- Internal function, doesn't exist in bytecode
		local minimum = math.min(floored / 0.68, var48.AssetCardMaxSizeY)
		var49 = math.min(floored, var48.AssetCardMaxSizeX)
		local floored = math.floor(var49)
		var49 = (current_2.AbsoluteSize.X - 10 * (MaxAssetCardsPerRow_2 - 1)) / MaxAssetCardsPerRow_2
		local MaxAssetCardsPerRow_2 = var48.MaxAssetCardsPerRow
		return arg1.state.assetCardSizeX ~= var49
	end
	if current_2 and (INLINED() or arg1.state.assetCardSizeY ~= minimum) then
		arg1:setState({
			assetCardSizeX = var49;
			assetCardSizeY = minimum;
		})
	end
end
local InspectAndBuyContext_upvr = require(Parent.Components.InspectAndBuyContext)
local SetAssetFromBundleInfo_upvr = require(Parent.Actions.SetAssetFromBundleInfo)
return require(CorePackages.Packages.RoactRodux).connect(function(arg1, arg2) -- Line 209
	return {
		view = arg1.view;
		visible = arg1.visible;
		assets = arg1.assets;
		bundles = arg1.bundles;
		assetBundles = arg1.assetBundles;
		detailsInformation = arg1.detailsInformation;
		gamepadEnabled = arg1.gamepadEnabled;
	}
end, function(arg1) -- Line 219
	--[[ Upvalues[1]:
		[1]: SetAssetFromBundleInfo_upvr (readonly)
	]]
	return {
		dispatchSetAssetFromBundleInfo = function(arg1_4, arg2) -- Line 221, Named "dispatchSetAssetFromBundleInfo"
			--[[ Upvalues[2]:
				[1]: arg1 (readonly)
				[2]: SetAssetFromBundleInfo_upvr (copied, readonly)
			]]
			arg1(SetAssetFromBundleInfo_upvr(arg1_4, arg2))
		end;
	}
end)(function(arg1) -- Line 200, Named "AssetListWrapper"
	--[[ Upvalues[4]:
		[1]: Roact_upvr (readonly)
		[2]: InspectAndBuyContext_upvr (readonly)
		[3]: Cryo_upvr (readonly)
		[4]: any_extend_result1_upvr (readonly)
	]]
	return Roact_upvr.createElement(InspectAndBuyContext_upvr.Consumer, {
		render = function(arg1_3) -- Line 202, Named "render"
			--[[ Upvalues[4]:
				[1]: Cryo_upvr (copied, readonly)
				[2]: arg1 (readonly)
				[3]: Roact_upvr (copied, readonly)
				[4]: any_extend_result1_upvr (copied, readonly)
			]]
			local module_2 = {}
			module_2.views = arg1_3
			return Roact_upvr.createElement(any_extend_result1_upvr, Cryo_upvr.Dictionary.join(arg1, module_2))
		end;
	})
end)