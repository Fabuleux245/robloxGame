-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:05:33
-- Luau version 6, Types version 3
-- Time taken: 0.005701 seconds

local module_upvr = {
	ID = 0;
	Type = "Model";
	Properties = {
		Name = "Safety Bubble Dummy";
		PrimaryPart = "_R:1_";
	};
	Children = {{
		ID = 1;
		Type = "Part";
		Properties = {
			Transparency = 0.5;
			Name = "HumanoidRootPart";
			Size = Vector3.new(2, 2, 1);
			Anchored = true;
			BottomSurface = Enum.SurfaceType.Smooth;
			TopSurface = Enum.SurfaceType.Smooth;
		};
		Children = {{
			ID = 2;
			Type = "Motor6D";
			Properties = {
				Part1 = "_R:3_";
				Name = "Root Hip";
				C1 = CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, 1, 0, 1, -0);
				C0 = CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, 1, 0, 1, -0);
				Part0 = "_R:1_";
				MaxVelocity = 0.10000000149011612;
			};
			Children = {};
		}};
	}, {
		ID = 3;
		Type = "Part";
		Properties = {
			Size = Vector3.new(2, 2, 1);
			BottomSurface = Enum.SurfaceType.Smooth;
			Name = "Torso";
			TopSurface = Enum.SurfaceType.Smooth;
		};
		Children = {{
			ID = 4;
			Type = "Motor6D";
			Properties = {
				Part1 = "_R:9_";
				Name = "Left Hip";
				C1 = CFrame.new(-0.5, 1, 0, -4.371138828673793e-08, 0, -1, 0, 0.9999999403953552, 0, 1, 0, -4.371138828673793e-08);
				C0 = CFrame.new(-1, -1, 0, -4.371138828673793e-08, 0, -1, 0, 0.9999999403953552, 0, 1, 0, -4.371138828673793e-08);
				Part0 = "_R:3_";
				MaxVelocity = 0.10000000149011612;
			};
			Children = {};
		}, {
			ID = 5;
			Type = "Motor6D";
			Properties = {
				Part1 = "_R:10_";
				Name = "Right Hip";
				C1 = CFrame.new(0.5, 1, 0, -4.371138828673793e-08, 0, 1, 0, 0.9999999403953552, 0, -1, 0, -4.371138828673793e-08);
				C0 = CFrame.new(1, -1, 0, -4.371138828673793e-08, 0, 1, -0, 0.9999999403953552, 0, -1, 0, -4.371138828673793e-08);
				Part0 = "_R:3_";
				MaxVelocity = 0.10000000149011612;
			};
			Children = {};
		}, {
			ID = 6;
			Type = "Motor6D";
			Properties = {
				Part1 = "_R:11_";
				Name = "Left Shoulder";
				C1 = CFrame.new(0.5, 0.5, 0, -4.371138828673793e-08, 0, -1, 0, 0.9999999403953552, 0, 1, 0, -4.371138828673793e-08);
				C0 = CFrame.new(-1, 0.5, 0, -4.371138828673793e-08, 0, -1, 0, 0.9999999403953552, 0, 1, 0, -4.371138828673793e-08);
				Part0 = "_R:3_";
				MaxVelocity = 0.10000000149011612;
			};
			Children = {};
		}, {
			ID = 7;
			Type = "Motor6D";
			Properties = {
				Part1 = "_R:12_";
				Name = "Right Shoulder";
				C1 = CFrame.new(-0.5, 0.5, 0, -4.371138828673793e-08, 0, 1, 0, 0.9999999403953552, 0, -1, 0, -4.371138828673793e-08);
				C0 = CFrame.new(1, 0.5, 0, -4.371138828673793e-08, 0, 1, -0, 0.9999999403953552, 0, -1, 0, -4.371138828673793e-08);
				Part0 = "_R:3_";
				MaxVelocity = 0.10000000149011612;
			};
			Children = {};
		}, {
			ID = 8;
			Type = "Motor6D";
			Properties = {
				Part1 = "_R:13_";
				Name = "Neck";
				C1 = CFrame.new(0, -0.5, 0, -1, 0, 0, 0, 0, 1, 0, 1, -0);
				C0 = CFrame.new(0, 1, 0, -1, 0, 0, 0, 0, 1, 0, 1, -0);
				Part0 = "_R:3_";
				MaxVelocity = 0.10000000149011612;
			};
			Children = {};
		}};
	}, {
		ID = 9;
		Type = "Part";
		Properties = {
			Size = Vector3.new(1, 2, 1);
			Name = "Left Leg";
			CanCollide = false;
			BottomSurface = Enum.SurfaceType.Smooth;
			CFrame = CFrame.new(-0.5, -1.9999998807907104, 0, 1, 0, 0, 0, 0.9999998807907104, 0, 0, 0, 1);
			Position = Vector3.new(-0.5, -1.9999, 0);
			TopSurface = Enum.SurfaceType.Smooth;
		};
		Children = {};
	}, {
		ID = 10;
		Type = "Part";
		Properties = {
			Size = Vector3.new(1, 2, 1);
			Name = "Right Leg";
			CanCollide = false;
			BottomSurface = Enum.SurfaceType.Smooth;
			CFrame = CFrame.new(0.5, -1.9999998807907104, 0, 1, 0, 0, 0, 0.9999998807907104, 0, 0, 0, 1);
			Position = Vector3.new(0.5, -1.9999, 0);
			TopSurface = Enum.SurfaceType.Smooth;
		};
		Children = {};
	}, {
		ID = 11;
		Type = "Part";
		Properties = {
			Size = Vector3.new(1, 2, 1);
			Name = "Left Arm";
			CanCollide = false;
			BottomSurface = Enum.SurfaceType.Smooth;
			CFrame = CFrame.new(-1.5, 5.960464477539063e-08, 0, 1, 0, 0, 0, 0.9999998807907104, 0, 0, 0, 1);
			Position = Vector3.new(-1.5, 5.96046, 0);
			TopSurface = Enum.SurfaceType.Smooth;
		};
		Children = {};
	}, {
		ID = 12;
		Type = "Part";
		Properties = {
			Size = Vector3.new(1, 2, 1);
			Name = "Right Arm";
			CanCollide = false;
			BottomSurface = Enum.SurfaceType.Smooth;
			CFrame = CFrame.new(1.5, 5.960464477539063e-08, 0, 1, 0, 0, 0, 0.9999998807907104, 0, 0, 0, 1);
			Position = Vector3.new(1.5, 5.96046, 0);
			TopSurface = Enum.SurfaceType.Smooth;
		};
		Children = {};
	}, {
		ID = 13;
		Type = "Part";
		Properties = {
			Name = "Head";
			Position = Vector3.new(0, 1.5, 0);
			Size = Vector3.new(2, 1, 1);
			CFrame = CFrame.new(0, 1.5, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1);
			BottomSurface = Enum.SurfaceType.Smooth;
			TopSurface = Enum.SurfaceType.Smooth;
		};
		Children = {{
			ID = 14;
			Type = "Decal";
			Properties = {
				Name = "Face";
				Texture = "rbxasset://textures/face.png";
			};
			Children = {};
		}, {
			ID = 15;
			Type = "SpecialMesh";
			Properties = {
				Scale = Vector3.new(1.25, 1.25, 1.25);
			};
			Children = {};
		}};
	}, {
		ID = 16;
		Type = "Humanoid";
		Properties = {};
		Children = {};
	}};
}
local tbl_2_upvr = {}
local tbl_3_upvr = {}
local function Scan_upvr(arg1, arg2, arg3, arg4) -- Line 316, Named "Scan"
	--[[ Upvalues[3]:
		[1]: tbl_2_upvr (readonly)
		[2]: tbl_3_upvr (readonly)
		[3]: Scan_upvr (readonly)
	]]
	local any_2 = Instance.new(arg1.Type)
	if arg1.ID then
		local var67 = tbl_2_upvr[arg1.ID]
		if var67 then
			var67[1][var67[2]] = any_2
			tbl_2_upvr[arg1.ID] = nil
		else
			tbl_3_upvr[arg1.ID] = any_2
		end
	end
	for i, v in pairs(arg1.Properties) do
		if type(v) == "string" then
			local tonumber_result1_2 = tonumber(v:match("^_R:(%w+)_$"))
			if tonumber_result1_2 then
				if tbl_3_upvr[tonumber_result1_2] then
					v = tbl_3_upvr[tonumber_result1_2]
				else
					tbl_2_upvr[tonumber_result1_2] = {any_2, i}
					v = nil
				end
			end
		end
		any_2[i] = v
	end
	for _, v_2 in pairs(arg1.Children) do
		Scan_upvr(v_2, any_2, arg3, arg4)
	end
	any_2.Parent = arg2
	if any_2:IsA("Part") then
		any_2.Position += arg3
		any_2.Orientation += arg4
		any_2.Anchored = true
	end
	return any_2
end
return function(arg1, arg2) -- Line 354
	--[[ Upvalues[2]:
		[1]: Scan_upvr (readonly)
		[2]: module_upvr (readonly)
	]]
	return Scan_upvr(module_upvr, nil, arg1, arg2)
end