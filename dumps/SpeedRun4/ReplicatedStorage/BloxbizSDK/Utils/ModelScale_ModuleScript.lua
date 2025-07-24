-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:07:56
-- Luau version 6, Types version 3
-- Time taken: 0.002371 seconds

local function getConnectedMotor_upvr(arg1, arg2) -- Line 1, Named "getConnectedMotor"
	local var8
	for _, v in pairs(arg1:GetDescendants()) do
		if v:IsA("Motor6D") and v.Part1 == arg2 then
		end
	end
	return nil
end
return function(arg1, arg2) -- Line 13
	--[[ Upvalues[1]:
		[1]: getConnectedMotor_upvr (readonly)
	]]
	if arg1.PrimaryPart == nil then
		require(script.Parent).pprint("[SuperBiz] No PrimaryPart was found for model "..arg1.Name)
	else
		for _, v_2 in pairs(arg1:GetDescendants()) do
			if v_2:IsA("BasePart") then
				table.insert({}, v_2)
				if not v_2.Anchored then
					v_2.Anchored = true
					table.insert({}, v_2)
				end
			end
			if v_2:IsA("SpecialMesh") then
				table.insert({}, v_2)
			end
		end
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		for _, v_3 in ipairs({}) do
			if v_3.MeshType == Enum.MeshType.FileMesh then
				v_3.Scale *= arg2
			end
		end
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		for _, v_4 in ipairs({}) do
			local getConnectedMotor_upvr_result1 = getConnectedMotor_upvr(arg1, v_4)
			if v_4 == arg1.PrimaryPart then
				v_4.Size *= arg2
			else
				if not getConnectedMotor_upvr_result1 then
					v_4.Position = (arg1.PrimaryPart.CFrame) * (arg1.PrimaryPart.CFrame:ToObjectSpace(v_4.CFrame).Position * arg2)
				elseif getConnectedMotor_upvr_result1 then
					getConnectedMotor_upvr_result1.Part1 = nil
					v_4.Position = (arg1.PrimaryPart.CFrame) * (arg1.PrimaryPart.CFrame:ToObjectSpace(v_4.CFrame).Position * arg2)
					getConnectedMotor_upvr_result1.C0 = getConnectedMotor_upvr_result1.Part0.CFrame:ToObjectSpace(v_4.CFrame) * getConnectedMotor_upvr_result1.C1
					getConnectedMotor_upvr_result1.Part1 = v_4
				end
				v_4.Size *= arg2
			end
		end
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		for _, v_5 in ipairs({}) do
			v_5.Anchored = false
		end
	end
end