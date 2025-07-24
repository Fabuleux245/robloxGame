-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:02:47
-- Luau version 6, Types version 3
-- Time taken: 0.010404 seconds

local ExpChat = script:FindFirstAncestor("ExpChat")
local Parent = ExpChat.Parent
local Roact_upvr = require(Parent.Roact)
local getSpringFromSettings_upvr = require(script:FindFirstAncestor("BubbleChat").Helpers.getSpringFromSettings)
local ClientSettingsUtility_upvr = require(ExpChat.ClientSettings.ClientSettingsUtility)
local any_extend_result1 = Roact_upvr.PureComponent:extend("BlankBubble")
local Otter_upvr = require(Parent.Otter)
function any_extend_result1.init(arg1, arg2) -- Line 23
	--[[ Upvalues[2]:
		[1]: Roact_upvr (readonly)
		[2]: Otter_upvr (readonly)
	]]
	arg1.state = {}
	local any_createBinding_result1_3, any_createBinding_result2 = Roact_upvr.createBinding(0)
	arg1.width = any_createBinding_result1_3
	arg1.updateWidth = any_createBinding_result2
	arg1.widthMotor = Otter_upvr.createSingleMotor(0)
	arg1.widthMotor:onStep(function(arg1_2) -- Line 27
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		arg1.updateWidth(math.round(arg1_2))
	end)
	arg1.frameSize = arg1.width:map(function(arg1_3) -- Line 31
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		if arg1.props.insertSize then
			return UDim2.fromOffset(arg1_3, arg1.props.insertSize.Y + arg1.props.chatSettings.Padding * 2)
		end
		return UDim2.fromOffset(arg1_3, 0)
	end)
	local any_createBinding_result1_2, any_createBinding_result2_3 = Roact_upvr.createBinding(1)
	arg1.transparency = any_createBinding_result1_2
	arg1.updateTransparency = any_createBinding_result2_3
	arg1.transparencyMotor = Otter_upvr.createSingleMotor(1)
	arg1.transparencyMotor:onStep(arg1.updateTransparency)
	local any_createBinding_result1, any_createBinding_result2_2 = Roact_upvr.createBinding(1)
	arg1.backgroundTransparency = any_createBinding_result1
	arg1.updateBackgroundTransparency = any_createBinding_result2_2
	arg1.backgroundTransparencyMotor = Otter_upvr.createSingleMotor(1)
	arg1.backgroundTransparencyMotor:onStep(arg1.updateBackgroundTransparency)
	if arg2.fadingOut then
		arg1:fadeOut()
	end
