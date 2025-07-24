-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:25:38
-- Luau version 6, Types version 3
-- Time taken: 0.001105 seconds

local Parent_2 = script.Parent.Parent.Parent
local Parent = Parent_2.Parent
local Types = Parent_2.Types
local Rodux_upvr = require(Parent.Rodux)
local module_upvr = {}
local DeviceContactsReceived_upvr = require(Parent_2.Actions).DeviceContactsReceived
local Dash_upvr = require(Parent.Dash)
local DeviceContact_upvr = require(Parent_2.Models.DeviceContact)
return function(arg1) -- Line 14
	--[[ Upvalues[5]:
		[1]: Rodux_upvr (readonly)
		[2]: module_upvr (readonly)
		[3]: DeviceContactsReceived_upvr (readonly)
		[4]: Dash_upvr (readonly)
		[5]: DeviceContact_upvr (readonly)
	]]
	return Rodux_upvr.createReducer(module_upvr, {
		[DeviceContactsReceived_upvr.name] = function(arg1_2, arg2) -- Line 16
			--[[ Upvalues[2]:
				[1]: Dash_upvr (copied, readonly)
				[2]: DeviceContact_upvr (copied, readonly)
			]]
			local module_upvr_2 = {}
			Dash_upvr.forEach(arg2.payload, function(arg1_3) -- Line 22
				--[[ Upvalues[2]:
					[1]: DeviceContact_upvr (copied, readonly)
					[2]: module_upvr_2 (readonly)
				]]
				local any_formatFromDevice_result1 = DeviceContact_upvr.formatFromDevice(arg1_3)
				module_upvr_2[any_formatFromDevice_result1.id] = any_formatFromDevice_result1
			end)
			return module_upvr_2
		end;
	})
end