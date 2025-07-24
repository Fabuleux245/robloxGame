-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:59:53
-- Luau version 6, Types version 3
-- Time taken: 0.011289 seconds

local CorePackages = game:GetService("CorePackages")
local Roact_upvr = require(CorePackages.Packages.Roact)
local RoactGamepad_upvr = require(CorePackages.Packages.RoactGamepad)
local t = require(CorePackages.Packages.t)
local UIBlox = require(CorePackages.Packages.UIBlox)
local Parent = script.Parent.Parent
local RobloxTranslator_upvr = require(CorePackages.Workspace.Packages.RobloxTranslator)
local any_extend_result1 = Roact_upvr.PureComponent:extend("ItemsList")
any_extend_result1.validateProps = t.strictInterface({
	humanoidDescription = t.optional(t.instanceOf("HumanoidDescription"));
	loadingFailed = t.boolean;
	retryLoadDescription = t.callback;
	itemListScrollableUpdated = t.optional(t.callback);
	addAnalyticsInfo = t.callback;
})
local GetAssetsDifference_upvr = require(Parent.GetAssetsDifference)
function any_extend_result1.init(arg1) -- Line 40
	--[[ Upvalues[2]:
		[1]: Roact_upvr (readonly)
		[2]: GetAssetsDifference_upvr (readonly)
	]]
	arg1:setState({
		canvasSizeY = 0;
		loading = true;
		addedAssetNames = nil;
		removedAssetNames = nil;
	})
	arg1.mounted = false
	arg1.frameRef = Roact_upvr.createRef()
	local any_createBinding_result1_2, any_createBinding_result2 = Roact_upvr.createBinding(false)
	arg1.topGradientVisibleBinding = any_createBinding_result1_2
	arg1.updateTopGradientVisibleBinding = any_createBinding_result2
	local any_createBinding_result1, any_createBinding_result2_2 = Roact_upvr.createBinding(false)
	arg1.bottomGradientVisibleBinding = any_createBinding_result1
	arg1.updateBottomGradientVisibleBinding = any_createBinding_result2_2
	arg1.addedSectionRef = Roact_upvr.createRef()
	arg1.removedSectionRef = Roact_upvr.createRef()
	arg1.noChangedAssetsRef = Roact_upvr.createRef()
	arg1.lastWasScrollable = nil
	function arg1.checkIsScrollable() -- Line 59
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		local any_getValue_result1_2 = arg1.frameRef:getValue()
		local var18
		if not any_getValue_result1_2 then
		else
			var18 = arg1.props.itemListScrollableUpdated
			if not var18 then return end
			if any_getValue_result1_2.AbsoluteSize.Y >= arg1.state.canvasSizeY then
				var18 = false
			else
				var18 = true
			end
			if var18 ~= arg1.lastWasScrollable then
				arg1.lastWasScrollable = var18
				arg1.props.itemListScrollableUpdated(var18, any_getValue_result1_2.AbsoluteSize.Y)
			end
		end
	end
	function arg1.onContentSizeChanged(arg1_2) -- Line 77
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		arg1:setState({
			canvasSizeY = arg1_2.AbsoluteContentSize.Y;
		})
	end
	function arg1.firstEntryPositionChanged(arg1_3) -- Line 83
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		local any_getValue_result1 = arg1.frameRef:getValue()
		if not any_getValue_result1 then
		else
			if arg1_3.AbsolutePosition.Y < any_getValue_result1.AbsolutePosition.Y then
				arg1.updateTopGradientVisibleBinding(true)
				return
			end
			arg1.updateTopGradientVisibleBinding(false)
		end
	end
	function arg1.lastEntryPositionChanged(arg1_4) -- Line 96
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		local any_getValue_result1_3 = arg1.frameRef:getValue()
		if not any_getValue_result1_3 then
		else
			if any_getValue_result1_3.AbsolutePosition.Y + any_getValue_result1_3.AbsoluteSize.Y < arg1_4.AbsolutePosition.Y + arg1_4.AbsoluteSize.Y then
				arg1.updateBottomGradientVisibleBinding(true)
				return
			end
			arg1.updateBottomGradientVisibleBinding(false)
		end
	end
	function arg1.loadAssetNames() -- Line 111
		--[[ Upvalues[2]:
			[1]: GetAssetsDifference_upvr (copied, readonly)
			[2]: arg1 (readonly)
		]]
		coroutine.wrap(function() -- Line 112
			--[[ Upvalues[2]:
				[1]: GetAssetsDifference_upvr (copied, readonly)
				[2]: arg1 (copied, readonly)
			]]
			GetAssetsDifference_upvr(arg1.props.humanoidDescription):andThen(function(arg1_5) -- Line 113
				--[[ Upvalues[1]:
					[1]: arg1 (copied, readonly)
				]]
				if arg1.mounted then
					arg1.props.addAnalyticsInfo(arg1_5.addedAssetIds, arg1_5.removedAssetIds)
					arg1:setState({
						loading = false;
						addedAssetNames = arg1_5.addedNames;
						removedAssetNames = arg1_5.removedNames;
					})
				end
			end, function(arg1_6) -- Line 123
				--[[ Upvalues[1]:
					[1]: arg1 (copied, readonly)
				]]
				if arg1.mounted then
					arg1:setState({
						loading = false;
					})
				end
			end)
		end)()
	end
	function arg1.onRetryLoading() -- Line 133
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		arg1:setState({
			loading = true;
		})
		if arg1.props.humanoidDescription then
			arg1.loadAssetNames()
		else
			arg1.props.retryLoadDescription()
		end
	end
