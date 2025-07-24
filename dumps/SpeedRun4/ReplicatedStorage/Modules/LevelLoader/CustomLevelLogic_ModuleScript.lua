-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:06:08
-- Luau version 6, Types version 3
-- Time taken: 0.001749 seconds

local module = {}
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Modules = ReplicatedStorage:WaitForChild("Modules")
local module_upvr = require(Modules:WaitForChild("ClientData"))
module.LevelEndAction = table.freeze({
	None = 1;
	LoadNext = 2;
	ReturnToLobby = 3;
})
module.LevelMethods_ById = {}
local tbl_upvr = {
	PortalDebounce = false;
}
local function PerformDebounce_upvr() -- Line 71, Named "PerformDebounce"
	--[[ Upvalues[1]:
		[1]: tbl_upvr (readonly)
	]]
	tbl_upvr.PortalDebounce = true
	task.wait(2)
	tbl_upvr.PortalDebounce = false
end
function module.CanUsePortal(arg1) -- Line 77
	--[[ Upvalues[3]:
		[1]: tbl_upvr (readonly)
		[2]: module_upvr (readonly)
		[3]: PerformDebounce_upvr (readonly)
	]]
	local var8 = false
	if not tbl_upvr.PortalDebounce then
		var8 = module_upvr.LocalPlayerTouched(arg1)
		if var8 then
			task.spawn(PerformDebounce_upvr)
		end
	end
	return var8
end
function module.DisconnectCustomConnections(arg1, arg2) -- Line 93
	local var11 = arg1.Objects.Connections[arg2]
	if var11 then
		arg1.Objects.Connections[arg2] = nil
		for _, v in var11 do
			v:Disconnect()
		end
	end
end
local module_upvr_5 = require(Modules:WaitForChild("Worlds"))
local module_upvr_2 = require(ReplicatedStorage:WaitForChild("CommonData"))
local module_upvr_3 = require(Modules:WaitForChild("ItemActionHandler"))
local module_upvr_4 = require(Modules:WaitForChild("Utility"))
function module.InitializeLevelPackPortal(arg1, arg2, arg3) -- Line 109
	--[[ Upvalues[5]:
		[1]: module_upvr_5 (readonly)
		[2]: module_upvr_2 (readonly)
		[3]: module_upvr (readonly)
		[4]: module_upvr_3 (readonly)
		[5]: module_upvr_4 (readonly)
	]]
	local var16_upvr = module_upvr_5.Data_ById[arg1]
	if not var16_upvr then
		error(module_upvr_2.FormatOutput("Unable to find world for WorldId '%s'", "CustomLevelLogic", nil, arg1), 2)
	end
	local var17_upvw = true
	local any_ConnectTouchedPVInstance_result1 = module_upvr_4.ConnectTouchedPVInstance(arg2, function(arg1_2) -- Line 123, Named "JoinWorld"
		--[[ Upvalues[6]:
			[1]: var17_upvw (read and write)
			[2]: module_upvr (copied, readonly)
			[3]: module_upvr_5 (copied, readonly)
			[4]: var16_upvr (readonly)
			[5]: module_upvr_2 (copied, readonly)
			[6]: module_upvr_3 (copied, readonly)
		]]
		-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [2] 3. Error Block 2 start (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [2] 3. Error Block 2 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [70] 54. Error Block 11 start (CF ANALYSIS FAILED)
		task.wait(2)
		var17_upvw = true
		-- KONSTANTERROR: [70] 54. Error Block 11 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [76] 59. Error Block 12 start (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [76] 59. Error Block 12 end (CF ANALYSIS FAILED)
	end)
	table.move(any_ConnectTouchedPVInstance_result1, 1, #any_ConnectTouchedPVInstance_result1, #arg3 + 1, arg3)
end
return module