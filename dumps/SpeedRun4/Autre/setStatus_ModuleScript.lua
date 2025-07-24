-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:03:35
-- Luau version 6, Types version 3
-- Time taken: 0.001434 seconds

local buildActionName_upvr = require(script.Parent.buildActionName)
local EnumNetworkStatus_upvr = require(script.Parent.EnumNetworkStatus)
local Promise_upvr = require(script.Parent.Promise)
return function(arg1) -- Line 5
	--[[ Upvalues[3]:
		[1]: buildActionName_upvr (readonly)
		[2]: EnumNetworkStatus_upvr (readonly)
		[3]: Promise_upvr (readonly)
	]]
	local function _(arg1_2, arg2, arg3) -- Line 8, Named "actionCreator"
		--[[ Upvalues[2]:
			[1]: buildActionName_upvr (copied, readonly)
			[2]: arg1 (readonly)
		]]
		local module = {}
		module.ids = arg1_2
		module.keymapper = arg2
		module.status = arg3
		module.type = buildActionName_upvr(arg1)
		return module
	end
	local var6_upvr = require(script.Parent.getStatus)(arg1)
	local function filter_upvr(arg1_3, arg2, arg3) -- Line 17, Named "filter"
		--[[ Upvalues[2]:
			[1]: var6_upvr (readonly)
			[2]: EnumNetworkStatus_upvr (copied, readonly)
		]]
		for _, v in ipairs(arg2) do
			if var6_upvr(arg1_3, arg3(v)) ~= EnumNetworkStatus_upvr.Fetching then
				table.insert({}, v)
			end
		end
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		return {}
	end
	return function(arg1_4, arg2, arg3, arg4) -- Line 28
		--[[ Upvalues[5]:
			[1]: filter_upvr (readonly)
			[2]: arg1 (readonly)
			[3]: Promise_upvr (copied, readonly)
			[4]: EnumNetworkStatus_upvr (copied, readonly)
			[5]: buildActionName_upvr (copied, readonly)
		]]
		local filter_result1_upvr = filter_upvr(arg1_4:getState(), arg2, arg3)
		if arg1.killRequestWithFilteredIds and 0 < #arg2 and #filter_result1_upvr == 0 then
			return Promise_upvr.reject("Request with provided IDs already fetching.")
		end
		local tbl_3 = {
			ids = filter_result1_upvr;
		}
		tbl_3.keymapper = arg3
		tbl_3.status = EnumNetworkStatus_upvr.Fetching
		tbl_3.type = buildActionName_upvr(arg1)
		arg1_4:dispatch(tbl_3)
		return arg4(arg1_4, filter_result1_upvr):andThen(function(arg1_5) -- Line 38
			--[[ Upvalues[6]:
				[1]: arg1_4 (readonly)
				[2]: filter_result1_upvr (readonly)
				[3]: arg3 (readonly)
				[4]: EnumNetworkStatus_upvr (copied, readonly)
				[5]: buildActionName_upvr (copied, readonly)
				[6]: arg1 (copied, readonly)
			]]
			local tbl_2 = {
				ids = filter_result1_upvr;
			}
			tbl_2.keymapper = arg3
			tbl_2.status = EnumNetworkStatus_upvr.Done
			tbl_2.type = buildActionName_upvr(arg1)
			arg1_4:dispatch(tbl_2)
			return arg1_5
		end, function(arg1_6) -- Line 41
			--[[ Upvalues[7]:
				[1]: arg1_4 (readonly)
				[2]: filter_result1_upvr (readonly)
				[3]: arg3 (readonly)
				[4]: EnumNetworkStatus_upvr (copied, readonly)
				[5]: buildActionName_upvr (copied, readonly)
				[6]: arg1 (copied, readonly)
				[7]: Promise_upvr (copied, readonly)
			]]
			local tbl = {
				ids = filter_result1_upvr;
			}
			tbl.keymapper = arg3
			tbl.status = EnumNetworkStatus_upvr.Failed
			tbl.type = buildActionName_upvr(arg1)
			arg1_4:dispatch(tbl)
			return Promise_upvr.reject(arg1_6)
		end)
	end
end