end
local ListSection_upvr = require(script.ListSection)
function any_extend_result1.createEntriesList(arg1) -- Line 146
	--[[ Upvalues[4]:
		[1]: RobloxTranslator_upvr (readonly)
		[2]: Roact_upvr (readonly)
		[3]: RoactGamepad_upvr (readonly)
		[4]: ListSection_upvr (readonly)
	]]
	local module_2 = {}
	if 0 < #arg1.state.addedAssetNames then
		local tbl_5 = {
			headerText = RobloxTranslator_upvr:FormatByKey("CoreScripts.AvatarEditorPrompts.Adding");
			items = arg1.state.addedAssetNames;
			layoutOrder = 1;
		}
		local var44 = true
		tbl_5.isFirstSection = var44
		if #arg1.state.removedAssetNames ~= 0 then
			var44 = false
		else
			var44 = true
		end
		tbl_5.isLastSection = var44
		tbl_5.NextSelectionDown = arg1.removedSectionRef
		tbl_5[Roact_upvr.Ref] = arg1.addedSectionRef
		table.insert(module_2, Roact_upvr.createElement(RoactGamepad_upvr.Focusable[ListSection_upvr], tbl_5))
		if 0 < #arg1.state.removedAssetNames then
			table.insert(module_2, Roact_upvr.createElement("Frame", {
				BackgroundTransparency = 1;
				Size = UDim2.new(1, 0, 0, 20);
				LayoutOrder = 2;
			}))
		end
	end
	if 0 < #arg1.state.removedAssetNames then
		local tbl_2 = {
			headerText = RobloxTranslator_upvr:FormatByKey("CoreScripts.AvatarEditorPrompts.Removing");
			items = arg1.state.removedAssetNames;
		}
		local var47 = 3
		tbl_2.layoutOrder = var47
		if #arg1.state.addedAssetNames ~= 0 then
			var47 = false
		else
			var47 = true
		end
		tbl_2.isFirstSection = var47
		tbl_2.isLastSection = true
		tbl_2.NextSelectionUp = arg1.addedSectionRef
		tbl_2[Roact_upvr.Ref] = arg1.removedSectionRef
		table.insert(module_2, Roact_upvr.createElement(RoactGamepad_upvr.Focusable[ListSection_upvr], tbl_2))
	end
	local var48 = false
	if #arg1.state.addedAssetNames == 0 then
		if #arg1.state.removedAssetNames ~= 0 then
			var48 = false
		else
			var48 = true
		end
	end
	if var48 then
		table.insert(module_2, Roact_upvr.createElement(RoactGamepad_upvr.Focusable[ListSection_upvr], {
			headerText = RobloxTranslator_upvr:FormatByKey("CoreScripts.AvatarEditorPrompts.NoChangedAssets");
			items = {};
			layoutOrder = 1;
			isFirstSection = true;
			isLastSection = true;
			[Roact_upvr.Ref] = arg1.noChangedAssetsRef;
		}))
	end
	return module_2
