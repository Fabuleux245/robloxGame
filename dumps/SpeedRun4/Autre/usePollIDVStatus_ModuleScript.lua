-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:17:07
-- Luau version 6, Types version 3
-- Time taken: 0.003953 seconds

local AmpUpsell = script:FindFirstAncestor("AmpUpsell")
local Parent = AmpUpsell.Parent
local Enums = require(AmpUpsell.Common.Enums)
local IDVSessionStatusEnum_upvr = Enums.IDVSessionStatusEnum
local function _(arg1) -- Line 28, Named "isFailure"
	--[[ Upvalues[1]:
		[1]: IDVSessionStatusEnum_upvr (readonly)
	]]
	local var6 = true
	if arg1 ~= IDVSessionStatusEnum_upvr.RequiresManualReview then
		var6 = true
		if arg1 ~= IDVSessionStatusEnum_upvr.RequiresRetry then
			if arg1 ~= IDVSessionStatusEnum_upvr.Expired then
				var6 = false
			else
				var6 = true
			end
		end
	end
	return var6
end
local var7_upvr = require(AmpUpsell.Flags.GetFIntIDVMaxRetries)()
local var8_upvr = require(AmpUpsell.Flags.GetFIntIDVPollDelay)()
local React_upvr = require(Parent.React)
local IDVApiProvider_upvr = require(AmpUpsell.Common.IDVApiProvider)
local IDVSessionErrorEnum_upvr = Enums.IDVSessionErrorEnum
local Promise_upvr = require(Parent.Promise)
return function(arg1) -- Line 34, Named "usePollIDVStatus"
	--[[ Upvalues[7]:
		[1]: var7_upvr (readonly)
		[2]: var8_upvr (readonly)
		[3]: React_upvr (readonly)
		[4]: IDVSessionStatusEnum_upvr (readonly)
		[5]: IDVApiProvider_upvr (readonly)
		[6]: IDVSessionErrorEnum_upvr (readonly)
		[7]: Promise_upvr (readonly)
	]]
	local retries_upvr = arg1.retries
	if not retries_upvr then
		retries_upvr = var7_upvr
	end
	local delay_upvr = arg1.delay
	if not delay_upvr then
		delay_upvr = var8_upvr
	end
	local onStatusUpdate_upvr = arg1.onStatusUpdate
	local var17_upvw
	var17_upvw = React_upvr.useCallback(function(arg1_2, arg2, arg3, arg4) -- Line 41
		--[[ Upvalues[6]:
			[1]: IDVSessionStatusEnum_upvr (copied, readonly)
			[2]: IDVApiProvider_upvr (copied, readonly)
			[3]: onStatusUpdate_upvr (readonly)
			[4]: IDVSessionErrorEnum_upvr (copied, readonly)
			[5]: delay_upvr (readonly)
			[6]: var17_upvw (read and write)
		]]
		if arg2 == 0 then
			arg4({
				sessionStatus = IDVSessionStatusEnum_upvr.Expired;
			})
		else
			IDVApiProvider_upvr.getVerifiedStatus(arg1_2):andThen(function(arg1_3) -- Line 48
				--[[ Upvalues[9]:
					[1]: onStatusUpdate_upvr (copied, readonly)
					[2]: arg2 (readonly)
					[3]: IDVSessionStatusEnum_upvr (copied, readonly)
					[4]: IDVSessionErrorEnum_upvr (copied, readonly)
					[5]: arg4 (readonly)
					[6]: arg3 (readonly)
					[7]: delay_upvr (copied, readonly)
					[8]: var17_upvw (copied, read and write)
					[9]: arg1_2 (readonly)
				]]
				local sessionStatus_2 = arg1_3.sessionStatus
				if onStatusUpdate_upvr then
					local tbl = {
						sessionStatus = sessionStatus_2;
					}
					tbl.retriesLeft = arg2
					onStatusUpdate_upvr(tbl)
				end
				if arg1_3.isVerified and sessionStatus_2 == IDVSessionStatusEnum_upvr.Stored then
					if arg1_3.sessionErrorCode == IDVSessionErrorEnum_upvr.UnknownError and arg1_3.ageEstimationNextStep == nil then
						return arg4({
							sessionStatus = IDVSessionStatusEnum_upvr.Failure;
						})
					end
					return arg3()
				end
				local var29 = true
				if sessionStatus_2 ~= IDVSessionStatusEnum_upvr.RequiresManualReview then
					var29 = true
					if sessionStatus_2 ~= IDVSessionStatusEnum_upvr.RequiresRetry then
						if sessionStatus_2 ~= IDVSessionStatusEnum_upvr.Expired then
							var29 = false
						else
							var29 = true
						end
					end
				end
				if var29 then
					arg4({
						sessionStatus = sessionStatus_2;
					})
				else
					task.spawn(function() -- Line 68
						--[[ Upvalues[6]:
							[1]: delay_upvr (copied, readonly)
							[2]: var17_upvw (copied, read and write)
							[3]: arg1_2 (copied, readonly)
							[4]: arg2 (copied, readonly)
							[5]: arg3 (copied, readonly)
							[6]: arg4 (copied, readonly)
						]]
						task.wait(delay_upvr)
						if var17_upvw then
							var17_upvw(arg1_2, arg2 - 1, arg3, arg4)
						end
					end)
				end
			end):catch(function(arg1_4) -- Line 76
				--[[ Upvalues[2]:
					[1]: arg4 (readonly)
					[2]: IDVSessionStatusEnum_upvr (copied, readonly)
				]]
				arg4({
					sessionStatus = IDVSessionStatusEnum_upvr.RequiresRetry;
				})
			end)
		end
	end, {delay_upvr, onStatusUpdate_upvr})
	local var35_upvw = var17_upvw
	return React_upvr.useCallback(function(arg1_5) -- Line 81
		--[[ Upvalues[3]:
			[1]: Promise_upvr (copied, readonly)
			[2]: var35_upvw (read and write)
			[3]: retries_upvr (readonly)
		]]
		return Promise_upvr.new(function(arg1_6, arg2) -- Line 82
			--[[ Upvalues[3]:
				[1]: var35_upvw (copied, read and write)
				[2]: arg1_5 (readonly)
				[3]: retries_upvr (copied, readonly)
			]]
			var35_upvw(arg1_5, retries_upvr, arg1_6, arg2)
		end)
	end, {var35_upvw, retries_upvr}), React_upvr.useCallback(function() -- Line 87
		--[[ Upvalues[1]:
			[1]: var35_upvw (read and write)
		]]
		var35_upvw = nil
	end, {})
end