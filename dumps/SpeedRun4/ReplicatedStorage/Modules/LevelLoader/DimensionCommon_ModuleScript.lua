-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:06:10
-- Luau version 6, Types version 3
-- Time taken: 0.001712 seconds

-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
local tbl_3 = {}
local Modules = game:GetService("ReplicatedStorage"):WaitForChild("Modules")
local module = require(Modules:WaitForChild("Dimensions"))
local DimensionManager = Modules:WaitForChild("LevelLoader"):WaitForChild("DimensionManager")
local tbl_2 = {}
local tbl = {
	_ClientModule = DimensionManager:WaitForChild("RidiculousDimension");
	_Order = 2000;
	Dimension = module.Data_ById.Ridiculous;
}
tbl_2[1] = {
	_ClientModule = DimensionManager:WaitForChild("HelicopterDimension");
	_Order = 5000;
	Dimension = module.Data_ById.Heli;
}
tbl_2[2] = {
	_ClientModule = DimensionManager:WaitForChild("ImpossibleDimension");
	_Order = 3000;
	Dimension = module.Data_ById.Impossible;
}
tbl_2[3] = {
	_ClientModule = DimensionManager:WaitForChild("MirrorDimension");
	_Order = (-math.huge);
	Dimension = module.Data_ById.Mirror;
}
tbl_2[4] = {
	_ClientModule = DimensionManager:WaitForChild("RagequitDimension");
	_Order = 0;
	Dimension = module.Data_ById.Ragequit;
}
tbl_2[5] = tbl
tbl_2[6] = {
	_ClientModule = DimensionManager:WaitForChild("ScaryDimension");
	_Order = 4000;
	Dimension = module.Data_ById.Scary;
}
tbl_2[7] = {
	_ClientModule = DimensionManager:WaitForChild("ZombieDimension");
	_Order = 1000;
	Dimension = module.Data_ById.Zombie;
}
tbl_3.ManagedDimension_ById = {}
-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
-- KONSTANTERROR: [195] 130. Error Block 13 start (CF ANALYSIS FAILED)
if not tbl.Dimension.Disabled then
	tbl.Id = tbl.Dimension.Id
	tbl_3.ManagedDimension_ById[tbl.Id] = tbl
end
-- KONSTANTERROR: [195] 130. Error Block 13 end (CF ANALYSIS FAILED)
-- KONSTANTERROR: [180] 119. Error Block 2 start (CF ANALYSIS FAILED)
-- KONSTANTERROR: Expression was reused, decompilation is incorrect
-- KONSTANTERROR: [180] 119. Error Block 2 end (CF ANALYSIS FAILED)