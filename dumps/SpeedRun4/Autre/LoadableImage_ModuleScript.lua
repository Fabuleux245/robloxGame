-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:12:02
-- Luau version 6, Types version 3
-- Time taken: 0.022740 seconds

local var1_upvw
pcall(function() -- Line 5
	--[[ Upvalues[1]:
		[1]: var1_upvw (read and write)
	]]
	var1_upvw = game:GetService("RbxAnalyticsService")
end)
local Parent_2 = script.Parent
local Parent = Parent_2.Parent.Parent
local Parent_3 = Parent.Parent
local Roact_upvr = require(Parent_3.Roact)
local t = require(Parent_3.t)
local DebugProps_upvr = require(Parent_2.Enum.DebugProps)
local LoadingStrategy_upvr = require(Parent_2.Enum.LoadingStrategy)
local ImageSetComponent_upvr = require(Parent.Core.ImageSet.ImageSetComponent)
local any_extend_result1_upvr = Roact_upvr.PureComponent:extend("LoadableImage")
any_extend_result1_upvr.validateProps = t.strictInterface({
	AnchorPoint = t.optional(t.Vector2);
	BackgroundColor3 = t.optional(t.Color3);
	BackgroundTransparency = t.optional(t.number);
	cornerRadius = t.optional(t.UDim);
	Image = t.optional(t.union(t.string, require(Parent.Core.ImageSet.Validator.validateImageSetData)));
	ImageColor3 = t.optional(t.Color3);
	ImageTransparency = t.optional(t.number);
	ImageRectOffset = t.optional(t.union(t.Vector2, t.table));
	ImageRectSize = t.optional(t.union(t.Vector2, t.table));
	LayoutOrder = t.optional(t.integer);
	loadingImage = t.optional(t.union(t.string, t.table));
	loadingStrategy = t.optional(LoadingStrategy_upvr.isEnumValue);
	loadingTimeout = t.optional(t.numberPositive);
	renderOnLoading = t.optional(t.callback);
	renderOnFailed = t.optional(t.callback);
	MaxSize = t.optional(t.Vector2);
	MinSize = t.optional(t.Vector2);
	onLoaded = t.optional(t.callback);
	Position = t.optional(t.UDim2);
	ScaleType = t.optional(t.enum(Enum.ScaleType));
	Size = t.UDim2;
	TileSize = t.optional(t.UDim2);
	useShimmerAnimationWhileLoading = t.optional(t.boolean);
	showFailedStateWhenLoadingFailed = t.optional(t.boolean);
	ZIndex = t.optional(t.integer);
	shouldHandleReloads = t.optional(t.boolean);
	contentProvider = t.union(t.instanceOf("ContentProvider"), t.table);
	[DebugProps_upvr.forceLoading] = t.optional(t.boolean);
	[DebugProps_upvr.forceFailed] = t.optional(t.boolean);
})
any_extend_result1_upvr.defaultProps = {
	BackgroundTransparency = 0;
	cornerRadius = UDim.new(0, 0);
	MaxSize = Vector2.new(math.huge, math.huge);
	MinSize = Vector2.new(0, 0);
	useShimmerAnimationWhileLoading = false;
	showFailedStateWhenLoadingFailed = false;
	loadingStrategy = LoadingStrategy_upvr.Default;
	loadingTimeout = 30;
	shouldHandleReloads = false;
}
function any_extend_result1_upvr.init(arg1) -- Line 112
	--[[ Upvalues[1]:
		[1]: Roact_upvr (readonly)
	]]
	arg1.currentImageLoadIndex = 0
	arg1:setState({
		eagerRetrying = false;
	})
	arg1.imageRef = Roact_upvr.createRef()
	arg1._isMounted = false
