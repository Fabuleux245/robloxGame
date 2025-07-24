-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:43:48
-- Luau version 6, Types version 3
-- Time taken: 0.002523 seconds

local HttpService_upvr = game:GetService("HttpService")
local dependencies = require(script:FindFirstAncestor("Squads").dependencies)
local Cryo_upvr = dependencies.Cryo
local function encodeInvitees_upvr(arg1) -- Line 9, Named "encodeInvitees"
	--[[ Upvalues[2]:
		[1]: Cryo_upvr (readonly)
		[2]: HttpService_upvr (readonly)
	]]
	local any_map_result1_upvr = Cryo_upvr.List.map(arg1, function(arg1_2) -- Line 10
		return tonumber(arg1_2)
	end)
	local pcall_result1_2, pcall_result2_2 = pcall(function() -- Line 14
		--[[ Upvalues[2]:
			[1]: HttpService_upvr (copied, readonly)
			[2]: any_map_result1_upvr (readonly)
		]]
		return HttpService_upvr:JSONEncode(any_map_result1_upvr)
	end)
	if pcall_result1_2 then
		return pcall_result2_2
	end
	return "[]"
end
local NetworkingSquads_upvr = dependencies.NetworkingSquads
return function(arg1, arg2, arg3, arg4, arg5, arg6) -- Line 25
	--[[ Upvalues[3]:
		[1]: NetworkingSquads_upvr (readonly)
		[2]: encodeInvitees_upvr (readonly)
		[3]: HttpService_upvr (readonly)
	]]
	return function(arg1_3) -- Line 33
		--[[ Upvalues[9]:
			[1]: NetworkingSquads_upvr (copied, readonly)
			[2]: arg1 (readonly)
			[3]: arg2 (readonly)
			[4]: arg4 (readonly)
			[5]: arg6 (readonly)
			[6]: encodeInvitees_upvr (copied, readonly)
			[7]: arg5 (readonly)
			[8]: arg3 (readonly)
			[9]: HttpService_upvr (copied, readonly)
		]]
		local module = {}
		module.squadId = arg1
		module.parentChannelId = arg2
		module.invitedUserIds = arg4
		module.isReparented = arg6
		return arg1_3:dispatch(NetworkingSquads_upvr.SquadInvite.API(module)):andThen(function() -- Line 41
			--[[ Upvalues[4]:
				[1]: encodeInvitees_upvr (copied, readonly)
				[2]: arg4 (copied, readonly)
				[3]: arg5 (copied, readonly)
				[4]: arg3 (copied, readonly)
			]]
			arg5({
				isSuccess = true;
				inviteeUserIds = encodeInvitees_upvr(arg4);
				inviteeCount = #arg4;
				userId = tonumber(arg3);
			})
		end):catch(function(arg1_4) -- Line 51
			--[[ Upvalues[5]:
				[1]: HttpService_upvr (copied, readonly)
				[2]: encodeInvitees_upvr (copied, readonly)
				[3]: arg4 (copied, readonly)
				[4]: arg5 (copied, readonly)
				[5]: arg3 (copied, readonly)
			]]
			-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
			local Body_upvr = arg1_4.Body
			local pcall_result1, pcall_result2 = pcall(function() -- Line 53
				--[[ Upvalues[2]:
					[1]: HttpService_upvr (copied, readonly)
					[2]: Body_upvr (readonly)
				]]
				return HttpService_upvr:JSONDecode(Body_upvr)
			end)
			local var20
			if pcall_result1 then
				var20 = pcall_result2.errorType
			else
				var20 = nil
			end
			local tbl = {
				isSuccess = false;
				errorMessage = var20;
			}
			if arg1_4.StatusCode then
			else
			end
			tbl.errorType = nil
			tbl.inviteeUserIds = encodeInvitees_upvr(arg4)
			tbl.inviteeCount = #arg4
			tbl.userId = tonumber(arg3)
			arg5(tbl)
		end)
	end
end