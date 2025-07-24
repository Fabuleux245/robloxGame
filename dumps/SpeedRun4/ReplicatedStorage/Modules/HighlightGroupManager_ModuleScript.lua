-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:06:48
-- Luau version 6, Types version 3
-- Time taken: 0.004268 seconds

local module_4 = {}
local module_2_upvr = require(game:GetService("ReplicatedStorage"):WaitForChild("Modules"):WaitForChild("Utility"))
local tbl_2_upvr = {
	HighlightGroups = {};
	HighlightGroupsSorted = {};
	HighlightMembers_ByObject = {};
	HighlightModels = {};
	MembersPendingExpression = {};
	MembersPendingReparent = {};
	PriorityDirty = false;
}
local function HighlightMemberDestroy_upvr(arg1) -- Line 75, Named "HighlightMemberDestroy"
	--[[ Upvalues[2]:
		[1]: tbl_2_upvr (readonly)
		[2]: module_2_upvr (readonly)
	]]
	tbl_2_upvr.HighlightMembers_ByObject[arg1.Object] = nil
	tbl_2_upvr.MembersPendingExpression[arg1] = nil
	tbl_2_upvr.MembersPendingReparent[arg1] = nil
	for i in arg1.Groups do
		i.Members[arg1] = nil
	end
	table.clear(arg1.Groups)
	arg1.ExpressedGroup = nil
	if arg1.Object.Parent ~= arg1.Parent then
		module_2_upvr.ProtectedReparent(arg1.Object, arg1.Parent)
	end
