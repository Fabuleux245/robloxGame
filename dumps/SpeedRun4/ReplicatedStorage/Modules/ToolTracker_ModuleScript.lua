-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:06:34
-- Luau version 6, Types version 3
-- Time taken: 0.004088 seconds

local ReplicatedStorage = game:GetService("ReplicatedStorage")
local module_upvr_4 = require(ReplicatedStorage:WaitForChild("CommonData"))
local Modules = ReplicatedStorage:WaitForChild("Modules")
local module_upvr_5 = require(Modules:WaitForChild("ClientData"))
local Tool_upvr = ReplicatedStorage:WaitForChild("Remotes"):WaitForChild("Tool")
local tbl_upvr_2 = {
	PlayerState_ById = {};
}
local tbl_upvr_4 = {}
local tbl_upvr_3 = {}
local function ToolStateDestroy_upvr(arg1, arg2) -- Line 51, Named "ToolStateDestroy"
	--[[ Upvalues[4]:
		[1]: tbl_upvr_3 (readonly)
		[2]: tbl_upvr_2 (readonly)
		[3]: module_upvr_4 (readonly)
		[4]: module_upvr_5 (readonly)
	]]
	for i, v in arg2.Connections do
		v:Disconnect()
	end
	local var11 = tbl_upvr_3[arg2.Type]
	if var11 then
		i = arg2
		var11(arg1, i)
	end
	arg2.Tool:Destroy()
	i = nil
	tbl_upvr_2.PlayerState_ById[arg2.Id] = i
	i = arg2
	if module_upvr_4.ToolStateRemove(arg1.ToolStates, i) and arg1 == module_upvr_5.LocalPlayerState then
		module_upvr_5.Flags.LocalToolStatesDirty = true
	end
end
local module_upvr_3 = require(Modules:WaitForChild("Utility"))
local function ToolStateCreate_upvr(arg1, arg2) -- Line 79, Named "ToolStateCreate"
	--[[ Upvalues[6]:
		[1]: module_upvr_4 (readonly)
		[2]: module_upvr_3 (readonly)
		[3]: tbl_upvr_4 (readonly)
		[4]: tbl_upvr_2 (readonly)
		[5]: module_upvr_5 (readonly)
		[6]: ToolStateDestroy_upvr (readonly)
	]]
	if not arg2.Tool then
		warn(module_upvr_4.FormatOutput("Lost ToolState Tool reference for state type '%s'", "ToolTracker", nil, arg2.Type))
		return nil
	end
	local any_TableMerge_result1_upvr = module_upvr_3.TableMerge({
		Connections = {};
		Equipped = false;
	}, arg2)
	local var15 = tbl_upvr_4[any_TableMerge_result1_upvr.Type]
	if var15 then
		var15(arg1, any_TableMerge_result1_upvr)
	end
	tbl_upvr_2.PlayerState_ById[any_TableMerge_result1_upvr.Id] = arg1
	if module_upvr_4.ToolStateAdd(arg1.ToolStates, any_TableMerge_result1_upvr) and arg1 == module_upvr_5.LocalPlayerState then
		module_upvr_5.Flags.LocalToolStatesDirty = true
	end
	any_TableMerge_result1_upvr.Connections[#any_TableMerge_result1_upvr.Connections + 1] = any_TableMerge_result1_upvr.Tool.Destroying:Connect(function() -- Line 108
		--[[ Upvalues[3]:
			[1]: ToolStateDestroy_upvr (copied, readonly)
			[2]: arg1 (readonly)
			[3]: any_TableMerge_result1_upvr (readonly)
		]]
		ToolStateDestroy_upvr(arg1, any_TableMerge_result1_upvr)
	end)
	return any_TableMerge_result1_upvr
