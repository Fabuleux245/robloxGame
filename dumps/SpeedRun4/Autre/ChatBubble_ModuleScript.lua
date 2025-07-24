-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:04:47
-- Luau version 6, Types version 3
-- Time taken: 0.014197 seconds

local CorePackages = game:GetService("CorePackages")
local Otter_upvr = require(CorePackages.Packages.Otter)
local Roact_upvr = require(CorePackages.Packages.Roact)
local t = require(CorePackages.Packages.t)
local Parent = script.Parent.Parent
local getSizeSpringFromSettings_upvr = require(Parent.Helpers.getSizeSpringFromSettings)
local getTransparencySpringFromSettings_upvr = require(Parent.Helpers.getTransparencySpringFromSettings)
local CoreGui_upvr = game:GetService("CoreGui")
local game_DefineFastFlag_result1_upvr = game:DefineFastFlag("FixMockSizingLabelMemoryLeak", false)
local any_extend_result1 = Roact_upvr.PureComponent:extend("ChatBubble")
any_extend_result1.validateProps = t.strictInterface({
	messageId = t.string;
	fadingOut = t.optional(t.boolean);
	onFadeOut = t.optional(t.callback);
	isMostRecent = t.optional(t.boolean);
	theme = t.optional(t.string);
	renderInsert = t.optional(t.callback);
	insertSize = t.optional(t.Vector2);
	chatSettings = require(Parent.Types).IChatSettings;
	text = t.string;
	timestamp = t.number;
})
any_extend_result1.defaultProps = {
	theme = "Light";
	isMostRecent = true;
}
local function _() -- Line 46, Named "initMockSizingLabel"
	--[[ Upvalues[1]:
		[1]: CoreGui_upvr (readonly)
	]]
	local ScreenGui_2 = Instance.new("ScreenGui")
	ScreenGui_2.Enabled = false
	ScreenGui_2.Name = "RichTextSizingLabel"
	local TextLabel_2 = Instance.new("TextLabel")
	TextLabel_2.TextWrapped = true
	TextLabel_2.RichText = true
	TextLabel_2.Parent = ScreenGui_2
	ScreenGui_2.Parent = CoreGui_upvr
	return TextLabel_2
end
local TextChatService_upvr = game:GetService("TextChatService")
local FFlagEnableRichTextForBubbleChat_upvr = require(CoreGui_upvr:WaitForChild("RobloxGui").Modules.Flags.FFlagEnableRichTextForBubbleChat)
function any_extend_result1.init(arg1) -- Line 58
	--[[ Upvalues[6]:
		[1]: Roact_upvr (readonly)
		[2]: Otter_upvr (readonly)
		[3]: game_DefineFastFlag_result1_upvr (readonly)
		[4]: CoreGui_upvr (readonly)
		[5]: TextChatService_upvr (readonly)
		[6]: FFlagEnableRichTextForBubbleChat_upvr (readonly)
	]]
	local any_createBinding_result1_2, any_createBinding_result2 = Roact_upvr.createBinding(0)
	arg1.width = any_createBinding_result1_2
	arg1.updateWidth = any_createBinding_result2
	arg1.widthMotor = Otter_upvr.createSingleMotor(0)
	arg1.widthMotor:onStep(function(arg1_2) -- Line 61
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		arg1.updateWidth(math.round(arg1_2))
	end)
	local any_createBinding_result1_3, any_createBinding_result2_2 = Roact_upvr.createBinding(0)
	arg1.height = any_createBinding_result1_3
	arg1.updateHeight = any_createBinding_result2_2
	arg1.heightMotor = Otter_upvr.createSingleMotor(0)
	arg1.heightMotor:onStep(function(arg1_3) -- Line 67
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		arg1.updateHeight(math.round(arg1_3))
	end)
	local any_createBinding_result1, any_createBinding_result2_3 = Roact_upvr.createBinding(1)
	arg1.transparency = any_createBinding_result1
	arg1.updateTransparency = any_createBinding_result2_3
	arg1.transparencyMotor = Otter_upvr.createSingleMotor(1)
	arg1.transparencyMotor:onStep(arg1.updateTransparency)
	arg1.size = Roact_upvr.joinBindings({arg1.width, arg1.height}):map(function(arg1_4) -- Line 75
		return UDim2.fromOffset(arg1_4[1], arg1_4[2])
	end)
	if game_DefineFastFlag_result1_upvr then
		arg1.mockSizingLabel = nil
	else
		local ScreenGui_3 = Instance.new("ScreenGui")
		ScreenGui_3.Enabled = false
		ScreenGui_3.Name = "RichTextSizingLabel"
		local TextLabel = Instance.new("TextLabel")
		TextLabel.TextWrapped = true
		TextLabel.RichText = true
		TextLabel.Parent = ScreenGui_3
		ScreenGui_3.Parent = CoreGui_upvr
		arg1.mockSizingLabel = TextLabel
	end
	local var29
	if TextChatService_upvr.ChatVersion == Enum.ChatVersion.TextChatService and FFlagEnableRichTextForBubbleChat_upvr then
		var29 = true
	else
		var29 = false
	end
	arg1.isRichTextEnabled = var29
