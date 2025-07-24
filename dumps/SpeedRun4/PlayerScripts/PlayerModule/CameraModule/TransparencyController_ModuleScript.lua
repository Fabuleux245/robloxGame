-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:39:11
-- Luau version 6, Types version 3
-- Time taken: 0.006969 seconds

local tbl_2_upvr = {"BasePart", "Decal", "Beam", "ParticleEmitter", "Trail", "Fire", "Smoke", "Sparkles", "Explosion"}
local module_upvr_2 = {}
module_upvr_2.__index = module_upvr_2
function module_upvr_2.new() -- Line 33
	--[[ Upvalues[1]:
		[1]: module_upvr_2 (readonly)
	]]
	local setmetatable_result1 = setmetatable({}, module_upvr_2)
	setmetatable_result1.transparencyDirty = false
	setmetatable_result1.enabled = false
	setmetatable_result1.lastTransparency = nil
	setmetatable_result1.descendantAddedConn = nil
	setmetatable_result1.descendantRemovingConn = nil
	setmetatable_result1.toolDescendantAddedConns = {}
	setmetatable_result1.toolDescendantRemovingConns = {}
	setmetatable_result1.cachedParts = {}
	return setmetatable_result1
end
function module_upvr_2.HasToolAncestor(arg1, arg2) -- Line 49
	if arg2.Parent == nil then
		return false
	end
	assert(arg2.Parent, "")
	local children = arg2.Parent:IsA("Tool")
	if not children then
		children = arg1:HasToolAncestor(arg2.Parent)
	end
	return children
end
function module_upvr_2.IsValidPartToModify(arg1, arg2) -- Line 55
	--[[ Upvalues[1]:
		[1]: tbl_2_upvr (readonly)
	]]
	for _, v in tbl_2_upvr do
		if arg2:IsA(v) then
			return not arg1:HasToolAncestor(arg2)
		end
	end
	return false
end
function module_upvr_2.CachePartsRecursive(arg1, arg2) -- Line 64
	if arg2 then
		if arg1:IsValidPartToModify(arg2) then
			arg1.cachedParts[arg2] = true
			arg1.transparencyDirty = true
		end
		for _, v_2 in pairs(arg2:GetChildren()) do
			arg1:CachePartsRecursive(v_2)
		end
	end
end
function module_upvr_2.TeardownTransparency(arg1) -- Line 76
	for i_3, _ in pairs(arg1.cachedParts) do
		i_3.LocalTransparencyModifier = 0
	end
	arg1.cachedParts = {}
	arg1.transparencyDirty = true
	arg1.lastTransparency = nil
	if arg1.descendantAddedConn then
		arg1.descendantAddedConn:disconnect()
		arg1.descendantAddedConn = nil
	end
	if arg1.descendantRemovingConn then
		arg1.descendantRemovingConn:disconnect()
		arg1.descendantRemovingConn = nil
	end
	for i_4, v_4 in pairs(arg1.toolDescendantAddedConns) do
		v_4:Disconnect()
		arg1.toolDescendantAddedConns[i_4] = nil
	end
	for i_5, v_5 in pairs(arg1.toolDescendantRemovingConns) do
		v_5:Disconnect()
		arg1.toolDescendantRemovingConns[i_5] = nil
	end
