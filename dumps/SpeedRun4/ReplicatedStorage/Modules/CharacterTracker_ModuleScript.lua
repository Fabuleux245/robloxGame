-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:06:30
-- Luau version 6, Types version 3
-- Time taken: 0.014451 seconds

local module_upvr_3 = {
	TeleportType = table.freeze({
		Default = 1;
		PositionOnly = 1;
		FeetRelative = 2;
		PositionFeetRelative = 3;
	});
}
local tbl_10_upvr = {}
local tbl_6_upvr = {}
local function TrackedPlayerCreate_upvr(arg1) -- Line 103, Named "TrackedPlayerCreate"
	--[[ Upvalues[2]:
		[1]: tbl_10_upvr (readonly)
		[2]: module_upvr_3 (readonly)
	]]
	assert(not tbl_10_upvr[arg1], "Duplicate tracker.")
	if not arg1:IsDescendantOf(game) then
		error("[CharacterTracker] - Cannot track player that is not in the game.", 3)
	end
	local module_upvr_2 = {}
	module_upvr_2.Player = arg1
	local Character = arg1.Character
	if not Character then
		Character = Instance.new("Model")
	end
	module_upvr_2.Character = Character
	module_upvr_2.TrackedObjects = {}
	module_upvr_2.ObjectTrackers = {}
	module_upvr_2._API = {}
	tbl_10_upvr[arg1] = module_upvr_2
	local function CharacterAdded(arg1_2) -- Line 122
		--[[ Upvalues[2]:
			[1]: module_upvr_2 (readonly)
			[2]: module_upvr_3 (copied, readonly)
		]]
		-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
		module_upvr_2.Character = arg1_2
		if module_upvr_2.DescendantAddedConnection then
			module_upvr_2.DescendantAddedConnection:Disconnect()
			module_upvr_2.DescendantAddedConnection = nil
		end
		if module_upvr_2.DescendantRemovingConnection then
			module_upvr_2.DescendantRemovingConnection:Disconnect()
			module_upvr_2.DescendantRemovingConnection = nil
		end
		for _, v in pairs(module_upvr_2.TrackedObjects) do
			for _, v_2 in pairs(v) do
				v_2.Object = nil
			end
		end
		for _, v_3 in ipairs(module_upvr_2.ObjectTrackers) do
			v_3.Character = arg1_2
			v_3.AllAdded = false
			table.clear(v_3._Found)
			for _, v_4 in ipairs(v_3._Objects) do
				v_3._Pending[v_4] = true
			end
			v_3.TrackerCleared:Fire()
		end
		local function DescendantAdded(arg1_3) -- Line 155
			--[[ Upvalues[2]:
				[1]: module_upvr_2 (copied, readonly)
				[2]: module_upvr_3 (copied, readonly)
			]]
			local var67 = module_upvr_2.TrackedObjects[arg1_3.Name]
			if var67 then
				for i_5, v_5 in pairs(var67) do
					if not v_5.Object and arg1_3:IsA(i_5) then
						v_5.Object = arg1_3
						for _, v_6 in ipairs(v_5.Listeners) do
							if v_6._Pending[v_5] then
								local _Pending = v_6._Pending
								_Pending[v_5] = nil
								if next(v_6._Pending) ~= nil then
									_Pending = false
								else
									_Pending = true
								end
								v_6.AllAdded = _Pending
								v_6.ObjectAdded:Fire(arg1_3)
								if v_6.AllAdded then
									v_6.AllObjectsAdded:Fire(module_upvr_3.ObjectTrackerUnpack(v_6))
								end
							end
						end
					end
				end
			end
		end
		module_upvr_2.DescendantAddedConnection = arg1_2.DescendantAdded:Connect(DescendantAdded)
		module_upvr_2.DescendantRemovingConnection = arg1_2.DescendantRemoving:Connect(function(arg1_4) -- Line 180, Named "DescendantRemoving"
			--[[ Upvalues[1]:
				[1]: module_upvr_2 (copied, readonly)
			]]
			local var79 = module_upvr_2.TrackedObjects[arg1_4.Name]
			if var79 then
				for _, v_7 in pairs(var79) do
					if v_7.Object == arg1_4 then
						v_7.Object = nil
						for _, v_8 in ipairs(v_7.Listeners) do
							if v_8.RemoveStale then
								v_8._Found[v_7] = nil
								v_8._Pending[v_7] = true
								v_8.AllAdded = false
								v_8.StaleObjectRemoved:Fire(arg1_4)
							end
						end
					end
				end
			end
		end)
		for _, v_9 in ipairs(arg1_2:GetDescendants()) do
			DescendantAdded(v_9)
			local _
		end
	end
	module_upvr_2.CharacterAddedConnection = arg1.CharacterAdded:Connect(CharacterAdded)
	if arg1.Character then
		CharacterAdded(arg1.Character)
	end
	return module_upvr_2
