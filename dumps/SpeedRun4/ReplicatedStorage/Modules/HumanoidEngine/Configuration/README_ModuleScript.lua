-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:07:02
-- Luau version 6, Types version 3
-- Time taken: 0.005707 seconds

print("ReadMe is running!")
module = {} -- Setting global
function module.NormalIdToString(arg1) -- Line 41
	if arg1 == Enum.NormalId.Right then
		return 'x'
	end
	if arg1 == Enum.NormalId.Left then
		return 'X'
	end
	if arg1 == Enum.NormalId.Top then
		return 'y'
	end
	if arg1 == Enum.NormalId.Bottom then
		return 'Y'
	end
	if arg1 == Enum.NormalId.Back then
		return 'z'
	end
	if arg1 == Enum.NormalId.Front then
		return 'Z'
	end
end
function module.AllStrings() -- Line 56
	return {'x', 'X', 'y', 'Y', 'z', 'Z'}
end
function module.AllNormals() -- Line 59
	return {Enum.NormalId.Right, Enum.NormalId.Left, Enum.NormalId.Top, Enum.NormalId.Bottom, Enum.NormalId.Back, Enum.NormalId.Front}
end
local tbl_upvr = {}
function module.AllStringsWithPrefix(arg1) -- Line 64
	--[[ Upvalues[1]:
		[1]: tbl_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	if not tbl_upvr[arg1] then
		for _, v in pairs(module.AllStrings()) do
			table.insert({}, arg1..v)
			local var16
		end
		tbl_upvr[arg1] = var16
	end
	return tbl_upvr[arg1]
end
function tbl_upvr(arg1, arg2, arg3) -- Line 77, Named "ConvertDecalToName"
	if arg1:IsA("Decal") then
		if arg1.Texture:find(tostring(arg2)) then
			local var27 = arg3..module.NormalIdToString(arg1.Face)
			if not arg1.Parent.Name:find(var27) then
				arg1.Parent.Name = arg1.Parent.Name..var27
				arg1.Parent = nil
			end
		end
	end
	for _, v_2 in pairs(arg1:GetChildren()) do
		ConvertDecalToName(v_2, arg2, arg3)
	end
end
ConvertDecalToName = tbl_upvr -- Setting global
function tbl_upvr(arg1, arg2, arg3) -- Line 92, Named "ConvertDecalToDecal"
	if arg1:IsA("Decal") then
		if arg1.Texture:find(tostring(arg2)) then
			arg1.Texture = "rbxassetid://"..arg3
		end
	end
	for _, v_3 in pairs(arg1:GetChildren()) do
		ConvertDecalToDecal(v_3, arg2, arg3)
	end
end
ConvertDecalToDecal = tbl_upvr -- Setting global
tbl_upvr = module.AllNormals()
function ConvertNameToDecal(arg1, arg2, arg3) -- Line 104
	--[[ Upvalues[1]:
		[1]: tbl_upvr (readonly)
	]]
	if arg1:IsA("BasePart") then
		for i_4, v_4 in pairs(module.AllStringsWithPrefix(arg2)) do
			if arg1.Name:find(v_4) then
				local Decal = Instance.new("Decal", arg1)
				Decal.Texture = "rbxassetid://"..arg3
				Decal.Face = tbl_upvr[i_4]
				arg1.Name = string.gsub(arg1.Name, v_4, "", 1)
			end
		end
	end
	for _, v_5 in pairs(arg1:GetChildren()) do
		ConvertNameToDecal(v_5, arg2, arg3)
	end
end
local Value_5_upvw = script.Parent.SurfaceDetectType.WallRunDecal.Value
local Value_2_upvw = script.Parent.SurfaceDetectType.GravitySurfaceDecal.Value
local Value_upvw = script.Parent.SurfaceDetectType.Value
function onModeChanged() -- Line 121
	--[[ Upvalues[3]:
		[1]: Value_upvw (read and write)
		[2]: Value_2_upvw (read and write)
		[3]: Value_5_upvw (read and write)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 19 start (CF ANALYSIS FAILED)
	local Value_3 = script.Parent.SurfaceDetectType.Value
	if Value_upvw == Value_3 then
	else
		if Value_3 == "Name" or Value_3 == "Automatic" then
			if Value_upvw == "Decal" then
				ConvertDecalToName(workspace, Value_2_upvw, ";g")
				ConvertDecalToName(workspace, Value_5_upvw, ";w")
				-- KONSTANTWARNING: GOTO [69] #47
			end
		elseif Value_3 == "Decal" then
			ConvertNameToDecal(workspace, ";g", Value_2_upvw)
			ConvertNameToDecal(workspace, ";w", Value_5_upvw)
		else
			warn(string.format("Set to invalid mode '%s'. Valid modes are:\n\t1. Automatic\n\t2. Decal\n\t3. Name", Value_3))
			script.Parent.SurfaceDetectType.Value = Value_upvw
			return
		end
		-- KONSTANTERROR: [0] 1. Error Block 19 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [69] 47. Error Block 12 start (CF ANALYSIS FAILED)
		Value_upvw = Value_3
		-- KONSTANTERROR: [69] 47. Error Block 12 end (CF ANALYSIS FAILED)
	end
end
function onDecalIdChanged() -- Line 143
	--[[ Upvalues[2]:
		[1]: Value_5_upvw (read and write)
		[2]: Value_2_upvw (read and write)
	]]
	local Value = script.Parent.SurfaceDetectType.WallRunDecal.Value
	local Value_4 = script.Parent.SurfaceDetectType.GravitySurfaceDecal.Value
	if Value_4 == Value then
		warn(string.format("Gravity Decal and Wall-Running Decals cannot be the same."))
		script.Parent.SurfaceDetectType.WallRunDecal.Value = Value_5_upvw
		script.Parent.SurfaceDetectType.GravitySurfaceDecal.Value = Value_2_upvw
	else
		if Value == Value_2_upvw then
			local var53 = 12345
			if var53 == Value_2_upvw then
				var53 = 67890
			end
			ConvertDecalToDecal(workspace, Value_5_upvw, var53)
			Value_5_upvw = var53
		end
		if Value_4 ~= Value_2_upvw then
			ConvertDecalToDecal(workspace, Value_2_upvw, Value_4)
		end
		if Value ~= Value_5_upvw then
			ConvertDecalToDecal(workspace, Value_5_upvw, Value)
		end
		Value_5_upvw = Value
		Value_2_upvw = Value_4
	end
end
script.Parent.SurfaceDetectType.Changed:connect(onModeChanged)
script.Parent.SurfaceDetectType.WallRunDecal.Changed:connect(onDecalIdChanged)
script.Parent.SurfaceDetectType.GravitySurfaceDecal.Changed:connect(onDecalIdChanged)
function PackageDirectory(arg1, arg2) -- Line 174
	if not arg2 then
	end
	for i_6, v_6 in pairs(arg1) do
		if type(i_6) == "number" then
			game[v_6]:Clone().Parent = Instance.new("Folder")
		else
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect
			local PackageDirectory_result1_2 = PackageDirectory(v_6, game[i_6])
			PackageDirectory_result1_2.Name = i_6
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect
			PackageDirectory_result1_2.Parent = Instance.new("Folder")
		end
	end
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	return Instance.new("Folder")
end
local tbl_upvr_2 = {
	Workspace = {"SampleSpawn", "SampleSpring", "SampleFloor", "SampleIce", "SampleTrampoline;Support", "SampleWall"};
	ReplicatedStorage = {
		Modules = {
			HumanoidEngine = {"Camera", "Class", "CustomHumanoid", "Log", "Configuration"};
		};
	};
	StarterPlayer = {
		StarterPlayerScripts = {"CameraScript", "ControlScript"};
		StarterCharacterScripts = {"Animate", "HumanoidControl", "HumanoidSurfaceDetect", "HumanoidUpdate", "WallRunning"};
	};
}
function _G.Package() -- Line 200
	--[[ Upvalues[1]:
		[1]: tbl_upvr_2 (readonly)
	]]
	local PackageDirectory_result1 = PackageDirectory(tbl_upvr_2, game)
	PackageDirectory_result1.Name = "SpeedRun"
	PackageDirectory_result1.Parent = game.Lighting
end
return module