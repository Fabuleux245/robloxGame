-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:47:22
-- Luau version 6, Types version 3
-- Time taken: 0.005133 seconds

local Parent = script:FindFirstAncestor("AppBlox").Parent
local Roact_upvr = require(Parent.Roact)
local t = require(Parent.t)
local UIBlox = require(Parent.UIBlox)
local ControlState_upvr = UIBlox.Core.Control.Enum.ControlState
local Images_upvr = UIBlox.App.ImageSet.Images
local ImageSetLabel_upvr = UIBlox.Core.ImageSet.ImageSetLabel
local withStyle_upvr = UIBlox.Core.Style.withStyle
local any_extend_result1 = Roact_upvr.Component:extend("ThumbnailButton")
any_extend_result1.validateProps = t.strictInterface({
	layoutOrder = t.optional(t.number);
	size = t.optional(t.UDim2);
	anchorPoint = t.optional(t.Vector2);
	position = t.optional(t.UDim2);
	itemKey = t.any;
	imageId = t.optional(t.string);
	isVideo = t.optional(t.boolean);
	useScaledPlayButton = t.optional(t.boolean);
	isSelected = t.optional(t.boolean);
	userInteractionEnabled = t.optional(t.boolean);
	onActivated = t.optional(t.callback);
	onPlayActivated = t.optional(t.callback);
})
any_extend_result1.defaultProps = {
	size = UDim2.fromScale(1, 1);
	imageId = "";
	isVideo = false;
	isSelected = false;
	userInteractionEnabled = true;
}
function any_extend_result1.init(arg1) -- Line 57
	--[[ Upvalues[1]:
		[1]: ControlState_upvr (readonly)
	]]
	arg1:setState({
		controlState = ControlState_upvr.Initialize;
	})
	function arg1.onStateChanged(arg1_2, arg2) -- Line 62
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		local tbl_2 = {}
		tbl_2.controlState = arg2
		arg1:setState(tbl_2)
	end
	function arg1.onActivated() -- Line 68
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		if arg1.props.onActivated then
			arg1.props.onActivated(arg1.props.itemKey)
		end
	end
	function arg1.onPlayActivated() -- Line 74
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		if arg1.props.onPlayActivated then
			arg1.props.onPlayActivated(arg1.props.itemKey)
		end
	end
