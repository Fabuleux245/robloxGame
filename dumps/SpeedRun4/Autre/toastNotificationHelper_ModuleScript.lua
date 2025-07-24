-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:32:47
-- Luau version 6, Types version 3
-- Time taken: 0.005810 seconds

local Parent = script.Parent.Parent
local type_upvr = require(Parent.type)
local dependencies = require(Parent.dependencies)
local TimeTrigger_upvr = dependencies.ToastNotificationProtocolEnums.TimeTrigger
local game_DefineFastFlag_result1_upvr = game:DefineFastFlag("FFlagFixToastNotificationRightPosition", false)
local constants_upvr = require(Parent.constants)
local function _(arg1, arg2) -- Line 43
	if arg1 then
		table.insert(arg1, arg2)
		return arg1
	end
	local module_9 = {}
	module_9[1] = arg2
	return module_9
end
local function _(arg1) -- Line 55
	if arg1.button ~= nil then
		return "button"
	end
	if arg1.textBody ~= nil then
		return "textBody"
	end
	if arg1.thumbnail ~= nil then
		return "thumbnail"
	end
	if arg1.metaAction ~= nil then
		return "metaAction"
	end
	if arg1.singleMetaAction ~= nil then
		return "singleMetaAction"
	end
	return "unknown"
end
local function var12_upvr(arg1) -- Line 70
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [77] 55. Error Block 25 start (CF ANALYSIS FAILED)
	local module_4 = {
		layoutKey = arg1.layoutKey;
		name = arg1.name;
		timeOnScreenMs = arg1.timeOnScreenMs;
	}
	-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [90.1]
	module_4.visualItems = nil
	do
		return module_4
	end
	-- KONSTANTERROR: [77] 55. Error Block 25 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [93] 64. Error Block 26 start (CF ANALYSIS FAILED)
	do
		return nil
	end
	-- KONSTANTERROR: [93] 64. Error Block 26 end (CF ANALYSIS FAILED)
end
local module_2_upvr = {}
local var18 = 1
module_2_upvr.positionX = var18
if game_DefineFastFlag_result1_upvr then
	var18 = -5
else
	var18 = -20
