-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:44:53
-- Luau version 6, Types version 3
-- Time taken: 0.007093 seconds

local GameSettings_upvr = UserSettings().GameSettings
local SettingsService = require(game:GetService("CorePackages").Workspace.Packages.SettingsService)
local ValueChangedSignal_upvr = SettingsService.ValueChangedSignal
local tbl_upvr = {
	[Enum.ControlMode.MouseLockSwitch] = true;
	[Enum.ControlMode.Classic] = false;
}
local function _() -- Line 31, Named "ShiftLockValue"
	--[[ Upvalues[3]:
		[1]: tbl_upvr (readonly)
		[2]: GameSettings_upvr (readonly)
		[3]: ValueChangedSignal_upvr (readonly)
	]]
	local any_new_result1_3 = ValueChangedSignal_upvr.new(tbl_upvr[GameSettings_upvr.ControlMode])
	any_new_result1_3:connect(function(arg1) -- Line 34
		--[[ Upvalues[2]:
			[1]: tbl_upvr (copied, readonly)
			[2]: GameSettings_upvr (copied, readonly)
		]]
		local var7
		if tbl_upvr[GameSettings_upvr.ControlMode] == arg1 then
		else
			if arg1 then
				var7 = Enum.ControlMode.MouseLockSwitch
			else
				var7 = Enum.ControlMode.Classic
			end
			GameSettings_upvr.ControlMode = var7
		end
	end)
	return any_new_result1_3
end
local LocalPlayer_upvr = game:GetService("Players").LocalPlayer
local UserInputService_upvr = game:GetService("UserInputService")
local AvailabilitySignal_upvr = SettingsService.AvailabilitySignal
local any_new_result1 = ValueChangedSignal_upvr.new(tbl_upvr[GameSettings_upvr.ControlMode])
any_new_result1:connect(function(arg1) -- Line 34
	--[[ Upvalues[2]:
		[1]: tbl_upvr (readonly)
		[2]: GameSettings_upvr (readonly)
	]]
	local var37
	if tbl_upvr[GameSettings_upvr.ControlMode] == arg1 then
	else
		if arg1 then
			var37 = Enum.ControlMode.MouseLockSwitch
		else
			var37 = Enum.ControlMode.Classic
		end
		GameSettings_upvr.ControlMode = var37
	end
end)
local var38 = any_new_result1
local any_new_result1_4 = SettingsService.VisibilitySignal.new(true)
return {
	id = "shift-lock";
	field_type = SettingsService.FieldType.Toggle;
	label = "CoreScripts.InGameMenu.GameSettings.ShiftLock";
	alreadyLocalized = false;
	onChanged = var38;
	availability = (function(arg1, arg2) -- Line 45, Named "ShiftLockAvailability"
		--[[ Upvalues[3]:
			[1]: LocalPlayer_upvr (readonly)
			[2]: UserInputService_upvr (readonly)
			[3]: AvailabilitySignal_upvr (readonly)
		]]
		local function _() -- Line 46, Named "available"
			--[[ Upvalues[2]:
				[1]: LocalPlayer_upvr (copied, readonly)
				[2]: UserInputService_upvr (copied, readonly)
			]]
			local var25
			if LocalPlayer_upvr then
				var25 = LocalPlayer_upvr.DevEnableMouseLock
			else
				var25 = true
			end
			local MouseEnabled_6 = UserInputService_upvr.MouseEnabled
			if MouseEnabled_6 then
				MouseEnabled_6 = UserInputService_upvr.KeyboardEnabled
				if MouseEnabled_6 then
					MouseEnabled_6 = var25
				end
			end
			return MouseEnabled_6
		end
		local var27
		if LocalPlayer_upvr then
			var27 = LocalPlayer_upvr.DevEnableMouseLock
		else
			var27 = true
		end
		local MouseEnabled_5 = UserInputService_upvr.MouseEnabled
		if MouseEnabled_5 then
			MouseEnabled_5 = UserInputService_upvr.KeyboardEnabled
			if MouseEnabled_5 then
				MouseEnabled_5 = var27
			end
		end
		local any_new_result1_upvr = AvailabilitySignal_upvr.new(MouseEnabled_5)
		any_new_result1_upvr:connect(function(arg1_5) -- Line 52
			--[[ Upvalues[1]:
				[1]: arg2 (readonly)
			]]
			if arg1_5 then
				arg2:set(arg1_5)
			end
		end, true)
		if LocalPlayer_upvr then
			var27 = LocalPlayer_upvr
			var27.Changed:Connect(function(arg1_6) -- Line 59
				--[[ Upvalues[3]:
					[1]: any_new_result1_upvr (readonly)
					[2]: LocalPlayer_upvr (copied, readonly)
					[3]: UserInputService_upvr (copied, readonly)
				]]
				if arg1_6 == "DevEnableMouseLock" then
					if LocalPlayer_upvr then
					else
					end
					local MouseEnabled_7 = UserInputService_upvr.MouseEnabled
					if MouseEnabled_7 then
						MouseEnabled_7 = UserInputService_upvr.KeyboardEnabled
						if MouseEnabled_7 then
							MouseEnabled_7 = true
						end
					end
					any_new_result1_upvr:set(MouseEnabled_7)
				end
			end)
		end
		var27 = UserInputService_upvr
		var27.Changed:Connect(function(arg1_7) -- Line 66
			--[[ Upvalues[3]:
				[1]: any_new_result1_upvr (readonly)
				[2]: LocalPlayer_upvr (copied, readonly)
				[3]: UserInputService_upvr (copied, readonly)
			]]
			if arg1_7 == "MouseEnabled" or arg1_7 == "KeyboardEnabled" then
				if LocalPlayer_upvr then
				else
				end
				local MouseEnabled = UserInputService_upvr.MouseEnabled
				if MouseEnabled then
					MouseEnabled = UserInputService_upvr.KeyboardEnabled
					if MouseEnabled then
						MouseEnabled = true
					end
				end
				any_new_result1_upvr:set(MouseEnabled)
			end
		end)
		return any_new_result1_upvr
	end)(var38, any_new_result1_4);
	visibility = any_new_result1_4;
	layoutOrder = require(script:FindFirstAncestor("Settings").Integrations.Constants).GAMESETTINGS.LAYOUT_ORDER.ShiftLockFrame;
}