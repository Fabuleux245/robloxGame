-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:06:56
-- Luau version 6, Types version 3
-- Time taken: 0.001545 seconds

local module_2 = {}
local ReplicatedStorage_2 = game:GetService("ReplicatedStorage")
local module = require(ReplicatedStorage_2:WaitForChild("CommonData"))
local module_4 = require(ReplicatedStorage_2:WaitForChild("Settings"))
local Modules_2 = ReplicatedStorage_2:WaitForChild("Modules")
local tbl_3 = {{
	Id = "Default";
	Name = "Default";
	Price = 0;
	CreatedAt = 1723325796;
	Unownable = true;
}}
if not module_4.IsRollGame then
	table.clear(tbl_3)
end
table.sort(tbl_3, module.SortItemData)
module_2.DataArray = tbl_3
module_2.Data_ById = {}
for i, v in tbl_3 do
	if module_2.Data_ById[v.Id] then
		error(module.FormatOutput("Duplicate MarbleId '%s'", "Marbles", nil, v.Id))
	end
	module_2.Data_ById[v.Id] = v
	local CharacterOffset_2 = v.CharacterOffset
	if CharacterOffset_2 then
		v.CharacterOffset = CharacterOffset_2.Rotation + CharacterOffset_2.Position * require(Modules_2:WaitForChild("RollEngine"):WaitForChild("RollProperties")).BallRadius
	end
end
if module_4.IsRollGame then
	module_2.DefaultMarble = module_2.Data_ById.Default
	if module_2.DefaultMarble == nil then
		i = "Marbles"
		v = nil
		error(module.FormatOutput("Default marble is set to invalid MarbleId '%s'", i, v, "Default"))
	end
end
require(Modules_2:WaitForChild("Utility")).TableFreezeAll(module_2)
return module_2