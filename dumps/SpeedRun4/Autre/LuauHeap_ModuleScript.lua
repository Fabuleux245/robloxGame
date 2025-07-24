-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:01:59
-- Luau version 6, Types version 3
-- Time taken: 0.002291 seconds

local Actions = script.Parent.Parent.Actions
local tbl_upvr = {
	isClientView = true;
	client = {
		snapshots = {};
		active = 0;
		compare = 0;
	};
	server = {
		snapshots = {};
		active = 0;
		compare = 0;
	};
}
local SetLuauHeapState_upvr = require(Actions.SetLuauHeapState)
local Immutable_upvr = require(script.Parent.Parent.Immutable)
local SetLuauHeapProfileTarget_upvr = require(Actions.SetLuauHeapProfileTarget)
local SetLuauHeapActiveSnapshot_upvr = require(Actions.SetLuauHeapActiveSnapshot)
local SetLuauHeapCompareSnapshot_upvr = require(Actions.SetLuauHeapCompareSnapshot)
return function(arg1, arg2) -- Line 33
	--[[ Upvalues[6]:
		[1]: tbl_upvr (readonly)
		[2]: SetLuauHeapState_upvr (readonly)
		[3]: Immutable_upvr (readonly)
		[4]: SetLuauHeapProfileTarget_upvr (readonly)
		[5]: SetLuauHeapActiveSnapshot_upvr (readonly)
		[6]: SetLuauHeapCompareSnapshot_upvr (readonly)
	]]
	local var11
	if not var11 then
		var11 = tbl_upvr
	end
	local type = arg2.type
	if type == SetLuauHeapState_upvr.name then
		if arg2.isClientState then
			type = {}
			type.client = arg2.sessionState
		else
			type = {}
			type.server = arg2.sessionState
		end
		return Immutable_upvr.JoinDictionaries(var11, type)
	end
	if arg2.type == SetLuauHeapProfileTarget_upvr.name then
		return Immutable_upvr.JoinDictionaries(var11, {
			isClientView = arg2.isClientView;
		})
	end
	if arg2.type == SetLuauHeapActiveSnapshot_upvr.name then
		if var11.isClientView then
			local clone_4 = table.clone(var11.client)
			clone_4.active = arg2.active
			return Immutable_upvr.JoinDictionaries(var11, {
				client = clone_4;
			})
		end
		local clone = table.clone(var11.server)
		clone.active = arg2.active
		return Immutable_upvr.JoinDictionaries(var11, {
			server = clone;
		})
	end
	if arg2.type == SetLuauHeapCompareSnapshot_upvr.name then
		if var11.isClientView then
			local clone_3 = table.clone(var11.client)
			clone_3.compare = arg2.compare
			return Immutable_upvr.JoinDictionaries(var11, {
				client = clone_3;
			})
		end
		local clone_2 = table.clone(var11.server)
		clone_2.compare = arg2.compare
		return Immutable_upvr.JoinDictionaries(var11, {
			server = clone_2;
		})
	end
	return var11
end