end
module_2_upvr.positionXOffset = var18
module_2_upvr.positionY = 0
module_2_upvr.anchorX = 1
module_2_upvr.anchorY = 0
local module_5_upvr = {
	positionX = 1;
	positionXOffset = 20;
	positionY = 0;
	anchorX = 0;
	anchorY = 0;
}
local module_7_upvr = {
	positionX = 0.5;
	positionXOffset = 0;
	positionY = 0;
	anchorX = 0.5;
	anchorY = 0;
}
local module_6_upvr = {
	positionX = 0.5;
	positionXOffset = 0;
	positionY = 0;
	anchorX = 0.5;
	anchorY = 1;
}
local GuiService_upvr = game:GetService("GuiService")
local Cryo_upvr = dependencies.Cryo
local UserInputService_upvr = game:GetService("UserInputService")
local Logger_upvr = require(Parent.Logger)
return {
	calculateToastPosition = function(arg1, arg2, arg3, arg4) -- Line 156
		--[[ Upvalues[7]:
			[1]: GuiService_upvr (readonly)
			[2]: game_DefineFastFlag_result1_upvr (readonly)
			[3]: Cryo_upvr (readonly)
			[4]: module_2_upvr (readonly)
			[5]: module_7_upvr (readonly)
			[6]: module_5_upvr (readonly)
			[7]: module_6_upvr (readonly)
		]]
		-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
		local var25
		if GuiService_upvr then
			var25 = GuiService_upvr:GetGuiInset()
		else
			var25 = Vector2.new(0, 0)
		end
		if GuiService_upvr then
		else
		end
		if game_DefineFastFlag_result1_upvr then
			local _ = arg3
		else
		end
		if arg1 then
			if arg2 then
				return Cryo_upvr.Dictionary.union(module_2_upvr, {
					positionYOffset = arg3 + var25.Y;
				})
			end
			return Cryo_upvr.Dictionary.union(module_7_upvr, {
				positionYOffset = arg3 + var25.Y;
			})
		end
		if arg2 then
			if arg4 then
				local module = {}
				-- KONSTANTERROR: Expression was reused, decompilation is incorrect
				module.positionYOffset = arg3 + var25.Y
				return Cryo_upvr.Dictionary.union(module_2_upvr, module)
			end
			local module_8 = {}
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect
			module_8.positionYOffset = arg3 + var25.Y
			return Cryo_upvr.Dictionary.union(module_5_upvr, module_8)
		end
		if arg4 then
			return Cryo_upvr.Dictionary.union(module_7_upvr, {
				positionYOffset = arg3 + var25.Y;
			})
		end
		return Cryo_upvr.Dictionary.union(module_6_upvr, {
			positionYOffset = -1 * 60;
		})
	end;
	calculateTimeRemaining = function(arg1, arg2, arg3) -- Line 245, Named "calculateTimeRemaining"
		--[[ Upvalues[1]:
			[1]: TimeTrigger_upvr (readonly)
		]]
		local var44 = arg2
		if not var44 then
			var44 = DateTime.now().UnixTimestampMillis
		end
		var44 = arg3
		local var45 = var44
		if not var45 then
			var45 = DateTime.now().UnixTimestampMillis
		end
		var45 = 0
		local var46 = var45
		if arg1.trigger == TimeTrigger_upvr.OnReceive then
			var46 = (arg1.timespanMs) - (DateTime.now().UnixTimestampMillis - var44)
		elseif arg1.trigger == TimeTrigger_upvr.OnDisplay then
			var46 = (arg1.timespanMs) - (DateTime.now().UnixTimestampMillis - var45)
		end
		return math.max(var46, 0)
	end;
	getDeviceOrientation = function(arg1) -- Line 23
		--[[ Upvalues[1]:
			[1]: type_upvr (readonly)
		]]
		if arg1.Y < arg1.X then
			return type_upvr.DeviceOrientationEnum.Landscape
		end
		return type_upvr.DeviceOrientationEnum.Portrait
	end;
	getNotificationSize = function(arg1, arg2) -- Line 29
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
	marshalNotificationData = function(arg1) -- Line 97
		--[[ Upvalues[1]:
			[1]: var12_upvr (readonly)
		]]
		local module_3 = {
			currentState = arg1.content.currentState;
			notificationType = arg1.content.notificationType;
			id = arg1.content.id;
			priority = arg1.content.priority;
			clientEventsPayload = arg1.content.clientEventsPayload;
			deliverTimestamp = arg1.deliverTimestamp;
			notificationReceivedTimestampMs = arg1.notificationReceivedTimestampMs;
			timers = arg1.content.timers;
			luaNotifInfo = arg1.luaNotifInfo;
		}
		if arg1.content.states then
			module_3.state = var12_upvr(arg1.content.states[arg1.content.currentState])
		end
		return module_3
	end;
	isToastToRight = function(arg1) -- Line 120
		--[[ Upvalues[1]:
			[1]: type_upvr (readonly)
		]]
		if arg1 == type_upvr.DeviceOrientationEnum.Landscape then
			return true
		end
		return false
	end;
	isDesktopDevice = function() -- Line 199
		--[[ Upvalues[1]:
			[1]: UserInputService_upvr (readonly)
		]]
		local None_upvw_2 = Enum.Platform.None
		pcall(function() -- Line 201
			--[[ Upvalues[2]:
				[1]: None_upvw_2 (read and write)
				[2]: UserInputService_upvr (copied, readonly)
			]]
			None_upvw_2 = UserInputService_upvr:GetPlatform()
		end)
		local var41 = true
		if None_upvw_2 ~= Enum.Platform.Windows then
			var41 = true
			if None_upvw_2 ~= Enum.Platform.OSX then
				if None_upvw_2 ~= Enum.Platform.UWP then
					var41 = false
				else
					var41 = true
				end
			end
		end
		return var41
	end;
	getNearestWholeNumber = function(arg1) -- Line 212, Named "getNearestWholeNumber"
		if arg1 % 1 < 0.5 then
			return math.floor(arg1)
		end
		return math.ceil(arg1)
	end;
	getTimerFromCardData = function(arg1, arg2) -- Line 227, Named "getTimerFromCardData"
		--[[ Upvalues[2]:
			[1]: Logger_upvr (readonly)
			[2]: TimeTrigger_upvr (readonly)
		]]
		if arg1 and arg1.timers and arg1.timers[arg2] then
			return arg1.timers[arg2]
		end
		Logger_upvr:warning("timerKey {} not found in list of timers. Using default.", arg2)
		return {
			timespanMs = 0;
			trigger = TimeTrigger_upvr.OnDisplay;
		}
	end;
	fireEvent = function(arg1, arg2) -- Line 193
		arg1.sendEventDeferred("ToastNotification", "toastNotificationClientEvent", arg2)
	end;
}