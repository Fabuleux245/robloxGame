-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:02:54
-- Luau version 6, Types version 3
-- Time taken: 0.004651 seconds

local module_upvr = {
	ERR_RA_CHARACTER = "ERR_RA_CHARACTER";
	ERR_RA_HUMPLAYER = "ERR_RA_HUMPLAYER";
	ERR_RA_HUMOBJ = "ERR_RA_HUMOBJ";
	ERR_RA_HUMDESC = "ERR_RA_HUMDESC";
	OK = "OK";
}
local function var2_upvr(arg1) -- Line 60
	local module = {}
	for _, v in ipairs(arg1) do
		table.insert(module, {
			AccessoryType = v.AccessoryType.Value;
			AssetId = v.AssetId;
			IsLayered = v.IsLayered;
			Order = v.Order;
			Puffiness = v.Puffiness;
		})
	end
	return module
end
local Players_upvr = game:GetService("Players")
local GetFFlagGetHumanoidDescriptionUpdates_upvr = require(script:FindFirstAncestor("AbuseReportMenu").Flags.GetFFlagGetHumanoidDescriptionUpdates)
return {
	getHumanoidDescription = function(arg1) -- Line 74
		--[[ Upvalues[4]:
			[1]: Players_upvr (readonly)
			[2]: module_upvr (readonly)
			[3]: GetFFlagGetHumanoidDescriptionUpdates_upvr (readonly)
			[4]: var2_upvr (readonly)
		]]
		local any_GetPlayerByUserId_result1 = Players_upvr:GetPlayerByUserId(arg1)
		local tbl_upvr = {
			BackAccessory = "";
			BodyTypeScale = 0;
			ClimbAnimation = 0;
			DepthScale = 0;
			Face = 0;
			FaceAccessory = "";
			FallAnimation = 0;
			FrontAccessory = "";
			GraphicTShirt = 0;
			HairAccessory = "";
			HatAccessory = "";
			Head = 0;
			HeadColor = {0, 0, 0};
			HeadScale = 0;
			HeightScale = 0;
			IdleAnimation = 0;
			JumpAnimation = 0;
			LeftArm = 0;
			LeftArmColor = {0, 0, 0};
			LeftLeg = 0;
			LeftLegColor = {0, 0, 0};
			MoodAnimation = 0;
			NeckAccessory = "";
			Pants = 0;
			ProportionScale = 0;
			RightArm = 0;
			RightArmColor = {0, 0, 0};
			RightLeg = 0;
			RightLegColor = {0, 0, 0};
			RunAnimation = 0;
			Shirt = 0;
			ShouldersAccessory = "";
			SwimAnimation = 0;
			Torso = 0;
			TorsoColor = {0, 0, 0};
			WaistAccessory = "";
			WalkAnimation = 0;
			WidthScale = 0;
		}
		if not any_GetPlayerByUserId_result1 then
			return tbl_upvr, module_upvr.ERR_RA_HUMPLAYER
		end
		local Character = any_GetPlayerByUserId_result1.Character
		local var28_upvw
		if Character then
			local Humanoid_upvr = Character:WaitForChild("Humanoid", 1)
			if not Humanoid_upvr then
				var28_upvw = tbl_upvr
				return var28_upvw, module_upvr.ERR_RA_HUMOBJ
			end
			var28_upvw = nil
			if GetFFlagGetHumanoidDescriptionUpdates_upvr() then
				local pcall_result1_3, pcall_result2_3 = pcall(function() -- Line 135
					--[[ Upvalues[1]:
						[1]: Humanoid_upvr (readonly)
					]]
					return Humanoid_upvr:GetAppliedDescription()
				end)
				var28_upvw = pcall_result2_3
				if not pcall_result1_3 then
					do
						return tbl_upvr, module_upvr.ERR_RA_HUMOBJ
					end
					-- KONSTANTWARNING: GOTO [201] #143
				end
			else
				var28_upvw = Humanoid_upvr:GetAppliedDescription()
			end
			if not var28_upvw then
				return tbl_upvr, module_upvr.ERR_RA_HUMDESC
			end
			local var33 = 0
			if GetFFlagGetHumanoidDescriptionUpdates_upvr() then
				for i_2, _ in pairs(tbl_upvr) do
					if not pcall(function(arg1_2) -- Line 152
						--[[ Upvalues[2]:
							[1]: var28_upvw (read and write)
							[2]: tbl_upvr (readonly)
						]]
						if typeof(var28_upvw[arg1_2]) == "Color3" then
							tbl_upvr[arg1_2] = {var28_upvw[arg1_2].R, var28_upvw[arg1_2].G, var28_upvw[arg1_2].B}
						else
							tbl_upvr[arg1_2] = var28_upvw[arg1_2]
						end
					end, i_2) then
						var33 += 1
					end
				end
				local pcall_result1_2, pcall_result2_2 = pcall(var28_upvw.GetAccessories, var28_upvw, false)
				if pcall_result1_2 then
					local pcall_result1, pcall_result2 = pcall(var2_upvr, pcall_result2_2)
					if pcall_result1 then
						tbl_upvr.AccessoryBlob = pcall_result2
					else
						var33 += 1
					end
				else
					var33 += 1
				end
				tbl_upvr.FieldErrorCount = var33
			else
				pcall(function() -- Line 187
					--[[ Upvalues[2]:
						[1]: tbl_upvr (readonly)
						[2]: var28_upvw (read and write)
					]]
					for i_3, _ in pairs(tbl_upvr) do
						if typeof(var28_upvw[i_3]) == "Color3" then
							tbl_upvr[i_3] = {var28_upvw[i_3].R, var28_upvw[i_3].G, var28_upvw[i_3].B}
						else
							tbl_upvr[i_3] = var28_upvw[i_3]
						end
					end
				end)
			end
		else
			Humanoid_upvr = tbl_upvr
			var33 = module_upvr
			return Humanoid_upvr, var33.ERR_RA_CHARACTER
		end
		Humanoid_upvr = tbl_upvr
		return Humanoid_upvr, module_upvr.OK
	end;
}