-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:04:26
-- Luau version 6, Types version 3
-- Time taken: 0.005495 seconds

local UserGameSettings_upvr = UserSettings():GetService("UserGameSettings")
local module_upvr = {}
module_upvr.__index = module_upvr
local RobloxGui = game:GetService("CoreGui"):WaitForChild("RobloxGui")
local Create_upvr = require(game:GetService("CorePackages").Workspace.Packages.AppCommonLib).Create
local RbxAnalyticsService_upvr = game:GetService("RbxAnalyticsService")
function module_upvr.new() -- Line 26
	--[[ Upvalues[4]:
		[1]: module_upvr (readonly)
		[2]: UserGameSettings_upvr (readonly)
		[3]: Create_upvr (readonly)
		[4]: RbxAnalyticsService_upvr (readonly)
	]]
	local setmetatable_result1_upvr = setmetatable({}, module_upvr)
	setmetatable_result1_upvr.subjects = {}
	local VRSafetyBubbleMode = UserGameSettings_upvr.VRSafetyBubbleMode
	setmetatable_result1_upvr.mode = VRSafetyBubbleMode
	if setmetatable_result1_upvr.mode == Enum.VRSafetyBubbleMode.Anyone then
		VRSafetyBubbleMode = false
	else
		VRSafetyBubbleMode = true
	end
	setmetatable_result1_upvr.enabled = VRSafetyBubbleMode
	setmetatable_result1_upvr.updateCadence = 0.2
	setmetatable_result1_upvr.Toggled = Create_upvr("BindableEvent")({
		Name = "SafetyBubbleToggled";
	})
	UserGameSettings_upvr:GetPropertyChangedSignal("VRSafetyBubbleMode"):Connect(function() -- Line 39
		--[[ Upvalues[3]:
			[1]: setmetatable_result1_upvr (readonly)
			[2]: UserGameSettings_upvr (copied, readonly)
			[3]: RbxAnalyticsService_upvr (copied, readonly)
		]]
		-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
		local var10 = setmetatable_result1_upvr
		var10.mode = UserGameSettings_upvr.VRSafetyBubbleMode
		if setmetatable_result1_upvr.mode == Enum.VRSafetyBubbleMode.Anyone then
			var10 = false
		else
			var10 = true
		end
		if setmetatable_result1_upvr.enabled ~= var10 then
			setmetatable_result1_upvr.enabled = var10
			setmetatable_result1_upvr.Toggled:Fire()
			if var10 then
			else
			end
			RbxAnalyticsService_upvr:ReportCounter("VR-SafetyBubble-".."Off")
		end
	end)
	return setmetatable_result1_upvr
end
function module_upvr.ToggleEnabled(arg1) -- Line 54
	--[[ Upvalues[1]:
		[1]: UserGameSettings_upvr (readonly)
	]]
	local var11
	local function INLINED() -- Internal function, doesn't exist in bytecode
		var11 = Enum.VRSafetyBubbleMode.Anyone
		return var11
	end
	if not arg1.enabled or not INLINED() then
		var11 = Enum.VRSafetyBubbleMode.NoOne
	end
	UserGameSettings_upvr.VRSafetyBubbleMode = var11
end
function module_upvr.HasToolAncestor(arg1, arg2) -- Line 58
	if arg2 == nil or arg2.Parent == nil then
		return false
	end
	local children = arg2.Parent:IsA("Tool")
	if not children then
		children = arg1:HasToolAncestor(arg2.Parent)
	end
	return children
end
function module_upvr.IsValidPartToModify(arg1, arg2) -- Line 65
	if arg2:IsA("BasePart") or arg2:IsA("Decal") then
		return not arg1:HasToolAncestor(arg2)
	end
	return false
end
function module_upvr.CachePartsRecursive(arg1, arg2, arg3) -- Line 72
	if arg2 then
		if arg1:IsValidPartToModify(arg2) then
			arg1.subjects[arg3].cachedParts[arg2] = true
			arg1.subjects[arg3].transparencyDirty = true
		end
		for _, v in pairs(arg2:GetChildren()) do
			arg1:CachePartsRecursive(v, arg3)
		end
	end
end
function module_upvr.TeardownTransparency(arg1, arg2) -- Line 84
	for i_2, _ in pairs(arg1.subjects[arg2].cachedParts) do
		i_2.LocalTransparencyModifier = 0
	end
	arg1.subjects[arg2].cachedParts = {}
	arg1.subjects[arg2].transparencyDirty = true
	arg1.subjects[arg2].lastTransparency = nil
	if arg1.subjects[arg2].descendantAddedConn then
		arg1.subjects[arg2].descendantAddedConn:disconnect()
		arg1.subjects[arg2].descendantAddedConn = nil
	end
	if arg1.subjects[arg2].descendantRemovingConn then
		arg1.subjects[arg2].descendantRemovingConn:disconnect()
		arg1.subjects[arg2].descendantRemovingConn = nil
	end
	for i_3, v_3 in pairs(arg1.subjects[arg2].toolDescendantAddedConns) do
		v_3:Disconnect()
		arg1.subjects[arg2].toolDescendantAddedConns[i_3] = nil
	end
	for i_4, v_4 in pairs(arg1.subjects[arg2].toolDescendantRemovingConns) do
		v_4:Disconnect()
		arg1.subjects[arg2].toolDescendantRemovingConns[i_4] = nil
	end