end
local function HighlightMemberCreate_upvr(arg1) -- Line 96, Named "HighlightMemberCreate"
	--[[ Upvalues[2]:
		[1]: tbl_2_upvr (readonly)
		[2]: HighlightMemberDestroy_upvr (readonly)
	]]
	local module_3_upvr = {}
	module_3_upvr.Object = arg1
	module_3_upvr.Parent = arg1.Parent
	module_3_upvr.Groups = {}
	module_3_upvr._AncestryConnection = arg1.AncestryChanged:Connect(function(arg1_2, arg2) -- Line 107, Named "EnforceAncestry"
		--[[ Upvalues[4]:
			[1]: arg1 (readonly)
			[2]: module_3_upvr (readonly)
			[3]: tbl_2_upvr (copied, readonly)
			[4]: HighlightMemberDestroy_upvr (copied, readonly)
		]]
		-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [21] 16. Error Block 6 start (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [21] 16. Error Block 6 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [30] 23. Error Block 8 start (CF ANALYSIS FAILED)
		module_3_upvr.Parent = nil
		HighlightMemberDestroy_upvr(module_3_upvr)
		-- KONSTANTERROR: [30] 23. Error Block 8 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [37] 29. Error Block 9 start (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [37] 29. Error Block 9 end (CF ANALYSIS FAILED)
	end)
	tbl_2_upvr.HighlightMembers_ByObject[arg1] = module_3_upvr
	return module_3_upvr
end
local function _(arg1, arg2) -- Line 136, Named "HighlightMemberSetExpressedGroup"
	--[[ Upvalues[1]:
		[1]: tbl_2_upvr (readonly)
	]]
	if arg1.ExpressedGroup ~= arg2 then
		arg1.ExpressedGroup = arg2
		tbl_2_upvr.MembersPendingReparent[arg1] = true
	end
end
function module_4.HighlightGroupCreate(arg1, arg2, arg3) -- Line 152
	--[[ Upvalues[2]:
		[1]: module_2_upvr (readonly)
		[2]: tbl_2_upvr (readonly)
	]]
	local Model = Instance.new("Model")
	Model.Name = "HighlightGroup"
	local any_I_result1 = module_2_upvr.I("Part", {
		Anchored = true;
		CastShadow = false;
		CanCollide = false;
		CanQuery = false;
		CanTouch = false;
		Position = Vector3.new(0, 1000000, 0);
		Size = Vector3.new(0, 0, 0);
		Parent = Model;
	})
	Model.PrimaryPart = any_I_result1
	local tbl_3 = {
		Adornee = Model;
		Enabled = true;
		Parent = Model;
	}
	if arg1 then
		tbl_3 = module_2_upvr.PropsMerge(arg1, tbl_3)
	end
	tbl_2_upvr.HighlightModels[Model] = true
	if arg3 then
		Model.Parent = arg3
	end
	local module = {
		Enabled = true;
		Priority = arg2 or 0;
		Highlight = module_2_upvr.I("Highlight", tbl_3);
		Humanoid = module_2_upvr.I("Humanoid", {
			EvaluateStateMachine = false;
			DisplayDistanceType = Enum.HumanoidDisplayDistanceType.None;
			HealthDisplayType = Enum.HumanoidHealthDisplayType.AlwaysOff;
			Parent = Model;
		});
		Model = Model;
		Root = any_I_result1;
		Members = {};
	}
	tbl_2_upvr.HighlightGroups[#tbl_2_upvr.HighlightGroups + 1] = module
	tbl_2_upvr.PriorityDirty = true
	return module
end
function module_4.HighlightGroupAdd(arg1, arg2) -- Line 217
	--[[ Upvalues[2]:
		[1]: tbl_2_upvr (readonly)
		[2]: HighlightMemberCreate_upvr (readonly)
	]]
	local var12 = tbl_2_upvr.HighlightMembers_ByObject[arg2]
	if not var12 then
		var12 = HighlightMemberCreate_upvr(arg2)
	end
	if not var12.Groups[arg1] then
		var12.Groups[arg1] = true
		tbl_2_upvr.MembersPendingExpression[var12] = true
	end
end
function module_4.HighlightGroupRemove(arg1, arg2) -- Line 232
	--[[ Upvalues[1]:
		[1]: tbl_2_upvr (readonly)
	]]
	local var13 = tbl_2_upvr.HighlightMembers_ByObject[arg2]
	if var13 and var13.Groups[arg1] then
		var13.Groups[arg1] = nil
		tbl_2_upvr.MembersPendingExpression[var13] = true
	end
end
function module_4.HighlightGroupSetEnabled(arg1, arg2) -- Line 247
	--[[ Upvalues[1]:
		[1]: tbl_2_upvr (readonly)
	]]
	if arg1.Enabled ~= arg2 then
		arg1.Enabled = arg2
		arg1.Highlight.Enabled = arg2
		tbl_2_upvr.PriorityDirty = true
	end
end
local function SortHighlightGroups_upvr(arg1, arg2) -- Line 265, Named "SortHighlightGroups"
	local var14
	if arg1.Priority >= arg2.Priority then
		var14 = false
	else
		var14 = true
	end
	return var14
end
function module_4.RenderStepped(arg1, arg2) -- Line 273
	--[[ Upvalues[2]:
		[1]: tbl_2_upvr (readonly)
		[2]: SortHighlightGroups_upvr (readonly)
	]]
	debug.profilebegin("CFR_HighlightGroupManager")
	if tbl_2_upvr.PriorityDirty then
		table.clear(tbl_2_upvr.MembersPendingExpression)
		local tbl = {}
		for _, v in tbl_2_upvr.HighlightGroups do
			if v.Enabled then
				tbl[#tbl + 1] = v
			end
		end
		table.sort(tbl, SortHighlightGroups_upvr)
		for _, v_2 in tbl do
			for i_4 in v_2.Members do
				({})[i_4] = v_2
				local var36
			end
		end
		for i_5, v_3 in tbl_2_upvr.HighlightMembers_ByObject do
			local var37 = var36[v_3]
			if v_3.ExpressedGroup ~= var37 then
				v_3.ExpressedGroup = var37
				tbl_2_upvr.MembersPendingReparent[v_3] = true
			end
		end
		tbl_2_upvr.PriorityDirty = false
	end
	if next(tbl_2_upvr.MembersPendingExpression) ~= nil then
		for i_6 in tbl_2_upvr.MembersPendingExpression do
			i_5 = nil
			v_3 = nil
			for i_7 in i_6.Groups do
				if i_7.Enabled and (not i_5 or v_3 < i_7.Priority) then
					i_5 = i_7
					v_3 = i_7.Priority
				end
			end
			if i_6.ExpressedGroup ~= i_5 then
				i_6.ExpressedGroup = i_5
				tbl_2_upvr.MembersPendingReparent[i_6] = true
			end
		end
		table.clear(tbl_2_upvr.MembersPendingExpression)
	end
	if next(tbl_2_upvr.MembersPendingReparent) ~= nil then
		for i_8 in tbl_2_upvr.MembersPendingReparent do
			v_3 = i_8.ExpressedGroup
			if v_3 then
				v_3 = i_8.ExpressedGroup
				i_5 = v_3.Model
			else
				i_5 = i_8.Parent
			end
			v_3 = i_8.Object
			v_3.Parent = i_5
		end
		table.clear(tbl_2_upvr.MembersPendingReparent)
	end
	debug.profileend()
end
module_2_upvr.TableFreezeAll(module_4)
return module_4