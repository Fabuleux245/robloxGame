-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:06:59
-- Luau version 6, Types version 3
-- Time taken: 0.003283 seconds

local module_4_upvr = {}
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Modules = ReplicatedStorage:WaitForChild("Modules")
local module_5_upvr = require(Modules:WaitForChild("Enemies"))
local tbl_upvr = {
	Ids_ById = {};
	PendingClaims_ByEnemyId = {};
}
for i in module_5_upvr.Data_ById do
	tbl_upvr.Ids_ById[i] = {}
	tbl_upvr.PendingClaims_ByEnemyId[i] = {}
end
local function ProcessResponse_upvr(arg1) -- Line 37, Named "ProcessResponse"
	--[[ Upvalues[1]:
		[1]: tbl_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [35] 25. Error Block 5 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [35] 25. Error Block 5 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [13] 11. Error Block 2 start (CF ANALYSIS FAILED)
	-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [35.8]
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	-- KONSTANTERROR: [13] 11. Error Block 2 end (CF ANALYSIS FAILED)
end
function module_4_upvr.ClaimIdsProcess(arg1) -- Line 65
	--[[ Upvalues[2]:
		[1]: module_5_upvr (readonly)
		[2]: tbl_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [148] 115. Error Block 17 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [148] 115. Error Block 17 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [1] 2. Error Block 2 start (CF ANALYSIS FAILED)
	-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [148.65666]
	-- KONSTANTERROR: [1] 2. Error Block 2 end (CF ANALYSIS FAILED)
end
local module_2_upvr = require(Modules:WaitForChild("NetworkRequestUtility"))
local module_6_upvr = require(ReplicatedStorage:WaitForChild("CommonData"))
function module_4_upvr.ClaimKill(arg1) -- Line 149
	--[[ Upvalues[4]:
		[1]: tbl_upvr (readonly)
		[2]: module_2_upvr (readonly)
		[3]: module_6_upvr (readonly)
		[4]: ProcessResponse_upvr (readonly)
	]]
	local var10 = tbl_upvr.PendingClaims_ByEnemyId[arg1.Id]
	if 10 <= #var10 then
		warn("TOO MANY REQUESTS: "..(#var10))
		return false
	end
	local module = {
		Thread = coroutine.running();
	}
	var10[#var10 + 1] = module
	local popped = table.remove(tbl_upvr.Ids_ById[arg1.Id], 1)
	if not popped then
		popped = coroutine.yield()
	end
	module.ClaimId = popped
	assert(module.ClaimId, "Missing ClaimId")
	module.Response = module_2_upvr.MakeRequest({
		Request = module_6_upvr.StateRequestType.EnemyState;
		Args = {arg1.Id, module.ClaimId};
		Callback = ProcessResponse_upvr;
	})
	assert(module.Response)
	local yield = coroutine.yield
	yield()
	if module.Response.Response ~= module_6_upvr.ResponseType.Success then
		yield = false
	else
		yield = true
	end
	return yield, table.unpack(module.Response.Args)
end
local function RunClaimKillAsync_upvr(arg1, arg2) -- Line 189, Named "RunClaimKillAsync"
	--[[ Upvalues[1]:
		[1]: module_4_upvr (readonly)
	]]
	arg1(arg2, module_4_upvr.ClaimKill(arg2))
end
local module_3_upvr = require(Modules:WaitForChild("Utility"))
function module_4_upvr.ClaimKillAsync(arg1, arg2) -- Line 197
	--[[ Upvalues[2]:
		[1]: module_3_upvr (readonly)
		[2]: RunClaimKillAsync_upvr (readonly)
	]]
	module_3_upvr.RunFunction(RunClaimKillAsync_upvr, arg1, arg2)
end
return module_4_upvr