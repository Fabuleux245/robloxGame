-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:06:26
-- Luau version 6, Types version 3
-- Time taken: 0.001157 seconds

local module = {}
local tbl = {{
	Id = "NONE";
	Name = "Coming Soon";
	Price = 0;
	CreatedAt = 0;
	PointsPerSecond = 1;
	SoundId = "rbxassetid://0";
	SoundLength = 0;
	ShopImageId = "rbxassetid://0";
	ToolImageId = "rbxassetid://0";
	Particles = {"memenote1", "memenote2"};
	Volume = 0.38;
	Unownable = true;
}}
module.DataArray = tbl
module.Data_ById = {}
for _, v in ipairs(tbl) do
	if module.Data_ById[v.Id] then
		error(string.format("[Sound] - Duplicate SoundId '%s'", v.Id))
	end
	module.Data_ById[v.Id] = v
end
require(game:GetService("ReplicatedStorage"):WaitForChild("Modules"):WaitForChild("Utility")).TableFreezeAll(module)
return module