end
local udim2_2_upvr = UDim2.fromScale(0.4, 0.512)
local udim2_4_upvr = UDim2.fromOffset(64, 48)
local Interactable_upvr = UIBlox.Core.Control.Interactable
local LoadableImage_upvr = UIBlox.App.Loading.LoadableImage
local Button_upvr = UIBlox.App.Button.Button
local ButtonType_upvr = UIBlox.App.Button.Enum.ButtonType
local udim2_3_upvr = UDim2.fromScale(0.25, 0.33)
local HoverButtonBackground_upvr = require(script.Parent.HoverButtonBackground)
function any_extend_result1.renderButton(arg1) -- Line 81
	--[[ Upvalues[13]:
		[1]: udim2_2_upvr (readonly)
		[2]: udim2_4_upvr (readonly)
		[3]: withStyle_upvr (readonly)
		[4]: ControlState_upvr (readonly)
		[5]: Roact_upvr (readonly)
		[6]: Interactable_upvr (readonly)
		[7]: LoadableImage_upvr (readonly)
		[8]: Button_upvr (readonly)
		[9]: ButtonType_upvr (readonly)
		[10]: Images_upvr (readonly)
		[11]: ImageSetLabel_upvr (readonly)
		[12]: udim2_3_upvr (readonly)
		[13]: HoverButtonBackground_upvr (readonly)
	]]
	local useScaledPlayButton_upvr = arg1.props.useScaledPlayButton
	local var26_upvw
	if useScaledPlayButton_upvr then
		var26_upvw = udim2_2_upvr
	else
		var26_upvw = udim2_4_upvr
	end
	return withStyle_upvr(function(arg1_3) -- Line 90
		--[[ Upvalues[13]:
			[1]: arg1 (readonly)
			[2]: ControlState_upvr (copied, readonly)
			[3]: Roact_upvr (copied, readonly)
			[4]: Interactable_upvr (copied, readonly)
			[5]: LoadableImage_upvr (copied, readonly)
			[6]: Button_upvr (copied, readonly)
			[7]: ButtonType_upvr (copied, readonly)
			[8]: var26_upvw (read and write)
			[9]: useScaledPlayButton_upvr (readonly)
			[10]: Images_upvr (copied, readonly)
			[11]: ImageSetLabel_upvr (copied, readonly)
			[12]: udim2_3_upvr (copied, readonly)
			[13]: HoverButtonBackground_upvr (copied, readonly)
		]]
		-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
		local isVideo = arg1.props.isVideo
		local var29
		if arg1.state.controlState ~= var29 then
		else
		end
		local function INLINED() -- Internal function, doesn't exist in bytecode
			var29 = arg1_3.Theme.BackgroundDefault
			return var29
		end
		if not arg1.props.isSelected or not INLINED() then
			var29 = arg1_3.Theme.BackgroundUIDefault
		end
		local module = {
			Corner = Roact_upvr.createElement("UICorner", {
				CornerRadius = UDim.new(0, 8);
			});
			Tile = Roact_upvr.createElement(LoadableImage_upvr, {
				Size = UDim2.fromScale(1, 1);
				cornerRadius = UDim.new(0, 8);
				Image = arg1.props.imageId;
				useShimmerAnimationWhileLoading = true;
				ZIndex = -1;
			});
		}
		if isVideo then
			local tbl = {
				buttonType = ButtonType_upvr.PrimaryContextual;
				size = var26_upvw;
				anchorPoint = Vector2.new(0.5, 0.5);
			}
			local udim2 = UDim2.fromScale(0.5, 0.5)
			tbl.position = udim2
			if useScaledPlayButton_upvr then
				udim2 = nil
			else
				udim2 = Images_upvr["icons/common/play"]
			end
			tbl.icon = udim2
			tbl.onActivated = arg1.onPlayActivated
		else
		end
		module.PlayButton = nil
		local var36
		if isVideo and useScaledPlayButton_upvr then
			var36 = Roact_upvr.createElement
			var36 = var36(ImageSetLabel_upvr, {
				Size = udim2_3_upvr;
				AnchorPoint = Vector2.new(0.5, 0.5);
				Position = UDim2.fromScale(0.5, 0.5);
				Image = Images_upvr["icons/common/play"];
				BackgroundTransparency = 1;
				ZIndex = 2;
			})
		else
			var36 = nil
		end
		module.PlayIcon = var36
		local function INLINED_2() -- Internal function, doesn't exist in bytecode
			var36 = Roact_upvr.createElement(HoverButtonBackground_upvr)
			return var36
		end
		if not true or not INLINED_2() then
			var36 = nil
		end
		module.HoverBackground = var36
		return Roact_upvr.createElement(Interactable_upvr, {
			LayoutOrder = arg1.props.layoutOrder;
			Size = arg1.props.size;
			AnchorPoint = arg1.props.anchorPoint;
			Position = arg1.props.position;
			AutoButtonColor = false;
			BackgroundColor3 = var29.Color;
			BackgroundTransparency = var29.Transparency;
			onStateChanged = arg1.onStateChanged;
			userInteractionEnabled = arg1.props.userInteractionEnabled;
			[Roact_upvr.Event.Activated] = arg1.onActivated;
		}, module)
	end)
end
local any_getIconSize_result1_upvr = UIBlox.App.ImageSet.getIconSize(UIBlox.App.ImageSet.Enum.IconSize.Large)
function any_extend_result1.renderEmptyState(arg1) -- Line 151
	--[[ Upvalues[5]:
		[1]: withStyle_upvr (readonly)
		[2]: Roact_upvr (readonly)
		[3]: ImageSetLabel_upvr (readonly)
		[4]: any_getIconSize_result1_upvr (readonly)
		[5]: Images_upvr (readonly)
	]]
	return withStyle_upvr(function(arg1_4) -- Line 152
		--[[ Upvalues[5]:
			[1]: arg1 (readonly)
			[2]: Roact_upvr (copied, readonly)
			[3]: ImageSetLabel_upvr (copied, readonly)
			[4]: any_getIconSize_result1_upvr (copied, readonly)
			[5]: Images_upvr (copied, readonly)
		]]
		return Roact_upvr.createElement("Frame", {
			LayoutOrder = arg1.props.layoutOrder;
			Size = arg1.props.size;
			AnchorPoint = arg1.props.anchorPoint;
			Position = arg1.props.position;
			BackgroundColor3 = arg1_4.Theme.BackgroundUIDefault.Color;
			BackgroundTransparency = arg1_4.Theme.BackgroundUIDefault.Transparency;
		}, {
			Corner = Roact_upvr.createElement("UICorner", {
				CornerRadius = UDim.new(0, 8);
			});
			Icon = Roact_upvr.createElement(ImageSetLabel_upvr, {
				Size = UDim2.fromOffset(any_getIconSize_result1_upvr, any_getIconSize_result1_upvr);
				AnchorPoint = Vector2.new(0.5, 0.5);
				Position = UDim2.fromScale(0.5, 0.5);
				Image = Images_upvr["icons/imageUnavailable"];
				ImageColor3 = arg1_4.Theme.UIDefault.Color;
				ImageTransparency = arg1_4.Theme.UIDefault.Transparency;
				BackgroundTransparency = 1;
			});
		})
	end)
end
function any_extend_result1.render(arg1) -- Line 182
	if arg1.props.imageId == "" then
		return arg1:renderEmptyState()
	end
	return arg1:renderButton()
end
return any_extend_result1