end
local game_DefineFastFlag_result1_upvr_2 = game:DefineFastFlag("FixMockSizingLabelMemoryLeak2", false)
function any_extend_result1.getBoundsFromSizingLabel(arg1, arg2, arg3, arg4, arg5) -- Line 91
	--[[ Upvalues[3]:
		[1]: game_DefineFastFlag_result1_upvr (readonly)
		[2]: CoreGui_upvr (readonly)
		[3]: game_DefineFastFlag_result1_upvr_2 (readonly)
	]]
	if game_DefineFastFlag_result1_upvr then
		local ScreenGui = Instance.new("ScreenGui")
		ScreenGui.Enabled = false
		ScreenGui.Name = "RichTextSizingLabel"
		local TextLabel_3 = Instance.new("TextLabel")
		TextLabel_3.TextWrapped = true
		TextLabel_3.RichText = true
		TextLabel_3.Parent = ScreenGui
		ScreenGui.Parent = CoreGui_upvr
		local var33 = TextLabel_3
		var33.Text = arg2
		var33.TextSize = arg3
		var33.Font = arg4
		var33.Size = UDim2.fromOffset(arg5.X, arg5.Y)
		local TextBounds = var33.TextBounds
		if game_DefineFastFlag_result1_upvr_2 then
			var33.Parent:Destroy()
			return TextBounds
		end
		var33:Destroy()
		return TextBounds
	end
	arg1.mockSizingLabel.Text = arg2
	arg1.mockSizingLabel.TextSize = arg3
	arg1.mockSizingLabel.Font = arg4
	arg1.mockSizingLabel.Size = UDim2.fromOffset(arg5.X, arg5.Y)
	return arg1.mockSizingLabel.TextBounds
end
local TextService_upvr = game:GetService("TextService")
function any_extend_result1.getTextBounds(arg1) -- Line 117
	--[[ Upvalues[1]:
		[1]: TextService_upvr (readonly)
	]]
	local chatSettings_3 = arg1.props.chatSettings
	local vector2 = Vector2.new(0, 0)
	if arg1.isRichTextEnabled then
		vector2 = arg1:getBoundsFromSizingLabel(arg1.props.text, chatSettings_3.TextSize, chatSettings_3.Font, Vector2.new(chatSettings_3.MaxWidth, 10000))
	else
		vector2 = TextService_upvr:GetTextSize(arg1.props.text, chatSettings_3.TextSize, chatSettings_3.Font, Vector2.new(chatSettings_3.MaxWidth, 10000))
	end
	return vector2 + Vector2.new(chatSettings_3.Padding * 4, chatSettings_3.Padding * 2)
