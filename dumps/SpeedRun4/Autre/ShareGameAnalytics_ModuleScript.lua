-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:06:22
-- Luau version 6, Types version 3
-- Time taken: 0.002022 seconds

local module_upvr = {}
module_upvr.__index = module_upvr
module_upvr.ButtonName = {
	LuaChatInputBar = "luaChatInputBar";
	LuaGameDetails = "luaGameDetails";
}
module_upvr.EventName = {
	InviteSent = "inputShareGameInviteSent";
	EntryPoint = "inputShareGameEntryPoint";
}
module_upvr.DiagCounters = {
	EntryPoint = {
		[module_upvr.ButtonName.LuaChatInputBar] = game:DefineFastString("LuaShareGameLuaChatInputBarEntryCounter", "LuaShareGameLuaChatInputBarEntryCounter");
		[module_upvr.ButtonName.LuaGameDetails] = game:DefineFastString("LuaShareGameLuaGameDetailsEntryCounter", "LuaShareGameLuaGameDetailsEntryCounter");
	};
	InviteSent = {
		[module_upvr.ButtonName.LuaChatInputBar] = game:DefineFastString("LuaShareGameLuaChatInputBarInviteCounter", "LuaShareGameLuaChatInputBarInviteCounter");
		[module_upvr.ButtonName.LuaGameDetails] = game:DefineFastString("LuaShareGameLuaGameDetailsInviteCounter", "LuaShareGameLuaGameDetailsInviteCounter");
	};
}
function module_upvr.new(arg1, arg2, arg3) -- Line 38
	--[[ Upvalues[1]:
		[1]: module_upvr (readonly)
	]]
	assert(arg1, "EventStream implementation not found.")
	assert(arg2, "Diag implementation not found.")
	assert(arg3, "ButtonName not found.")
	local module = {}
	module._eventStreamImpl = arg1
	module._diagImpl = arg2
	module._buttonName = arg3
	return setmetatable(module, module_upvr)
end
function module_upvr.onActivatedInviteSent(arg1, arg2, arg3, arg4, arg5, arg6) -- Line 50
	--[[ Upvalues[1]:
		[1]: module_upvr (readonly)
	]]
	local tbl = {
		btn = arg1:_getButtonName();
		placeId = tostring(arg2);
		gameId = tostring(arg3);
	}
	tbl.senderId = arg4
	tbl.conversationId = tostring(arg5)
	tbl.participants = table.concat(arg6, ',')
	arg1:_getEventStream():setRBXEventStream("touch", module_upvr.EventName.InviteSent, tbl)
	local var9 = module_upvr.DiagCounters.InviteSent[arg1:_getButtonName()]
	if var9 then
		arg1:_getDiag():reportCounter(var9, 1)
	end
end
function module_upvr.inputShareGameEntryPoint(arg1, arg2, arg3) -- Line 71
	--[[ Upvalues[1]:
		[1]: module_upvr (readonly)
	]]
	local tbl_2 = {
		btn = arg1:_getButtonName();
	}
	local var11 = arg2
	if var11 then
		var11 = tostring(arg2)
	end
	tbl_2.placeId = var11
	var11 = arg3
	local var12 = var11
	if var12 then
		var12 = tostring(arg3)
	end
	tbl_2.gameId = var12
	arg1:_getEventStream():setRBXEventStream("touch", module_upvr.EventName.EntryPoint, tbl_2)
	local var13 = module_upvr.DiagCounters.EntryPoint[arg1:_getButtonName()]
	if var13 then
		arg1:_getDiag():reportCounter(var13, 1)
	end
end
function module_upvr._getEventStream(arg1) -- Line 89
	return arg1._eventStreamImpl
end
function module_upvr._getDiag(arg1) -- Line 93
	return arg1._diagImpl
end
function module_upvr._getButtonName(arg1) -- Line 97
	return arg1._buttonName
end
return module_upvr