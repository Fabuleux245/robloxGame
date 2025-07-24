-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:32:07
-- Luau version 6, Types version 3
-- Time taken: 0.003056 seconds

local GameCollections = script:FindFirstAncestor("GameCollections")
local function _(arg1) -- Line 19, Named "validateTimeValues"
	if arg1.days < 0 then
		return false
	end
	if arg1.hours < 0 or 23 < arg1.hours then
		return false
	end
	if arg1.minutes < 0 or 59 < arg1.minutes then
		return false
	end
	return true
end
local function _(arg1) -- Line 35, Named "getUpdateFrequency"
	if arg1 < 15 then
		return 1
	end
	return 15
end
local React_upvr = require(GameCollections.Parent.React)
local calculateCountdownTime_upvr = require(GameCollections.calculateCountdownTime)
local RunService_upvr = game:GetService("RunService")
return function(arg1, arg2, arg3) -- Line 46, Named "useCountdownSubtitleTextBinding"
	--[[ Upvalues[3]:
		[1]: React_upvr (readonly)
		[2]: calculateCountdownTime_upvr (readonly)
		[3]: RunService_upvr (readonly)
	]]
	local any_useState_result1, any_useState_result2_upvr = React_upvr.useState("")
	local tbl_2 = {}
	tbl_2[1] = arg3
	tbl_2[2] = arg1
	tbl_2[3] = arg2
	local any_useCallback_result1_upvr = React_upvr.useCallback(function() -- Line 52
		--[[ Upvalues[5]:
			[1]: arg3 (readonly)
			[2]: arg1 (readonly)
			[3]: arg2 (readonly)
			[4]: calculateCountdownTime_upvr (copied, readonly)
			[5]: any_useState_result2_upvr (readonly)
		]]
		-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
		-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
		local var8
		-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [3] 3. Error Block 2 start (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [3] 3. Error Block 2 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [6] 5. Error Block 3 start (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [6] 5. Error Block 3 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [9] 7. Error Block 4 start (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [9] 7. Error Block 4 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [12] 9. Error Block 5 start (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [12] 9. Error Block 5 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [33] 25. Error Block 37 start (CF ANALYSIS FAILED)
		-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [33.3]
		local function INLINED() -- Internal function, doesn't exist in bytecode
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect
			return 23 < nil.hours
		end
		if nil.hours < 0 or INLINED() then
			var8 = false
		else
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect (x2)
			if nil.minutes < 0 or 59 < nil.minutes then
				var8 = false
			else
				var8 = true
			end
		end
		if var8 then
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect
			var8 = nil.days
			if 0 < var8 then
			else
				var8 = arg2
				-- KONSTANTERROR: Expression was reused, decompilation is incorrect
				var8 = var8:gsub("{hours}", tostring(nil.hours))
				-- KONSTANTERROR: Expression was reused, decompilation is incorrect
				var8 = var8:gsub("{minutes}", tostring(nil.minutes))
			end
		end
		var8 = any_useState_result2_upvr
		var8(var8)
		-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [91.2]
		do
			return nil
		end
		-- KONSTANTERROR: [33] 25. Error Block 37 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [92] 68. Error Block 25 start (CF ANALYSIS FAILED)
		do
			return 0
		end
		-- KONSTANTERROR: [92] 68. Error Block 25 end (CF ANALYSIS FAILED)
	end, tbl_2)
	React_upvr.useEffect(function() -- Line 79
		--[[ Upvalues[1]:
			[1]: any_useCallback_result1_upvr (readonly)
		]]
		any_useCallback_result1_upvr()
	end, {any_useCallback_result1_upvr})
	local tbl = {}
	tbl[1] = arg1
	tbl[2] = any_useCallback_result1_upvr
	React_upvr.useEffect(function() -- Line 84
		--[[ Upvalues[5]:
			[1]: arg3 (readonly)
			[2]: arg1 (readonly)
			[3]: arg2 (readonly)
			[4]: RunService_upvr (copied, readonly)
			[5]: any_useCallback_result1_upvr (readonly)
		]]
		local var14_upvw
		if arg3 ~= nil and arg3 ~= "" and arg1 ~= nil and arg2 ~= nil and arg2 ~= "" then
			local var15_upvw = arg1 - DateTime.now().UnixTimestamp
			local var16_upvw
			if 0 < var15_upvw then
				if var15_upvw < 15 then
					var16_upvw = 1
				else
					var16_upvw = 15
				end
				var16_upvw = RunService_upvr
				local var18_upvw = 0
				var14_upvw = var16_upvw.Heartbeat:Connect(function() -- Line 99
					--[[ Upvalues[5]:
						[1]: var18_upvw (read and write)
						[2]: var16_upvw (read and write)
						[3]: var15_upvw (read and write)
						[4]: any_useCallback_result1_upvr (copied, readonly)
						[5]: var14_upvw (read and write)
					]]
					local os_clock_result1 = os.clock()
					local var20
					if os_clock_result1 - var18_upvw < var16_upvw then
					else
						var18_upvw = os_clock_result1
						var15_upvw = any_useCallback_result1_upvr()
						if var15_upvw < 15 then
							var20 = 1
						else
							var20 = 15
						end
						var16_upvw = var20
						if var15_upvw <= 0 and var14_upvw then
							var14_upvw:Disconnect()
							var14_upvw = nil
						end
					end
				end)
			end
		end
		return function() -- Line 114
			--[[ Upvalues[1]:
				[1]: var14_upvw (read and write)
			]]
			if var14_upvw ~= nil then
				var14_upvw:Disconnect()
				var14_upvw = nil
			end
		end
	end, tbl)
	return any_useState_result1
end