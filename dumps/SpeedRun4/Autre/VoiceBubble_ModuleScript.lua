-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:04:50
-- Luau version 6, Types version 3
-- Time taken: 0.007751 seconds

local CorePackages = game:GetService("CorePackages")
local Roact_upvr = require(CorePackages.Packages.Roact)
local t = require(CorePackages.Packages.t)
local Parent = script.Parent.Parent
local getSizeSpringFromSettings_upvr = require(Parent.Helpers.getSizeSpringFromSettings)
local getTransparencySpringFromSettings_upvr = require(Parent.Helpers.getTransparencySpringFromSettings)
local any_extend_result1 = Roact_upvr.PureComponent:extend("VoiceBubble")
any_extend_result1.validateProps = t.strictInterface({
	fadingOut = t.optional(t.boolean);
	onFadeOut = t.optional(t.callback);
	chatSettings = require(Parent.Types).IChatSettings;
	renderInsert = t.optional(t.callback);
	insertSize = t.optional(t.Vector2);
	isDistant = t.optional(t.boolean);
})
local Otter_upvr = require(CorePackages.Packages.Otter)
function any_extend_result1.init(arg1, arg2) -- Line 33
	--[[ Upvalues[2]:
		[1]: Roact_upvr (readonly)
		[2]: Otter_upvr (readonly)
	]]
	local any_createBinding_result1_2, any_createBinding_result2 = Roact_upvr.createBinding(0)
	arg1.width = any_createBinding_result1_2
	arg1.updateWidth = any_createBinding_result2
	arg1.widthMotor = Otter_upvr.createSingleMotor(0)
	arg1.widthMotor:onStep(function(arg1_2) -- Line 36
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		arg1.updateWidth(math.round(arg1_2))
	end)
	arg1.frameSize = arg1.width:map(function(arg1_3) -- Line 40
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		if arg1.props.insertSize then
			return UDim2.fromOffset(arg1_3, arg1.props.insertSize.Y + arg1.props.chatSettings.Padding * 2)
		end
		return UDim2.fromOffset(arg1_3, 0)
	end)
	local any_createBinding_result1, any_createBinding_result2_2 = Roact_upvr.createBinding(1)
	arg1.transparency = any_createBinding_result1
	arg1.updateTransparency = any_createBinding_result2_2
	arg1.transparencyMotor = Otter_upvr.createSingleMotor(1)
	arg1.transparencyMotor:onStep(arg1.updateTransparency)
	if arg2.fadingOut then
		arg1:fadeOut()
	end
end
function any_extend_result1.getDerivedStateFromProps(arg1, arg2) -- Line 59
	local var16 = 0
	if arg1.insertSize then
		var16 = arg1.insertSize.X + arg1.chatSettings.Padding * 2
	end
	if var16 ~= arg2.fullWidth then
		return {
			fullWidth = var16;
		}
	end
	return nil
