-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:06:50
-- Luau version 6, Types version 3
-- Time taken: 0.002197 seconds

local module_2 = {}
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local module = require(ReplicatedStorage:WaitForChild("CommonData"))
local tbl = {{
	Id = "Default";
	Name = "Default";
	Price = 0;
	CreatedAt = 1716142627;
	CarriedAnimations = {"rbxassetid://17602686443"};
	CarriedOffsets = {CFrame.Angles((-math.pi/2), 0, 0) + Vector3.new(0, 2.75, 0)};
	CarryingAnimations = {"rbxassetid://17602620086"};
}}
table.sort(tbl, module.SortItemData)
module_2.DataArray = tbl
module_2.Data_ById = {}
for _, v in tbl do
	if module_2.Data_ById[v.Id] then
		error(module.FormatOutput("Duplicate CarryId '%s'", "Carries", nil, v.Id))
	end
	module_2.Data_ById[v.Id] = v
end
module_2.DefaultCarry = module_2.Data_ById.Default
function module_2.CarryPropertyGetIndex(arg1) -- Line 84
	if arg1.Carrier then
		return table.find(arg1.Carrier.Carrying, arg1) or 0
	end
	return #arg1.Carrying
end
function module_2.CarryPropertyGetValue(arg1, arg2) -- Line 101
	local var13
	for i_2 = arg2, 1, -1 do
		var13 = arg1[i_2]
		if var13 ~= nil then break end
	end
	if type(var13) == "function" then
		return var13(arg2)
	end
	return var13
end
require(ReplicatedStorage:WaitForChild("Modules"):WaitForChild("Utility")).TableFreezeAll(module_2)
return module_2