-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:36:04
-- Luau version 6, Types version 3
-- Time taken: 0.002355 seconds

local VirtualEvents = script:FindFirstAncestor("VirtualEvents")
local Rodux_upvr = require(VirtualEvents.Parent.Rodux)
local VirtualEventModel_upvr = require(VirtualEvents.network).NetworkingVirtualEvents.VirtualEventModel
local logger_upvr = require(VirtualEvents.logger)
local Cryo_upvr = require(VirtualEvents.Parent.Cryo)
return function(arg1) -- Line 14
	--[[ Upvalues[4]:
		[1]: Rodux_upvr (readonly)
		[2]: VirtualEventModel_upvr (readonly)
		[3]: logger_upvr (readonly)
		[4]: Cryo_upvr (readonly)
	]]
	return Rodux_upvr.createReducer({}, {
		[arg1.GetActiveVirtualEvents.Succeeded.name] = function(arg1_2, arg2) -- Line 16
			--[[ Upvalues[2]:
				[1]: VirtualEventModel_upvr (copied, readonly)
				[2]: logger_upvr (copied, readonly)
			]]
			for _, v in arg2.responseBody.data do
				local any_fromResponse_result1 = VirtualEventModel_upvr.fromResponse(v)
				if any_fromResponse_result1 then
					if any_fromResponse_result1.eventTime.startTime and any_fromResponse_result1.eventTime.endTime then
						({})[v.id] = any_fromResponse_result1
					else
						logger_upvr:debug("Discarding VirtualEvent with ID {} (malformed start or end time)", v.id)
					end
				end
			end
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect
			return {}
		end;
		[arg1.GetActiveVirtualEvents.Failed.name] = function(arg1_3, arg2) -- Line 34
			return {}
		end;
		[arg1.GetVirtualEvent.Succeeded.name] = function(arg1_4, arg2) -- Line 38
			--[[ Upvalues[2]:
				[1]: VirtualEventModel_upvr (copied, readonly)
				[2]: Cryo_upvr (copied, readonly)
			]]
			local module = {}
			local any_fromResponse_result1_2 = VirtualEventModel_upvr.fromResponse(arg2.responseBody)
			if any_fromResponse_result1_2 then
				module[any_fromResponse_result1_2.id] = any_fromResponse_result1_2
			end
			return Cryo_upvr.Dictionary.join(arg1_4, module)
		end;
		[arg1.GetVirtualEvent.Failed.name] = function(arg1_5, arg2) -- Line 49
			return arg1_5
		end;
		[arg1.UpdateMyRsvpStatus.Succeeded.name] = function(arg1_6, arg2) -- Line 53
			--[[ Upvalues[1]:
				[1]: Cryo_upvr (copied, readonly)
			]]
			local _1 = arg2.ids[1]
			local var19 = arg1_6[_1]
			if var19 then
				return Cryo_upvr.Dictionary.join(arg1_6, {
					[_1] = Cryo_upvr.Dictionary.join(var19, {
						userRsvpStatus = arg2.postBody.rsvpStatus;
					});
				})
			end
			return arg1_6
		end;
	})
end