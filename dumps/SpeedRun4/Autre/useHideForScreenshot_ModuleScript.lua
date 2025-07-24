-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:02:32
-- Luau version 6, Types version 3
-- Time taken: 0.002108 seconds

local React_upvr = require(game:GetService("CorePackages").Packages.React)
local GetFFlagAbuseReportTabHideShowRetimingEnabled_upvr = require(script:FindFirstAncestor("AbuseReportMenu").Flags.GetFFlagAbuseReportTabHideShowRetimingEnabled)
local RunService_upvr = game:GetService("RunService")
return function(arg1, arg2, arg3, arg4, arg5, arg6) -- Line 10
	--[[ Upvalues[3]:
		[1]: React_upvr (readonly)
		[2]: GetFFlagAbuseReportTabHideShowRetimingEnabled_upvr (readonly)
		[3]: RunService_upvr (readonly)
	]]
	local any_useState_result1_upvr, any_useState_result2_upvr = React_upvr.useState(false)
	local tbl = {}
	tbl[1] = arg2
	React_upvr.useEffect(function() -- Line 19
		--[[ Upvalues[10]:
			[1]: arg2 (readonly)
			[2]: any_useState_result1_upvr (readonly)
			[3]: any_useState_result2_upvr (readonly)
			[4]: arg1 (readonly)
			[5]: arg3 (readonly)
			[6]: GetFFlagAbuseReportTabHideShowRetimingEnabled_upvr (copied, readonly)
			[7]: RunService_upvr (copied, readonly)
			[8]: arg5 (readonly)
			[9]: arg4 (readonly)
			[10]: arg6 (readonly)
		]]
		-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [10] 11. Error Block 13 start (CF ANALYSIS FAILED)
		any_useState_result2_upvr(true)
		arg3()
		local var8_upvw
		if GetFFlagAbuseReportTabHideShowRetimingEnabled_upvr() then
			var8_upvw = os.clock()
		end
		local var10_upvw = 0
		local var11_upvw
		var11_upvw = RunService_upvr.Heartbeat:Connect(function() -- Line 37
			--[[ Upvalues[3]:
				[1]: var10_upvw (read and write)
				[2]: arg5 (copied, readonly)
				[3]: var11_upvw (read and write)
			]]
			if var10_upvw == 1 then
				arg5()
				var11_upvw:Disconnect()
			else
				var10_upvw += 1
			end
		end)
		local var13_upvw = 0
		local var14_upvw
		var14_upvw = RunService_upvr.Heartbeat:Connect(function() -- Line 48
			--[[ Upvalues[5]:
				[1]: GetFFlagAbuseReportTabHideShowRetimingEnabled_upvr (copied, readonly)
				[2]: var8_upvw (read and write)
				[3]: var13_upvw (read and write)
				[4]: var14_upvw (read and write)
				[5]: arg4 (copied, readonly)
			]]
			-- KONSTANTERROR: [0] 1. Error Block 12 start (CF ANALYSIS FAILED)
			if GetFFlagAbuseReportTabHideShowRetimingEnabled_upvr() then
				if 0.16666666666666666 <= os.clock() - var8_upvw and 10 <= var13_upvw then
					var14_upvw:Disconnect()
					arg4()
					do
						return
					end
					-- KONSTANTWARNING: GOTO [33] #28
				end
			elseif var13_upvw == 10 then
				arg4()
				var14_upvw:Disconnect()
				return
			end
			-- KONSTANTERROR: [0] 1. Error Block 12 end (CF ANALYSIS FAILED)
			-- KONSTANTERROR: [33] 28. Error Block 8 start (CF ANALYSIS FAILED)
			var13_upvw += 1
			-- KONSTANTERROR: [33] 28. Error Block 8 end (CF ANALYSIS FAILED)
		end)
		do
			return
		end
		-- KONSTANTERROR: [10] 11. Error Block 13 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [53] 49. Error Block 11 start (CF ANALYSIS FAILED)
		if not any_useState_result1_upvr then
			arg6()
		end
		-- KONSTANTERROR: [53] 49. Error Block 11 end (CF ANALYSIS FAILED)
	end, tbl)
end