end
local module_upvr_2 = require(script:WaitForChild("CloudHandler"))
local function InitializeCloudTool(arg1, arg2) -- Line 122
	--[[ Upvalues[2]:
		[1]: module_upvr_5 (readonly)
		[2]: module_upvr_2 (readonly)
	]]
	if arg1 ~= module_upvr_5.LocalPlayerState then
	else
		local var18 = false
		if typeof(arg2.Tool) == "Instance" then
			var18 = arg2.Tool:IsA("Tool")
		end
		assert(var18, "Invalid Cloud tool")
		module_upvr_2.InitializeTool(arg2)
	end
end
tbl_upvr_4[module_upvr_4.ToolType.AdminCloud] = InitializeCloudTool
tbl_upvr_4[module_upvr_4.ToolType.Cloud] = InitializeCloudTool
tbl_upvr_4[module_upvr_4.ToolType.Dance] = function(arg1, arg2) -- Line 143
	--[[ Upvalues[3]:
		[1]: module_upvr_5 (readonly)
		[2]: Tool_upvr (readonly)
		[3]: module_upvr_4 (readonly)
	]]
	if arg1 ~= module_upvr_5.LocalPlayerState then
	else
		local Tool_upvr_2 = arg2.Tool
		Tool_upvr_2.Equipped:Connect(function() -- Line 151
			--[[ Upvalues[5]:
				[1]: Tool_upvr (copied, readonly)
				[2]: module_upvr_4 (copied, readonly)
				[3]: arg2 (readonly)
				[4]: arg1 (readonly)
				[5]: Tool_upvr_2 (readonly)
			]]
			Tool_upvr:FireServer(module_upvr_4.ToolRequestType.Use, arg2.Id)
			local CharacterState = arg1.CharacterState
			if CharacterState and CharacterState.Initialized then
				Tool_upvr_2.Parent = CharacterState.Backpack
			end
		end)
	end
end
local module_upvr = require(script:WaitForChild("GunHandler"))
tbl_upvr_4[module_upvr_4.ToolType.Rifle] = function(arg1, arg2) -- Line 169
	--[[ Upvalues[2]:
		[1]: module_upvr_5 (readonly)
		[2]: module_upvr (readonly)
	]]
	if arg1 ~= module_upvr_5.LocalPlayerState then
	else
		local var25 = false
		if typeof(arg2.Tool) == "Instance" then
			var25 = arg2.Tool:IsA("Tool")
		end
		assert(var25, "Invalid Rifle tool")
		module_upvr.InitializeTool(arg2)
	end
end
local function _(arg1) -- Line 184, Named "ProcessToolStateSnapshot"
	--[[ Upvalues[2]:
		[1]: module_upvr_5 (readonly)
		[2]: ToolStateCreate_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local var34 = module_upvr_5.PlayerState_ByUserId[arg1.U]
	if not var34 or not var34.IsInGame then
	else
		for _, var33 in arg1.TS do
			ToolStateCreate_upvr(var34, var33)
		end
	end
end
local tbl_upvr = {
	[module_upvr_4.ToolRequestType.Use] = function(arg1, arg2, ...) -- Line 197
		error("METHOD NOT IMPLEMENTED")
	end;
}
Tool_upvr.OnClientEvent:Connect(function(arg1) -- Line 208
	--[[ Upvalues[5]:
		[1]: module_upvr_4 (readonly)
		[2]: module_upvr_5 (readonly)
		[3]: ToolStateCreate_upvr (readonly)
		[4]: tbl_upvr_2 (readonly)
		[5]: tbl_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [94] 70. Error Block 18 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [94] 70. Error Block 18 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [4] 5. Error Block 31 start (CF ANALYSIS FAILED)
	-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [94.6]
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [94.7]
	if nil == nil then
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		if nil then
			if not nil then
			else
				-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [94.8]
				-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [94.9]
				for _, _ in nil do
					-- KONSTANTERROR: Expression was reused, decompilation is incorrect
				end
			end
			-- KONSTANTWARNING: GOTO [94] #70
		end
	else
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		if nil then
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect
			if nil then
			else
			end
		else
		end
	end
	-- KONSTANTERROR: [4] 5. Error Block 31 end (CF ANALYSIS FAILED)
end)
return {}