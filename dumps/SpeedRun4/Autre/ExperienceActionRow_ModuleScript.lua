-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:13:38
-- Luau version 6, Types version 3
-- Time taken: 0.002158 seconds

local Parent = script.Parent.Parent.Parent.Parent
local function var2_upvr() -- Line 21
end
local React_upvr = require(Parent.Parent.Parent.React)
local ComboButton_upvr = require(Parent.Button.ComboButton)
local Images_upvr = require(Parent.ImageSet.Images)
local Button_upvr = require(Parent.Button.Button)
local ButtonType_upvr = require(Parent.Button.Enum.ButtonType)
return function(arg1) -- Line 47, Named "ExperienceActionRow"
	--[[ Upvalues[6]:
		[1]: React_upvr (readonly)
		[2]: ComboButton_upvr (readonly)
		[3]: var2_upvr (readonly)
		[4]: Images_upvr (readonly)
		[5]: Button_upvr (readonly)
		[6]: ButtonType_upvr (readonly)
	]]
	local isActionable = arg1.isActionable
	local var9 = arg1.horizontalPadding or 6
	local var10 = arg1.verticalPadding or 6
	local icon = arg1.icon
	local var12
	if arg1.onOverflowPressed then
		local module = {}
		var12 = UDim2.new(0, var9, 1, -var10 - 36)
		module.position = var12
		var12 = UDim2.new(1, -2 * var9, 0, (arg1.height or 48) - 2 * var10)
		module.size = var12
		var12 = {}
		var12.text = arg1.text
		var12.icon = icon
		local onPlayPressed = arg1.onPlayPressed
		if not onPlayPressed then
			onPlayPressed = var2_upvr
		end
		var12.onActivated = onPlayPressed
		var12.isDisabled = not isActionable
		module.button = var12
		var12 = {}
		var12.icon = Images_upvr["icons/actions/truncationCollapse"]
		var12.onActivated = arg1.onOverflowPressed
		var12.isDisabled = not isActionable
		module.overflow = var12
		return React_upvr.createElement(ComboButton_upvr, module)
	end
	local module_2 = {}
	if arg1.buttonType then
		var12 = arg1.buttonType
	else
		var12 = ButtonType_upvr.PrimaryContextual
	end
	module_2.buttonType = var12
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	module_2.text = arg1.text
	module_2.icon = icon
	var12 = UDim2.new
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	var12 = var12(1, -2 * var9, 0, (arg1.height or 48) - 2 * var10)
	module_2.size = var12
	var12 = UDim2.new(0, var9, 1, -var10 - 36)
	module_2.position = var12
	module_2.userInteractionEnabled = isActionable
	var12 = arg1.onPlayPressed
	if not var12 then
		var12 = var2_upvr
	end
	module_2.onActivated = var12
	module_2.isDisabled = not isActionable
	module_2.feedbackType = arg1.feedbackType
	return React_upvr.createElement(Button_upvr, module_2)
end