end
local withStyle_upvr = UIBlox.Style.withStyle
local VerticalScrollViewWithMargin_upvr = UIBlox.App.Container.VerticalScrollViewWithMargin
function any_extend_result1.renderItemsList(arg1) -- Line 215
	--[[ Upvalues[4]:
		[1]: withStyle_upvr (readonly)
		[2]: Roact_upvr (readonly)
		[3]: RoactGamepad_upvr (readonly)
		[4]: VerticalScrollViewWithMargin_upvr (readonly)
	]]
	return withStyle_upvr(function(arg1_7) -- Line 216
		--[[ Upvalues[4]:
			[1]: arg1 (readonly)
			[2]: Roact_upvr (copied, readonly)
			[3]: RoactGamepad_upvr (copied, readonly)
			[4]: VerticalScrollViewWithMargin_upvr (copied, readonly)
		]]
		local Theme = arg1_7.Theme
		local any_createEntriesList_result1 = arg1:createEntriesList()
		any_createEntriesList_result1.Layout = Roact_upvr.createElement("UIListLayout", {
			FillDirection = Enum.FillDirection.Vertical;
			HorizontalAlignment = Enum.HorizontalAlignment.Left;
			Padding = UDim.new(0, 10);
			SortOrder = Enum.SortOrder.LayoutOrder;
			[Roact_upvr.Change.AbsoluteContentSize] = arg1.onContentSizeChanged;
		})
		return Roact_upvr.createElement(RoactGamepad_upvr.Focusable.Frame, {
			defaultChild = arg1.addedSectionRef;
			Size = UDim2.fromScale(1, 1);
			BackgroundTransparency = 1;
			[Roact_upvr.Ref] = arg1.frameRef;
		}, {
			TopGradient = Roact_upvr.createElement("Frame", {
				Visible = arg1.topGradientVisibleBinding;
				Size = UDim2.new(1, 0, 0, 30);
				Position = UDim2.fromScale(0, 0);
				BackgroundColor3 = Color3.new(1, 1, 1);
				BorderSizePixel = 0;
				ZIndex = 2;
			}, {
				UIGradient = Roact_upvr.createElement("UIGradient", {
					Rotation = 90;
					Color = ColorSequence.new({ColorSequenceKeypoint.new(0, Theme.BackgroundUIDefault.Color), ColorSequenceKeypoint.new(1, Theme.BackgroundUIDefault.Color)});
					Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0, 0), NumberSequenceKeypoint.new(1, 1)});
				});
			});
			ScrollView = Roact_upvr.createElement(VerticalScrollViewWithMargin_upvr, {
				size = UDim2.fromScale(1, 1);
				canvasSizeY = UDim.new(0, arg1.state.canvasSizeY);
			}, any_createEntriesList_result1);
			BottomGradient = Roact_upvr.createElement("Frame", {
				Visible = arg1.bottomGradientVisibleBinding;
				Size = UDim2.new(1, 0, 0, 30);
				Position = UDim2.fromScale(0, 1);
				AnchorPoint = Vector2.new(0, 1);
				BackgroundColor3 = Color3.new(1, 1, 1);
				BorderSizePixel = 0;
				ZIndex = 2;
			}, {
				UIGradient = Roact_upvr.createElement("UIGradient", {
					Rotation = 90;
					Color = ColorSequence.new({ColorSequenceKeypoint.new(0, Theme.BackgroundUIDefault.Color), ColorSequenceKeypoint.new(1, Theme.BackgroundUIDefault.Color)});
					Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0, 1), NumberSequenceKeypoint.new(1, 0)});
				});
			});
		})
	end)
end
local ShimmerPanel_upvr = UIBlox.App.Loading.ShimmerPanel
function any_extend_result1.renderLoading(arg1) -- Line 292
	--[[ Upvalues[2]:
		[1]: Roact_upvr (readonly)
		[2]: ShimmerPanel_upvr (readonly)
	]]
	return Roact_upvr.createElement(ShimmerPanel_upvr, {
		Size = UDim2.fromScale(1, 1);
		Position = UDim2.fromScale(0.5, 0.5);
		AnchorPoint = Vector2.new(0.5, 0.5);
	})
end
local EmptyState_upvr = UIBlox.App.Indicator.EmptyState
function any_extend_result1.renderFailed(arg1) -- Line 300
	--[[ Upvalues[3]:
		[1]: Roact_upvr (readonly)
		[2]: EmptyState_upvr (readonly)
		[3]: RobloxTranslator_upvr (readonly)
	]]
	return Roact_upvr.createElement(EmptyState_upvr, {
		text = RobloxTranslator_upvr:FormatByKey("CoreScripts.AvatarEditorPrompts.ItemsListLoadingFailed");
		size = UDim2.fromScale(1, 1);
		onActivated = arg1.onRetryLoading;
	})
end
function any_extend_result1.render(arg1) -- Line 308
	local loading = arg1.state.loading
	if loading then
		loading = not arg1.props.loadingFailed
	end
	if loading then
		return arg1:renderLoading()
	end
	if arg1.state.addedAssetNames then
		return arg1:renderItemsList()
	end
	return arg1:renderFailed()
end
function any_extend_result1.didMount(arg1) -- Line 320
	arg1.mounted = true
	if arg1.props.humanoidDescription then
		arg1.loadAssetNames()
	end
	arg1.checkIsScrollable()
end
function any_extend_result1.didUpdate(arg1, arg2, arg3) -- Line 329
	--[[ Upvalues[1]:
		[1]: Roact_upvr (readonly)
	]]
	arg1.checkIsScrollable()
	if arg2.humanoidDescription ~= arg1.props.humanoidDescription then
		arg1:setState({
			loading = true;
			addedAssetNames = Roact_upvr.None;
			removedAssetNames = Roact_upvr.None;
		})
		arg1.loadAssetNames()
	end
end
function any_extend_result1.willUnmount(arg1) -- Line 343
	arg1.mounted = false
end
local AddAnalyticsInfo_upvr = require(Parent.Actions.AddAnalyticsInfo)
return require(CorePackages.Packages.RoactRodux).connect(nil, function(arg1) -- Line 347, Named "mapDispatchToProps"
	--[[ Upvalues[1]:
		[1]: AddAnalyticsInfo_upvr (readonly)
	]]
	return {
		addAnalyticsInfo = function(arg1_8) -- Line 349, Named "addAnalyticsInfo"
			--[[ Upvalues[2]:
				[1]: arg1 (readonly)
				[2]: AddAnalyticsInfo_upvr (copied, readonly)
			]]
			return arg1(AddAnalyticsInfo_upvr(arg1_8))
		end;
	}
end)(any_extend_result1)