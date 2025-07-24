-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:32:30
-- Luau version 6, Types version 3
-- Time taken: 0.008005 seconds

local Parent = script.Parent.Parent
local context = Parent.context
local dependencies = require(Parent.dependencies)
local UIBlox = dependencies.UIBlox
local type_upvr = require(Parent.type)
local ButtonType_upvr = UIBlox.App.Button.Enum.ButtonType
local constants = require(Parent.constants)
local useNotificationCardData_upvr = require(context.useNotificationCardData)
local function _(arg1) -- Line 27
	--[[ Upvalues[2]:
		[1]: type_upvr (readonly)
		[2]: ButtonType_upvr (readonly)
	]]
	if arg1 == type_upvr.SENDERButtonStyleEnum.Growth then
		return ButtonType_upvr.PrimaryContextual
	end
	if arg1 == type_upvr.SENDERButtonStyleEnum.Primary then
		return ButtonType_upvr.PrimarySystem
	end
	if arg1 == type_upvr.SENDERButtonStyleEnum.Secondary then
		return ButtonType_upvr.Secondary
	end
	if arg1 == type_upvr.SENDERButtonStyleEnum.Alert then
		return ButtonType_upvr.Alert
	end
	return ButtonType_upvr.Secondary
end
local Colors_upvr = UIBlox.App.Style.Colors
local function var10_upvr(arg1, arg2, arg3, arg4) -- Line 48
	--[[ Upvalues[1]:
		[1]: Colors_upvr (readonly)
	]]
	if arg4 then
		return string.format("%s <font color='#%s' transparency='%f'>(%d%s)</font>", arg1.label.text, Colors_upvr.White:ToHex(), 0.3, arg2, arg4.secondsAbbreviated)
	end
	return string.format("%s <font color='#%s' transparency='%f'>(%ds)</font>", arg1.label.text, Colors_upvr.White:ToHex(), 0.3, arg2)
end
local useStyle_upvr = UIBlox.Core.Style.useStyle
local getTimerFromCardData_upvr = require(Parent.utils.toastNotificationHelper).getTimerFromCardData
local useTimeRemainingMap_upvr = require(Parent.Hooks.useTimeRemainingMap)
local function var12_upvr(arg1, arg2, arg3) -- Line 74
	--[[ Upvalues[7]:
		[1]: useStyle_upvr (readonly)
		[2]: useNotificationCardData_upvr (readonly)
		[3]: getTimerFromCardData_upvr (readonly)
		[4]: useTimeRemainingMap_upvr (readonly)
		[5]: var10_upvr (readonly)
		[6]: type_upvr (readonly)
		[7]: ButtonType_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	for _, v in ipairs(arg1) do
		if v.timer and v.timer.showTimeOnElement then
			({})[v.timer.showTimeOnElement] = getTimerFromCardData_upvr(useNotificationCardData_upvr(), v.timer.showTimeOnElement)
		end
	end
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect (x2)
	if arg1 then
		for _, v_2_upvr in ipairs(arg1) do
			local var91
			if v_2_upvr then
				var91 = v_2_upvr.timer
				if var91 then
					var91 = v_2_upvr.timer.showTimeOnElement
					if var91 then
						var91 = var10_upvr(v_2_upvr, useTimeRemainingMap_upvr({}, useNotificationCardData_upvr())[v_2_upvr.timer.showTimeOnElement], useStyle_upvr().Theme, arg2)
						-- KONSTANTWARNING: GOTO [81] #61
					end
				end
			end
			local function INLINED_4() -- Internal function, doesn't exist in bytecode
				var91 = v_2_upvr.label.text
				return var91
			end
			if not v_2_upvr or not v_2_upvr.label or not INLINED_4() then
				var91 = ""
			end
			var91 = {}
			local buttonStyle_2 = v_2_upvr.buttonStyle
			if buttonStyle_2 == type_upvr.SENDERButtonStyleEnum.Growth then
			elseif buttonStyle_2 == type_upvr.SENDERButtonStyleEnum.Primary then
			elseif buttonStyle_2 == type_upvr.SENDERButtonStyleEnum.Secondary then
			elseif buttonStyle_2 == type_upvr.SENDERButtonStyleEnum.Alert then
			else
			end
			var91.buttonType = ButtonType_upvr.Secondary
			var91.props = {
				text = var91;
				onActivated = function() -- Line 109, Named "onActivated"
					--[[ Upvalues[2]:
						[1]: arg3 (readonly)
						[2]: v_2_upvr (readonly)
					]]
					if arg3 then
						arg3(v_2_upvr)
					end
				end;
				buttonTextOverride = {
					RichText = true;
				};
			}
			table.insert({}, var91)
		end
	end
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	return {}
end
local useNotificationCardState_upvr = require(context.useNotificationCardState)
local useLocalization_upvr = dependencies.Localization.Hooks.useLocalization
local React_upvr = dependencies.React
local ButtonStack_upvr = UIBlox.App.Button.ButtonStack
local DefaultButtonHeight_upvr = constants.DefaultButtonHeight
local DefaultContentPadding_upvr = constants.DefaultContentPadding
return function() -- Line 125
	--[[ Upvalues[8]:
		[1]: useNotificationCardState_upvr (readonly)
		[2]: useNotificationCardData_upvr (readonly)
		[3]: useLocalization_upvr (readonly)
		[4]: var12_upvr (readonly)
		[5]: React_upvr (readonly)
		[6]: ButtonStack_upvr (readonly)
		[7]: DefaultButtonHeight_upvr (readonly)
		[8]: DefaultContentPadding_upvr (readonly)
	]]
	local var12_result1 = var12_upvr(useNotificationCardState_upvr("button"), useLocalization_upvr({
		secondsAbbreviated = "Feature.Notifications.Label.SecondsAbbreviated";
	}), useNotificationCardData_upvr().handleActions)
	if 0 < #var12_result1 then
		local module = {}
		local var106 = var12_result1
		if var106 then
			var106 = React_upvr.createElement
			var106 = var106(ButtonStack_upvr, {
				buttonHeight = DefaultButtonHeight_upvr;
				buttons = var12_result1;
				marginBetween = DefaultContentPadding_upvr;
			})
		end
		module.ActionButtons = var106
		return React_upvr.createElement("Frame", {
			AutomaticSize = Enum.AutomaticSize.Y;
			BackgroundTransparency = 1;
			LayoutOrder = 2;
			Size = UDim2.new(1, 0, 0, 0);
		}, module)
	end
	return nil
end