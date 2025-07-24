-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:57:30
-- Luau version 6, Types version 3
-- Time taken: 0.001432 seconds

local module = {}
local tbl_upvr = {}
tbl_upvr.__index = tbl_upvr
local ClientChatModules = game:GetService("Chat"):WaitForChild("ClientChatModules")
local CommandModules_upvr = ClientChatModules:WaitForChild("CommandModules")
local module_2_upvr = require(ClientChatModules:WaitForChild("ChatSettings"))
local module_3_upvr = require(CommandModules_upvr:WaitForChild("Util"))
function tbl_upvr.SetupCommandProcessors(arg1) -- Line 19
	--[[ Upvalues[2]:
		[1]: CommandModules_upvr (readonly)
		[2]: module_3_upvr (readonly)
	]]
	local children = CommandModules_upvr:GetChildren()
	for i = 1, #children do
		if children[i]:IsA("ModuleScript") and children[i].Name ~= "Util" then
			local any = require(children[i])
			local var10 = any[module_3_upvr.KEY_COMMAND_PROCESSOR_TYPE]
			if var10 == module_3_upvr.IN_PROGRESS_MESSAGE_PROCESSOR then
				table.insert(arg1.InProgressMessageProcessors, any[module_3_upvr.KEY_PROCESSOR_FUNCTION])
			elseif var10 == module_3_upvr.COMPLETED_MESSAGE_PROCESSOR then
				-- KONSTANTERROR: Expression was reused, decompilation is incorrect
				table.insert(arg1.CompletedMessageProcessors, any[module_3_upvr.KEY_PROCESSOR_FUNCTION])
			end
		end
	end
end
function tbl_upvr.ProcessCompletedChatMessage(arg1, arg2, arg3) -- Line 37
	--[[ Upvalues[1]:
		[1]: module_2_upvr (readonly)
	]]
	for i_2 = 1, #arg1.CompletedMessageProcessors do
		if arg1.CompletedMessageProcessors[i_2](arg2, arg3, module_2_upvr) then
			return true
		end
	end
	return false
end
function tbl_upvr.ProcessInProgressChatMessage(arg1, arg2, arg3, arg4) -- Line 47
	--[[ Upvalues[1]:
		[1]: module_2_upvr (readonly)
	]]
	for i_3 = 1, #arg1.InProgressMessageProcessors do
		local any_any_result1 = arg1.InProgressMessageProcessors[i_3](arg2, arg3, arg4, module_2_upvr)
		if any_any_result1 then
			return any_any_result1
		end
	end
	return nil
end
function module.new() -- Line 60
	--[[ Upvalues[1]:
		[1]: tbl_upvr (readonly)
	]]
	local setmetatable_result1 = setmetatable({}, tbl_upvr)
	setmetatable_result1.CompletedMessageProcessors = {}
	setmetatable_result1.InProgressMessageProcessors = {}
	setmetatable_result1:SetupCommandProcessors()
	return setmetatable_result1
end
return module