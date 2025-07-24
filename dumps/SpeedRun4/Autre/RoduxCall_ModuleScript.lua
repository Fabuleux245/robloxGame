-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:01:57
-- Luau version 6, Types version 3
-- Time taken: 0.000727 seconds

local Parent = script.Parent
local module = {}
local Cryo_upvr = require(Parent.Cryo)
local NetworkingCall_upvr = require(Parent.NetworkingCall)
local RoduxNetworking_upvr = require(Parent.RoduxNetworking)
local Reducers_upvr = require(script.Reducers)
local Actions_upvr = require(script.Actions)
local Enums_upvr = require(script.Enums)
local Models_upvr = require(script.Models)
function module.config(arg1) -- Line 12
	--[[ Upvalues[7]:
		[1]: Cryo_upvr (readonly)
		[2]: NetworkingCall_upvr (readonly)
		[3]: RoduxNetworking_upvr (readonly)
		[4]: Reducers_upvr (readonly)
		[5]: Actions_upvr (readonly)
		[6]: Enums_upvr (readonly)
		[7]: Models_upvr (readonly)
	]]
	local module_2 = {}
	local any_join_result1_upvw = Cryo_upvr.Dictionary.join(arg1, {
		NetworkingCall = NetworkingCall_upvr.config({
			roduxNetworking = RoduxNetworking_upvr.mock();
		});
	})
	function module_2.installReducer() -- Line 20
		--[[ Upvalues[2]:
			[1]: Reducers_upvr (copied, readonly)
			[2]: any_join_result1_upvw (read and write)
		]]
		return Reducers_upvr(any_join_result1_upvw)
	end
	module_2.Actions = Actions_upvr
	module_2.Enums = Enums_upvr
	module_2.Models = Models_upvr
	return module_2
end
return module