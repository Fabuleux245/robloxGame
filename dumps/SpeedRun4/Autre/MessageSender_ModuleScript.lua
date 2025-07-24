-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:57:44
-- Luau version 6, Types version 3
-- Time taken: 0.000749 seconds

local module = {}
local tbl_upvr = {}
tbl_upvr.__index = tbl_upvr
function tbl_upvr.SendMessage(arg1, arg2, arg3) -- Line 15
	arg1.SayMessageRequest:FireServer(arg2, arg3)
end
function tbl_upvr.RegisterSayMessageFunction(arg1, arg2) -- Line 19
	arg1.SayMessageRequest = arg2
end
function module.new() -- Line 26
	--[[ Upvalues[1]:
		[1]: tbl_upvr (readonly)
	]]
	local setmetatable_result1 = setmetatable({}, tbl_upvr)
	setmetatable_result1.SayMessageRequest = nil
	return setmetatable_result1
end
return module.new()