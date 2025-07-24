-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:06:58
-- Luau version 6, Types version 3
-- Time taken: 0.005087 seconds

-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
local module_2_upvr = {}
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local module_3_upvr = require(ReplicatedStorage:WaitForChild("CommonData"))
local module_5 = require(ReplicatedStorage:WaitForChild("Settings"))
local module_4 = require(ReplicatedStorage:WaitForChild("Modules"):WaitForChild("Utility"))
module_2_upvr.RewardType = table.freeze({
	Currency = 1;
})
local tbl_upvr = {}
local tbl = {
	Id = "Zom";
	Name = "Zombie";
}
local var25 = 25
tbl.DamageBase = var25
if module_5.UseSpeedRun4Character then
	var25 = 0.25
else
	var25 = 1
end
tbl.DamageCooldown = var25
tbl.HealthBase = 10
tbl_upvr[1] = tbl
tbl_upvr[2] = {
	Id = "Hel";
	Name = "Toilet";
	DamageBase = 50;
	DamageCooldown = 1;
	HealthBase = 1000;
	HealthCap = 250;
	HealthChange = -12.5;
	Rewards = {{
		Type = module_2_upvr.RewardType.Currency;
		CurrencyType = module_3_upvr.PrimaryCurrencyType;
		Value = module_4.BeautifyNumber(module_5.EnergyGenerationPerSecond * 12, 2, 0.5);
	}};
}
module_2_upvr.DataArray = tbl_upvr
module_2_upvr.Data_ById = {}
for i, v in tbl_upvr do
	if module_2_upvr.Data_ById[v.Id] then
		error(module_3_upvr.FormatOutput("Duplicate EnemyId '%s'", "Enemies", nil, v.Id))
	end
	module_2_upvr.Data_ById[v.Id] = v
end
if not module_5.IsHelicopterChase then
	(function(arg1) -- Line 138, Named "RemoveEnemyData"
		--[[ Upvalues[3]:
			[1]: module_2_upvr (readonly)
			[2]: tbl_upvr (readonly)
			[3]: module_3_upvr (readonly)
		]]
		-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
		local Data_ById = module_2_upvr.Data_ById
		-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [16] 14. Error Block 3 start (CF ANALYSIS FAILED)
		table.remove(tbl_upvr, Data_ById)
		do
			return
		end
		-- KONSTANTERROR: [16] 14. Error Block 3 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [22] 19. Error Block 4 start (CF ANALYSIS FAILED)
		warn(module_3_upvr.FormatOutput("EnemyId '%*' is not valid", "Enemies", nil, arg1))
		-- KONSTANTERROR: [22] 19. Error Block 4 end (CF ANALYSIS FAILED)
	end)("Hel")
end
if 4095 < #tbl_upvr then
	i = "Must update ClaimId generation logic to support more enemies."
	v = "Enemies"
	error(module_3_upvr.FormatOutput(i, v))
end
function module_2_upvr.EnemyStatsCreate(arg1, arg2) -- Line 172
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local var36 = arg2 - 1
	local var37 = arg1.HealthBase or 0
	local var38
	if arg1.DamageChange then
		var38 += arg1.DamageChange * var36
	end
	if arg1.DamageScaling then
		var38 *= 1 + arg1.DamageScaling * var36
	end
	if arg1.HealthChange then
	end
	if arg1.HealthScaling then
	end
	if arg1.HealthCap then
		local var39 = arg1.HealthCap - var37
		local var40 = (var37 + arg1.HealthChange * var36) * (1 + arg1.HealthScaling * var36) - var37
		if math.sign(var39) == math.sign(var40) and math.abs(var39) < math.abs(var40) then
		end
	end
	return {
		Cooldown = arg1.DamageCooldown or 0;
		Damage = var38;
		Health = arg1.HealthCap;
	}
end
module_2_upvr.BaseStats_ByEnemyData = {}
for _, v_2 in tbl_upvr do
	module_2_upvr.BaseStats_ByEnemyData[v_2] = module_2_upvr.EnemyStatsCreate(v_2, 1)
end
function module_2_upvr.EnemyStateAddPoints(arg1, arg2, arg3) -- Line 233
	--[[ Upvalues[1]:
		[1]: module_2_upvr (readonly)
	]]
	local var42 = (arg1.Defeated_ById[arg2.Id] or 0) + arg3
	if 0 < arg3 then
		module_2_upvr.EnemyStateSetPoints(arg1, arg2, var42)
	end
	return var42
end
function module_2_upvr.EnemyStateGetPoints(arg1, arg2) -- Line 251
	return arg1.Defeated_ById[arg2.Id] or 0
end
function module_2_upvr.EnemyStateResolve(arg1) -- Line 259
	if arg1.Dirty then
		table.clear(arg1.Dirty_ById)
		arg1.Dirty = false
	end
end
function module_2_upvr.EnemyStateSetPoints(arg1, arg2, arg3) -- Line 270
	local Id = arg2.Id
	if arg1.Defeated_ById[Id] ~= arg3 then
		arg1.Dirty = true
		arg1.Defeated_ById[Id] = arg3
		arg1.Dirty_ById[Id] = arg3
	end
end
module_4.TableFreezeAll(module_2_upvr)
return module_2_upvr