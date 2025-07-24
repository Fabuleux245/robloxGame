-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:10:32
-- Luau version 6, Types version 3
-- Time taken: 0.004306 seconds

local Parent_3 = script.Parent
local Parent_2 = Parent_3.Parent
local Parent = Parent_2.Parent
local Roact_upvr = require(Parent.Roact)
local Otter_upvr = require(Parent.Otter)
local UIBlox = require(Parent.UIBlox)
local LoadingOverlayState_upvr = require(Parent_3.LoadingOverlayState)
local any_extend_result1 = Roact_upvr.Component:extend(script.Name)
local tbl_5_upvr = {
	dampingRatio = 1;
	frequency = 1;
}
function any_extend_result1.init(arg1) -- Line 33
	--[[ Upvalues[3]:
		[1]: Roact_upvr (readonly)
		[2]: Otter_upvr (readonly)
		[3]: tbl_5_upvr (readonly)
	]]
	local any_createBinding_result1, any_createBinding_result2 = Roact_upvr.createBinding(0)
	arg1.motor = Otter_upvr.createSingleMotor(0)
	arg1.motor:start()
	arg1.motor:onStep(any_createBinding_result2)
	arg1.animationProgress = any_createBinding_result1
	local var12 = Otter_upvr
	if arg1.props.loadingState ~= nil then
		var12 = 1
	else
		var12 = 0
	end
	arg1.motor:setGoal(var12.spring(var12, tbl_5_upvr))
end
function any_extend_result1.getLoadingMessage(arg1, arg2, arg3) -- Line 45
	--[[ Upvalues[1]:
		[1]: LoadingOverlayState_upvr (readonly)
	]]
	if arg3 == LoadingOverlayState_upvr.PurchasingItem then
		return arg2.PurchasingItem
	end
	if arg3 == LoadingOverlayState_upvr.PurchasingRobux then
		return arg2.PurchasingRobux
	end
	if arg3 == LoadingOverlayState_upvr.WaitingForPurchase then
		return arg2.WaitingForPurchase
	end
	if arg3 == LoadingOverlayState_upvr.WaitingForRobux then
		return arg2.WaitingForRobux
	end
	return nil
end
function any_extend_result1.didUpdate(arg1, arg2, arg3) -- Line 58
	--[[ Upvalues[2]:
		[1]: Otter_upvr (readonly)
		[2]: tbl_5_upvr (readonly)
	]]
	local props = arg1.props
	if arg2.loadingState ~= props.loadingState then
		local var14 = Otter_upvr
		if props.loadingState ~= nil then
			var14 = 1
		else
			var14 = 0
		end
		arg1.motor:setGoal(var14.spring(var14, tbl_5_upvr))
	end
end
function any_extend_result1.willUnmount(arg1) -- Line 66
	arg1.motor:destroy()
end
local MultiTextLocalizer_upvr = require(Parent_2.Locale.MultiTextLocalizer)
local function render(arg1) -- Line 70
	--[[ Upvalues[2]:
		[1]: Roact_upvr (readonly)
		[2]: MultiTextLocalizer_upvr (readonly)
	]]
	local module = {
		keys = {
			PurchasingItem = {
				key = "IAPExperience.Loading.Text.PurchasingItem";
			};
			PurchasingRobux = {
				key = "IAPExperience.Loading.Text.PurchasingRobux";
			};
			WaitingForPurchase = {
				key = "IAPExperience.Loading.Text.WaitingForPurchase";
			};
			WaitingForRobux = {
				key = "IAPExperience.Loading.Text.WaitingForRobux";
			};
		};
	}
	function module.render(arg1_2) -- Line 86
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		return arg1:renderAlert(arg1_2)
	end
	return Roact_upvr.createElement(MultiTextLocalizer_upvr, module)
