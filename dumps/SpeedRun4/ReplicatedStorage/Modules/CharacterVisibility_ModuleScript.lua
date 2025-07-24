-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:06:43
-- Luau version 6, Types version 3
-- Time taken: 0.015379 seconds

local module_upvr = {}
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local module_upvr_2 = require(ReplicatedStorage:WaitForChild("CommonData"))
local Modules = ReplicatedStorage:WaitForChild("Modules")
local module_upvr_3 = require(Modules:WaitForChild("ClientData"))
local module_upvr_4 = require(Modules:WaitForChild("Utility"))
module_upvr.VisibilityOption = table.freeze({
	Trails = 1;
})
local tbl_upvr_4 = {
	CharacterVisibility_ByCharacterState = {};
	VisibilityOptions = {
		[module_upvr.VisibilityOption.Trails] = true;
	};
	VisibilityOptionsDirty = false;
}
local tbl_upvr = {}
local tbl_3_upvr = {}
local Attachment_2_upvr = Instance.new("Attachment")
local tbl_2_upvr = {
	[true] = module_upvr_4.HiddenPosition;
	[false] = Vector3.new(0, 0, 0);
}
local tbl_4_upvr = {
	[module_upvr_3.VisibilityType.Full] = {
		Transparency = 0;
		Volume = 1;
	};
	[module_upvr_3.VisibilityType.TrailsHidden] = {
		Transparency = 0;
		Volume = 1;
		HideTrails = true;
	};
	[module_upvr_3.VisibilityType.Hidden] = {
		Transparency = 1;
		Volume = 0;
		HideNames = true;
		HideTrails = true;
	};
}
local tbl_upvr_3 = {
	BasePart = {
		Properties = {"LocalTransparencyModifier"};
	};
	Decal = {
		Properties = {"LocalTransparencyModifier"};
	};
	ParticleEmitter = {
		Properties = {"Transparency"};
		MinimumVisibility = module_upvr_3.VisibilityType.TrailsHidden;
	};
	Beam = {
		Properties = {"Transparency"};
		MinimumVisibility = module_upvr_3.VisibilityType.TrailsHidden;
	};
	Light = {
		Properties = {"Brightness"};
		MinimumVisibility = module_upvr_3.VisibilityType.TrailsHidden;
	};
	Fire = {
		Properties = {};
		MinimumVisibility = module_upvr_3.VisibilityType.TrailsHidden;
	};
	ForceField = {
		Properties = {"Visible"};
	};
	Sparkles = {
		Properties = {};
		MinimumVisibility = module_upvr_3.VisibilityType.TrailsHidden;
	};
	Smoke = {
		Properties = {"Opacity"};
		MinimumVisibility = module_upvr_3.VisibilityType.TrailsHidden;
	};
	Sound = {
		Properties = {"Volume"};
	};
	Humanoid = {
		Properties = {"DisplayDistanceType"};
	};
}
local tbl_5_upvr = {
	Brightness = function(arg1, arg2, arg3) -- Line 163, Named "Brightness"
		arg1.Brightness = arg2 + (1 - arg2) * arg3.Transparency
	end;
	DisplayDistanceType = function(arg1, arg2, arg3) -- Line 171, Named "DisplayDistanceType"
		local var40
		if arg3.HideNames then
			var40 = Enum.HumanoidDisplayDistanceType.None
		else
			var40 = arg2
		end
		arg1.DisplayDistanceType = var40
	end;
	LocalTransparencyModifier = function(arg1, arg2, arg3) -- Line 175, Named "LocalTransparencyModifier"
		arg1.LocalTransparencyModifier = arg2 + (1 - arg2) * arg3.Transparency
	end;
	Opacity = function(arg1, arg2, arg3) -- Line 178, Named "Opacity"
		arg1.Opacity = arg2 * (1 - arg3.Transparency)
	end;
	Transparency = function(arg1, arg2, arg3) -- Line 181, Named "Transparency"
		if type(arg2) == "number" then
			arg1.Transparency = arg2 + (1 - arg2) * arg3.Transparency
		else
			for i_6, v_6 in ipairs(arg2.Keypoints) do
				table.create(#arg2.Keypoints)[i_6] = NumberSequenceKeypoint.new(v_6.Time, v_6.Value + (1 - v_6.Value) * arg3.Transparency)
				local var49
			end
			arg1.Transparency = NumberSequence.new(var49)
		end
	end;
	Visible = function(arg1, arg2, arg3) -- Line 197, Named "Visible"
		local var50
		if arg3.Transparency >= 1 then
			var50 = false
		else
			var50 = true
		end
		arg1.Visible = var50
	end;
	Volume = function(arg1, arg2, arg3) -- Line 200, Named "Volume"
		arg1.Volume = arg2 * arg3.Volume
	end;
}
function tbl_3_upvr.Add(arg1, arg2, arg3) -- Line 209
	--[[ Upvalues[3]:
		[1]: module_upvr_2 (readonly)
		[2]: tbl_3_upvr (readonly)
		[3]: tbl_upvr_3 (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 31 start (CF ANALYSIS FAILED)
	if arg1.Descendants[arg2] then
		error(module_upvr_2.FormatOutput("Duplicate node: %s", "CharacterVisibility", nil, arg2:GetFullName()))
	end
	arg1.Dirty = true
	local tbl_upvr_2 = {}
	tbl_upvr_2.Object = arg2
	local var52 = false
	tbl_upvr_2.Hidden = var52
	if arg2:HasTag(module_upvr_2.Tags.Trail) then
		var52 = true
	else
		var52 = nil
	end
	tbl_upvr_2.IsTrail = var52
	tbl_upvr_2.Destroyed = false
	tbl_upvr_2.Children = {}
	tbl_upvr_2.Connections = {}
	if arg3 then
		tbl_upvr_2.Parent = arg3
		arg3.Children[arg2] = tbl_upvr_2
	end
	arg1.Descendants[arg2] = tbl_upvr_2
	tbl_upvr_2.Connections.ChildAdded = arg2.ChildAdded:Connect(function(arg1_2) -- Line 236
		--[[ Upvalues[3]:
			[1]: tbl_3_upvr (copied, readonly)
			[2]: arg1 (readonly)
			[3]: tbl_upvr_2 (readonly)
		]]
		if not tbl_3_upvr.Reparent(arg1.Descendants[arg1_2], tbl_upvr_2) then
		end
	end)
	tbl_upvr_2.Connections.ChildRemoved = arg2.ChildRemoved:Connect(function(arg1_3) -- Line 239
		--[[ Upvalues[3]:
			[1]: tbl_upvr_2 (readonly)
			[2]: arg1 (readonly)
			[3]: tbl_3_upvr (copied, readonly)
		]]
		local var55 = tbl_upvr_2.Children[arg1_3]
		if var55 and not var55.Hidden and not arg1.Descendants[arg1_3.Parent] then
			tbl_3_upvr.Remove(arg1, var55)
		end
	end)
	tbl_upvr_2.Connections.Destroying = arg2.Destroying:Connect(function() -- Line 245
		--[[ Upvalues[2]:
			[1]: tbl_upvr_2 (readonly)
			[2]: tbl_3_upvr (copied, readonly)
		]]
		tbl_upvr_2.Destroyed = true
		tbl_3_upvr.Disconnect(tbl_upvr_2)
	end)
	local pairs_result1_6, pairs_result2, pairs_result3 = pairs(tbl_upvr_3)
	-- KONSTANTERROR: [0] 1. Error Block 31 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [125] 87. Error Block 14 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [125] 87. Error Block 14 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [103] 72. Error Block 10 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	-- KONSTANTERROR: [103] 72. Error Block 10 end (CF ANALYSIS FAILED)
end
function tbl_3_upvr.Disconnect(arg1) -- Line 272
	for _, v in arg1.Connections do
		v:Disconnect()
	end
	table.clear(arg1.Connections)
	if arg1.ReparentThread then
		if coroutine.status(arg1.ReparentThread) == "suspended" then
			task.cancel(arg1.ReparentThread)
		end
		arg1.ReparentThread = nil
	end
	if arg1.Parent then
		arg1.Parent.Children[arg1.Object] = nil
		arg1.Parent = nil
	end
end
function tbl_3_upvr.Remove(arg1, arg2) -- Line 291
	--[[ Upvalues[2]:
		[1]: tbl_3_upvr (readonly)
		[2]: Attachment_2_upvr (readonly)
	]]
	local Object = arg2.Object
	local Parent = arg2.Parent
	tbl_3_upvr.Disconnect(arg2)
	if arg1.Descendants[Object] == arg2 then
		if arg2.Properties and arg2.CacheSpecs then
			for i_2, v_2 in pairs(arg2.Properties) do
				Object[i_2] = v_2
			end
			arg2.Properties = nil
			arg2.CacheSpecs = nil
		end
		if Parent and not arg2.Destroyed and Object.Parent == Attachment_2_upvr then
			Object.Parent = Parent.Object
		end
		arg1.Descendants[Object] = nil
	end
	for _, v_3 in pairs(arg2.Children) do
		tbl_3_upvr.Remove(arg1, v_3)
	end
end
function tbl_3_upvr.Reparent(arg1, arg2) -- Line 322
	if arg1 then
		if arg1.Parent then
			arg1.Parent.Children[arg1.Object] = nil
		end
		arg1.Parent = arg2
		if arg2 then
			arg2.Children[arg1.Object] = arg1
		end
	end
	return arg1
end
function tbl_3_upvr.ReparentObject(arg1, arg2) -- Line 336
	--[[ Upvalues[2]:
		[1]: Attachment_2_upvr (readonly)
		[2]: tbl_3_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 21 start (CF ANALYSIS FAILED)
	local var80
	if arg2.Hidden then
		var80 = Attachment_2_upvr
		-- KONSTANTWARNING: GOTO [14] #11
	end
	-- KONSTANTERROR: [0] 1. Error Block 21 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [5] 5. Error Block 22 start (CF ANALYSIS FAILED)
	if arg2.Parent then
		var80 = arg2.Parent.Object
	else
		var80 = nil
	end
	arg2.ReparentThread = nil
	if arg2.Connections.AncestryChanged then
		arg2.Connections.AncestryChanged:Disconnect()
		arg2.Connections.AncestryChanged = nil
	end
	if not arg2.Destroyed then
		arg2.Object.Parent = var80
		if var80 == Attachment_2_upvr then
			arg2.Connections.AncestryChanged = arg2.Object.AncestryChanged:Connect(function(arg1_5, arg2_3) -- Line 352
				--[[ Upvalues[3]:
					[1]: arg2 (readonly)
					[2]: tbl_3_upvr (copied, readonly)
					[3]: arg1 (readonly)
				]]
				if not arg2.Parent or arg2_3 ~= arg2.Parent.Object then
					tbl_3_upvr.Remove(arg1, arg2)
				end
			end)
		end
	end
	-- KONSTANTERROR: [5] 5. Error Block 22 end (CF ANALYSIS FAILED)
end
function tbl_3_upvr.SetHidden(arg1, arg2, arg3) -- Line 361
	--[[ Upvalues[1]:
		[1]: tbl_3_upvr (readonly)
	]]
	if arg3 ~= arg2.Hidden then
		arg2.Hidden = arg3
		if not arg2.Destroyed and not arg2.ReparentThread then
			arg2.ReparentThread = task.defer(tbl_3_upvr.ReparentObject, arg1, arg2)
		end
	end
end
function tbl_3_upvr.Update(arg1, arg2, arg3, arg4) -- Line 371
	--[[ Upvalues[2]:
		[1]: tbl_5_upvr (readonly)
		[2]: tbl_3_upvr (readonly)
	]]
	local var108
	if arg2.CacheSpecs and arg2.Properties then
		local var109 = var108
		if not var109 then
			var109 = false
			if arg2.CacheSpecs.MinimumVisibility ~= nil then
				if arg4 >= arg2.CacheSpecs.MinimumVisibility then
					var109 = false
				else
					var109 = true
				end
			end
		end
		var108 = var109
		for i_4_upvr, _ in pairs(arg2.Properties) do
			if arg2.Connections[i_4_upvr] then
				arg2.Connections[i_4_upvr]:Disconnect()
				arg2.Connections[i_4_upvr] = nil
			end
			local Object_3_upvr = arg2.Object
			local function Process_upvr() -- Line 389, Named "Process"
				--[[ Upvalues[6]:
					[1]: arg2 (readonly)
					[2]: i_4_upvr (readonly)
					[3]: Object_3_upvr (readonly)
					[4]: tbl_5_upvr (copied, readonly)
					[5]: arg3 (readonly)
					[6]: Process_upvr (readonly)
				]]
				if arg2.Connections[i_4_upvr] then
					arg2.Connections[i_4_upvr]:Disconnect()
					arg2.Properties[i_4_upvr] = Object_3_upvr[i_4_upvr]
				end
				tbl_5_upvr[i_4_upvr](Object_3_upvr, arg2.Properties[i_4_upvr], arg3)
				arg2.Connections[i_4_upvr] = Object_3_upvr:GetPropertyChangedSignal(i_4_upvr):Connect(Process_upvr)
			end
			Process_upvr()
		end
	end
	if arg2.IsTrail then
		local var114 = var108
		if not var114 then
			if arg3.HideTrails ~= true then
				var114 = false
			else
				var114 = true
			end
		end
		var108 = var114
	end
	tbl_3_upvr.SetHidden(arg1, arg2, var108)
	for _, v_5 in pairs(arg2.Children) do
		Process_upvr = tbl_3_upvr.Update
		Process_upvr(arg1, v_5, arg3, arg4)
	end
end
function tbl_upvr.Create() -- Line 422
	return {
		Descendants = {};
		Dirty = false;
	}
end
function tbl_upvr.Destroy(arg1, arg2) -- Line 431
	--[[ Upvalues[1]:
		[1]: tbl_3_upvr (readonly)
	]]
	local Ancestor = arg1.Ancestor
	if Ancestor then
		arg1.Ancestor = nil
		if not arg2 then
			table.clear(arg1.Descendants)
		end
		tbl_3_upvr.Remove(arg1, Ancestor)
	end
	arg1.Dirty = false
end
function tbl_upvr.Populate(arg1, arg2) -- Line 444
	--[[ Upvalues[1]:
		[1]: tbl_3_upvr (readonly)
	]]
	if not arg1.Ancestor then
		arg1.Ancestor = tbl_3_upvr.Add(arg1, arg2)
	end
	return arg1.Ancestor
end
function module_upvr.GetVisibilityOptionEnabled(arg1) -- Line 459
	--[[ Upvalues[1]:
		[1]: tbl_upvr_4 (readonly)
	]]
	local var120
	if tbl_upvr_4.VisibilityOptions[arg1] ~= true then
		var120 = false
	else
		var120 = true
	end
	return var120
end
function module_upvr.SetVisibilityOptionEnabled(arg1, arg2) -- Line 466
	--[[ Upvalues[2]:
		[1]: tbl_upvr_4 (readonly)
		[2]: module_upvr_2 (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local var121
	if tbl_upvr_4.VisibilityOptions[arg1] == nil then
		error(module_upvr_2.FormatOutput("Received invalid VisibilityOption '%*'", "CharacterVisibility", nil, arg1), 2)
	end
	if var121 ~= true then
		var121 = false
	else
		var121 = true
	end
	if tbl_upvr_4.VisibilityOptions[arg1] == var121 then
		local _ = false
		-- KONSTANTWARNING: Skipped task `defvar` above
	else
	end
	if true then
		tbl_upvr_4.VisibilityOptions[arg1] = var121
		tbl_upvr_4.VisibilityOptionsDirty = true
	end
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	return true
end
local function _(arg1) -- Line 492, Named "ProcessVisibility"
	--[[ Upvalues[3]:
		[1]: tbl_upvr (readonly)
		[2]: tbl_4_upvr (readonly)
		[3]: tbl_3_upvr (readonly)
	]]
	local Visibility = arg1.VisibilityState.Visibility
	tbl_3_upvr.Update(arg1.Hierarchy, tbl_upvr.Populate(arg1.Hierarchy, arg1.CharacterState.Character), tbl_4_upvr[Visibility], Visibility)
	arg1.Hierarchy.Dirty = false
end
local function UpdateVisibility_upvr(arg1) -- Line 512, Named "UpdateVisibility"
	--[[ Upvalues[8]:
		[1]: module_upvr_3 (readonly)
		[2]: tbl_upvr_4 (readonly)
		[3]: module_upvr (readonly)
		[4]: tbl_2_upvr (readonly)
		[5]: module_upvr_4 (readonly)
		[6]: tbl_upvr (readonly)
		[7]: tbl_4_upvr (readonly)
		[8]: tbl_3_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 26 start (CF ANALYSIS FAILED)
	if not arg1.VisibilityState.LevelLoaded then
		-- KONSTANTWARNING: GOTO [35] #24
	end
	-- KONSTANTERROR: [0] 1. Error Block 26 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [14] 10. Error Block 24 start (CF ANALYSIS FAILED)
	if not tbl_upvr_4.VisibilityOptions[module_upvr.VisibilityOption.Trails] then
		-- KONSTANTWARNING: GOTO [35] #24
	end
	-- KONSTANTERROR: [14] 10. Error Block 24 end (CF ANALYSIS FAILED)
end
function module_upvr.CharacterAdded(arg1, arg2) -- Line 545
	--[[ Upvalues[3]:
		[1]: tbl_upvr (readonly)
		[2]: module_upvr_3 (readonly)
		[3]: tbl_upvr_4 (readonly)
	]]
	local Head = arg1.Body.Head
	local Attachment = Instance.new("Attachment")
	Attachment.Name = "ChatAnchor"
	Attachment.Parent = Head
	local tbl = {}
	local var127 = true
	tbl.Dirty = var127
	tbl.ChatAnchor = Attachment
	if Head ~= nil then
		var127 = false
	else
		var127 = true
	end
	tbl.ChatAnchorParentPending = var127
	tbl.CharacterState = arg1
	tbl.VisibilityState = arg2
	tbl.Hierarchy = tbl_upvr.Create()
	arg2.Dirty = true
	arg2.Visibility = module_upvr_3.VisibilityType.Full
	tbl_upvr_4.CharacterVisibility_ByCharacterState[arg1] = tbl
end
function module_upvr.CharacterRemoving(arg1) -- Line 574
	--[[ Upvalues[2]:
		[1]: tbl_upvr_4 (readonly)
		[2]: tbl_upvr (readonly)
	]]
	local var128 = tbl_upvr_4.CharacterVisibility_ByCharacterState[arg1]
	if var128 then
		tbl_upvr_4.CharacterVisibility_ByCharacterState[arg1] = nil
		tbl_upvr.Destroy(var128.Hierarchy, false)
	end
end
function module_upvr.RenderStepped(arg1, arg2) -- Line 590
	--[[ Upvalues[5]:
		[1]: tbl_upvr_4 (readonly)
		[2]: UpdateVisibility_upvr (readonly)
		[3]: tbl_upvr (readonly)
		[4]: tbl_4_upvr (readonly)
		[5]: tbl_3_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 22 start (CF ANALYSIS FAILED)
	local pairs_result1, pairs_result2_3, pairs_result3_4 = pairs(tbl_upvr_4.CharacterVisibility_ByCharacterState)
	if not tbl_upvr_4.VisibilityOptionsDirty then
		-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [11.6]
		if nil.VisibilityState.Dirty then
			-- KONSTANTERROR: [16] 12. Error Block 18 start (CF ANALYSIS FAILED)
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect
			UpdateVisibility_upvr(nil)
			-- KONSTANTERROR: [16] 12. Error Block 18 end (CF ANALYSIS FAILED)
		else
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect
			if nil.Hierarchy.Dirty then
				-- KONSTANTERROR: Expression was reused, decompilation is incorrect (x3)
				local Visibility_2 = nil.VisibilityState.Visibility
				-- KONSTANTERROR: Expression was reused, decompilation is incorrect
				tbl_3_upvr.Update(nil.Hierarchy, tbl_upvr.Populate(nil.Hierarchy, nil.CharacterState.Character), tbl_4_upvr[Visibility_2], Visibility_2)
				-- KONSTANTERROR: Expression was reused, decompilation is incorrect
				nil.Hierarchy.Dirty = false
			end
		end
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect (x2)
		if nil.ChatAnchorParentPending and nil.CharacterState.Body.Head then
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect (x2)
			nil.ChatAnchor.Parent = nil.CharacterState.Body.Head
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect
			nil.ChatAnchorParentPending = false
		end
		-- KONSTANTWARNING: GOTO [7] #6
	end
	-- KONSTANTERROR: [0] 1. Error Block 22 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [16] 12. Error Block 18 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [16] 12. Error Block 18 end (CF ANALYSIS FAILED)
end
return module_upvr