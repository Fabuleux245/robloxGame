-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:04:47
-- Luau version 6, Types version 3
-- Time taken: 0.006794 seconds

local CorePackages = game:GetService("CorePackages")
local Roact_upvr = require(CorePackages.Packages.Roact)
local t = require(CorePackages.Packages.t)
local Parent = script.Parent.Parent
local getSizeSpringFromSettings_upvr = require(Parent.Helpers.getSizeSpringFromSettings)
local getTransparencySpringFromSettings_upvr = require(Parent.Helpers.getTransparencySpringFromSettings)
local any_extend_result1 = Roact_upvr.PureComponent:extend("ChatBubbleDistant")
any_extend_result1.validateProps = t.strictInterface({
	width = t.optional(t.number);
	height = t.optional(t.number);
	fadingOut = t.optional(t.boolean);
	onFadeOut = t.optional(t.callback);
	chatSettings = require(Parent.Types).IChatSettings;
	renderInsert = t.optional(t.callback);
	insertSize = t.optional(t.Vector2);
})
any_extend_result1.defaultProps = {
	width = 32;
	height = 16;
}
local function _(arg1) -- Line 41, Named "getFullHeight"
	local height_2 = arg1.height
	if arg1.renderInsert then
		height_2 = math.max(height_2, arg1.insertSize.Y)
	end
	return height_2 + arg1.chatSettings.Padding * 2
end
local Otter_upvr = require(CorePackages.Packages.Otter)
function any_extend_result1.init(arg1, arg2) -- Line 50
	--[[ Upvalues[2]:
		[1]: Roact_upvr (readonly)
		[2]: Otter_upvr (readonly)
	]]
	local any_createBinding_result1_2, any_createBinding_result2_3 = Roact_upvr.createBinding(0)
	arg1.width = any_createBinding_result1_2
	arg1.updateWidth = any_createBinding_result2_3
	arg1.widthMotor = Otter_upvr.createSingleMotor(0)
	local function var14(arg1_2) -- Line 53
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		arg1.updateWidth(math.round(arg1_2))
	end
	arg1.widthMotor:onStep(var14)
	var14 = arg2.height
	local var15 = var14
	if arg2.renderInsert then
		var15 = math.max(var15, arg2.insertSize.Y)
	end
	local any_createBinding_result1, any_createBinding_result2 = Roact_upvr.createBinding(var15 + arg2.chatSettings.Padding * 2)
	arg1.height = any_createBinding_result1
	arg1.updateHeight = any_createBinding_result2
	arg1.frameSize = Roact_upvr.joinBindings({arg1.width, arg1.height}):map(function(arg1_3) -- Line 59
		return UDim2.fromOffset(arg1_3[1], arg1_3[2])
	end)
	local any_createBinding_result1_3, any_createBinding_result2_2 = Roact_upvr.createBinding(1)
	arg1.transparency = any_createBinding_result1_3
	arg1.updateTransparency = any_createBinding_result2_2
	arg1.transparencyMotor = Otter_upvr.createSingleMotor(1)
	arg1.transparencyMotor:onStep(arg1.updateTransparency)
	if arg2.fadingOut then
		arg1:fadeOut()
	end
end
function any_extend_result1.getDerivedStateFromProps(arg1, arg2) -- Line 74
	local var22
	if arg1.renderInsert then
		var22 = arg1.width + arg1.insertSize.X + arg1.chatSettings.Padding * 2
	else
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		var22 = arg1.width + arg1.chatSettings.Padding * 2
	end
	local height = arg1.height
	if arg1.renderInsert then
		height = math.max(height, arg1.insertSize.Y)
	end
	local var24 = height + arg1.chatSettings.Padding * 2
	if var22 ~= arg2.fullWidth or var24 ~= arg2.fullHeight then
		return {
			fullWidth = var22;
			fullHeight = var24;
		}
	end
	return nil
