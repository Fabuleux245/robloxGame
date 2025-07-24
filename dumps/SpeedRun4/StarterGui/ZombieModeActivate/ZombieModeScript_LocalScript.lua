-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:42:37
-- Luau version 6, Types version 3
-- Time taken: 0.010941 seconds

local ReplicatedStorage = game:GetService("ReplicatedStorage")
local LocalPlayer_upvr = game:GetService("Players").LocalPlayer
local module_upvr = require(ReplicatedStorage:WaitForChild("CommonData"))
local module = require(ReplicatedStorage:WaitForChild("Theme"))
local Modules = ReplicatedStorage:WaitForChild("Modules")
local module_upvr_2 = require(Modules:WaitForChild("ClientData"))
local module_upvr_6 = require(Modules:WaitForChild("Dimensions"))
local module_upvr_5 = require(Modules:WaitForChild("UILegacySupport"))
local Frame_upvr = script.Parent:WaitForChild("Frame")
local TextButton_upvr = Frame_upvr:WaitForChild("ToggleFrame"):WaitForChild("TextButton")
TextButton_upvr.BackgroundColor3 = module.ButtonColor2
TextButton_upvr.TextColor3 = module.TextColor2
local tbl_upvr = {
	ByActivate = {
		[true] = {
			Prompt = "Activate %s mode skull?";
			Toggle = "Activate";
		};
		[false] = {
			Prompt = "%s mode is currently active. Would you like to disable this mode?";
			Toggle = "Deactivate";
		};
	};
	IneligibilityGeneric = "You do not meet the requirements to activate this skull.";
	IneligibilityStars = "You need at least %i stars to activate this skull.";
}
local var19_upvw
local var16_upvw
if require(ReplicatedStorage:WaitForChild("Settings")).EnergyEnabled then
	var16_upvw = "EnergyMultiplier"
	local module_upvr_3 = require(Modules:WaitForChild("Utility"))
	function var19_upvw(arg1) -- Line 55
		--[[ Upvalues[1]:
			[1]: module_upvr_3 (readonly)
		]]
		return string.format("When active, you gain +%s%% more energy\nwhile running in levels.", module_upvr_3.FormatNumber(assert(arg1.EnergyMultiplier) * 100, module_upvr_3.FormatNumberOptions_AddCommas))
	end
else
	var16_upvw = "GemsPerLevel"
	function var19_upvw(arg1) -- Line 68
		return string.format("When active, this awards +%i gems per level.", assert(arg1.GemsPerLevel))
	end
end
local tbl_upvr_3 = {
	RequestPending = false;
	SelectedDimension = nil;
	DimensionDebounce = {};
}
module_upvr_5.RegisterShopFrame(Frame_upvr)
local tbl_upvr_2 = {
	Activate = 1;
	Deactivate = 2;
	Ineligible = 3;
}
local function _(arg1) -- Line 94, Named "DetermineActivationType"
	--[[ Upvalues[3]:
		[1]: tbl_upvr_2 (readonly)
		[2]: module_upvr_2 (readonly)
		[3]: module_upvr_6 (readonly)
	]]
	local var22
	if module_upvr_2.DimensionState.Equipped_ById[arg1.Id] then
		var22 = tbl_upvr_2.Deactivate
		return var22
	end
	if module_upvr_6.DimensionRequirementsMet(arg1, module_upvr_2.LocalSaveData) then
		var22 = tbl_upvr_2.Activate
	end
	return var22
end
local function _() -- Line 109, Named "DebounceDimension"
	--[[ Upvalues[1]:
		[1]: tbl_upvr_3 (readonly)
	]]
	if tbl_upvr_3.SelectedDimension then
		tbl_upvr_3.DimensionDebounce[tbl_upvr_3.SelectedDimension] = os.clock() + 2
		tbl_upvr_3.SelectedDimension = nil
	end
end
local var23_upvw
local TextLabel_upvr = Frame_upvr:WaitForChild("TextFrame"):WaitForChild("TextLabel")
local module_2_upvr = require(Modules:WaitForChild("UISelection"))
local function SetInterfaceVisible_upvr(arg1) -- Line 116, Named "SetInterfaceVisible"
	--[[ Upvalues[13]:
		[1]: tbl_upvr_3 (readonly)
		[2]: Frame_upvr (readonly)
		[3]: var23_upvw (read and write)
		[4]: tbl_upvr_2 (readonly)
		[5]: module_upvr_2 (readonly)
		[6]: module_upvr_6 (readonly)
		[7]: tbl_upvr (readonly)
		[8]: TextButton_upvr (readonly)
		[9]: var16_upvw (read and write)
		[10]: var19_upvw (read and write)
		[11]: module_upvr (readonly)
		[12]: TextLabel_upvr (readonly)
		[13]: module_2_upvr (readonly)
	]]
	local SelectedDimension_3 = tbl_upvr_3.SelectedDimension
	local var33 = false
	if arg1 == true then
		if SelectedDimension_3 == nil then
			var33 = false
		else
			var33 = true
		end
	end
	Frame_upvr.Visible = var33
	var33 = Frame_upvr.Visible
	var23_upvw(var33)
	var33 = Frame_upvr
	local var34
	if var33.Visible and SelectedDimension_3 then
		var33 = tbl_upvr_2.Ineligible
		var34 = module_upvr_2.DimensionState.Equipped_ById
		if var34[SelectedDimension_3.Id] then
			var33 = tbl_upvr_2.Deactivate
		else
			var34 = module_upvr_6
			var34 = SelectedDimension_3
			if var34.DimensionRequirementsMet(var34, module_upvr_2.LocalSaveData) then
				var33 = tbl_upvr_2.Activate
			end
		end
		local var35 = var33
		var34 = tbl_upvr_2
		if var35 ~= var34.Ineligible then
			local var36 = tbl_upvr
			var34 = var36.ByActivate
			if var35 ~= tbl_upvr_2.Activate then
				var36 = false
			else
				var36 = true
			end
			var34 = TextButton_upvr
			var34.Text = var34[var36].Toggle
			var34 = string.format(var34[var36].Prompt, SelectedDimension_3.Name)
			var34 = SelectedDimension_3[var16_upvw]
			if var34 ~= nil then
				var34 = var34
				-- KONSTANTWARNING: GOTO [119] #86
			end
		elseif SelectedDimension_3.StarRequirment then
			var34 = module_upvr
			var34 = module_upvr_2.LocalSaveData
			var34 = SelectedDimension_3.StarRequirment
			if var34.SaveDataGetTotalStars(var34) < var34 then
				var34 = tbl_upvr.IneligibilityStars
			end
		end
		TextLabel_upvr.Text = string.format(var34, SelectedDimension_3.StarRequirment)
		if var35 == tbl_upvr_2.Ineligible then
			var34 = false
		else
			var34 = true
		end
		TextButton_upvr.Visible = var34
	elseif tbl_upvr_3.SelectedDimension then
		var34 = os.clock()
		tbl_upvr_3.DimensionDebounce[tbl_upvr_3.SelectedDimension] = var34 + 2
		tbl_upvr_3.SelectedDimension = nil
	end
	if Frame_upvr.Visible then
	else
	end
	module_2_upvr.SetSelectedObjectInContext(nil)
