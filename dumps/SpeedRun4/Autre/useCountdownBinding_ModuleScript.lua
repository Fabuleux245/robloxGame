-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:36:54
-- Luau version 6, Types version 3
-- Time taken: 0.002644 seconds

local React_upvr = require(script:FindFirstAncestor("InterventionShared").Parent.React)
local LocalizationService_upvr = game:GetService("LocalizationService")
local RunService_upvr = game:GetService("RunService")
return function(arg1, arg2) -- Line 15, Named "useCountdownBinding"
	--[[ Upvalues[3]:
		[1]: React_upvr (readonly)
		[2]: LocalizationService_upvr (readonly)
		[3]: RunService_upvr (readonly)
	]]
	local any_useBinding_result1, any_useBinding_result2_upvr = React_upvr.useBinding(arg2 or "")
	local tbl_2 = {}
	tbl_2[1] = arg2
	tbl_2[2] = arg1
	local any_useCallback_result1_upvr = React_upvr.useCallback(function() -- Line 17
		--[[ Upvalues[4]:
			[1]: arg1 (readonly)
			[2]: LocalizationService_upvr (copied, readonly)
			[3]: any_useBinding_result2_upvr (readonly)
			[4]: arg2 (readonly)
		]]
		if arg1 ~= nil then
			local var7
			local maximum = math.max(arg1 - DateTime.now().UnixTimestamp, 0)
			if 3600 <= maximum then
				var7 = DateTime.fromUnixTimestamp(maximum):FormatUniversalTime("h:mm:ss", LocalizationService_upvr.RobloxLocaleId)
			else
				var7 = DateTime.fromUnixTimestamp(maximum):FormatUniversalTime("m:ss", LocalizationService_upvr.RobloxLocaleId)
			end
			any_useBinding_result2_upvr(var7)
			return maximum
		end
		any_useBinding_result2_upvr(arg2 or "")
		return 0
	end, tbl_2)
	React_upvr.useEffect(function() -- Line 38
		--[[ Upvalues[1]:
			[1]: any_useCallback_result1_upvr (readonly)
		]]
		any_useCallback_result1_upvr()
	end, {any_useCallback_result1_upvr})
	local tbl = {}
	tbl[1] = arg1
	tbl[2] = any_useCallback_result1_upvr
	React_upvr.useEffect(function() -- Line 43
		--[[ Upvalues[3]:
			[1]: arg1 (readonly)
			[2]: RunService_upvr (copied, readonly)
			[3]: any_useCallback_result1_upvr (readonly)
		]]
		local var14_upvw
		if arg1 ~= nil then
			local var15_upvw = arg1 - DateTime.now().UnixTimestamp
			if 0 < var15_upvw then
				local var17_upvw = 0
				var14_upvw = RunService_upvr.Heartbeat:Connect(function() -- Line 52
					--[[ Upvalues[4]:
						[1]: var17_upvw (read and write)
						[2]: var15_upvw (read and write)
						[3]: any_useCallback_result1_upvr (copied, readonly)
						[4]: var14_upvw (read and write)
					]]
					local os_clock_result1 = os.clock()
					if os_clock_result1 - var17_upvw < 1 then
					else
						var17_upvw = os_clock_result1
						var15_upvw = any_useCallback_result1_upvr()
						if var15_upvw <= 0 and var14_upvw then
							var14_upvw:Disconnect()
							var14_upvw = nil
						end
					end
				end)
			end
		end
		return function() -- Line 66
			--[[ Upvalues[1]:
				[1]: var14_upvw (read and write)
			]]
			if var14_upvw ~= nil then
				var14_upvw:Disconnect()
				var14_upvw = nil
			end
		end
	end, tbl)
	return any_useBinding_result1
end