end
local Cryo_upvr = require(CorePackages.Packages.Cryo)
local AppFonts_upvr = require(CorePackages.Workspace.Packages.Style).AppFonts
function any_extend_result1.render(arg1) -- Line 96
	--[[ Upvalues[3]:
		[1]: Roact_upvr (readonly)
		[2]: Cryo_upvr (readonly)
		[3]: AppFonts_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local chatSettings = arg1.props.chatSettings
	local BackgroundImage = chatSettings.BackgroundImage
	local BackgroundGradient = chatSettings.BackgroundGradient
	local var31
	if not arg1.props.renderInsert or not arg1.props.insertSize.X then
	end
	local module = {
		Scale = Roact_upvr.createElement("UIScale", {
			Scale = 0.75;
		});
	}
	local TailVisible = chatSettings.TailVisible
	if TailVisible then
		TailVisible = Roact_upvr.createElement
		local tbl_4 = {}
		var31 = 0
		tbl_4.AnchorPoint = Vector2.new(0.5, var31)
		tbl_4.BackgroundTransparency = 1
		var31 = 0
		tbl_4.Position = UDim2.new(0.5, var31, 1, -1)
		var31 = 8
		tbl_4.Size = UDim2.fromOffset(12, var31)
		tbl_4.Image = "rbxasset://textures/ui/InGameChat/Caret.png"
		tbl_4.ImageColor3 = chatSettings.BackgroundColor3
		tbl_4.ImageTransparency = arg1.transparency
		TailVisible = TailVisible("ImageLabel", tbl_4)
	end
	module.Carat = TailVisible
	local tbl_3 = {}
	var31 = arg1.frameSize
	tbl_3.Size = var31
	var31 = chatSettings.BackgroundColor3
	tbl_3.BackgroundColor3 = var31
	local function INLINED() -- Internal function, doesn't exist in bytecode
		var31 = arg1.transparency
		return var31
	end
	if BackgroundImage.Image ~= "" or not INLINED() then
		var31 = 1
	end
	tbl_3.BackgroundTransparency = var31
	var31 = 0
	tbl_3.BorderSizePixel = var31
	var31 = Vector2.new(0.5, 0)
	tbl_3.AnchorPoint = var31
	var31 = UDim2.new(0.5, 0, 0, 0)
	tbl_3.Position = var31
	var31 = true
	tbl_3.ClipsDescendants = var31
	var31 = arg1.transparency
	tbl_3.ImageTransparency = var31
	local tbl_2 = {}
	tbl_3 = chatSettings.CornerEnabled
	local var39 = tbl_3
	if var39 then
		var31 = Roact_upvr
		var39 = var31.createElement
		var31 = "UICorner"
		var39 = var39(var31, {
			CornerRadius = chatSettings.CornerRadius;
		})
	end
	tbl_2.UICorner = var39
	var31 = Roact_upvr
	var31 = "Frame"
	local tbl = {
		Padding = Roact_upvr.createElement("UIPadding", {
			PaddingTop = UDim.new(0, chatSettings.Padding);
			PaddingRight = UDim.new(0, chatSettings.Padding);
			PaddingBottom = UDim.new(0, chatSettings.Padding);
			PaddingLeft = UDim.new(0, chatSettings.Padding);
		});
		UIListLayout = Roact_upvr.createElement("UIListLayout", {
			FillDirection = Enum.FillDirection.Horizontal;
			SortOrder = Enum.SortOrder.LayoutOrder;
		});
	}
	local renderInsert = arg1.props.renderInsert
	if renderInsert then
		renderInsert = arg1.props.renderInsert()
	end
	tbl.Insert = renderInsert
	tbl.Ellipsis = Roact_upvr.createElement("TextLabel", {
		BackgroundTransparency = 1;
		Text = "…";
		TextColor3 = chatSettings.TextColor3;
		TextTransparency = arg1.transparency;
		Font = AppFonts_upvr.default:getBlack();
		TextScaled = true;
		Size = UDim2.new(1, -0, 1, 0);
		LayoutOrder = 2;
	})
	tbl_2.Contents = var31.createElement(var31, {
		Size = UDim2.fromScale(1, 1);
		BackgroundTransparency = 1;
	}, tbl)
	local Enabled = BackgroundGradient.Enabled
	if Enabled then
		var31 = Roact_upvr
		Enabled = var31.createElement
		var31 = "UIGradient"
		Enabled = Enabled(var31, BackgroundGradient)
	end
	tbl_2.Gradient = Enabled
	module.RoundedFrame = Roact_upvr.createElement("ImageLabel", Cryo_upvr.Dictionary.join(BackgroundImage, tbl_3), tbl_2)
	return Roact_upvr.createElement("Frame", {
		AnchorPoint = Vector2.new(0.5, 1);
		Size = UDim2.fromOffset(arg1.state.fullWidth, arg1.state.fullHeight);
		Position = UDim2.new(0.5, 0, 1, -8);
		Transparency = 1;
	}, module)
end
function any_extend_result1.fadeOut(arg1) -- Line 175
	--[[ Upvalues[1]:
		[1]: getTransparencySpringFromSettings_upvr (readonly)
	]]
	if not arg1.isFadingOut then
		arg1.isFadingOut = true
		arg1.transparencyMotor:onComplete(function() -- Line 179
			--[[ Upvalues[1]:
				[1]: arg1 (readonly)
			]]
			if arg1.props.onFadeOut then
				arg1.props.onFadeOut()
			end
		end)
		arg1.transparencyMotor:setGoal(getTransparencySpringFromSettings_upvr(arg1.props.chatSettings)(1))
	end
end
function any_extend_result1.didUpdate(arg1, arg2, arg3) -- Line 190
	--[[ Upvalues[1]:
		[1]: getSizeSpringFromSettings_upvr (readonly)
	]]
	if arg1.props.fadingOut then
		arg1:fadeOut()
	else
		if arg1.state.fullHeight ~= arg3.fullHeight then
			arg1.updateHeight(arg1.state.fullHeight)
		end
		if arg1.state.fullWidth ~= arg3.fullWidth then
			arg1.widthMotor:setGoal(getSizeSpringFromSettings_upvr(arg1.props.chatSettings)(arg1.state.fullWidth))
		end
	end
end
function any_extend_result1.didMount(arg1) -- Line 205
	--[[ Upvalues[2]:
		[1]: getSizeSpringFromSettings_upvr (readonly)
		[2]: getTransparencySpringFromSettings_upvr (readonly)
	]]
	if not arg1.props.fadingOut then
		local chatSettings_2 = arg1.props.chatSettings
		arg1.transparencyMotor:setGoal(getTransparencySpringFromSettings_upvr(chatSettings_2)(arg1.props.chatSettings.Transparency))
		arg1.widthMotor:setGoal(getSizeSpringFromSettings_upvr(chatSettings_2)(arg1.state.fullWidth))
	end
end
function any_extend_result1.willUnmount(arg1) -- Line 216
	arg1.transparencyMotor:destroy()
	arg1.widthMotor:destroy()
end
return any_extend_result1