end
function module_upvr.GetSubjectIndex(arg1, arg2) -- Line 110
	local const_number = 1
	while const_number <= #arg1.subjects do
		if arg1.subjects[const_number].character == arg2 then
			return const_number
		end
	end
	return 0
end
function module_upvr.SubjectExists(arg1, arg2) -- Line 124
	local var34
	if 0 >= arg1:GetSubjectIndex(arg2) then
		var34 = false
	else
		var34 = true
	end
	return var34
end
function module_upvr.SetupTransparency(arg1, arg2) -- Line 130
	local any_GetSubjectIndex_result1_upvw = arg1:GetSubjectIndex(arg2)
	if any_GetSubjectIndex_result1_upvw == 0 then
	else
		if arg1.subjects[any_GetSubjectIndex_result1_upvw].descendantAddedConn then
			arg1.subjects[any_GetSubjectIndex_result1_upvw].descendantAddedConn:disconnect()
		end
		arg1.subjects[any_GetSubjectIndex_result1_upvw].descendantAddedConn = arg2.DescendantAdded:Connect(function(arg1_2) -- Line 137
			--[[ Upvalues[3]:
				[1]: any_GetSubjectIndex_result1_upvw (read and write)
				[2]: arg1 (readonly)
				[3]: arg2 (readonly)
			]]
			any_GetSubjectIndex_result1_upvw = arg1:GetSubjectIndex(arg2)
			if any_GetSubjectIndex_result1_upvw == 0 then
			elseif arg1:IsValidPartToModify(arg1_2) then
				arg1.subjects[any_GetSubjectIndex_result1_upvw].cachedParts[arg1_2] = true
				arg1.subjects[any_GetSubjectIndex_result1_upvw].transparencyDirty = true
			end
		end)
		if arg1.descendantRemovingConn then
			arg1.descendantRemovingConn:disconnect()
		end
		arg1.descendantRemovingConn = arg2.DescendantRemoving:connect(function(arg1_3) -- Line 151
			--[[ Upvalues[3]:
				[1]: any_GetSubjectIndex_result1_upvw (read and write)
				[2]: arg1 (readonly)
				[3]: arg2 (readonly)
			]]
			any_GetSubjectIndex_result1_upvw = arg1:GetSubjectIndex(arg2)
			if any_GetSubjectIndex_result1_upvw == 0 then
			elseif arg1.subjects[any_GetSubjectIndex_result1_upvw] and arg1.subjects[any_GetSubjectIndex_result1_upvw].cachedParts[arg1_3] then
				arg1.subjects[any_GetSubjectIndex_result1_upvw].cachedParts[arg1_3] = nil
				arg1_3.LocalTransparencyModifier = 0
			end
		end)
		arg1:CachePartsRecursive(arg2, any_GetSubjectIndex_result1_upvw)
	end
end
function module_upvr.AddSubject(arg1, arg2) -- Line 167
	local var38
	while var38 <= #arg1.subjects do
		if arg1.subjects[var38].character == arg2 then return end
		var38 += 1
	end
	table.insert(arg1.subjects, {
		transparencyDirty = false;
		lastTransparency = nil;
		descendantAddedConn = nil;
		descendantRemovingConn = nil;
		toolDescendantAddedConns = {};
		toolDescendantRemovingConns = {};
		cachedParts = {};
		character = nil;
	})
	arg1.subjects[var38].character = arg2
	arg1:SetupTransparency(arg2)
end
local FIntSafetyBubbleRadius_upvr = require(RobloxGui.Modules.Flags.FIntSafetyBubbleRadius)
local VRService_upvr = game:GetService("VRService")
local Players_upvr = game:GetService("Players")
local var43_upvr = require(RobloxGui.Modules.Flags.FIntSafetyBubbleTransparencyPercent) * 0.01
function module_upvr.update(arg1, arg2) -- Line 197
	--[[ Upvalues[4]:
		[1]: FIntSafetyBubbleRadius_upvr (readonly)
		[2]: VRService_upvr (readonly)
		[3]: Players_upvr (readonly)
		[4]: var43_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [5] 4. Error Block 2 start (CF ANALYSIS FAILED)
	do
		return
	end
	-- KONSTANTERROR: [5] 4. Error Block 2 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [6] 5. Error Block 3 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [6] 5. Error Block 3 end (CF ANALYSIS FAILED)
end
return module_upvr