end
any_extend_result1.render = render
local withStyle_upvr = UIBlox.Core.Style.withStyle
local LoadingSpinner_upvr = UIBlox.App.Loading.LoadingSpinner
function any_extend_result1.renderAlert(arg1, arg2) -- Line 92
	--[[ Upvalues[4]:
		[1]: LoadingOverlayState_upvr (readonly)
		[2]: withStyle_upvr (readonly)
		[3]: Roact_upvr (readonly)
		[4]: LoadingSpinner_upvr (readonly)
	]]
	local props_2_upvr = arg1.props
	local var25_upvr = false
	if props_2_upvr.loadingState ~= LoadingOverlayState_upvr.None then
		if props_2_upvr.loadingState == nil then
			var25_upvr = false
		else
			var25_upvr = true
		end
	end
	local any_getLoadingMessage_result1_upvr = arg1:getLoadingMessage(arg2, props_2_upvr.loadingState)
	return withStyle_upvr(function(arg1_3) -- Line 98
		--[[ Upvalues[6]:
			[1]: Roact_upvr (copied, readonly)
			[2]: arg1 (readonly)
			[3]: props_2_upvr (readonly)
			[4]: var25_upvr (readonly)
			[5]: LoadingSpinner_upvr (copied, readonly)
			[6]: any_getLoadingMessage_result1_upvr (readonly)
		]]
		local Theme_upvr = arg1_3.Theme
		local Font = arg1_3.Font
		local module_2 = {
			StopPropagationOverlay = Roact_upvr.createElement("TextButton", {
				Active = false;
				BorderSizePixel = 0;
				BackgroundTransparency = 1;
				Selectable = false;
				Size = UDim2.new(1, 0, 1, 0);
				Text = "";
				ZIndex = 0;
			});
		}
		local tbl_4 = {
			Layout = Roact_upvr.createElement("UIListLayout", {
				FillDirection = Enum.FillDirection.Vertical;
				HorizontalAlignment = Enum.HorizontalAlignment.Center;
				VerticalAlignment = Enum.VerticalAlignment.Center;
				SortOrder = Enum.SortOrder.LayoutOrder;
				Padding = UDim.new(0, 20);
				[Roact_upvr.Change.AbsoluteContentSize] = arg1.onListLayoutAbsoluteContentSizeChanged;
			});
		}
		local var37
		local function INLINED() -- Internal function, doesn't exist in bytecode
			var37 = var37(LoadingSpinner_upvr, tbl_3)
			tbl_3.anchorPoint = Vector2.new(0.5, 0.5)
			tbl_3.position = UDim2.fromScale(0.5, 0.5)
			tbl_3.size = UDim2.fromOffset(48, 48)
			local tbl_3 = {}
			var37 = Roact_upvr.createElement
			return var37
		end
		if not var25_upvr or not INLINED() then
			var37 = nil
		end
		tbl_4.Spinner = var37
		local function INLINED_2() -- Internal function, doesn't exist in bytecode
			var37 = var37("TextLabel", tbl_2)
			tbl_2.TextTransparency = Theme_upvr.TextDefault.Transparency
			tbl_2.TextColor3 = Theme_upvr.TextDefault.Color
			tbl_2.TextSize = Font.BaseSize * Font.Body.RelativeSize
			tbl_2.Text = any_getLoadingMessage_result1_upvr
			tbl_2.Font = Font.Body.Font
			tbl_2.TextWrapped = true
			tbl_2.AutomaticSize = Enum.AutomaticSize.XY
			tbl_2.BackgroundTransparency = 1
			tbl_2.LayoutOrder = 1
			local tbl_2 = {}
			var37 = Roact_upvr.createElement
			return var37
		end
		if not any_getLoadingMessage_result1_upvr or not INLINED_2() then
			var37 = nil
		end
		tbl_4.PreText = var37
		module_2.MiddleContent = Roact_upvr.createElement("Frame", {
			Size = UDim2.new(1, 0, 1, 0);
			BorderSizePixel = 0;
			BackgroundTransparency = 1;
			ZIndex = 1;
		}, tbl_4)
		local tbl = {}
		var37 = 1
		tbl.Size = UDim2.new(var37, 0, 1, 0)
		tbl.BorderSizePixel = 0
		tbl.BackgroundTransparency = 1
		var37 = arg1.props
		module_2.Children = Roact_upvr.createElement("Frame", tbl, var37[Roact_upvr.Children])
		return Roact_upvr.createElement("Frame", {
			BackgroundColor3 = Theme_upvr.BackgroundUIContrast.Color;
			BackgroundTransparency = arg1.animationProgress:map(function(arg1_4) -- Line 103
				--[[ Upvalues[2]:
					[1]: props_2_upvr (copied, readonly)
					[2]: Theme_upvr (readonly)
				]]
				if props_2_upvr.showOverlay then
					if props_2_upvr.shouldAnimate then
						return 1 - (1 - Theme_upvr.BackgroundUIContrast.Transparency) * arg1_4
					end
					return Theme_upvr.BackgroundUIContrast.Transparency
				end
				return 1
			end);
			Size = UDim2.new(1, 0, 1, 0);
			Visible = props_2_upvr.showOverlay;
		}, module_2)
	end)
end
return any_extend_result1