end
function module_upvr_2.SetupTransparency(arg1, arg2) -- Line 102
	arg1:TeardownTransparency()
	if arg1.descendantAddedConn then
		arg1.descendantAddedConn:disconnect()
	end
	arg1.descendantAddedConn = arg2.DescendantAdded:Connect(function(arg1_2) -- Line 106
		--[[ Upvalues[2]:
			[1]: arg1 (readonly)
			[2]: arg2 (readonly)
		]]
		if arg1:IsValidPartToModify(arg1_2) then
			arg1.cachedParts[arg1_2] = true
			arg1.transparencyDirty = true
		elseif arg1_2:IsA("Tool") then
			if arg1.toolDescendantAddedConns[arg1_2] then
				arg1.toolDescendantAddedConns[arg1_2]:Disconnect()
			end
			arg1.toolDescendantAddedConns[arg1_2] = arg1_2.DescendantAdded:Connect(function(arg1_3) -- Line 114
				--[[ Upvalues[1]:
					[1]: arg1 (copied, readonly)
				]]
				arg1.cachedParts[arg1_3] = nil
				if arg1_3:IsA("BasePart") or arg1_3:IsA("Decal") then
					arg1_3.LocalTransparencyModifier = 0
				end
			end)
			if arg1.toolDescendantRemovingConns[arg1_2] then
				arg1.toolDescendantRemovingConns[arg1_2]:disconnect()
			end
			arg1.toolDescendantRemovingConns[arg1_2] = arg1_2.DescendantRemoving:Connect(function(arg1_4) -- Line 122
				--[[ Upvalues[2]:
					[1]: arg2 (copied, readonly)
					[2]: arg1 (copied, readonly)
				]]
				wait()
				if arg2 and arg1_4 and arg1_4:IsDescendantOf(arg2) and arg1:IsValidPartToModify(arg1_4) then
					arg1.cachedParts[arg1_4] = true
					arg1.transparencyDirty = true
				end
			end)
		end
	end)
	if arg1.descendantRemovingConn then
		arg1.descendantRemovingConn:disconnect()
	end
	arg1.descendantRemovingConn = arg2.DescendantRemoving:connect(function(arg1_5) -- Line 134
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		if arg1.cachedParts[arg1_5] then
			arg1.cachedParts[arg1_5] = nil
			arg1_5.LocalTransparencyModifier = 0
		end
	end)
	arg1:CachePartsRecursive(arg2)
end
function module_upvr_2.Enable(arg1, arg2) -- Line 145
	if arg1.enabled ~= arg2 then
		arg1.enabled = arg2
	end
end
function module_upvr_2.SetSubject(arg1, arg2) -- Line 151
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [2] 3. Error Block 24 start (CF ANALYSIS FAILED)
	if arg2:IsA("Humanoid") then
		-- KONSTANTWARNING: GOTO [20] #17
	end
	-- KONSTANTERROR: [2] 3. Error Block 24 end (CF ANALYSIS FAILED)
end
local module_upvr = require(script.Parent:WaitForChild("CameraUtils"))
local UserVRAvatarGestures_upvr = require(game:GetService("ReplicatedStorage"):WaitForChild("FeatureFlags")).UserVRAvatarGestures
local VRService_upvr = game:GetService("VRService")
function module_upvr_2.Update(arg1, arg2) -- Line 173
	--[[ Upvalues[3]:
		[1]: module_upvr (readonly)
		[2]: UserVRAvatarGestures_upvr (readonly)
		[3]: VRService_upvr (readonly)
	]]
	local CurrentCamera = workspace.CurrentCamera
	if CurrentCamera then
		local var51
		if arg1.enabled then
			var51 = CurrentCamera.Focus.p - CurrentCamera.CoordinateFrame.p
			local magnitude_2 = var51.magnitude
			local function INLINED_2() -- Internal function, doesn't exist in bytecode
				var51 = 1 - (magnitude_2 - 0.5) / 1.5
				return var51
			end
			if magnitude_2 >= 2 or not INLINED_2() then
				var51 = 0
			end
			if var51 < 0.5 then
				var51 = 0
			end
			if arg1.lastTransparency and var51 < 1 and arg1.lastTransparency < 0.95 then
				local var53 = 2.8 * arg2
				var51 = arg1.lastTransparency + math.clamp(var51 - arg1.lastTransparency, -var53, var53)
			else
				arg1.transparencyDirty = true
			end
			var51 = math.clamp(module_upvr.Round(var51, 2), 0, 1)
			if arg1.transparencyDirty or arg1.lastTransparency ~= var51 then
				for i_6, _ in pairs(arg1.cachedParts) do
					if UserVRAvatarGestures_upvr and VRService_upvr.VREnabled and VRService_upvr.AvatarGestures then
						if i_6.Parent:IsA("Accessory") and ({
							[Enum.AccessoryType.Hat] = true;
							[Enum.AccessoryType.Hair] = true;
							[Enum.AccessoryType.Face] = true;
							[Enum.AccessoryType.Eyebrow] = true;
							[Enum.AccessoryType.Eyelash] = true;
						})[i_6.Parent.AccessoryType] or i_6.Name == "Head" then
							i_6.LocalTransparencyModifier = var51
						else
							i_6.LocalTransparencyModifier = 0
						end
					else
						i_6.LocalTransparencyModifier = var51
					end
				end
				arg1.transparencyDirty = false
				arg1.lastTransparency = var51
			end
		end
	end
end
return module_upvr_2