end
local Cryo_upvr = require(CorePackages.Packages.Cryo)
function any_extend_result1.render(arg1) -- Line 141
	--[[ Upvalues[2]:
		[1]: Roact_upvr (readonly)
		[2]: Cryo_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local chatSettings_2 = arg1.props.chatSettings
	local BackgroundImage_2 = chatSettings_2.BackgroundImage
	local BackgroundGradient_3 = chatSettings_2.BackgroundGradient
	local var76
	if not arg1.props.renderInsert or not (arg1.props.insertSize.X + chatSettings_2.Padding) then
	end
	local module_6 = {}
	local tbl_6 = {
		SortOrder = Enum.SortOrder.LayoutOrder;
		HorizontalAlignment = Enum.HorizontalAlignment.Center;
	}
	var76 = -1
	tbl_6.Padding = UDim.new(0, var76)
	module_6.Layout = Roact_upvr.createElement("UIListLayout", tbl_6)
	local tbl_18 = {}
	var76 = 1
	tbl_18.LayoutOrder = var76
	var76 = chatSettings_2.BackgroundColor3
	tbl_18.BackgroundColor3 = var76
	var76 = Vector2.new(0.5, 0)
	tbl_18.AnchorPoint = var76
	var76 = UDim2.fromScale(1, 1)
	tbl_18.Size = var76
	var76 = 0
	tbl_18.BorderSizePixel = var76
	var76 = UDim2.new(0.5, 0, 0, 0)
	tbl_18.Position = var76
	if BackgroundImage_2.Image ~= "" then
		var76 = 1
	else
		var76 = arg1.transparency
	end
	tbl_18.BackgroundTransparency = var76
	var76 = true
	tbl_18.ClipsDescendants = var76
	var76 = arg1.transparency
	tbl_18.ImageTransparency = var76
	local tbl_17 = {}
	tbl_18 = chatSettings_2.CornerEnabled
	local var82 = tbl_18
	if var82 then
		var76 = Roact_upvr
		var82 = var76.createElement
		var76 = "UICorner"
		var82 = var82(var76, {
			CornerRadius = chatSettings_2.CornerRadius;
		})
	end
	tbl_17.UICorner = var82
	var76 = Roact_upvr
	var76 = "UIListLayout"
	tbl_17.UIListLayout = var76.createElement(var76, {
		FillDirection = Enum.FillDirection.Horizontal;
		SortOrder = Enum.SortOrder.LayoutOrder;
		VerticalAlignment = Enum.VerticalAlignment.Bottom;
		Padding = UDim.new(0, chatSettings_2.Padding);
	})
	var76 = Roact_upvr
	var76 = "UIPadding"
	tbl_17.Padding = var76.createElement(var76, {
		PaddingTop = UDim.new(0, chatSettings_2.Padding);
		PaddingRight = UDim.new(0, chatSettings_2.Padding);
		PaddingBottom = UDim.new(0, chatSettings_2.Padding);
		PaddingLeft = UDim.new(0, chatSettings_2.Padding);
	})
	var76 = arg1.props
	local renderInsert = var76.renderInsert
	if renderInsert then
		var76 = arg1.props
		renderInsert = var76.renderInsert()
	end
	tbl_17.Insert = renderInsert
	var76 = Roact_upvr
	var76 = "TextLabel"
	tbl_17.Text = var76.createElement(var76, {
		Text = arg1.props.text;
		Size = UDim2.new(1, -0, 1, 0);
		AnchorPoint = Vector2.new(0.5, 0.5);
		Position = UDim2.fromScale(0.5, 0.5);
		BackgroundTransparency = 1;
		Font = chatSettings_2.Font;
		TextColor3 = chatSettings_2.TextColor3;
		TextSize = chatSettings_2.TextSize;
		TextTransparency = arg1.transparency;
		TextWrapped = true;
		AutoLocalize = false;
		LayoutOrder = 2;
		RichText = arg1.isRichTextEnabled;
	})
	local Enabled = BackgroundGradient_3.Enabled
	if Enabled then
		var76 = Roact_upvr
		Enabled = var76.createElement
		var76 = "UIGradient"
		Enabled = Enabled(var76, BackgroundGradient_3)
	end
	tbl_17.Gradient = Enabled
	module_6.Frame = Roact_upvr.createElement("ImageLabel", Cryo_upvr.Dictionary.join(BackgroundImage_2, tbl_18), tbl_17)
	local isMostRecent = arg1.props.isMostRecent
	if isMostRecent then
		isMostRecent = chatSettings_2.TailVisible
		if isMostRecent then
			isMostRecent = arg1.props.showCarat
			if isMostRecent then
				isMostRecent = Roact_upvr.createElement
				local tbl_16 = {
					LayoutOrder = 2;
					BackgroundTransparency = 1;
				}
				var76 = 6
				tbl_16.Size = UDim2.fromOffset(9, var76)
				tbl_16.Image = "rbxasset://textures/ui/InGameChat/Caret.png"
				tbl_16.ImageColor3 = chatSettings_2.BackgroundColor3
				tbl_16.ImageTransparency = arg1.transparency
				isMostRecent = isMostRecent("ImageLabel", tbl_16)
			end
		end
	end
	module_6.Carat = isMostRecent
	return Roact_upvr.createElement("Frame", {
		LayoutOrder = arg1.props.timestamp;
		AnchorPoint = Vector2.new(0.5, 0.5);
		Size = arg1.size;
		Position = UDim2.fromScale(1, 0.5);
		Transparency = 1;
	}, module_6)
end
function any_extend_result1.fadeOut(arg1) -- Line 230
	--[[ Upvalues[1]:
		[1]: getTransparencySpringFromSettings_upvr (readonly)
	]]
	if not arg1.isFadingOut then
		arg1.isFadingOut = true
		arg1.transparencyMotor:onComplete(function() -- Line 234
			--[[ Upvalues[1]:
				[1]: arg1 (readonly)
			]]
			if arg1.props.onFadeOut then
				arg1.props.onFadeOut(arg1.props.messageId)
			end
		end)
		arg1.transparencyMotor:setGoal(getTransparencySpringFromSettings_upvr(arg1.props.chatSettings)(1))
	end
end
function any_extend_result1.didUpdate(arg1, arg2) -- Line 245
	--[[ Upvalues[1]:
		[1]: getSizeSpringFromSettings_upvr (readonly)
	]]
	if arg1.props.fadingOut then
		arg1:fadeOut()
	end
	if arg2.text ~= arg1.props.text or arg2.chatSettings ~= arg1.props.chatSettings or arg2.renderInsert ~= arg1.props.renderInsert or arg2.insertSize ~= arg1.props.insertSize then
		local any_getTextBounds_result1_2 = arg1:getTextBounds()
		local var6_result1_2 = getSizeSpringFromSettings_upvr(arg1.props.chatSettings)
		local Padding = arg1.props.chatSettings.Padding
		local X = any_getTextBounds_result1_2.X
		local Y = any_getTextBounds_result1_2.Y
		if arg1.props.renderInsert then
			X += arg1.props.insertSize.X + Padding
			Y = math.max(Y, arg1.props.insertSize.Y + Padding * 2)
		end
		arg1.heightMotor:setGoal(var6_result1_2(Y))
		arg1.widthMotor:setGoal(var6_result1_2(X))
	end
end
function any_extend_result1.didMount(arg1) -- Line 272
	--[[ Upvalues[3]:
		[1]: getSizeSpringFromSettings_upvr (readonly)
		[2]: getTransparencySpringFromSettings_upvr (readonly)
		[3]: Otter_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	arg1.isMounted = true
	local any_getTextBounds_result1 = arg1:getTextBounds()
	local chatSettings = arg1.props.chatSettings
	local var6_result1 = getSizeSpringFromSettings_upvr(chatSettings)
	local var100
	if arg1.props.renderInsert then
		var100 = math.max(var100, arg1.props.insertSize.Y + chatSettings.Padding * 2)
	end
	if arg1.props.isMostRecent then
		arg1.heightMotor:setGoal(var6_result1(var100))
		arg1.widthMotor:setGoal(Otter_upvr.instant((any_getTextBounds_result1.X) + (arg1.props.insertSize.X + chatSettings.Padding)))
	else
		arg1.heightMotor:setGoal(var6_result1(var100))
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		arg1.widthMotor:setGoal(var6_result1((any_getTextBounds_result1.X) + (arg1.props.insertSize.X + chatSettings.Padding)))
	end
	arg1.transparencyMotor:setGoal(getTransparencySpringFromSettings_upvr(chatSettings)(chatSettings.Transparency))
end
function any_extend_result1.willUnmount(arg1) -- Line 300
	arg1.isMounted = false
	arg1.transparencyMotor:destroy()
	arg1.heightMotor:destroy()
	arg1.widthMotor:destroy()
end
return require(CorePackages.Packages.RoactRodux).connect(function(arg1, arg2) -- Line 307, Named "mapStateToProps"
	local var101 = arg1.messages[arg2.messageId]
	local module = {}
	local var103
	local function INLINED() -- Internal function, doesn't exist in bytecode
		var103 = var101.text
		return var103
	end
	if not var101 or not INLINED() then
		var103 = ""
	end
	module.text = var103
	local function INLINED_2() -- Internal function, doesn't exist in bytecode
		var103 = var101.timestamp
		return var103
	end
	if not var101 or not INLINED_2() then
		var103 = 0
	end
	module.timestamp = var103
	return module
end)(any_extend_result1)