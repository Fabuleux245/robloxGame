-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:06:45
-- Luau version 6, Types version 3
-- Time taken: 0.005188 seconds

local module_upvr = {}
local Modules = game:GetService("ReplicatedStorage"):WaitForChild("Modules")
local module_upvr_2 = require(Modules:WaitForChild("UIShared"))
local tbl_3 = {Enum.CoreGuiType.Chat}
module_upvr.AlternativeDimensionUIGroup = module_upvr_2.UIExclusivityGroup.Create()
module_upvr.BloxBizUIGroup = module_upvr_2.UIExclusivityGroup.Create()
module_upvr.LegacyVIPUIGroup = module_upvr_2.UIExclusivityGroup.Create()
module_upvr.LoadingScreenUIGroup = module_upvr_2.UIExclusivityGroup.Create()
module_upvr.PetScreenUIGroup = module_upvr_2.UIExclusivityGroup.Create()
module_upvr.SpecialLevelUIGroup = module_upvr_2.UIExclusivityGroup.Create()
module_upvr.SpecialLevelUIGroup.SuppressedCoreGui = tbl_3
module_upvr.TutorialGroup_OB1 = module_upvr_2.UIExclusivityGroup.Create()
module_upvr.PrimaryGroup = module_upvr_2.UIExclusivityGroup.Create()
module_upvr.PrimaryGroup.MemberExclusivity = true
module_upvr.DonationsUIGroup = module_upvr_2.UIExclusivityGroup.Create()
module_upvr.DonationsUIGroup.SuppressedCoreGui = tbl_3
module_upvr.InventoryUIGroup = module_upvr_2.UIExclusivityGroup.Create()
module_upvr.InventoryUIGroup.IgnoredGroups = {
	[module_upvr.SpecialLevelUIGroup] = true;
}
module_upvr.InventoryUIGroup.SuppressedCoreGui = tbl_3
module_upvr.LevelMenuUIGroup = module_upvr_2.UIExclusivityGroup.Create()
module_upvr.LevelMenuUIGroup.SuppressedCoreGui = tbl_3
module_upvr.LevelSelectUIGroup = module_upvr_2.UIExclusivityGroup.Create()
module_upvr.LevelSelectUIGroup.SuppressedCoreGui = tbl_3
module_upvr.LevelSkipUIGroup = module_upvr_2.UIExclusivityGroup.Create()
module_upvr.PlayerInteractUIGroup = module_upvr_2.UIExclusivityGroup.Create()
module_upvr.PlayerInteractUIGroup.SuppressedCoreGui = tbl_3
module_upvr.SettingsUIGroup = module_upvr_2.UIExclusivityGroup.Create()
module_upvr.ShopUIGroup = module_upvr_2.UIExclusivityGroup.Create()
module_upvr.SettingsUIGroup.SuppressedCoreGui = tbl_3
module_upvr.WorldUIGroup = module_upvr_2.UIExclusivityGroup.Create()
module_upvr.WorldUIGroup.SuppressedCoreGui = tbl_3
module_upvr.EventUIGroup = module_upvr_2.UIExclusivityGroup.Create()
module_upvr.EventUIGroup.IgnoredGroups = {
	[module_upvr.SpecialLevelUIGroup] = true;
}
module_upvr.EventUIGroup.SuppressedCoreGui = {Enum.CoreGuiType.Backpack, Enum.CoreGuiType.Chat, Enum.CoreGuiType.PlayerList}
local tbl_2 = {}
local tbl = {module_upvr.LevelMenuUIGroup, module_upvr.PrimaryGroup}
tbl_2[1] = {module_upvr.PrimaryGroup}
tbl_2[2] = {module_upvr.DonationsUIGroup, module_upvr.PrimaryGroup}
tbl_2[3] = {module_upvr.EventUIGroup, module_upvr.PrimaryGroup}
tbl_2[4] = {module_upvr.InventoryUIGroup, module_upvr.PrimaryGroup}
tbl_2[5] = tbl
tbl_2[6] = {module_upvr.LevelSelectUIGroup, module_upvr.PrimaryGroup}
tbl_2[7] = {module_upvr.LevelSkipUIGroup, module_upvr.PrimaryGroup}
tbl_2[8] = {module_upvr.PlayerInteractUIGroup, module_upvr.PrimaryGroup}
tbl_2[9] = {module_upvr.SettingsUIGroup, module_upvr.PrimaryGroup}
tbl_2[10] = {module_upvr.ShopUIGroup, module_upvr.PrimaryGroup}
tbl_2[11] = {module_upvr.WorldUIGroup, module_upvr.PrimaryGroup}
local any_HierarchyCreate_result1_upvr = require(Modules:WaitForChild("Utility")).HierarchyCreate(tbl_2)
for i, v in any_HierarchyCreate_result1_upvr do
	tbl = i.IgnoredGroups
	local var25
	if not var25 then
		var25 = {}
	end
	local Parent = v.Parent
	while Parent do
		var25[Parent.Data] = true
	end
	if next(var25) ~= nil then
		i.IgnoredGroups = var25
	end
end
function module_upvr.CreateExclusivityOpenHandler(arg1, arg2) -- Line 116
	--[[ Upvalues[1]:
		[1]: module_upvr_2 (readonly)
	]]
	return function() -- Line 121, Named "IsOpen"
		--[[ Upvalues[3]:
			[1]: module_upvr_2 (copied, readonly)
			[2]: arg1 (readonly)
			[3]: arg2 (readonly)
		]]
		local any_HasExclusivity_result1_2 = module_upvr_2.UIExclusivityGroup.HasExclusivity(arg1)
		if not any_HasExclusivity_result1_2 and arg1.Active then
			module_upvr_2.UIExclusivityGroup.Deactivate(arg1)
			if arg2 then
				arg2()
			end
		end
		return any_HasExclusivity_result1_2
	end
end
function module_upvr.ClosePopups() -- Line 142
	--[[ Upvalues[2]:
		[1]: module_upvr_2 (readonly)
		[2]: module_upvr (readonly)
	]]
	module_upvr_2.UIExclusivityGroup.Deactivate(module_upvr.SpecialLevelUIGroup)
end
function module_upvr.MemberCreate(arg1) -- Line 147
	--[[ Upvalues[2]:
		[1]: any_HierarchyCreate_result1_upvr (readonly)
		[2]: module_upvr_2 (readonly)
	]]
	-- KONSTANTERROR: [24] 20. Error Block 7 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [24] 20. Error Block 7 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [0] 1. Error Block 12 start (CF ANALYSIS FAILED)
	if not arg1 then
	end
	-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [24.2]
	if nil then
		-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [24.3]
		if nil then
			-- KONSTANTWARNING: GOTO [13] #11
		end
		-- KONSTANTWARNING: GOTO [26] #22
	end
	-- KONSTANTERROR: [0] 1. Error Block 12 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [26] 22. Error Block 13 start (CF ANALYSIS FAILED)
	-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [32.1]
	do
		return module_upvr_2.UIExclusivityMember.Create(table.unpack(nil))
	end
	-- KONSTANTERROR: [26] 22. Error Block 13 end (CF ANALYSIS FAILED)
end
return module_upvr