end
local Cryo_upvr = require(CorePackages.Packages.Cryo)
function any_extend_result1.render(arg1) -- Line 76
	--[[ Upvalues[2]:
		[1]: Roact_upvr (readonly)
		[2]: Cryo_upvr (readonly)
	]]
	local chatSettings_2 = arg1.props.chatSettings
	local BackgroundImage = chatSettings_2.BackgroundImage
	local BackgroundGradient = chatSettings_2.BackgroundGradient
	local var22 = 0
	local var23
	if arg1.props.insertSize then
		var22 = arg1.props.insertSize.Y + chatSettings_2.Padding * 2
	end
	local module_2 = {
		AnchorPoint = Vector2.new(0.5, 1);
		Size = UDim2.fromOffset(arg1.state.fullWidth, var22);
	}
	local var25 = -8
	module_2.Position = UDim2.new(0.5, 0, 1, var25)
	module_2.Transparency = 1
	local module = {}
	local tbl_3 = {}
	var23 = arg1.props
	if var23.isDistant then
		var25 = 0.75
	else
		var25 = 1
	end
	tbl_3.Scale = var25
	module.Scale = Roact_upvr.createElement("UIScale", tbl_3)
	local TailVisible = chatSettings_2.TailVisible
	if TailVisible then
		TailVisible = Roact_upvr.createElement
		local tbl = {}
		var23 = 0
		tbl.AnchorPoint = Vector2.new(0.5, var23)
		tbl.BackgroundTransparency = 1
		var23 = 0
		tbl.Position = UDim2.new(0.5, var23, 1, -1)
		var23 = 8
		tbl.Size = UDim2.fromOffset(12, var23)
		tbl.Image = "rbxasset://textures/ui/InGameChat/Caret.png"
		tbl.ImageColor3 = chatSettings_2.BackgroundColor3
		tbl.ImageTransparency = arg1.transparency
		TailVisible = TailVisible("ImageLabel", tbl)
	end
	module.Carat = TailVisible
	local tbl_4 = {}
	var23 = arg1.frameSize
	tbl_4.Size = var23
	var23 = chatSettings_2.BackgroundColor3
	tbl_4.BackgroundColor3 = var23
	local function INLINED() -- Internal function, doesn't exist in bytecode
		var23 = arg1.transparency
		return var23
	end
	if BackgroundImage.Image ~= "" or not INLINED() then
		var23 = 1
	end
	tbl_4.BackgroundTransparency = var23
	var23 = 0
	tbl_4.BorderSizePixel = var23
	var23 = Vector2.new(0.5, 0)
	tbl_4.AnchorPoint = var23
	var23 = UDim2.new(0.5, 0, 0, 0)
	tbl_4.Position = var23
	var23 = true
	tbl_4.ClipsDescendants = var23
	var23 = arg1.transparency
	tbl_4.ImageTransparency = var23
	local tbl_5 = {}
	tbl_4 = chatSettings_2.CornerEnabled
	local var32 = tbl_4
	if var32 then
		var23 = Roact_upvr
		var32 = var23.createElement
		var23 = "UICorner"
		var32 = var32(var23, {
			CornerRadius = chatSettings_2.CornerRadius;
		})
	end
	tbl_5.UICorner = var32
	var23 = Roact_upvr
	var23 = "Frame"
	local tbl_2 = {
		Padding = Roact_upvr.createElement("UIPadding", {
			PaddingTop = UDim.new(0, chatSettings_2.Padding);
			PaddingRight = UDim.new(0, chatSettings_2.Padding);
			PaddingBottom = UDim.new(0, chatSettings_2.Padding);
			PaddingLeft = UDim.new(0, chatSettings_2.Padding);
		});
	}
	local renderInsert = arg1.props.renderInsert
	if renderInsert then
		renderInsert = arg1.props.renderInsert()
	end
	tbl_2.Insert = renderInsert
	tbl_5.Contents = var23.createElement(var23, {
		Size = UDim2.fromScale(1, 1);
		BackgroundTransparency = 1;
	}, tbl_2)
	local Enabled = BackgroundGradient.Enabled
	if Enabled then
		var23 = Roact_upvr
		Enabled = var23.createElement
		var23 = "UIGradient"
		Enabled = Enabled(var23, BackgroundGradient)
	end
	tbl_5.Gradient = Enabled
	module.RoundedFrame = Roact_upvr.createElement("ImageLabel", Cryo_upvr.Dictionary.join(BackgroundImage, tbl_4), tbl_5)
	return Roact_upvr.createElement("Frame", module_2, module)
end
function any_extend_result1.fadeOut(arg1) -- Line 142
	--[[ Upvalues[1]:
		[1]: getTransparencySpringFromSettings_upvr (readonly)
	]]
	if not arg1.isFadingOut then
		arg1.isFadingOut = true
		arg1.transparencyMotor:onComplete(function() -- Line 146
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
function any_extend_result1.didUpdate(arg1, arg2, arg3) -- Line 157
	--[[ Upvalues[1]:
		[1]: getSizeSpringFromSettings_upvr (readonly)
	]]
	if arg1.props.fadingOut then
		arg1:fadeOut()
	elseif arg1.state.fullWidth ~= arg3.fullWidth then
		arg1.widthMotor:setGoal(getSizeSpringFromSettings_upvr(arg1.props.chatSettings)(arg1.state.fullWidth))
	end
end
function any_extend_result1.didMount(arg1) -- Line 167
	--[[ Upvalues[2]:
		[1]: getSizeSpringFromSettings_upvr (readonly)
		[2]: getTransparencySpringFromSettings_upvr (readonly)
	]]
	if not arg1.props.fadingOut then
		local chatSettings = arg1.props.chatSettings
		arg1.transparencyMotor:setGoal(getTransparencySpringFromSettings_upvr(chatSettings)(arg1.props.chatSettings.Transparency))
		arg1.widthMotor:setGoal(getSizeSpringFromSettings_upvr(chatSettings)(arg1.state.fullWidth))
	end
end
function any_extend_result1.willUnmount(arg1) -- Line 178
	arg1.transparencyMotor:destroy()
	arg1.widthMotor:destroy()
end
return any_extend_result1