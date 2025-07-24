-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:04:06
-- Luau version 6, Types version 3
-- Time taken: 0.001120 seconds

local Parent = script.Parent
local module_2 = {}
local Dash_upvr = require(Parent.Dash)
local NetworkingUserSettings_upvr = require(Parent.NetworkingUserSettings)
local RoduxNetworking_upvr = require(Parent.RoduxNetworking)
local NetworkingAccountInformation_upvr = require(Parent.NetworkingAccountInformation)
local UserPermissionsReducer_upvr = require(script.Reducers.UserPermissionsReducer)
function module_2.config(arg1) -- Line 9
	--[[ Upvalues[5]:
		[1]: Dash_upvr (readonly)
		[2]: NetworkingUserSettings_upvr (readonly)
		[3]: RoduxNetworking_upvr (readonly)
		[4]: NetworkingAccountInformation_upvr (readonly)
		[5]: UserPermissionsReducer_upvr (readonly)
	]]
	local module = {}
	local any_join_result1_upvw = Dash_upvr.join(arg1, {
		networkingUserSettings = NetworkingUserSettings_upvr.config({
			roduxNetworking = RoduxNetworking_upvr.mock();
		});
		networkingAccountInformation = NetworkingAccountInformation_upvr.config({
			roduxNetworking = RoduxNetworking_upvr.mock();
		});
	})
	function module.installReducer() -- Line 20
		--[[ Upvalues[2]:
			[1]: UserPermissionsReducer_upvr (copied, readonly)
			[2]: any_join_result1_upvw (read and write)
		]]
		return UserPermissionsReducer_upvr(any_join_result1_upvw)
	end
	return module
end
return module_2