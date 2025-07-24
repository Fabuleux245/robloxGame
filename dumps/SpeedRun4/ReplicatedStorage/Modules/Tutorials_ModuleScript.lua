-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:06:56
-- Luau version 6, Types version 3
-- Time taken: 0.004464 seconds

local module_2_upvr = {}
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local module_upvr = require(ReplicatedStorage:WaitForChild("CommonData"))
local Modules = ReplicatedStorage:WaitForChild("Modules")
local module = require(Modules:WaitForChild("Worlds"))
module_2_upvr.TutorialType = table.freeze({
	Onboarding = 1;
})
module_2_upvr.Data_ById = {}
module_2_upvr.Tutorials_ByType = {}
for _, v in module_2_upvr.TutorialType do
	module_2_upvr.Tutorials_ByType[v] = {}
end
for _, v_2 in {{
	Id = "OB1";
	Steps = 5;
	Type = module_2_upvr.TutorialType.Onboarding;
	StepDiscardProgressWhenSaving = 3;
	StepConsiderCompleteWhenLoading = 4;
}} do
	if module_2_upvr.Data_ById[v_2.Id] then
		error(module_upvr.FormatOutput("Duplicate TutorialId '%s'", "Tutorials", nil, v_2.Id))
	end
	if v_2.Steps % 1 ~= 0 then
		error(module_upvr.FormatOutput("TutorialId '%s' step count is not an integer", "Tutorials", nil, v_2.Id))
	end
	if v_2.Steps < 0 or 63 < v_2.Steps then
		error(module_upvr.FormatOutput("TutorialId '%s' exceeds supported step range (0 to 63)", "Tutorials", nil, v_2.Id))
	end
	module_2_upvr.Data_ById[v_2.Id] = v_2
	if not v_2.Disabled then
		local var17 = module_2_upvr.Tutorials_ByType[v_2.Type]
		var17[#var17 + 1] = v_2
	end
end
local tbl_upvr = {
	[module_2_upvr.TutorialType.Onboarding] = {module.DefaultLevel, module.Level_ById.Re1};
}
function module_2_upvr.LevelCanJoin(arg1, arg2) -- Line 146
	--[[ Upvalues[2]:
		[1]: tbl_upvr (readonly)
		[2]: module_2_upvr (readonly)
	]]
	local var24
	for i_3, v_3 in tbl_upvr do
		if not module_2_upvr.TutorialStateCompletedType(arg2, i_3) and table.find(v_3, arg1) == nil then
			var24 = false
			return var24
		end
	end
	return var24
end
function tbl_upvr(arg1, arg2) -- Line 171, Named "TutorialStateCompletedTutorial"
	local Id_3 = arg2.Id
	local var29
	if arg1.TutorialComplete_ById[Id_3] ~= true then
		var29 = false
	else
		var29 = true
	end
	if not var29 then
		local var30 = arg1.Progress_ById[Id_3]
		if var30 and arg2.Steps < var30 then
			var29 = true
			arg1.TutorialComplete_ById[Id_3] = var29
		end
	end
	return var29
end
module_2_upvr.TutorialStateCompletedTutorial = tbl_upvr
function tbl_upvr(arg1, arg2) -- Line 194, Named "TutorialStateCompletedTutorials"
	--[[ Upvalues[1]:
		[1]: module_2_upvr (readonly)
	]]
	local var35
	for _, v_4 in arg2 do
		if not module_2_upvr.TutorialStateCompletedTutorial(arg1, v_4) then
			var35 = false
			return var35
		end
	end
	return var35
end
module_2_upvr.TutorialStateCompletedTutorials = tbl_upvr
function tbl_upvr(arg1, arg2) -- Line 213, Named "TutorialStateCompletedType"
	--[[ Upvalues[2]:
		[1]: module_2_upvr (readonly)
		[2]: module_upvr (readonly)
	]]
	local var36
	if arg1.TypeComplete_ByType[arg2] ~= true then
		var36 = false
	else
		var36 = true
	end
	if not var36 then
		local var37 = module_2_upvr.Tutorials_ByType[arg2]
		if not var37 then
			error(module_upvr.FormatOutput("Invalid TutorialType '%*'", "Tutorials", nil, arg2), 2)
		end
		if module_2_upvr.TutorialStateCompletedTutorials(arg1, var37) then
			var36 = true
			arg1.TypeComplete_ByType[arg2] = var36
		end
	end
	return var36
end
module_2_upvr.TutorialStateCompletedType = tbl_upvr
function tbl_upvr(arg1) -- Line 239, Named "TutorialStateResolve"
	if arg1.Dirty then
		table.clear(arg1.Dirty_ById)
		arg1.Dirty = false
	end
end
module_2_upvr.TutorialStateResolve = tbl_upvr
function tbl_upvr(arg1, arg2, arg3) -- Line 250, Named "TutorialStateSetProgress"
	--[[ Upvalues[1]:
		[1]: module_2_upvr (readonly)
	]]
	local var41
	if type(arg3) ~= "number" or arg3 % 1 ~= 0 or arg3 < 0 or 63 < arg3 then
		var41 = "Step must be an integer in the range of 0 to 63 (inclusive). Recevied: %*"
		var41 = 2
		error(string.format(var41, arg3), var41)
	end
	local Id_2 = arg2.Id
	var41 = arg1.Progress_ById
	local var43 = var41[Id_2]
	if var43 == arg3 then
		var41 = false
	else
		var41 = true
	end
	arg1.Progress_ById[Id_2] = arg3
	if var41 and not arg2.Disabled then
		arg1.Dirty = true
		arg1.Dirty_ById[Id_2] = arg3
		if module_2_upvr.TutorialStateCompletedTutorial(arg1, arg2) then
			module_2_upvr.TutorialStateCompletedType(arg1, arg2.Type)
		end
	end
	return var43
end
module_2_upvr.TutorialStateSetProgress = tbl_upvr
tbl_upvr = require(Modules:WaitForChild("Utility")).TableFreezeAll
tbl_upvr(module_2_upvr)
return module_2_upvr