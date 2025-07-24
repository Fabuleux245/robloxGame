-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:32:30
-- Luau version 6, Types version 3
-- Time taken: 0.007368 seconds

local Parent = script.Parent.Parent
local Parent_2 = Parent.Parent
local React_upvr = require(Parent_2.React)
local Foundation = require(Parent_2.Foundation)
local useInputType_upvr = require(Parent_2.RoactUtils).Hooks.useInputType
local useFocusGuiObject_upvr = require(Parent_2.ReactFocusNavigation).useFocusGuiObject
local ControlState_upvr = Foundation.Enums.ControlState
local HttpService_upvr = game:GetService("HttpService")
local GuiService_upvr = game:GetService("GuiService")
local View_upvr = Foundation.View
local StateLayerAffordance_upvr = Foundation.Enums.StateLayerAffordance
local Cryo_upvr = require(Parent_2.Cryo)
local Toast_upvr = Foundation.Toast
local InputTypeConstants_upvr = require(Parent_2.InputType).InputTypeConstants
local EventConnection_upvr = require(Parent_2.ReactUtils).EventConnection
local UserInputService_upvr = game:GetService("UserInputService")
local KeyLabel_upvr = Foundation.KeyLabel
local constants_upvr = require(Parent.constants)
return React_upvr.memo(React_upvr.forwardRef(function(arg1, arg2) -- Line 39, Named "ClientNotificationWrapper"
	--[[ Upvalues[15]:
		[1]: React_upvr (readonly)
		[2]: useInputType_upvr (readonly)
		[3]: useFocusGuiObject_upvr (readonly)
		[4]: ControlState_upvr (readonly)
		[5]: HttpService_upvr (readonly)
		[6]: GuiService_upvr (readonly)
		[7]: View_upvr (readonly)
		[8]: StateLayerAffordance_upvr (readonly)
		[9]: Cryo_upvr (readonly)
		[10]: Toast_upvr (readonly)
		[11]: InputTypeConstants_upvr (readonly)
		[12]: EventConnection_upvr (readonly)
		[13]: UserInputService_upvr (readonly)
		[14]: KeyLabel_upvr (readonly)
		[15]: constants_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local any_useRef_result1_upvr = React_upvr.useRef(nil)
	local any_useBinding_result1, any_useBinding_result2_upvr = React_upvr.useBinding(false)
	local any_useBinding_result1_2, any_useBinding_result2_upvr_2 = React_upvr.useBinding(Enum.SelectionBehavior.Escape)
	local useFocusGuiObject_upvr_result1_upvr = useFocusGuiObject_upvr()
	local var33
	if arg1.onHover then
		local function _(arg1_2) -- Line 48
			--[[ Upvalues[2]:
				[1]: arg1 (readonly)
				[2]: ControlState_upvr (copied, readonly)
			]]
			local var36 = true
			if arg1_2 ~= ControlState_upvr.Hover then
				var36 = true
				if arg1_2 ~= ControlState_upvr.Pressed then
					if arg1_2 ~= ControlState_upvr.SelectedPressed then
						var36 = false
					else
						var36 = true
					end
				end
			end
			arg1.onHover(var36)
		end
		local _ = {arg1.onHover}
	else
	end
	local any_JSONDecode_result1 = HttpService_upvr:JSONDecode(arg1.notificationInfo)
	if any_JSONDecode_result1.Buttons then
		for i_upvr, v in ipairs(any_JSONDecode_result1.Buttons) do
			table.insert({}, {
				text = v.Text;
				variant = v.ButtonType;
				onActivated = function() -- Line 64, Named "onActivated"
					--[[ Upvalues[3]:
						[1]: GuiService_upvr (copied, readonly)
						[2]: arg1 (readonly)
						[3]: i_upvr (readonly)
					]]
					GuiService_upvr:OnNotificationInteraction(arg1.notificationId, i_upvr - 1)
				end;
			})
			local var44_upvr
		end
	end
	local module = {
		tag = "auto-xy";
	}
	if arg1.transparency ~= nil then
	else
	end
	module.GroupTransparency = nil
	module.onStateChanged = nil
	;({}).affordance = StateLayerAffordance_upvr.None
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	module.stateLayer = {}
	module.SelectionGroup = any_useBinding_result1
	module.SelectionBehaviorUp = any_useBinding_result1_2
	module.SelectionBehaviorDown = any_useBinding_result1_2
	module.SelectionBehaviorLeft = any_useBinding_result1_2
	module.SelectionBehaviorRight = any_useBinding_result1_2
	module.ref = any_useRef_result1_upvr
	if not arg1.children then
	end
	local module_2 = {
		Toast = React_upvr.createElement(Toast_upvr, {
			title = any_JSONDecode_result1.Title;
			text = any_JSONDecode_result1.Text;
			icon = any_JSONDecode_result1.Icon;
			actions = var44_upvr;
			width = arg1.width;
		});
	}
	local var48
	if useInputType_upvr() == InputTypeConstants_upvr.Gamepad and 0 < #var44_upvr then
		var48 = React_upvr.createElement
		var48 = var48(View_upvr, {
			tag = "size-1400-1400 padding-medium anchor-top-right position-top-right";
		}, {
			EventConnection = React_upvr.createElement(EventConnection_upvr, {
				event = UserInputService_upvr.InputBegan;
				callback = function(arg1_3) -- Line 101, Named "callback"
					--[[ Upvalues[2]:
						[1]: useFocusGuiObject_upvr_result1_upvr (readonly)
						[2]: arg1 (readonly)
					]]
					if arg1_3.KeyCode == Enum.KeyCode.ButtonB then
						useFocusGuiObject_upvr_result1_upvr(nil)
						arg1.onPause(false)
					end
				end;
			});
			KeyLabel = React_upvr.createElement(KeyLabel_upvr, {
				Size = UDim2.fromScale(1, 1);
				keyCode = Enum.KeyCode.ButtonStart;
				holdBehavior = {
					holdTime = constants_upvr.MenuButtonPressHoldTime;
					resetTime = constants_upvr.MenuButtonPressResetTime;
					onBeginHold = function() -- Line 114, Named "onBeginHold"
						--[[ Upvalues[1]:
							[1]: arg1 (readonly)
						]]
						arg1.onPause(true)
					end;
					onEndHold = function(arg1_4) -- Line 117, Named "onEndHold"
						--[[ Upvalues[6]:
							[1]: var44_upvr (readonly)
							[2]: arg1 (readonly)
							[3]: any_useBinding_result2_upvr (readonly)
							[4]: any_useBinding_result2_upvr_2 (readonly)
							[5]: useFocusGuiObject_upvr_result1_upvr (readonly)
							[6]: any_useRef_result1_upvr (readonly)
						]]
						if arg1_4 then
							if #var44_upvr == 1 then
								arg1.onPause(false)
								var44_upvr[1].onActivated()
							else
								any_useBinding_result2_upvr(true)
								any_useBinding_result2_upvr_2(Enum.SelectionBehavior.Stop)
								useFocusGuiObject_upvr_result1_upvr(any_useRef_result1_upvr.current)
							end
						end
						arg1.onPause(false)
					end;
				};
			});
		})
	else
		var48 = nil
	end
	module_2.KeyLabelView = var48
	return React_upvr.createElement(View_upvr, module, Cryo_upvr.Dictionary.join({}, module_2))
end))