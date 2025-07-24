-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:13:19
-- Luau version 6, Types version 3
-- Time taken: 0.001305 seconds

local Parent = script:FindFirstAncestor("InputUi").Parent
local useUserExperiment_upvr = require(Parent.RoactAppExperiment).useUserExperiment
local function _() -- Line 11, Named "useGamepadConnectionExperiment"
	--[[ Upvalues[1]:
		[1]: useUserExperiment_upvr (readonly)
	]]
	return useUserExperiment_upvr({"PlatformExcellence.QualityImprovement.Consoles"}, function(arg1) -- Line 14
		local PlatformExcellence_QualityImprovement_Consoles_2 = arg1["PlatformExcellence.QualityImprovement.Consoles"]
		if not PlatformExcellence_QualityImprovement_Consoles_2 then
			PlatformExcellence_QualityImprovement_Consoles_2 = {}
		end
		return PlatformExcellence_QualityImprovement_Consoles_2.showDisconnectDialog
	end)
end
local React_upvr = require(Parent.React)
local GetFFlagShowGamepadDisconnectDialog_upvr = require(script.Parent.GetFFlagShowGamepadDisconnectDialog)
local MemStorageService_upvr = game:GetService("MemStorageService")
return function(arg1, arg2) -- Line 25, Named "useGamepadConnectedEvent"
	--[[ Upvalues[4]:
		[1]: useUserExperiment_upvr (readonly)
		[2]: React_upvr (readonly)
		[3]: GetFFlagShowGamepadDisconnectDialog_upvr (readonly)
		[4]: MemStorageService_upvr (readonly)
	]]
	local useUserExperiment_upvr_result1_upvr = useUserExperiment_upvr({"PlatformExcellence.QualityImprovement.Consoles"}, function(arg1_2) -- Line 14
		local PlatformExcellence_QualityImprovement_Consoles = arg1_2["PlatformExcellence.QualityImprovement.Consoles"]
		if not PlatformExcellence_QualityImprovement_Consoles then
			PlatformExcellence_QualityImprovement_Consoles = {}
		end
		return PlatformExcellence_QualityImprovement_Consoles.showDisconnectDialog
	end)
	local tbl = {}
	tbl[1] = arg1
	tbl[2] = arg2
	tbl[3] = useUserExperiment_upvr_result1_upvr
	React_upvr.useEffect(function() -- Line 27
		--[[ Upvalues[5]:
			[1]: useUserExperiment_upvr_result1_upvr (readonly)
			[2]: GetFFlagShowGamepadDisconnectDialog_upvr (copied, readonly)
			[3]: MemStorageService_upvr (copied, readonly)
			[4]: arg2 (readonly)
			[5]: arg1 (readonly)
		]]
		if useUserExperiment_upvr_result1_upvr or GetFFlagShowGamepadDisconnectDialog_upvr() then
			local any_BindAndFire_result1_upvr = MemStorageService_upvr:BindAndFire("ActiveGamepadConnected", function(arg1_3) -- Line 29
				--[[ Upvalues[2]:
					[1]: arg2 (copied, readonly)
					[2]: arg1 (copied, readonly)
				]]
				if arg1_3 == "false" then
					arg2()
				else
					arg1()
				end
			end)
			return function() -- Line 37
				--[[ Upvalues[1]:
					[1]: any_BindAndFire_result1_upvr (readonly)
				]]
				any_BindAndFire_result1_upvr:Disconnect()
			end
		end
		function any_BindAndFire_result1_upvr() -- Line 41
		end
		return any_BindAndFire_result1_upvr
	end, tbl)
end