end
var23_upvw = module_upvr_5.RegisterForGamepad(Frame_upvr, module_upvr_5.BuildCloseButton(Frame_upvr, function() -- Line 165
	--[[ Upvalues[1]:
		[1]: SetInterfaceVisible_upvr (readonly)
	]]
	SetInterfaceVisible_upvr(false)
end, Frame_upvr:WaitForChild("Exit"):WaitForChild("TextButton").Parent), SetInterfaceVisible_upvr)
local module_upvr_4 = require(Modules:WaitForChild("ItemActionHandler"))
TextButton_upvr.Activated:connect(function() -- Line 171
	--[[ Upvalues[7]:
		[1]: tbl_upvr_3 (readonly)
		[2]: SetInterfaceVisible_upvr (readonly)
		[3]: tbl_upvr_2 (readonly)
		[4]: module_upvr_2 (readonly)
		[5]: module_upvr_6 (readonly)
		[6]: module_upvr (readonly)
		[7]: module_upvr_4 (readonly)
	]]
	if tbl_upvr_3.RequestPending then
	else
		local SelectedDimension_2 = tbl_upvr_3.SelectedDimension
		SetInterfaceVisible_upvr(false)
		if SelectedDimension_2 then
			local Ineligible = tbl_upvr_2.Ineligible
			if module_upvr_2.DimensionState.Equipped_ById[SelectedDimension_2.Id] then
				Ineligible = tbl_upvr_2.Deactivate
			elseif module_upvr_6.DimensionRequirementsMet(SelectedDimension_2, module_upvr_2.LocalSaveData) then
				Ineligible = tbl_upvr_2.Activate
			end
			local var43 = Ineligible
			if var43 ~= tbl_upvr_2.Ineligible then
				local var44 = tbl_upvr_3
				var44.RequestPending = true
				if var43 == tbl_upvr_2.Activate then
					var44 = module_upvr.ItemAction.Equip
				else
					var44 = module_upvr.ItemAction.Unequip
				end
				module_upvr_4.ItemActionPerform(var44, module_upvr.ItemType.Dimension, SelectedDimension_2, true)
				tbl_upvr_3.RequestPending = false
			end
		end
	end
end)
local var45_upvw = Vector3.new(0, 0, 0)
local var46_upvw
local function MonitorProximity_upvr() -- Line 206, Named "MonitorProximity"
	--[[ Upvalues[4]:
		[1]: LocalPlayer_upvr (readonly)
		[2]: var45_upvw (read and write)
		[3]: var46_upvw (read and write)
		[4]: SetInterfaceVisible_upvr (readonly)
	]]
	local Character = LocalPlayer_upvr.Character
	local var48 = Character
	if var48 then
		var48 = Character.PrimaryPart
	end
	local var49 = true
	if var48 then
		if 40 >= (var48.Position - var45_upvw).Magnitude then
			var49 = false
		else
			var49 = true
		end
	end
	if var49 and var46_upvw then
		var46_upvw:Disconnect()
		var46_upvw = nil
		SetInterfaceVisible_upvr(false)
	end
end
local RunService_upvr = game:GetService("RunService")
module_upvr_2.Signals.DimensionInterfaceOpenRequested:Connect(function(arg1, arg2) -- Line 224
	--[[ Upvalues[7]:
		[1]: tbl_upvr_3 (readonly)
		[2]: module_upvr_5 (readonly)
		[3]: var45_upvw (read and write)
		[4]: SetInterfaceVisible_upvr (readonly)
		[5]: var46_upvw (read and write)
		[6]: RunService_upvr (readonly)
		[7]: MonitorProximity_upvr (readonly)
	]]
	local var53 = tbl_upvr_3.DimensionDebounce[arg2]
	if not var53 or var53 < os.clock() then
		if not module_upvr_5.AnyShopsOpen() then
			var45_upvw = arg1
			tbl_upvr_3.SelectedDimension = arg2
			tbl_upvr_3.DimensionDebounce[arg2] = math.huge
			SetInterfaceVisible_upvr(true)
			if not var46_upvw then
				var46_upvw = RunService_upvr.PostSimulation:Connect(MonitorProximity_upvr)
			end
		end
	end
end)