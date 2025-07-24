-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:07:05
-- Luau version 6, Types version 3
-- Time taken: 0.001941 seconds

local ReplicatedStorage = game:GetService("ReplicatedStorage")
local module = require(ReplicatedStorage:WaitForChild("Theme"))
local Modules = ReplicatedStorage:WaitForChild("Modules")
local module_upvr = require(Modules:WaitForChild("UIShared"))
local module_2 = require(Modules:WaitForChild("Utility"))
local module_4_upvr = require(Modules:WaitForChild("UIExclusivityGroups"))
local UserInterface = Modules:WaitForChild("UserInterface")
local module_3 = require(UserInterface:WaitForChild("CollectionUISystem"))
local module_5 = require(UserInterface:WaitForChild("SidebarUI"))
local any_TableMerge_result1_upvr = module_2.TableMerge(module_3.CollectionType, {
	Worlds_Landing = 1000;
	Worlds_Main = 1010;
	Worlds_Bonus = 1020;
})
local tbl_upvw = {
	IsOpen = module_4_upvr.CreateExclusivityOpenHandler(module_4_upvr.WorldUIGroup);
}
local any_CollectionUICreate_result1_upvr = module_3.CollectionUICreate(any_TableMerge_result1_upvr, module_2.HierarchyCreate({{any_TableMerge_result1_upvr._UIMain}, {any_TableMerge_result1_upvr.Worlds_Landing, any_TableMerge_result1_upvr._UIMain}, {any_TableMerge_result1_upvr.Worlds_Main, any_TableMerge_result1_upvr.Worlds_Landing}, {any_TableMerge_result1_upvr.Worlds_Bonus, any_TableMerge_result1_upvr.Worlds_Landing}}), tbl_upvw.IsOpen)
function any_CollectionUICreate_result1_upvr.CloseRequested() -- Line 73
	--[[ Upvalues[2]:
		[1]: module_upvr (readonly)
		[2]: module_4_upvr (readonly)
	]]
	module_upvr.UIExclusivityGroup.Deactivate(module_4_upvr.WorldUIGroup)
end
local RenderStepped_2_upvr = any_CollectionUICreate_result1_upvr.RenderStepped
local var22_upvw
function any_CollectionUICreate_result1_upvr.RenderStepped(...) -- Line 81
	--[[ Upvalues[3]:
		[1]: RenderStepped_2_upvr (readonly)
		[2]: var22_upvw (read and write)
		[3]: tbl_upvw (read and write)
	]]
	RenderStepped_2_upvr(...)
	var22_upvw.Selected = tbl_upvw.IsOpen()
end
RenderStepped_2_upvr = "WorldUI"
any_CollectionUICreate_result1_upvr.Name = RenderStepped_2_upvr
RenderStepped_2_upvr = module.DisplayOrder_WorldUI
any_CollectionUICreate_result1_upvr.DisplayOrder = RenderStepped_2_upvr
RenderStepped_2_upvr = ReplicatedStorage:WaitForChild("Bindables")
local module_6_upvr = require(Modules:WaitForChild("UILegacySupport"))
RenderStepped_2_upvr:WaitForChild("OpenShops").Event:Connect(function(arg1) -- Line 98
	--[[ Upvalues[2]:
		[1]: any_CollectionUICreate_result1_upvr (readonly)
		[2]: module_6_upvr (readonly)
	]]
	if arg1 ~= nil then
		local var25 = any_CollectionUICreate_result1_upvr
		if module_6_upvr.LegacyBindableObjects[arg1] == nil then
			var25 = false
		else
			var25 = true
		end
		var25.RequestClose(var25)
	end
end)
any_CollectionUICreate_result1_upvr.CollectionMethods_ByType[any_TableMerge_result1_upvr._UIMain].Open = function() -- Line 105
	--[[ Upvalues[1]:
		[1]: module_6_upvr (readonly)
	]]
	module_6_upvr.CloseShops()
end
local any_MemberCreate_result1_upvr = module_4_upvr.MemberCreate(module_4_upvr.WorldUIGroup)
var22_upvw = module_5.ButtonProfileRegister({
	ButtonTheme = require(Modules:WaitForChild("UIButton")).Button.Themes.Floating;
	Icon = module.World_Legacy;
	Order = module_5.SidebarButtonOrder.World;
	Style = module_5.SidebarButtonStyle.IconText;
	Text = "World";
	PressFunction = function() -- Line 116, Named "ToggleInterface"
		--[[ Upvalues[6]:
			[1]: tbl_upvw (read and write)
			[2]: module_4_upvr (readonly)
			[3]: any_CollectionUICreate_result1_upvr (readonly)
			[4]: any_TableMerge_result1_upvr (readonly)
			[5]: module_upvr (readonly)
			[6]: any_MemberCreate_result1_upvr (readonly)
		]]
		if not tbl_upvw.IsOpen() then
			module_4_upvr.ClosePopups()
			any_CollectionUICreate_result1_upvr.RequestCollection(any_TableMerge_result1_upvr.Worlds_Landing)
			module_upvr.UIExclusivityMember.SetActive(any_MemberCreate_result1_upvr, true)
		else
			any_CollectionUICreate_result1_upvr.RequestClose()
		end
	end;
}, module_5.SidebarRegion.Left)
any_CollectionUICreate_result1_upvr.State.ClosingSelection = var22_upvw.Button.Button
local any_TableMerge_result1 = module_2.TableMerge(tbl_upvw, any_CollectionUICreate_result1_upvr)
tbl_upvw = any_TableMerge_result1
return any_TableMerge_result1