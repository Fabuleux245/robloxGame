-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:13:30
-- Luau version 6, Types version 3
-- Time taken: 0.001706 seconds

local tbl_upvr_4 = {
	[Enum.HapticEffectType.UIClick] = {
		duration = math.clamp(game:DefineFastInt("HapticClickEffectDuration", 5), 0, 100) / 100;
		intensity = math.clamp(game:DefineFastInt("HapticClickEffectIntensity", 50), 0, 100) / 100;
	};
}
local GetFFlagUseNewHapticServiceInUA_upvr = require(script:FindFirstAncestor("InteractionFeedback").Parent.SharedFlags).GetFFlagUseNewHapticServiceInUA
local tbl_upvr = {}
local HapticService_upvr = game:GetService("HapticService")
local tbl_upvr_2 = {}
local tbl_upvr_3 = {}
return function(arg1, arg2, arg3, arg4) -- Line 17, Named "triggerHaptic"
	--[[ Upvalues[6]:
		[1]: GetFFlagUseNewHapticServiceInUA_upvr (readonly)
		[2]: tbl_upvr (readonly)
		[3]: tbl_upvr_4 (readonly)
		[4]: HapticService_upvr (readonly)
		[5]: tbl_upvr_2 (readonly)
		[6]: tbl_upvr_3 (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	if GetFFlagUseNewHapticServiceInUA_upvr() then
		if not tbl_upvr[arg1] then
			tbl_upvr[arg1] = Instance.new("HapticEffect")
			tbl_upvr[arg1].Parent = workspace
			tbl_upvr[arg1].Type = arg1
		end
		tbl_upvr[arg1].Position = arg3
		tbl_upvr[arg1].Radius = arg4
		tbl_upvr[arg1]:Play()
	else
		local var16_upvr = tbl_upvr_4[arg1]
		if not var16_upvr then
			error("Haptic effect not found for Enum.HapticEffectType."..arg1.Name)
		end
		for _, v_upvr in ipairs(arg2) do
			HapticService_upvr:SetMotor(Enum.UserInputType.Gamepad1, v_upvr, var16_upvr.intensity)
			tbl_upvr_2[v_upvr] = os.clock()
			tbl_upvr_3[v_upvr] = game:GetService("RunService").Heartbeat:Connect(function() -- Line 41
				--[[ Upvalues[5]:
					[1]: tbl_upvr_2 (copied, readonly)
					[2]: v_upvr (readonly)
					[3]: var16_upvr (readonly)
					[4]: HapticService_upvr (copied, readonly)
					[5]: tbl_upvr_3 (copied, readonly)
				]]
				if not tbl_upvr_2[v_upvr] then
				elseif var16_upvr.duration < os.clock() - tbl_upvr_2[v_upvr] then
					HapticService_upvr:SetMotor(Enum.UserInputType.Gamepad1, v_upvr, 0)
					tbl_upvr_3[v_upvr]:Disconnect()
					tbl_upvr_3[v_upvr] = nil
					tbl_upvr_2[v_upvr] = nil
				end
			end)
			local _
		end
	end
end