end
function any_extend_result1.getDerivedStateFromProps(arg1, arg2) -- Line 54
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
local Config_upvr = require(ExpChat.Config)
local Dictionary_upvr = require(Parent.llama).Dictionary
function any_extend_result1.render(arg1) -- Line 69
	--[[ Upvalues[3]:
		[1]: Config_upvr (readonly)
		[2]: Roact_upvr (readonly)
		[3]: Dictionary_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local chatSettings = arg1.props.chatSettings
	local ImageLabel = chatSettings.ImageLabel
	local UIGradient = chatSettings.UIGradient
	local UICorner = chatSettings.UICorner
	local var24 = 0
	local var25
	if arg1.props.insertSize then
		var25 = arg1.props
		var24 = arg1.props.insertSize.Y + var25.chatSettings.Padding * 2
	end
	local module = {}
	var25 = 0.5
	module.AnchorPoint = Vector2.new(var25, 1)
	var25 = arg1.state.fullWidth
	module.Size = UDim2.fromOffset(var25, var24)
	var25 = 0.5
	local var27 = -8
	module.Position = UDim2.new(var25, 0, 1, var27)
	module.Transparency = 1
	local module_2 = {}
	var25 = Roact_upvr.createElement
	local tbl = {}
	if arg1.props.isDistant then
		var27 = 0.75
	else
		var27 = 1
	end
	tbl.Scale = var27
	var25 = var25("UIScale", tbl)
	module_2.Scale = var25
	var25 = arg1.props.chatSettings.TailVisible
	if var25 then
		var25 = Roact_upvr.createElement
		local tbl_6 = {}
		local var32 = false
		if UIGradient ~= nil then
			var32 = Roact_upvr.createElement("UIGradient", UIGradient)
		end
		tbl_6.Gradient = var32
		var25 = var25("ImageLabel", {
			AnchorPoint = Vector2.new(0.5, 0);
			BackgroundTransparency = 1;
			Position = UDim2.new(0.5, 0, 1, -1);
			Size = UDim2.fromOffset(12, 8);
			Image = "rbxasset://textures/ui/InGameChat/Caret.png";
			ImageColor3 = chatSettings.BackgroundColor3;
			ImageTransparency = arg1.backgroundTransparency;
		}, tbl_6)
	end
	module_2.Caret = var25
	var25 = Roact_upvr.createElement
	local tbl_2 = {
		Size = arg1.frameSize;
		BackgroundColor3 = chatSettings.BackgroundColor3;
	}
	local var34
	if ImageLabel and ImageLabel.Image ~= "" then
		var34 = 1
	else
		var34 = arg1.backgroundTransparency
		if not var34 then
			var34 = arg1.transparency
		end
	end
	tbl_2.BackgroundTransparency = var34
	var34 = 0
	tbl_2.BorderSizePixel = var34
	var34 = Vector2.new(0.5, 0)
	tbl_2.AnchorPoint = var34
	var34 = UDim2.new(0.5, 0, 0, 0)
	tbl_2.Position = var34
	var34 = true
	tbl_2.ClipsDescendants = var34
	var34 = arg1.backgroundTransparency
	if not var34 then
		var34 = arg1.transparency
	end
	tbl_2.ImageTransparency = var34
	if not ImageLabel or not ImageLabel.Image then
	end
	tbl_2.Image = ""
	local tbl_3 = {}
	local function INLINED() -- Internal function, doesn't exist in bytecode
		tbl_4.CornerRadius = UICorner.CornerRadius
		local tbl_4 = {}
		return Roact_upvr.createElement("UICorner", tbl_4)
	end
	if not UICorner or not INLINED() then
	end
	tbl_3.UICorner = Roact_upvr.createElement("UICorner", {
		CornerRadius = Config_upvr.DefaultBubbleChatChildrenCustomizationProperties.UICorner.CornerRadius;
	})
	local tbl_5 = {
		Padding = Roact_upvr.createElement("UIPadding", {
			PaddingTop = UDim.new(0, arg1.props.chatSettings.Padding);
			PaddingRight = UDim.new(0, arg1.props.chatSettings.Padding);
			PaddingBottom = UDim.new(0, arg1.props.chatSettings.Padding);
			PaddingLeft = UDim.new(0, arg1.props.chatSettings.Padding);
		});
	}
	local renderInsert = arg1.props.renderInsert
	if renderInsert then
		renderInsert = arg1.props.renderInsert()
	end
	tbl_5.Insert = renderInsert
	tbl_3.Contents = Roact_upvr.createElement("Frame", {
		Size = UDim2.fromScale(1, 1);
		BackgroundTransparency = 1;
	}, tbl_5)
	if UIGradient ~= nil then
	end
	tbl_3.Gradient = Roact_upvr.createElement("UIGradient", UIGradient)
	var25 = var25("ImageLabel", Dictionary_upvr.join(ImageLabel, tbl_2), tbl_3)
	module_2.RoundedFrame = var25
	return Roact_upvr.createElement("Frame", module, module_2)
end
function any_extend_result1.fadeIn(arg1) -- Line 143
	--[[ Upvalues[2]:
		[1]: getSpringFromSettings_upvr (readonly)
		[2]: ClientSettingsUtility_upvr (readonly)
	]]
	local var4_result1 = getSpringFromSettings_upvr(arg1.props.chatSettings, "transparency")
	arg1.transparencyMotor:setGoal(var4_result1(arg1.props.chatSettings.Transparency))
	arg1.backgroundTransparencyMotor:setGoal(var4_result1(ClientSettingsUtility_upvr.getBackgroundTransparency(arg1.props.chatSettings, arg1.props.clientSettings)))
	arg1.widthMotor:setGoal(getSpringFromSettings_upvr(arg1.props.chatSettings, "size")(arg1.state.fullWidth))
end
function any_extend_result1.fadeOut(arg1) -- Line 157
	--[[ Upvalues[1]:
		[1]: getSpringFromSettings_upvr (readonly)
	]]
	arg1.transparencyMotor:onComplete(function() -- Line 158
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		if arg1.props.onFadeOut then
			arg1.props.onFadeOut()
		end
	end)
	local var4_result1_3 = getSpringFromSettings_upvr(arg1.props.chatSettings, "transparency")
	arg1.transparencyMotor:setGoal(var4_result1_3(1))
	arg1.backgroundTransparencyMotor:setGoal(var4_result1_3(1))
end
function any_extend_result1.didUpdate(arg1, arg2, arg3) -- Line 169
	--[[ Upvalues[1]:
		[1]: getSpringFromSettings_upvr (readonly)
	]]
	if arg2.fadingOut ~= arg1.props.fadingOut then
		if arg1.props.fadingOut then
			arg1:fadeOut()
		else
			arg1:fadeIn()
		end
	end
	if arg1.state.fullWidth ~= arg3.fullWidth then
		arg1.widthMotor:setGoal(getSpringFromSettings_upvr(arg1.props.chatSettings, "size")(arg1.state.fullWidth))
	end
end
function any_extend_result1.didMount(arg1) -- Line 183
	--[[ Upvalues[2]:
		[1]: getSpringFromSettings_upvr (readonly)
		[2]: ClientSettingsUtility_upvr (readonly)
	]]
	if not arg1.props.fadingOut then
		local var4_result1_2 = getSpringFromSettings_upvr(arg1.props.chatSettings, "transparency")
		arg1.transparencyMotor:setGoal(var4_result1_2(arg1.props.chatSettings.Transparency))
		arg1.backgroundTransparencyMotor:setGoal(var4_result1_2(ClientSettingsUtility_upvr.getBackgroundTransparency(arg1.props.chatSettings, arg1.props.clientSettings)))
		arg1.widthMotor:setGoal(getSpringFromSettings_upvr(arg1.props.chatSettings, "size")(arg1.state.fullWidth))
	end
end
function any_extend_result1.willUnmount(arg1) -- Line 199
	arg1.transparencyMotor:destroy()
	arg1.backgroundTransparencyMotor:destroy()
	arg1.widthMotor:destroy()
end
return any_extend_result1