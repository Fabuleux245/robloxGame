-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:44:21
-- Luau version 6, Types version 3
-- Time taken: 0.012181 seconds

local CorePackages = game:GetService("CorePackages")
local RobloxGui = game:GetService("CoreGui"):WaitForChild("RobloxGui")
local Roact_upvr = require(CorePackages.Packages.Roact)
local UIBlox = require(CorePackages.Packages.UIBlox)
local t = require(CorePackages.Packages.t)
local FrontButtonController_upvr = require(RobloxGui.Modules.Settings.FrontButtonController)
local any_extend_result1 = Roact_upvr.PureComponent:extend("MenuFrontButton")
local Theme_upvr = require(RobloxGui.Modules.Settings.Theme)
local tbl_3 = {
	HubBar = t.instanceOf("ImageLabel");
	frontEnabled = t.boolean;
	FrontBarRef = t.optional(t.table);
	LayoutOrder = t.optional(t.integer);
}
any_extend_result1.validateProps = t.strictInterface(tbl_3)
local tbl = {}
tbl_3 = game:DefineFastFlag("ShowTeleportHistoryFrontButton", false)
local var11 = tbl_3
if var11 then
	var11 = FrontButtonController_upvr.hasReturnUniverse()
end
tbl.frontEnabled = var11
any_extend_result1.defaultProps = tbl
function any_extend_result1.init(arg1) -- Line 33
	--[[ Upvalues[2]:
		[1]: FrontButtonController_upvr (readonly)
		[2]: Roact_upvr (readonly)
	]]
	arg1:setState({
		text = FrontButtonController_upvr.getMenuText();
	})
	local any_createBinding_result1_2, any_createBinding_result2_3 = Roact_upvr.createBinding(nil)
	arg1.sizeBinding = any_createBinding_result1_2
	arg1.updateSizeBinding = any_createBinding_result2_3
	local any_createBinding_result1_6, any_createBinding_result2_6 = Roact_upvr.createBinding(nil)
	arg1.sizeConstraintBinding = any_createBinding_result1_6
	arg1.updateSizeConstraintBinding = any_createBinding_result2_6
	local any_createBinding_result1_5, any_createBinding_result2 = Roact_upvr.createBinding(nil)
	arg1.visibleBinding = any_createBinding_result1_5
	arg1.updateVisibleBinding = any_createBinding_result2
	local any_createBinding_result1_3, any_createBinding_result2_5 = Roact_upvr.createBinding(nil)
	arg1.buttonHeightBinding = any_createBinding_result1_3
	arg1.updateButtonHeightBinding = any_createBinding_result2_5
	local any_createBinding_result1_4, any_createBinding_result2_2 = Roact_upvr.createBinding(nil)
	arg1.textSizeBinding = any_createBinding_result1_4
	arg1.updateTextSizeBinding = any_createBinding_result2_2
	local any_createBinding_result1, any_createBinding_result2_4 = Roact_upvr.createBinding(nil)
	arg1.textSizeConstraintBinding = any_createBinding_result1
	arg1.updateTextSizeConstraintBinding = any_createBinding_result2_4
	arg1.textLabelRef = Roact_upvr.createRef()
end
function any_extend_result1.didMount(arg1) -- Line 45
	arg1.updateSizeBinding(arg1.props.HubBar.Size)
	arg1.updateVisibleBinding(arg1.props.HubBar.Visible)
	arg1:updateViewport()
end
function any_extend_result1.didUpdate(arg1, arg2) -- Line 50
	if arg1.props.HubBar ~= arg2.HubBar then
		arg1.updateSizeBinding(arg1.props.HubBar.Size)
		arg1.updateVisibleBinding(arg1.props.HubBar.Visible)
	end
