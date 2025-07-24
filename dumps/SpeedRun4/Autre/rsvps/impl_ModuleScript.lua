-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:36:07
-- Luau version 6, Types version 3
-- Time taken: 0.002686 seconds

local VirtualEvents = script:FindFirstAncestor("VirtualEvents")
local Rodux_upvr = require(VirtualEvents.Parent.Rodux)
local Cryo_upvr = require(VirtualEvents.Parent.Cryo)
return function(arg1, arg2) -- Line 31
	--[[ Upvalues[2]:
		[1]: Rodux_upvr (readonly)
		[2]: Cryo_upvr (readonly)
	]]
	return Rodux_upvr.combineReducers({
		page = Rodux_upvr.createReducer({
			nextPageCursor = nil;
			prevPageCursor = nil;
		}, {
			[arg1.GetVirtualEventRsvps.Succeeded.name] = function(arg1_2, arg2_2) -- Line 36
				return {
					nextPageCursor = arg2_2.responseBody.nextPageCursor;
					prevPageCursor = arg2_2.responseBody.prevPageCursor;
				}
			end;
		});
		counters = Rodux_upvr.createReducer({}, {
			[arg1.GetVirtualEventRsvpCounts.Succeeded.name] = function(arg1_3, arg2_3) -- Line 45
				--[[ Upvalues[1]:
					[1]: Cryo_upvr (copied, readonly)
				]]
				return Cryo_upvr.Dictionary.join(arg1_3, {
					[arg2_3.ids[1]] = arg2_3.responseBody.counters;
				})
			end;
			[arg1.GetVirtualEventRsvpCounts.Failed.name] = function(arg1_4, arg2_4) -- Line 53
				return arg1_4
			end;
			[arg1.UpdateMyRsvpStatus.Succeeded.name] = function(arg1_5, arg2_5) -- Line 57
				--[[ Upvalues[1]:
					[1]: Cryo_upvr (copied, readonly)
				]]
				local _1_3 = arg2_5.ids[1]
				local var15 = arg1_5[_1_3]
				if var15 then
					local rsvpStatus = arg2_5.postBody.rsvpStatus
					local var17 = 0
					if rsvpStatus == "going" then
						var17 = 1
					elseif rsvpStatus == "notGoing" then
						var17 = -1
					end
					return Cryo_upvr.Dictionary.join(arg1_5, {
						[_1_3] = Cryo_upvr.Dictionary.join(var15, {
							going = math.clamp(var15.going + var17, 0, math.huge);
						});
					})
				end
				return arg1_5
			end;
			[arg1.UpdateMyRsvpStatus.Failed.name] = function(arg1_6, arg2_6) -- Line 88
				return arg1_6
			end;
		});
		byVirtualEventId = Rodux_upvr.createReducer({}, {
			[arg1.GetVirtualEventRsvps.Succeeded.name] = function(arg1_7, arg2_7) -- Line 94
				--[[ Upvalues[1]:
					[1]: Cryo_upvr (copied, readonly)
				]]
				local _1_2 = arg2_7.ids[1]
				local tbl = {}
				for _, v in arg2_7.responseBody.data do
					tbl[tostring(v.userId)] = v
				end
				local module = {}
				local var30 = arg1_7[_1_2]
				if not var30 then
					var30 = {}
				end
				module[_1_2] = Cryo_upvr.Dictionary.join(var30, tbl)
				return Cryo_upvr.Dictionary.join(arg1_7, module)
			end;
			[arg1.GetVirtualEventRsvps.Failed.name] = function(arg1_8, arg2_8) -- Line 107
				return arg1_8
			end;
			[arg1.UpdateMyRsvpStatus.Succeeded.name] = function(arg1_9, arg2_9) -- Line 111
				--[[ Upvalues[2]:
					[1]: arg2 (readonly)
					[2]: Cryo_upvr (copied, readonly)
				]]
				local ids = arg2_9.ids
				local _1 = ids[1]
				if arg2.LocalPlayer then
					ids = arg2.LocalPlayer.UserId
				else
					ids = -1
				end
				local module_2 = {}
				local var38 = arg1_9[_1]
				if not var38 then
					var38 = {}
				end
				module_2[_1] = Cryo_upvr.Dictionary.join(var38, {
					[tostring(ids)] = {
						userId = ids;
						rsvpStatus = arg2_9.postBody.rsvpStatus;
					};
				})
				return Cryo_upvr.Dictionary.join(arg1_9, module_2)
			end;
			[arg1.UpdateMyRsvpStatus.Failed.name] = function(arg1_10, arg2_10) -- Line 127
				return arg1_10
			end;
		});
	})
end