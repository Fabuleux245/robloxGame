-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:46:57
-- Luau version 6, Types version 3
-- Time taken: 0.002985 seconds

local GuiService_upvr = game:GetService("GuiService")
local UserInputService = game:GetService("UserInputService")
local mockableWarn_upvr = require(script.Parent.Parent.FocusNavigationUtils).mockableWarn
local pcall_result1, pcall_result2 = pcall(function() -- Line 13
	--[[ Upvalues[1]:
		[1]: GuiService_upvr (readonly)
	]]
	return GuiService_upvr:GetPropertyChangedSignal("SelectedCoreObject")
end)
local pcall_result1_2_upvr, pcall_result2_2_upvr = pcall(function() -- Line 17
	return game:GetService("CoreGui")
end)
local tbl = {}
local function setSelection() -- Line 30, Named "getSelection"
	--[[ Upvalues[1]:
		[1]: GuiService_upvr (readonly)
	]]
	return GuiService_upvr.SelectedCoreObject
end
tbl.getSelection = setSelection
function setSelection(arg1) -- Line 33
	--[[ Upvalues[4]:
		[1]: pcall_result1_2_upvr (readonly)
		[2]: pcall_result2_2_upvr (readonly)
		[3]: mockableWarn_upvr (readonly)
		[4]: GuiService_upvr (readonly)
	]]
	if _G.__DEV__ and pcall_result1_2_upvr and arg1 ~= nil and not arg1:IsDescendantOf(pcall_result2_2_upvr) then
		mockableWarn_upvr(string.format("Attempting to focus non-CoreGui descendant '%s' from a CoreGui FocusNavigationService ".."instance. Consider creating this FocusNavigationService with ".."`FocusNavigation.EnginInterface.PlayerGui` instead", arg1:GetFullName()))
	end
	if arg1 and not arg1.Selectable then
		GuiService_upvr:Select(arg1)
	else
		GuiService_upvr.SelectedCoreObject = arg1
	end
end
local var12 = setSelection
tbl.setSelection = var12
if pcall_result1 then
	var12 = pcall_result2
else
	var12 = {
		Connect = function() -- Line 23, Named "Connect"
			error("Could not access SelectedCoreObject signal; you may not have the correct permissions")
		end;
	}
end
tbl.SelectionChanged = var12
tbl.InputBegan = UserInputService.InputBegan
tbl.InputChanged = UserInputService.InputChanged
tbl.InputEnded = UserInputService.InputEnded
tbl.LastInputTypeChanged = UserInputService.LastInputTypeChanged
return {
	CoreGui = tbl;
	PlayerGui = {
		getSelection = function() -- Line 60, Named "getSelection"
			--[[ Upvalues[1]:
				[1]: GuiService_upvr (readonly)
			]]
			return GuiService_upvr.SelectedObject
		end;
		setSelection = function(arg1) -- Line 63, Named "setSelection"
			--[[ Upvalues[4]:
				[1]: pcall_result1_2_upvr (readonly)
				[2]: pcall_result2_2_upvr (readonly)
				[3]: mockableWarn_upvr (readonly)
				[4]: GuiService_upvr (readonly)
			]]
			if _G.__DEV__ and pcall_result1_2_upvr and arg1 ~= nil and arg1:IsDescendantOf(pcall_result2_2_upvr) then
				mockableWarn_upvr(string.format("Attempting to focus CoreGui descendant '%s' from a non-CoreGui FocusNavigationService instance.".."Consider creating this FocusNavigationService with ".."`FocusNavigation.EnginInterface.CoreGui` instead", arg1:GetFullName()))
			end
			if arg1 and not arg1.Selectable then
				GuiService_upvr:Select(arg1)
			else
				GuiService_upvr.SelectedObject = arg1
			end
		end;
		SelectionChanged = GuiService_upvr:GetPropertyChangedSignal("SelectedObject");
		InputBegan = UserInputService.InputBegan;
		InputChanged = UserInputService.InputChanged;
		InputEnded = UserInputService.InputEnded;
		LastInputTypeChanged = UserInputService.LastInputTypeChanged;
	};
}