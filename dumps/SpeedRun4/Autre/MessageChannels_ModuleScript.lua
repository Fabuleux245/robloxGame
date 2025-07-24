-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:53:43
-- Luau version 6, Types version 3
-- Time taken: 0.001209 seconds

local module = {}
local MessageModel_upvr = require(script.Parent.MessageModel)
local DateTime_upvr = require(script:FindFirstAncestor("AppChat").Parent.Time).DateTime
function module.responseUser(arg1) -- Line 13
	--[[ Upvalues[2]:
		[1]: MessageModel_upvr (readonly)
		[2]: DateTime_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 50 start (CF ANALYSIS FAILED)
	local tbl_2 = {}
	local var6
	if arg1.id then
		var6 = arg1.id
	else
		var6 = "message-id"
	end
	tbl_2.id = var6
	var6 = MessageModel_upvr.SenderTypes.User
	tbl_2.type = var6
	if arg1.sender_user_id then
		var6 = arg1.sender_user_id
		-- KONSTANTWARNING: GOTO [24] #17
	end
	-- KONSTANTERROR: [0] 1. Error Block 50 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [23] 16. Error Block 55 start (CF ANALYSIS FAILED)
	var6 = 1
	tbl_2.sender_user_id = var6
	if arg1.sent then
		var6 = arg1.sent
		-- KONSTANTWARNING: GOTO [37] #26
	end
	-- KONSTANTERROR: [23] 16. Error Block 55 end (CF ANALYSIS FAILED)
end
function module.responseSystem(arg1) -- Line 40
	-- KONSTANTERROR: [0] 1. Error Block 26 start (CF ANALYSIS FAILED)
	local tbl = {}
	local var8
	if arg1.id then
		var8 = arg1.id
	else
		var8 = "message-id"
	end
	tbl.id = var8
	var8 = "system"
	tbl.type = var8
	if arg1.sent then
		var8 = arg1.sent
		-- KONSTANTWARNING: GOTO [20] #15
	end
	-- KONSTANTERROR: [0] 1. Error Block 26 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [19] 14. Error Block 29 start (CF ANALYSIS FAILED)
	var8 = "2021-01-01T00:00:00Z"
	tbl.sent = var8
	if arg1.content then
		var8 = arg1.content
		-- KONSTANTWARNING: GOTO [29] #21
	end
	-- KONSTANTERROR: [19] 14. Error Block 29 end (CF ANALYSIS FAILED)
end
return module