end
local ShimmerPanel_upvr = require(Parent_2.ShimmerPanel)
function any_extend_result1_upvr.renderShimmer(arg1, arg2, arg3) -- Line 122
	--[[ Upvalues[2]:
		[1]: Roact_upvr (readonly)
		[2]: ShimmerPanel_upvr (readonly)
	]]
	local module_5 = {
		Shimmer = Roact_upvr.createElement(ShimmerPanel_upvr, {
			Size = UDim2.new(1, 0, 1, 0);
			cornerRadius = arg1.props.cornerRadius;
		});
	}
	module_5.UISizeConstraint = arg3
	module_5.UICorner = Roact_upvr.createElement("UICorner", {
		CornerRadius = arg1.props.cornerRadius;
	}) or nil
	return Roact_upvr.createElement("Frame", {
		AnchorPoint = arg1.props.AnchorPoint;
		BorderSizePixel = 0;
		BackgroundColor3 = arg2.PlaceHolder.Color;
		BackgroundTransparency = arg2.PlaceHolder.Transparency;
		LayoutOrder = arg1.props.LayoutOrder;
		Position = arg1.props.Position;
		Size = arg1.props.Size;
		ZIndex = arg1.props.ZIndex;
	}, module_5)
end
local Images_upvr = require(Parent.App.ImageSet.Images)
function any_extend_result1_upvr.defaultRenderOnFail(arg1, arg2, arg3) -- Line 144
	--[[ Upvalues[3]:
		[1]: Images_upvr (readonly)
		[2]: Roact_upvr (readonly)
		[3]: ImageSetComponent_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local cornerRadius = arg1.props.cornerRadius
	local icons_status_imageunavailable = Images_upvr["icons/status/imageunavailable"]
	local var23 = icons_status_imageunavailable.ImageRectSize / Images_upvr.ImagesResolutionScale
	local module_4 = {}
	local tbl_6 = {}
	local var28
	local function INLINED() -- Internal function, doesn't exist in bytecode
		var28 = var28("UICorner", tbl)
		tbl.CornerRadius = cornerRadius
		local tbl = {}
		var28 = Roact_upvr.createElement
		return var28
	end
	if cornerRadius == UDim.new(0, 0) or not INLINED() then
		var28 = nil
	end
	tbl_6.UICorner = var28
	module_4.EmptyIcon = Roact_upvr.createElement(ImageSetComponent_upvr.Label, {
		BackgroundTransparency = 1;
		AnchorPoint = Vector2.new(0.5, 0.5);
		Image = icons_status_imageunavailable;
		ImageColor3 = arg2.UIDefault.Color;
		ImageTransparency = arg2.UIDefault.Transparency;
		Position = UDim2.new(0.5, 0, 0.5, 0);
		Size = UDim2.new(0, var23.X, 0, var23.Y);
	}, tbl_6)
	module_4.UISizeConstraint = arg3
	local function INLINED_2() -- Internal function, doesn't exist in bytecode
		tbl_4.CornerRadius = cornerRadius
		local tbl_4 = {}
		return Roact_upvr.createElement("UICorner", tbl_4)
	end
	if cornerRadius == UDim.new(0, 0) or not INLINED_2() then
	end
	module_4.UICorner = nil
	return Roact_upvr.createElement("Frame", {
		AnchorPoint = arg1.props.AnchorPoint;
		BorderSizePixel = 0;
		BackgroundColor3 = arg2.PlaceHolder.Color;
		BackgroundTransparency = arg2.PlaceHolder.Transparency;
		LayoutOrder = arg1.props.LayoutOrder;
		Position = arg1.props.Position;
		Size = arg1.props.Size;
		ZIndex = arg1.props.ZIndex;
	}, module_4)
end
function any_extend_result1_upvr.isImageNonNil(arg1) -- Line 180
	--[[ Upvalues[1]:
		[1]: Roact_upvr (readonly)
	]]
	local var31 = false
	if arg1.props.Image ~= Roact_upvr.None then
		if arg1.props.Image == nil then
			var31 = false
		else
			var31 = true
		end
	end
	return var31
end
function any_extend_result1_upvr.getCurrentImageAssetFetchStatus(arg1, arg2) -- Line 184
	local var32 = arg2[arg1:getAssetFetchStatusStateKey(arg1.currentImageLoadIndex)]
	if var32 == nil then
		var32 = Enum.AssetFetchStatus.None
	end
	return var32
end
function any_extend_result1_upvr.isLoadingComplete(arg1, arg2) -- Line 194
	local any_getCurrentImageAssetFetchStatus_result1 = arg1:getCurrentImageAssetFetchStatus(arg2)
	if any_getCurrentImageAssetFetchStatus_result1 == Enum.AssetFetchStatus.None or any_getCurrentImageAssetFetchStatus_result1 == Enum.AssetFetchStatus.Loading then
		return false
	end
	if any_getCurrentImageAssetFetchStatus_result1 == Enum.AssetFetchStatus.Failure or any_getCurrentImageAssetFetchStatus_result1 == Enum.AssetFetchStatus.TimedOut then
		if arg2.eagerRetrying then
			return false
		end
	end
	return true
end
local withStyle_upvr = require(Parent.Core.Style.withStyle)
local function render(arg1) -- Line 207
	--[[ Upvalues[5]:
		[1]: DebugProps_upvr (readonly)
		[2]: Roact_upvr (readonly)
		[3]: withStyle_upvr (readonly)
		[4]: LoadingStrategy_upvr (readonly)
		[5]: ImageSetComponent_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local MaxSize = arg1.props.MaxSize
	local MinSize = arg1.props.MinSize
	local var37
	if arg1:isImageNonNil() then
	end
	local any_getCurrentImageAssetFetchStatus_result1_2 = arg1:getCurrentImageAssetFetchStatus(arg1.state)
	if any_getCurrentImageAssetFetchStatus_result1_2 == Enum.AssetFetchStatus.None then
	else
	end
	var37 = Enum.AssetFetchStatus.Failure
	if any_getCurrentImageAssetFetchStatus_result1_2 ~= var37 then
	else
	end
	var37 = false
	if arg1.props[DebugProps_upvr.forceLoading] then
	end
	if arg1.props[DebugProps_upvr.forceFailed] then
	end
	if MaxSize.X ~= math.huge or MaxSize.Y ~= math.huge or MinSize.X ~= 0 or MinSize.Y ~= 0 then
		var37 = true
	end
	if var37 then
	end
	local var41_upvw = true
	local renderOnFailed_upvr = arg1.props.renderOnFailed
	local showFailedStateWhenLoadingFailed_upvr = arg1.props.showFailedStateWhenLoadingFailed
	local any_createElement_result1_upvr = Roact_upvr.createElement("UISizeConstraint", {
		MaxSize = MaxSize;
		MinSize = MinSize;
	})
	local var45_upvw = false
	local renderOnLoading_upvr = arg1.props.renderOnLoading
	local loadingStrategy_upvr = arg1.props.loadingStrategy
	local useShimmerAnimationWhileLoading_upvr = arg1.props.useShimmerAnimationWhileLoading
	local var49_upvr = true
	local AnchorPoint_upvr = arg1.props.AnchorPoint
	local BackgroundColor3_upvr = arg1.props.BackgroundColor3
	local BackgroundTransparency_upvr = arg1.props.BackgroundTransparency
	local Image_upvr = arg1.props.Image
	local loadingImage_upvr = arg1.props.loadingImage
	local ImageTransparency_upvr = arg1.props.ImageTransparency
	local ImageRectOffset_upvr = arg1.props.ImageRectOffset
	local ImageRectSize_upvr = arg1.props.ImageRectSize
	local ImageColor3_upvr = arg1.props.ImageColor3
	local LayoutOrder_upvr = arg1.props.LayoutOrder
	local Position_upvr = arg1.props.Position
	local ScaleType_upvr = arg1.props.ScaleType
	local Size_upvr = arg1.props.Size
	local ZIndex_upvr = arg1.props.ZIndex
	local cornerRadius_upvr = arg1.props.cornerRadius
	return withStyle_upvr(function(arg1_2) -- Line 255
		--[[ Upvalues[28]:
			[1]: var41_upvw (read and write)
			[2]: renderOnFailed_upvr (readonly)
			[3]: showFailedStateWhenLoadingFailed_upvr (readonly)
			[4]: arg1 (readonly)
			[5]: any_createElement_result1_upvr (readonly)
			[6]: var45_upvw (read and write)
			[7]: renderOnLoading_upvr (readonly)
			[8]: loadingStrategy_upvr (readonly)
			[9]: LoadingStrategy_upvr (copied, readonly)
			[10]: useShimmerAnimationWhileLoading_upvr (readonly)
			[11]: var49_upvr (readonly)
			[12]: Roact_upvr (copied, readonly)
			[13]: ImageSetComponent_upvr (copied, readonly)
			[14]: AnchorPoint_upvr (readonly)
			[15]: BackgroundColor3_upvr (readonly)
			[16]: BackgroundTransparency_upvr (readonly)
			[17]: Image_upvr (readonly)
			[18]: loadingImage_upvr (readonly)
			[19]: ImageTransparency_upvr (readonly)
			[20]: ImageRectOffset_upvr (readonly)
			[21]: ImageRectSize_upvr (readonly)
			[22]: ImageColor3_upvr (readonly)
			[23]: LayoutOrder_upvr (readonly)
			[24]: Position_upvr (readonly)
			[25]: ScaleType_upvr (readonly)
			[26]: Size_upvr (readonly)
			[27]: ZIndex_upvr (readonly)
			[28]: cornerRadius_upvr (readonly)
		]]
		-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
		local Theme_3 = arg1_2.Theme
		local var91
		if var91 then
			var91 = renderOnFailed_upvr
			if var91 then
				var91 = renderOnFailed_upvr()
				return var91
			end
		end
		var91 = var41_upvw
		if var91 then
			var91 = showFailedStateWhenLoadingFailed_upvr
			if var91 then
				var91 = arg1:defaultRenderOnFail(Theme_3, any_createElement_result1_upvr)
				return var91
			end
		end
		var91 = var45_upvw
		if not var91 then
			var91 = renderOnLoading_upvr
			if var91 then
				var91 = loadingStrategy_upvr
				if var91 ~= LoadingStrategy_upvr.Default then
					var91 = renderOnLoading_upvr()
					return var91
				end
			end
		end
		var91 = var45_upvw
		if not var91 then
			var91 = useShimmerAnimationWhileLoading_upvr
			if var91 then
				var91 = loadingStrategy_upvr
				if var91 ~= LoadingStrategy_upvr.Default then
					var91 = arg1:renderShimmer(Theme_3, any_createElement_result1_upvr)
					return var91
				end
			end
		end
		var91 = var45_upvw
		if not var91 then
			if loadingStrategy_upvr ~= LoadingStrategy_upvr.Default then
				var91 = false
			else
				var91 = true
			end
		end
		local var92
		if not var45_upvw and renderOnLoading_upvr and loadingStrategy_upvr == LoadingStrategy_upvr.Default then
		end
		local var93
		if not var45_upvw then
			if useShimmerAnimationWhileLoading_upvr and loadingStrategy_upvr == LoadingStrategy_upvr.Default and var49_upvr then
				var92 = any_createElement_result1_upvr
				var93 = arg1:renderShimmer(Theme_3, var92)
			end
		end
		local module = {}
		var92 = AnchorPoint_upvr
		module.AnchorPoint = var92
		var92 = BackgroundColor3_upvr
		if not var92 then
			var92 = Theme_3.PlaceHolder.Color
		end
		module.BackgroundColor3 = var92
		if not BackgroundTransparency_upvr then
		end
		module.BackgroundTransparency = Theme_3.PlaceHolder.Transparency
		module.BorderSizePixel = 0
		if not var91 or not Image_upvr then
		end
		module.Image = loadingImage_upvr
		module.ImageTransparency = ImageTransparency_upvr
		module.ImageRectOffset = ImageRectOffset_upvr
		module.ImageRectSize = ImageRectSize_upvr
		if not var91 or not ImageColor3_upvr then
		end
		module.ImageColor3 = nil
		module.LayoutOrder = LayoutOrder_upvr
		module.Position = Position_upvr
		module.ScaleType = ScaleType_upvr
		module.TileSize = arg1.props.TileSize
		module.Size = Size_upvr
		module.ZIndex = ZIndex_upvr
		module[Roact_upvr.Ref] = arg1.imageRef
		;({}).UISizeConstraint = any_createElement_result1_upvr
		local function INLINED_7() -- Internal function, doesn't exist in bytecode
			tbl_2.CornerRadius = cornerRadius_upvr
			local tbl_2 = {}
			return Roact_upvr.createElement("UICorner", tbl_2)
		end
		if cornerRadius_upvr == UDim.new(0, 0) or not INLINED_7() then
		end
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		;({}).UICorner = nil
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		;({}).OnLoading = renderOnLoading_upvr()
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		;({}).Shimmer = var93
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		return Roact_upvr.createElement(ImageSetComponent_upvr.Label, module, {})
	end)
end
any_extend_result1_upvr.render = render
function any_extend_result1_upvr.maybeCallOnLoaded(arg1, arg2) -- Line 318
	if arg1.props.onLoaded then
		if not arg1:isLoadingComplete(arg2) then
			if arg1:isLoadingComplete(arg1.state) then
				arg1.props.onLoaded()
			end
		end
	end
end
function any_extend_result1_upvr.didUpdate(arg1, arg2, arg3) -- Line 328
	if arg2.Image ~= arg1.props.Image then
		arg1:loadImage()
	end
	arg1:maybeCallOnLoaded(arg3)
end
function any_extend_result1_upvr.didMount(arg1) -- Line 335
	arg1._isMounted = true
	arg1:loadImage()
end
function any_extend_result1_upvr.willUnmount(arg1) -- Line 343
	arg1._isMounted = false
	arg1:dropConnections()
end
function any_extend_result1_upvr.isTerminalStatus(arg1, arg2) -- Line 348
	local var96 = true
	if arg2 ~= Enum.AssetFetchStatus.Success then
		var96 = true
		if arg2 ~= Enum.AssetFetchStatus.Failure then
			if arg2 ~= Enum.AssetFetchStatus.TimedOut then
				var96 = false
			else
				var96 = true
			end
		end
	end
	return var96
end
function any_extend_result1_upvr.getImageUri(arg1) -- Line 358
	if arg1.props.Image then
		if typeof(arg1.props.Image) == "string" then
			return arg1.props.Image
		end
		return arg1.props.Image.Image
	end
	return nil
end
function any_extend_result1_upvr.awaitImageLoaded(arg1, arg2, arg3) -- Line 372
	if arg1:isTerminalStatus(arg3) then
	else
		local any_getImageUri_result1_upvr_2 = arg1:getImageUri()
		if any_getImageUri_result1_upvr_2 == "" then
			local Success = Enum.AssetFetchStatus.Success
			arg1:updateAssetFetchStatusForImageLoadIndex(Success, arg2, any_getImageUri_result1_upvr_2)
			arg1:maybeReportCounter("Await", Success)
			if arg1:isTerminalStatus(Success) and arg1.awaitImageLoadedConnection then
				arg1.awaitImageLoadedConnection:Disconnect()
				arg1.awaitImageLoadedConnection = nil
			end
			return
		end
		arg1.awaitImageLoadedConnection = arg1.props.contentProvider:GetAssetFetchStatusChangedSignal(any_getImageUri_result1_upvr_2):Connect(function(arg1_3) -- Line 383
			--[[ Upvalues[3]:
				[1]: arg1 (readonly)
				[2]: arg2 (readonly)
				[3]: any_getImageUri_result1_upvr_2 (readonly)
			]]
			arg1:updateAssetFetchStatusForImageLoadIndex(arg1_3, arg2, any_getImageUri_result1_upvr_2)
			arg1:maybeReportCounter("Await", arg1_3)
			if arg1:isTerminalStatus(arg1_3) and arg1.awaitImageLoadedConnection then
				arg1.awaitImageLoadedConnection:Disconnect()
				arg1.awaitImageLoadedConnection = nil
			end
		end)
	end
end
function any_extend_result1_upvr.maybeReportCounter(arg1, arg2, arg3) -- Line 401
	--[[ Upvalues[1]:
		[1]: var1_upvw (read and write)
	]]
	pcall(function() -- Line 404
		--[[ Upvalues[3]:
			[1]: arg2 (readonly)
			[2]: arg3 (readonly)
			[3]: var1_upvw (copied, read and write)
		]]
		var1_upvw:ReportCounter("UIBlox_LoadableImage_"..arg2..'_'..tostring(arg3))
	end)
end
function any_extend_result1_upvr.preloadImageWithRetryLogic(arg1, arg2) -- Line 416
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [65] 46. Error Block 28 start (CF ANALYSIS FAILED)
	if Enum.AssetFetchStatus.None ~= Enum.AssetFetchStatus.TimedOut or 5 < 0 then
		-- KONSTANTWARNING: GOTO [80] #56
	end
	arg1:setState({
		eagerRetrying = true;
	})
	-- KONSTANTERROR: [65] 46. Error Block 28 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [6] 5. Error Block 2 start (CF ANALYSIS FAILED)
	-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [79.5]
	-- KONSTANTERROR: [6] 5. Error Block 2 end (CF ANALYSIS FAILED)
end
function any_extend_result1_upvr.getAssetFetchStatusStateKey(arg1, arg2) -- Line 478
	return "assetFetchStatus_"..tostring(arg2)
end
function any_extend_result1_upvr.updateAssetFetchStatusForImageLoadIndex(arg1, arg2, arg3, arg4) -- Line 482
	local tbl_5 = {}
	tbl_5[arg1:getAssetFetchStatusStateKey(arg3)] = arg2
	arg1:setState(tbl_5)
end
function any_extend_result1_upvr.dropConnections(arg1) -- Line 489
	if arg1.listenForReloadsConnection then
		arg1.listenForReloadsConnection:Disconnect()
		arg1.listenForReloadsConnection = nil
	end
	if arg1.awaitImageLoadedConnection then
		arg1.awaitImageLoadedConnection:Disconnect()
		arg1.awaitImageLoadedConnection = nil
	end
end
function any_extend_result1_upvr.loadImage(arg1) -- Line 500
	--[[ Upvalues[1]:
		[1]: LoadingStrategy_upvr (readonly)
	]]
	local var103_upvr = arg1.currentImageLoadIndex + 1
	arg1.currentImageLoadIndex = var103_upvr
	local any_getImageUri_result1_upvr = arg1:getImageUri()
	local loadingStrategy = arg1.props.loadingStrategy
	arg1:dropConnections()
	if any_getImageUri_result1_upvr == nil then
		arg1:updateAssetFetchStatusForImageLoadIndex(Enum.AssetFetchStatus.Success, var103_upvr, any_getImageUri_result1_upvr)
		arg1:setState({
			eagerRetrying = false;
		})
	else
		local any_GetAssetFetchStatus_result1 = arg1.props.contentProvider:GetAssetFetchStatus(any_getImageUri_result1_upvr)
		arg1:maybeReportCounter("InitialStatus", any_GetAssetFetchStatus_result1)
		arg1:updateAssetFetchStatusForImageLoadIndex(any_GetAssetFetchStatus_result1, var103_upvr, any_getImageUri_result1_upvr)
		if arg1.props.shouldHandleReloads then
			arg1.listenForReloadsConnection = arg1.props.contentProvider:GetAssetFetchStatusChangedSignal(any_getImageUri_result1_upvr):Connect(function(arg1_4, arg2) -- Line 531
				--[[ Upvalues[3]:
					[1]: arg1 (readonly)
					[2]: var103_upvr (readonly)
					[3]: any_getImageUri_result1_upvr (readonly)
				]]
				arg1:maybeReportCounter("Reloads", arg1_4)
				arg1:updateAssetFetchStatusForImageLoadIndex(arg1_4, var103_upvr, any_getImageUri_result1_upvr)
			end)
		end
		if loadingStrategy == LoadingStrategy_upvr.Eager then
			task.spawn(function() -- Line 540
				--[[ Upvalues[2]:
					[1]: arg1 (readonly)
					[2]: var103_upvr (readonly)
				]]
				arg1:preloadImageWithRetryLogic(var103_upvr)
			end)
			return
		end
		if loadingStrategy == LoadingStrategy_upvr.Default then
			arg1:awaitImageLoaded(var103_upvr, any_GetAssetFetchStatus_result1)
		end
	end
end
local ContentProvider_upvr = require(Parent.App.Context.ContentProvider)
local Cryo_upvr = require(Parent_3.Cryo)
return function(arg1) -- Line 548
	--[[ Upvalues[4]:
		[1]: Roact_upvr (readonly)
		[2]: ContentProvider_upvr (readonly)
		[3]: Cryo_upvr (readonly)
		[4]: any_extend_result1_upvr (readonly)
	]]
	return Roact_upvr.createElement(ContentProvider_upvr.Consumer, {
		render = function(arg1_5) -- Line 550, Named "render"
			--[[ Upvalues[4]:
				[1]: Cryo_upvr (copied, readonly)
				[2]: arg1 (readonly)
				[3]: Roact_upvr (copied, readonly)
				[4]: any_extend_result1_upvr (copied, readonly)
			]]
			local module_7 = {}
			module_7.contentProvider = arg1_5
			return Roact_upvr.createElement(any_extend_result1_upvr, Cryo_upvr.Dictionary.join(arg1, module_7))
		end;
	})
end