end
local Utility_upvr = require(RobloxGui.Modules.Settings.Utility)
local any_IsEnabled_result1_upvr = require(RobloxGui.Modules.TenFootInterface):IsEnabled()
function any_extend_result1.updateViewport(arg1) -- Line 56
	--[[ Upvalues[3]:
		[1]: Theme_upvr (readonly)
		[2]: Utility_upvr (readonly)
		[3]: any_IsEnabled_result1_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local any_textSize_result1 = Theme_upvr.textSize(24)
	if Utility_upvr:IsSmallTouchScreen() then
		any_textSize_result1 = Theme_upvr.textSize(18)
	elseif any_IsEnabled_result1_upvr then
		any_textSize_result1 = Theme_upvr.textSize(36)
	end
	arg1.updateTextSizeConstraintBinding(any_textSize_result1)
	local any_IsPortrait_result1 = Utility_upvr:IsPortrait()
	if any_IsEnabled_result1_upvr then
	else
		local var29
	end
	if any_IsPortrait_result1 or Utility_upvr:IsSmallTouchScreen() then
		if not any_IsPortrait_result1 or not Theme_upvr.textSize(16) then
		end
		any_textSize_result1 = Theme_upvr.textSize(24)
	end
	arg1.updateTextSizeBinding(any_textSize_result1)
	arg1.updateButtonHeightBinding(Theme_upvr.ButtonHeight)
	if arg1.textLabelRef:getValue() and arg1.props.FrontBarRef:getValue() then
		arg1.updateSizeConstraintBinding(Vector2.new((arg1.props.FrontBarRef:getValue().AbsoluteSize.X) - (arg1.textLabelRef:getValue().AbsolutePosition.X - arg1.props.FrontBarRef:getValue().AbsolutePosition.X), math.huge))
	end
end
local ExternalEventConnection_upvr = require(CorePackages.Workspace.Packages.RoactUtils).ExternalEventConnection
local ImageSetLabel_upvr = UIBlox.Core.ImageSet.ImageSetLabel
local Images_upvr = UIBlox.App.ImageSet.Images
function any_extend_result1.render(arg1) -- Line 80
	--[[ Upvalues[6]:
		[1]: Roact_upvr (readonly)
		[2]: ExternalEventConnection_upvr (readonly)
		[3]: Theme_upvr (readonly)
		[4]: FrontButtonController_upvr (readonly)
		[5]: ImageSetLabel_upvr (readonly)
		[6]: Images_upvr (readonly)
	]]
	local module = {}
	local tbl_4 = {
		event = arg1.props.HubBar:GetPropertyChangedSignal("Size");
	}
	local function callback() -- Line 108
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		arg1.updateSizeBinding(arg1.props.HubBar.Size)
	end
	tbl_4.callback = callback
	module.SizeConnection = Roact_upvr.createElement(ExternalEventConnection_upvr, tbl_4)
	local tbl_2 = {
		event = arg1.props.HubBar:GetPropertyChangedSignal("Visible");
	}
	local function callback() -- Line 114
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		arg1.updateVisibleBinding(arg1.props.HubBar.Visible)
	end
	tbl_2.callback = callback
	module.VisibleConnection = Roact_upvr.createElement(ExternalEventConnection_upvr, tbl_2)
	module.ViewportSizeChangedConnection = Roact_upvr.createElement(ExternalEventConnection_upvr, {
		event = workspace.CurrentCamera:GetPropertyChangedSignal("ViewportSize");
		callback = function() -- Line 120, Named "callback"
			--[[ Upvalues[1]:
				[1]: arg1 (readonly)
			]]
			arg1:updateViewport()
		end;
	})
	module.UIPadding = Roact_upvr.createElement("UIPadding", {
		PaddingBottom = UDim.new(0, 6);
		PaddingTop = UDim.new(0, 10);
	})
	module.ImageButton = Roact_upvr.createElement("ImageButton", {
		Image = "";
		BorderSizePixel = 0;
		BackgroundColor3 = Theme_upvr.color("DefaultButton");
		BackgroundTransparency = Theme_upvr.transparency("DefaultButton", 1);
		Position = UDim2.new(0, 0, 0, 0);
		Size = arg1.buttonHeightBinding:map(function(arg1_4) -- Line 134
			if arg1_4 then
				return UDim2.new(0, 0, 0, arg1_4)
			end
			return UDim2.new()
		end);
		AutomaticSize = Enum.AutomaticSize.X;
		ScaleType = Enum.ScaleType.Stretch;
		SliceCenter = Rect.new(8, 6, 46, 44);
		[Roact_upvr.Event.MouseEnter] = function(arg1_5) -- Line 144
			--[[ Upvalues[1]:
				[1]: Theme_upvr (copied, readonly)
			]]
			arg1_5.BackgroundColor3 = Theme_upvr.color("DefaultButtonHover")
			arg1_5.BackgroundTransparency = Theme_upvr.transparency("DefaultButtonHover")
		end;
		[Roact_upvr.Event.MouseLeave] = function(arg1_6) -- Line 148
			--[[ Upvalues[1]:
				[1]: Theme_upvr (copied, readonly)
			]]
			arg1_6.BackgroundColor3 = Theme_upvr.color("DefaultButton")
			arg1_6.BackgroundTransparency = Theme_upvr.transparency("DefaultButton")
		end;
		[Roact_upvr.Event.Activated] = function(arg1_7) -- Line 152
			--[[ Upvalues[1]:
				[1]: FrontButtonController_upvr (copied, readonly)
			]]
			FrontButtonController_upvr.initiateFrontButtonTeleport()
		end;
	}, {
		UICorner = Roact_upvr.createElement("UICorner", {
			CornerRadius = Theme_upvr.DefaultCornerRadius;
		});
		UIStroke = Roact_upvr.createElement("UIStroke", {
			Color = Theme_upvr.color("DefaultButtonStroke");
			Transparency = Theme_upvr.transparency("DefaultButtonStroke");
			Thickness = Theme_upvr.DefaultStokeThickness;
		});
		Frame = Roact_upvr.createElement("Frame", {
			Size = UDim2.new(1, 0, 1, 0);
			Position = UDim2.new(0, 4, 0, 0);
			BorderSizePixel = 0;
			BackgroundTransparency = 1;
		}, {
			UIPadding = Roact_upvr.createElement("UIPadding", {
				PaddingRight = UDim.new(0, 12);
			});
			Container = Roact_upvr.createElement("UIListLayout", {
				FillDirection = Enum.FillDirection.Horizontal;
				HorizontalAlignment = Enum.HorizontalAlignment.Right;
				VerticalAlignment = Enum.VerticalAlignment.Center;
				SortOrder = Enum.SortOrder.LayoutOrder;
			});
			TextLabel = Roact_upvr.createElement("TextLabel", {
				Text = arg1.state.text;
				Size = UDim2.new(0, 0, 1, 0);
				AutomaticSize = Enum.AutomaticSize.X;
				BorderSizePixel = 0;
				BackgroundTransparency = 1;
				TextXAlignment = Enum.TextXAlignment.Left;
				TextColor3 = Color3.fromRGB(255, 255, 255);
				TextYAlignment = Enum.TextYAlignment.Center;
				Font = Theme_upvr.font(Enum.Font.SourceSansBold, "Bold");
				TextSize = arg1.textSizeBinding;
				TextScaled = true;
				TextWrapped = true;
				LayoutOrder = 1;
				[Roact_upvr.Ref] = arg1.textLabelRef;
			}, {
				UITextSizeConstraint = Roact_upvr.createElement("UITextSizeConstraint", {
					MaxTextSize = arg1.textSizeConstraintBinding;
				});
				UISizeConstraint = Roact_upvr.createElement("UISizeConstraint", {
					MaxSize = arg1.sizeConstraintBinding;
				});
			});
			ImageLabel = Roact_upvr.createElement(ImageSetLabel_upvr, {
				Image = Images_upvr["icons/actions/cycleRight"];
				Size = UDim2.new(1, 0, 0.75, 0);
				BorderSizePixel = 0;
				BackgroundTransparency = 1;
				LayoutOrder = 2;
			}, {
				UIAspectRatioConstraint = Roact_upvr.createElement("UIAspectRatioConstraint", {});
			});
		});
	})
	return Roact_upvr.createElement("Frame", {
		BorderSizePixel = 0;
		BackgroundTransparency = 1;
		AnchorPoint = Vector2.new(1, 0);
		Position = UDim2.new(1, 0, 0, 0);
		LayoutOrder = arg1.props.LayoutOrder;
		Visible = Roact_upvr.joinBindings({arg1.state.text, arg1.visibleBinding}):map(function(arg1_2) -- Line 89
			--[[ Upvalues[1]:
				[1]: arg1 (readonly)
			]]
			local frontEnabled = arg1.props.frontEnabled
			if frontEnabled then
				frontEnabled = false
				if arg1_2[1] ~= nil then
					frontEnabled = arg1_2[2]
				end
			end
			return frontEnabled
		end);
		Size = Roact_upvr.joinBindings({arg1.sizeBinding, arg1.buttonHeightBinding}):map(function(arg1_3) -- Line 92
			local _1 = arg1_3[1]
			local _2 = arg1_3[2]
			if _1 and _2 then
				return UDim2.new(UDim.new(_1.X.Scale * 0.5, _1.X.Offset * 0.5), UDim.new(0, _2 + 6))
			end
			return UDim2.new()
		end);
		[Roact_upvr.Ref] = arg1.props.FrontBarRef;
	}, module)
end
return any_extend_result1