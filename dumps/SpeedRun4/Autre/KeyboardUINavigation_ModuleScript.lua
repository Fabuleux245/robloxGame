-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:05:35
-- Luau version 6, Types version 3
-- Time taken: 0.003236 seconds

local GuiService_upvr = game:GetService("GuiService")
local GameSettings_upvr = UserSettings().GameSettings
local RobloxTranslator_upvr = require(game:GetService("CorePackages").Workspace.Packages.RobloxTranslator)
local function _(arg1, arg2) -- Line 17, Named "LocalizedGetString"
	--[[ Upvalues[1]:
		[1]: RobloxTranslator_upvr (readonly)
	]]
	pcall(function() -- Line 18
		--[[ Upvalues[3]:
			[1]: arg2 (read and write)
			[2]: RobloxTranslator_upvr (copied, readonly)
			[3]: arg1 (readonly)
		]]
		arg2 = RobloxTranslator_upvr:FormatByKey(arg1)
	end)
	return arg2
end
local function ScrollSelectedElement_upvr(arg1, arg2, arg3) -- Line 24, Named "ScrollSelectedElement"
	--[[ Upvalues[1]:
		[1]: GuiService_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local var5
	if arg2 ~= Enum.UserInputState.Begin then
		return Enum.ContextActionResult.Pass
	end
	local SelectedObject = GuiService_upvr.SelectedObject
	if SelectedObject == nil then
		return Enum.ContextActionResult.Pass
	end
	local var7
	var5 = SelectedObject.ClassName
	if var5 == "ScrollingFrame" then
		var7 = SelectedObject
	else
		var5 = SelectedObject:FindFirstAncestorOfClass("ScrollingFrame")
		if var5 ~= nil then
			var7 = var5
		end
	end
	if var7 == nil then
		var5 = Enum.ContextActionResult.Pass
		return var5
	end
	var5 = 0
	if arg3.KeyCode == Enum.KeyCode.PageUp or arg3.KeyCode == Enum.KeyCode.Home then
		var5 = -100
	elseif arg3.KeyCode == Enum.KeyCode.PageDown or arg3.KeyCode == Enum.KeyCode.End then
		var5 = 100
	end
	if arg3.KeyCode == Enum.KeyCode.PageUp or arg3.KeyCode == Enum.KeyCode.PageDown then
	elseif arg3.KeyCode == Enum.KeyCode.Home or arg3.KeyCode == Enum.KeyCode.End then
	end
	var7.CanvasPosition = Vector2.new(math.max(0, math.min(var7.CanvasPosition.X + var5, var7.AbsoluteCanvasSize.X)), math.max(0, math.min(var7.CanvasPosition.Y + var5, var7.AbsoluteCanvasSize.Y)))
	return Enum.ContextActionResult.Pass
end
local var8_upvw
local Players_upvr = game:GetService("Players")
local SendNotificationInfo_upvr = game:GetService("CoreGui"):WaitForChild("RobloxGui"):WaitForChild("SendNotificationInfo")
local function EnableKeyboardNavigation_upvr(arg1, arg2, arg3) -- Line 72, Named "EnableKeyboardNavigation"
	--[[ Upvalues[6]:
		[1]: GameSettings_upvr (readonly)
		[2]: GuiService_upvr (readonly)
		[3]: var8_upvw (read and write)
		[4]: Players_upvr (readonly)
		[5]: RobloxTranslator_upvr (readonly)
		[6]: SendNotificationInfo_upvr (readonly)
	]]
	if not GameSettings_upvr.UiNavigationKeyBindEnabled then
		return Enum.ContextActionResult.Pass
	end
	if arg2 ~= Enum.UserInputState.Begin then
		return Enum.ContextActionResult.Pass
	end
	if not GuiService_upvr.AutoSelectGuiEnabled then
		return Enum.ContextActionResult.Pass
	end
	if GuiService_upvr.SelectedObject then
		GuiService_upvr.SelectedObject = nil
		return Enum.ContextActionResult.Sink
	end
	if var8_upvw == nil then
		var8_upvw = Players_upvr.LocalPlayer:FindFirstChildOfClass("PlayerGui")
	end
	GuiService_upvr:Select(var8_upvw)
	if GuiService_upvr.SelectedObject then
		local var11_upvw
		local const_string_upvr = "NotificationScript2.UINavigation.Title"
		pcall(function() -- Line 18
			--[[ Upvalues[3]:
				[1]: var11_upvw (read and write)
				[2]: RobloxTranslator_upvr (copied, readonly)
				[3]: const_string_upvr (readonly)
			]]
			var11_upvw = RobloxTranslator_upvr:FormatByKey(const_string_upvr)
		end)
		local var14_upvw
		local const_string_upvr_2 = "NotificationScript2.UINavigation.Text"
		pcall(function() -- Line 18
			--[[ Upvalues[3]:
				[1]: var14_upvw (read and write)
				[2]: RobloxTranslator_upvr (copied, readonly)
				[3]: const_string_upvr_2 (readonly)
			]]
			var14_upvw = RobloxTranslator_upvr:FormatByKey(const_string_upvr_2)
		end)
		SendNotificationInfo_upvr:Fire({
			Title = var11_upvw;
			Text = var14_upvw;
			Duration = 3;
		})
	end
	return Enum.ContextActionResult.Sink
end
local module_upvr = {}
module_upvr.__index = module_upvr
local ContextActionService_upvr = game:GetService("ContextActionService")
function module_upvr.new() -- Line 115
	--[[ Upvalues[6]:
		[1]: module_upvr (readonly)
		[2]: ContextActionService_upvr (readonly)
		[3]: EnableKeyboardNavigation_upvr (readonly)
		[4]: ScrollSelectedElement_upvr (readonly)
		[5]: GameSettings_upvr (readonly)
		[6]: GuiService_upvr (readonly)
	]]
	ContextActionService_upvr:BindAction("EnableKeyboardUINavigation", EnableKeyboardNavigation_upvr, false, Enum.KeyCode.BackSlash)
	ContextActionService_upvr:BindAction("ScrollSelectedElement", ScrollSelectedElement_upvr, false, Enum.KeyCode.PageUp, Enum.KeyCode.PageDown, Enum.KeyCode.Home, Enum.KeyCode.End)
	GameSettings_upvr:GetPropertyChangedSignal("UiNavigationKeyBindEnabled"):Connect(function() -- Line 120
		--[[ Upvalues[2]:
			[1]: GameSettings_upvr (copied, readonly)
			[2]: GuiService_upvr (copied, readonly)
		]]
		if not GameSettings_upvr.UiNavigationKeyBindEnabled then
			GuiService_upvr.SelectedObject = nil
		end
	end)
	return setmetatable({}, module_upvr)
end
return module_upvr.new()