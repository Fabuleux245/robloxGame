-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:15:06
-- Luau version 6, Types version 3
-- Time taken: 0.002913 seconds

local NotificationsCommon = script:FindFirstAncestor("NotificationsCommon")
local type_upvr = require(NotificationsCommon.type)
local constants_upvr = require(NotificationsCommon.constants)
local game_DefineFastFlag_result1_upvr = game:DefineFastFlag("FFlagLuaAppFixToastNotificationClosePosition", false)
local GuiService_upvr = game:GetService("GuiService")
local Cryo_upvr = require(NotificationsCommon.Parent.Cryo)
local UserInputService_upvr = game:GetService("UserInputService")
return {
	calculateToastPosition = function(arg1, arg2, arg3) -- Line 67
		--[[ Upvalues[2]:
			[1]: game_DefineFastFlag_result1_upvr (readonly)
			[2]: GuiService_upvr (readonly)
		]]
		local var14
		if game_DefineFastFlag_result1_upvr and GuiService_upvr then
			var14 = GuiService_upvr:GetGuiInset().Y + 20
		end
		if arg1 then
			if arg2 then
				local module = {
					positionX = 1;
					positionXOffset = -20;
					positionY = 0;
				}
				module.positionYOffset = arg3
				module.anchorX = 1
				module.anchorY = 0
				return module
			end
			local module_3 = {
				positionX = 0.5;
				positionXOffset = 0;
				positionY = 0;
			}
			module_3.positionYOffset = arg3
			module_3.anchorX = 0.5
			module_3.anchorY = 0
			return module_3
		end
		if arg2 then
			local module_5 = {
				positionX = 1;
				positionXOffset = 20;
				positionY = 0;
			}
			module_5.positionYOffset = arg3
			module_5.anchorX = 0
			module_5.anchorY = 0
			return module_5
		end
		local module_2 = {
			positionX = 0.5;
			positionXOffset = 0;
		}
		local var19 = 0
		module_2.positionY = var19
		if game_DefineFastFlag_result1_upvr then
			var19 = var14 * -1
		else
			var19 = -50
		end
		module_2.positionYOffset = var19
		module_2.anchorX = 0.5
		module_2.anchorY = 1
		return module_2
	end;
	getDeviceOrientation = function(arg1) -- Line 22
		--[[ Upvalues[1]:
			[1]: type_upvr (readonly)
		]]
		if arg1.Y < arg1.X then
			return type_upvr.DeviceOrientationEnum.Landscape
		end
		return type_upvr.DeviceOrientationEnum.Portrait
	end;
	getNotificationSize = function(arg1, arg2) -- Line 28
		--[[ Upvalues[1]:
			[1]: constants_upvr (readonly)
		]]
		if arg2 < constants_upvr.FullWidthDeviceThreshold then
			return UDim2.new(0, arg2 - 24, 0, 0)
		end
		if arg1 then
			if arg2 < constants_upvr.CompactCardThreashold then
				return UDim2.new(0, constants_upvr.InExperienceToastWidth, 0, 0)
			end
			return UDim2.new(0, constants_upvr.InAppToastWidth, 0, 0)
		end
		return UDim2.new(0, constants_upvr.InAppToastWidth, 0, 0)
	end;
	marshalStreamNotificationData = function(arg1, arg2) -- Line 42
		local module_4 = {
			currentState = arg1.content.currentState;
			notificationType = arg1.content.notificationType;
			id = arg1.id;
		}
		if arg1.content.states then
			local var8 = arg1.content.states[arg1.content.currentState]
			module_4.state = {
				layoutKey = var8.layoutKey;
				name = var8.name;
				visualItems = var8.visualItems;
			}
		end
		return module_4
	end;
	isToastToRight = function(arg1) -- Line 63
		--[[ Upvalues[1]:
			[1]: type_upvr (readonly)
		]]
		if arg1 == type_upvr.DeviceOrientationEnum.Landscape then
			return true
		end
		return false
	end;
	isDesktopDevice = function() -- Line 141
		--[[ Upvalues[1]:
			[1]: UserInputService_upvr (readonly)
		]]
		local None_upvw_2 = Enum.Platform.None
		pcall(function() -- Line 143
			--[[ Upvalues[2]:
				[1]: None_upvw_2 (read and write)
				[2]: UserInputService_upvr (copied, readonly)
			]]
			None_upvw_2 = UserInputService_upvr:GetPlatform()
		end)
		local var31 = true
		if None_upvw_2 ~= Enum.Platform.Windows then
			var31 = true
			if None_upvw_2 ~= Enum.Platform.OSX then
				if None_upvw_2 ~= Enum.Platform.UWP then
					var31 = false
				else
					var31 = true
				end
			end
		end
		return var31
	end;
	fireEvent = function(arg1, arg2, arg3, arg4) -- Line 121
		--[[ Upvalues[2]:
			[1]: constants_upvr (readonly)
			[2]: Cryo_upvr (readonly)
		]]
		local var23
		if var23 == nil or var23 == "" then
			var23 = constants_upvr.NotificationsClientEventNameDefault
		end
		arg1.sendEventDeferred(arg2, var23, Cryo_upvr.Dictionary.join(arg4, {
			streamContext = "InApp";
		}))
	end;
}