end
local function var90_upvw(arg1) -- Line 220
	--[[ Upvalues[3]:
		[1]: tbl_10_upvr (readonly)
		[2]: tbl_6_upvr (readonly)
		[3]: module_upvr_3 (readonly)
	]]
	if tbl_10_upvr[arg1.Player] == arg1 then
		tbl_10_upvr[arg1.Player] = nil
	end
	for _, v_10 in pairs(arg1.TrackedObjects) do
		for _, v_11 in pairs(v_10) do
			v_11.Object = nil
			table.clear(v_11.Listeners)
		end
	end
	table.clear(arg1.TrackedObjects)
	for i_12 = #arg1.ObjectTrackers, 1, -1 do
		local var102 = arg1.ObjectTrackers[i_12]
		tbl_6_upvr[var102] = nil
		module_upvr_3.ObjectTrackerDestroy(var102)
	end
end
local module_upvr = require(game:GetService("ReplicatedStorage"):WaitForChild("Modules"):WaitForChild("Signal"))
function module_upvr_3.ObjectTrackerCreate(arg1, arg2, arg3) -- Line 242
	--[[ Upvalues[4]:
		[1]: tbl_10_upvr (readonly)
		[2]: TrackedPlayerCreate_upvr (readonly)
		[3]: module_upvr (readonly)
		[4]: tbl_6_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	-- KONSTANTERROR: [0] 1. Error Block 39 start (CF ANALYSIS FAILED)
	local var104
	if var104 == 0 then
		var104 = error
		var104("[CharacterTracker] - Names array cannot be empty.")
	end
	var104 = tbl_10_upvr[arg1]
	if not var104 then
		var104 = TrackedPlayerCreate_upvr(arg1)
	end
	local tbl_3 = {
		_Objects = {};
		_Pending = {};
		_Found = {};
		Player = var104.Player;
		Character = var104.Character;
		AllAdded = false;
		RemoveStale = false;
		AllObjectsAdded = module_upvr.new(module_upvr.Mode.Spawned);
		ObjectAdded = module_upvr.new(module_upvr.Mode.Spawned);
		StaleObjectRemoved = module_upvr.new(module_upvr.Mode.Spawned);
		TrackerCleared = module_upvr.new(module_upvr.Mode.Spawned);
		Destroying = module_upvr.new(module_upvr.Mode.Spawned);
	}
	tbl_6_upvr[tbl_3] = var104
	var104.ObjectTrackers[#var104.ObjectTrackers + 1] = tbl_3
	local ipairs_result1_4, ipairs_result2_2, ipairs_result3 = ipairs(arg2)
	-- KONSTANTERROR: [0] 1. Error Block 39 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [162] 111. Error Block 53 start (CF ANALYSIS FAILED)
	-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [164.13]
	if not table.find(nil.Listeners, tbl_3) then
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect (x2)
		nil.Listeners[#nil.Listeners + 1] = tbl_3
	end
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	tbl_3._Objects[#tbl_3._Objects + 1] = nil
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	if nil.Object then
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect (x2)
		tbl_3._Found[nil] = nil.Object
	else
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		tbl_3._Pending[nil] = true
	end
	-- KONSTANTERROR: [162] 111. Error Block 53 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [110] 74. Error Block 40 start (CF ANALYSIS FAILED)
	-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [196.11]
	if not nil then
	end
	local function INLINED() -- Internal function, doesn't exist in bytecode
		-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [196.12]
		return nil
	end
	if not arg3 or not INLINED() then
	end
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	-- KONSTANTERROR: [110] 74. Error Block 40 end (CF ANALYSIS FAILED)
end
function module_upvr_3.ObjectTrackerDestroy(arg1) -- Line 325
	--[[ Upvalues[2]:
		[1]: tbl_6_upvr (readonly)
		[2]: var90_upvw (read and write)
	]]
	arg1.Destroying:Fire()
	local var126 = tbl_6_upvr[arg1]
	local var127
	if var126 then
		var127 = table.clone(arg1._Objects)
	else
		var127 = arg1._Objects
	end
	table.clear(arg1._Objects)
	table.clear(arg1._Pending)
	table.clear(arg1._Found)
	arg1.AllAdded = false
	arg1.ObjectAdded:DisconnectAll()
	arg1.AllObjectsAdded:DisconnectAll()
	arg1.StaleObjectRemoved:DisconnectAll()
	arg1.TrackerCleared:DisconnectAll()
	arg1.Destroying:DisconnectAll()
	if var126 then
		tbl_6_upvr[arg1] = nil
		local tbl_14 = {}
		for i_13, v_12 in ipairs(var127) do
			if not tbl_14[v_12] then
				tbl_14[v_12] = true
				local table_find_result1_2 = table.find(v_12.Listeners, arg1)
				if table_find_result1_2 then
					table.remove(v_12.Listeners, table_find_result1_2)
					if v_12.Listeners[1] == nil then
						local var133 = var126.TrackedObjects[v_12.Name]
						if var133 then
							var133[v_12.Class] = nil
							if next(var133) == nil then
								var126.TrackedObjects[v_12.Name] = nil
							end
						end
					end
				end
			end
		end
		local table_find_result1 = table.find(var126.ObjectTrackers, arg1)
		if table_find_result1 then
			i_13 = table_find_result1
			table.remove(var126.ObjectTrackers, i_13)
			if #var126.ObjectTrackers == 0 then
				var90_upvw(var126)
			end
		end
	end
end
function module_upvr_3.ObjectTrackerUnpack(arg1) -- Line 386
	local len = #arg1._Objects
	local table_create_result1 = table.create(len)
	for i_14, v_13 in ipairs(arg1._Objects) do
		table_create_result1[i_14] = v_13.Object
	end
	return table.unpack(table_create_result1, 1, len)
end
function module_upvr_3.ObjectTrackerGetObject(arg1, arg2, arg3) -- Line 397
	local var151
	for i_15, v_14 in pairs(arg1._Found) do
		if i_15.Name == arg2 and (not arg3 or v_14:IsA(arg3)) then
			var151 = v_14
			return var151
		end
	end
	return var151
end
function module_upvr_3.SetPlayerAnchored(arg1, arg2) -- Line 414
	--[[ Upvalues[3]:
		[1]: tbl_10_upvr (readonly)
		[2]: TrackedPlayerCreate_upvr (readonly)
		[3]: module_upvr_3 (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 23 start (CF ANALYSIS FAILED)
	local var162_upvw = tbl_10_upvr[arg1]
	if arg2 then
		if not var162_upvw then
			var162_upvw = TrackedPlayerCreate_upvr(arg1)
		end
		if not var162_upvw._API.SetAnchored then
			local tbl_13_upvr = {
				ObjectTracker = module_upvr_3.ObjectTrackerCreate(arg1, {"HumanoidRootPart"}, {"BasePart"});
			}
			local var166_upvw
			tbl_13_upvr.ObjectTracker.AllObjectsAdded:Connect(function(arg1_6) -- Line 430, Named "AnchorPlayer"
				--[[ Upvalues[1]:
					[1]: var166_upvw (read and write)
				]]
				arg1_6.Anchored = true
				if var166_upvw then
					var166_upvw:Disconnect()
				end
				var166_upvw = arg1_6:GetPropertyChangedSignal("Anchored"):Connect(function() -- Line 436
					--[[ Upvalues[1]:
						[1]: arg1_6 (readonly)
					]]
					arg1_6.Anchored = true
				end)
			end)
			tbl_13_upvr.ObjectTracker.Destroying:Connect(function() -- Line 442
				--[[ Upvalues[4]:
					[1]: var162_upvw (read and write)
					[2]: var166_upvw (read and write)
					[3]: module_upvr_3 (copied, readonly)
					[4]: tbl_13_upvr (readonly)
				]]
				var162_upvw._API.SetAnchored = nil
				if var166_upvw then
					var166_upvw:Disconnect()
					var166_upvw = nil
				end
				local any_ObjectTrackerGetObject_result1_2 = module_upvr_3.ObjectTrackerGetObject(tbl_13_upvr.ObjectTracker, "HumanoidRootPart")
				if any_ObjectTrackerGetObject_result1_2 then
					any_ObjectTrackerGetObject_result1_2.Anchored = false
				end
			end)
			if tbl_13_upvr.ObjectTracker.AllAdded then
				local any_ObjectTrackerUnpack_result1_3_upvr = module_upvr_3.ObjectTrackerUnpack(tbl_13_upvr.ObjectTracker)
				any_ObjectTrackerUnpack_result1_3_upvr.Anchored = true
				if var166_upvw then
					var166_upvw:Disconnect()
				end
				var166_upvw = any_ObjectTrackerUnpack_result1_3_upvr:GetPropertyChangedSignal("Anchored"):Connect(function() -- Line 436
					--[[ Upvalues[1]:
						[1]: any_ObjectTrackerUnpack_result1_3_upvr (readonly)
					]]
					any_ObjectTrackerUnpack_result1_3_upvr.Anchored = true
				end)
			end
			any_ObjectTrackerUnpack_result1_3_upvr = var162_upvw._API
			any_ObjectTrackerUnpack_result1_3_upvr.SetAnchored = tbl_13_upvr
			-- KONSTANTWARNING: GOTO [109] #78
		end
	elseif var162_upvw then
		tbl_13_upvr = var162_upvw._API.SetAnchored
		if tbl_13_upvr then
			tbl_13_upvr = module_upvr_3.ObjectTrackerDestroy
			tbl_13_upvr(var162_upvw._API.SetAnchored.ObjectTracker)
			tbl_13_upvr = var162_upvw._API
			tbl_13_upvr.SetAnchored = nil
		end
	end
	-- KONSTANTERROR: [0] 1. Error Block 23 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [109] 78. Error Block 13 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [109] 78. Error Block 13 end (CF ANALYSIS FAILED)
end
function module_upvr_3.SetPlayerPinned(arg1, arg2) -- Line 475
	--[[ Upvalues[3]:
		[1]: tbl_10_upvr (readonly)
		[2]: TrackedPlayerCreate_upvr (readonly)
		[3]: module_upvr_3 (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 23 start (CF ANALYSIS FAILED)
	local var179_upvw = tbl_10_upvr[arg1]
	if arg2 then
		if not var179_upvw then
			var179_upvw = TrackedPlayerCreate_upvr(arg1)
		end
		if not var179_upvw._API.SetPinned then
			local Attachment_upvr = Instance.new("Attachment")
			local tbl_7_upvr = {
				ObjectTracker = module_upvr_3.ObjectTrackerCreate(arg1, {"HumanoidRootPart"}, {"BasePart"});
				AlignPosition = Instance.new("AlignPosition");
				AlignOrientation = Instance.new("AlignOrientation");
				TargetCFrame = nil;
			}
			tbl_7_upvr.AlignPosition.ApplyAtCenterOfMass = true
			tbl_7_upvr.AlignPosition.Enabled = true
			tbl_7_upvr.AlignPosition.Mode = Enum.PositionAlignmentMode.OneAttachment
			tbl_7_upvr.AlignPosition.RigidityEnabled = true
			tbl_7_upvr.AlignOrientation.Enabled = true
			tbl_7_upvr.AlignOrientation.Mode = Enum.OrientationAlignmentMode.OneAttachment
			tbl_7_upvr.AlignOrientation.RigidityEnabled = true
			tbl_7_upvr.AlignPosition.Attachment0 = Attachment_upvr
			tbl_7_upvr.AlignPosition.Parent = Attachment_upvr
			tbl_7_upvr.AlignOrientation.Attachment0 = Attachment_upvr
			tbl_7_upvr.AlignOrientation.Parent = Attachment_upvr
			tbl_7_upvr.ObjectTracker.AllObjectsAdded:Connect(function(arg1_8) -- Line 510, Named "PinPlayer"
				--[[ Upvalues[2]:
					[1]: tbl_7_upvr (readonly)
					[2]: Attachment_upvr (readonly)
				]]
				if not tbl_7_upvr.TargetCFrame then
					tbl_7_upvr.AlignPosition.Position = arg1_8.Position
					tbl_7_upvr.AlignOrientation.CFrame = arg1_8.CFrame.Rotation
				end
				Attachment_upvr.Parent = arg1_8
			end)
			tbl_7_upvr.ObjectTracker.Destroying:Connect(function() -- Line 520
				--[[ Upvalues[3]:
					[1]: var179_upvw (read and write)
					[2]: Attachment_upvr (readonly)
					[3]: tbl_7_upvr (readonly)
				]]
				var179_upvw._API.SetPinned = nil
				Attachment_upvr:Destroy()
				tbl_7_upvr.AlignPosition:Destroy()
				tbl_7_upvr.AlignOrientation:Destroy()
			end)
			if tbl_7_upvr.ObjectTracker.AllAdded then
				local any_ObjectTrackerUnpack_result1 = module_upvr_3.ObjectTrackerUnpack(tbl_7_upvr.ObjectTracker)
				if not tbl_7_upvr.TargetCFrame then
					tbl_7_upvr.AlignPosition.Position = any_ObjectTrackerUnpack_result1.Position
					tbl_7_upvr.AlignOrientation.CFrame = any_ObjectTrackerUnpack_result1.CFrame.Rotation
				end
				Attachment_upvr.Parent = any_ObjectTrackerUnpack_result1
			end
			var179_upvw._API.SetPinned = tbl_7_upvr
			-- KONSTANTWARNING: GOTO [181] #115
		end
	elseif var179_upvw then
		tbl_7_upvr = var179_upvw._API
		Attachment_upvr = tbl_7_upvr.SetPinned
		if Attachment_upvr then
			tbl_7_upvr = module_upvr_3
			Attachment_upvr = tbl_7_upvr.ObjectTrackerDestroy
			tbl_7_upvr = var179_upvw._API.SetPinned.ObjectTracker
			Attachment_upvr(tbl_7_upvr)
			Attachment_upvr = var179_upvw._API
			tbl_7_upvr = nil
			Attachment_upvr.SetPinned = tbl_7_upvr
		end
	end
	-- KONSTANTERROR: [0] 1. Error Block 23 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [181] 115. Error Block 13 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [181] 115. Error Block 13 end (CF ANALYSIS FAILED)
end
local tbl_5_upvr = {
	[module_upvr_3.TeleportType.PositionOnly] = function(arg1, arg2, arg3) -- Line 544
		return arg2.CFrame.Rotation + arg1.Position
	end;
	[module_upvr_3.TeleportType.FeetRelative] = function(arg1, arg2, arg3) -- Line 547
		return arg1 * CFrame.new(0, arg2.Size.Y * 0.5 + arg3.HipHeight, 0)
	end;
	[module_upvr_3.TeleportType.PositionFeetRelative] = function(arg1, arg2, arg3) -- Line 550
		return (arg2.CFrame.Rotation) + (arg1.Position + Vector3.new(0, 1, 0) * (arg2.Size.Y * 0.5 + arg3.HipHeight))
	end;
}
local function TeleportPlayer(arg1, arg2, arg3, arg4) -- Line 556
	--[[ Upvalues[2]:
		[1]: tbl_5_upvr (readonly)
		[2]: module_upvr_3 (readonly)
	]]
	local Target = arg2.Target
	local var195 = tbl_5_upvr[arg2.TeleportType]
	if var195 then
		Target = var195(Target, arg3, arg4)
	end
	local SetPinned = arg1._API.SetPinned
	if SetPinned then
		SetPinned.TargetCFrame = Target
		SetPinned.AlignPosition.Position = Target.Position
		SetPinned.AlignOrientation.CFrame = Target.Rotation
	end
	arg3:PivotTo(Target)
	if arg2.KillVelocity then
		arg3.AssemblyLinearVelocity = Vector3.new(0, 0, 0)
		arg3.AssemblyAngularVelocity = Vector3.new(0, 0, 0)
	end
	for _, v_15 in arg2.Callbacks do
		task.spawn(v_15, arg2.ObjectTracker.Character)
	end
	table.clear(arg2.Callbacks)
	module_upvr_3.ObjectTrackerDestroy(arg2.ObjectTracker)
end
function module_upvr_3.TeleportPlayer(arg1, arg2, arg3, arg4, arg5) -- Line 593
	--[[ Upvalues[4]:
		[1]: tbl_10_upvr (readonly)
		[2]: TrackedPlayerCreate_upvr (readonly)
		[3]: module_upvr_3 (readonly)
		[4]: TeleportPlayer (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [3] 4. Error Block 2 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [3] 4. Error Block 2 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [6] 7. Error Block 3 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [6] 7. Error Block 3 end (CF ANALYSIS FAILED)
end
tbl_5_upvr = game:GetService("Players").PlayerRemoving
tbl_5_upvr = tbl_5_upvr:Connect
tbl_5_upvr(function(arg1) -- Line 644
	--[[ Upvalues[2]:
		[1]: tbl_10_upvr (readonly)
		[2]: var90_upvw (read and write)
	]]
	if tbl_10_upvr[arg1] then
		var90_upvw(tbl_10_upvr[arg1])
	end
end)
return module_upvr_3