-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:09:48
-- Luau version 6, Types version 3
-- Time taken: 0.002130 seconds

local Http = script:FindFirstAncestor("Http")
local BatchUpdateFetchingStatus_upvr = require(Http.Actions).BatchUpdateFetchingStatus
local UpdateFetchingStatus_upvr = require(Http.Actions).UpdateFetchingStatus
return function(arg1) -- Line 5, Named "createPerformFetchMiddleware"
	--[[ Upvalues[2]:
		[1]: BatchUpdateFetchingStatus_upvr (readonly)
		[2]: UpdateFetchingStatus_upvr (readonly)
	]]
	local var5_upvw = false
	local var6_upvr = arg1 or 0
	local tbl_upvw = {}
	return function(arg1_2, arg2) -- Line 10
		--[[ Upvalues[5]:
			[1]: var5_upvw (read and write)
			[2]: var6_upvr (readonly)
			[3]: tbl_upvw (read and write)
			[4]: BatchUpdateFetchingStatus_upvr (copied, readonly)
			[5]: UpdateFetchingStatus_upvr (copied, readonly)
		]]
		local function _() -- Line 11, Named "runBatchDispatcher"
			--[[ Upvalues[5]:
				[1]: var5_upvw (copied, read and write)
				[2]: var6_upvr (copied, readonly)
				[3]: tbl_upvw (copied, read and write)
				[4]: arg2 (readonly)
				[5]: BatchUpdateFetchingStatus_upvr (copied, readonly)
			]]
			if var5_upvw then
			else
				var5_upvw = true
				task.delay(var6_upvr, function() -- Line 17
					--[[ Upvalues[4]:
						[1]: tbl_upvw (copied, read and write)
						[2]: var5_upvw (copied, read and write)
						[3]: arg2 (copied, readonly)
						[4]: BatchUpdateFetchingStatus_upvr (copied, readonly)
					]]
					tbl_upvw = {}
					var5_upvw = false
					arg2:dispatch(BatchUpdateFetchingStatus_upvr(tbl_upvw, true))
				end)
			end
		end
		return function(arg1_3) -- Line 26
			--[[ Upvalues[7]:
				[1]: UpdateFetchingStatus_upvr (copied, readonly)
				[2]: tbl_upvw (copied, read and write)
				[3]: var5_upvw (copied, read and write)
				[4]: var6_upvr (copied, readonly)
				[5]: arg2 (readonly)
				[6]: BatchUpdateFetchingStatus_upvr (copied, readonly)
				[7]: arg1_2 (readonly)
			]]
			if arg1_3.type == UpdateFetchingStatus_upvr.name then
				table.insert(tbl_upvw, arg1_3)
				if var5_upvw then
				else
					var5_upvw = true
					task.delay(var6_upvr, function() -- Line 17
						--[[ Upvalues[4]:
							[1]: tbl_upvw (copied, read and write)
							[2]: var5_upvw (copied, read and write)
							[3]: arg2 (copied, readonly)
							[4]: BatchUpdateFetchingStatus_upvr (copied, readonly)
						]]
						tbl_upvw = {}
						var5_upvw = false
						arg2:dispatch(BatchUpdateFetchingStatus_upvr(tbl_upvw, true))
					end)
				end
			elseif arg1_3.type == BatchUpdateFetchingStatus_upvr.name and not arg1_3.shouldImmediatelyDispatch then
				for _, v in pairs(arg1_3.fetchingStatuses) do
					table.insert(tbl_upvw, v)
				end
				if var5_upvw then
				else
					var5_upvw = true
					task.delay(var6_upvr, function() -- Line 17
						--[[ Upvalues[4]:
							[1]: tbl_upvw (copied, read and write)
							[2]: var5_upvw (copied, read and write)
							[3]: arg2 (copied, readonly)
							[4]: BatchUpdateFetchingStatus_upvr (copied, readonly)
						]]
						tbl_upvw = {}
						var5_upvw = false
						arg2:dispatch(BatchUpdateFetchingStatus_upvr(tbl_upvw, true))
					end)
				end
			else
				return arg1_2(arg1_3)
			end
			return nil
		end
	end
end