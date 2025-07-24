-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:06:36
-- Luau version 6, Types version 3
-- Time taken: 0.001424 seconds

local module_4 = {}
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local module_2_upvr = require(ReplicatedStorage:WaitForChild("CommonData"))
local Modules = ReplicatedStorage:WaitForChild("Modules")
local module_5_upvr = require(Modules:WaitForChild("Utility"))
local tbl_upvr = {
	RequestCounter = module_5_upvr.ByteCounterCreate();
	PendingResponses = {};
}
local module_3_upvr = require(Modules:WaitForChild("ClientData"))
local State_upvr = ReplicatedStorage:WaitForChild("Remotes"):WaitForChild("State")
function module_4.MakeRequest(arg1) -- Line 39
	--[[ Upvalues[5]:
		[1]: module_3_upvr (readonly)
		[2]: module_2_upvr (readonly)
		[3]: module_5_upvr (readonly)
		[4]: tbl_upvr (readonly)
		[5]: State_upvr (readonly)
	]]
	if not module_3_upvr.Flags.Initialized then
		error(module_2_upvr.FormatOutput("Client has not pinged server for initial state yet", "NetworkRequestUtility", nil), 2)
	end
	module_5_upvr.ByteCounterIncrement(tbl_upvr.RequestCounter)
	local any_ByteCounterRead_result1 = module_5_upvr.ByteCounterRead(tbl_upvr.RequestCounter)
	local module = {}
	module.Request = arg1
	module.Response = module_2_upvr.ResponseType.AwaitingResponse
	module.Args = {}
	tbl_upvr.PendingResponses[any_ByteCounterRead_result1] = module
	local Remote = arg1.Remote
	if not Remote then
		Remote = State_upvr
	end
	Remote:FireServer(arg1.Request, any_ByteCounterRead_result1, table.unpack(arg1.Args))
	if arg1.Callback == coroutine.running() then
		coroutine.yield()
	end
	return module
end
function module_4.ProcessResponse(arg1) -- Line 68
	--[[ Upvalues[2]:
		[1]: tbl_upvr (readonly)
		[2]: module_2_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	local PendingResponses = tbl_upvr.PendingResponses
	local var13 = PendingResponses[arg1.Id]
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [57] 39. Error Block 11 start (CF ANALYSIS FAILED)
	task.spawn(PendingResponses, var13)
	do
		return
	end
	-- KONSTANTERROR: [57] 39. Error Block 11 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [63] 44. Error Block 9 start (CF ANALYSIS FAILED)
	warn(module_2_upvr.FormatOutput("Missing response for request '%*'", "NetworkRequestUtility", nil, arg1.Id))
	-- KONSTANTERROR: [63] 44. Error Block 9 end (CF ANALYSIS FAILED)
end
return module_4