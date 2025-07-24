-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:51:59
-- Luau version 6, Types version 3
-- Time taken: 0.002062 seconds

local function cancellableDelay_upvr(arg1, arg2) -- Line 26, Named "cancellableDelay"
	local var1_upvw = false
	task.delay(arg1, function() -- Line 28
		--[[ Upvalues[2]:
			[1]: var1_upvw (read and write)
			[2]: arg2 (readonly)
		]]
		if not var1_upvw then
			arg2()
		end
	end)
	return {
		cancel = function() -- Line 34, Named "cancel"
			--[[ Upvalues[1]:
				[1]: var1_upvw (read and write)
			]]
			var1_upvw = true
		end;
	}
end
local Heartbeat_upvr = require(script.Parent.Heartbeat)
return function(arg1) -- Line 40, Named "handleInput"
	--[[ Upvalues[2]:
		[1]: cancellableDelay_upvr (readonly)
		[2]: Heartbeat_upvr (readonly)
	]]
	local var5_upvw
	local var6_upvw
	local var7_upvw = false
	local function _() -- Line 47, Named "clearHeldState"
		--[[ Upvalues[3]:
			[1]: var5_upvw (read and write)
			[2]: var6_upvw (read and write)
			[3]: var7_upvw (read and write)
		]]
		if var5_upvw then
			var5_upvw.cancel()
			var5_upvw = nil
		end
		if var6_upvw then
			var6_upvw:Disconnect()
			var6_upvw = nil
		end
		var7_upvw = false
	end
	local hold_upvr = arg1.hold
	return function(arg1_2) -- Line 59
		--[[ Upvalues[7]:
			[1]: arg1 (readonly)
			[2]: var5_upvw (read and write)
			[3]: var6_upvw (read and write)
			[4]: var7_upvw (read and write)
			[5]: hold_upvr (readonly)
			[6]: cancellableDelay_upvr (copied, readonly)
			[7]: Heartbeat_upvr (copied, readonly)
		]]
		local var10
		if arg1_2.eventData then
			var10 = arg1_2.eventData.UserInputState
		else
			var10 = nil
		end
		if var10 == Enum.UserInputState.Begin then
			if arg1.onPress then
				arg1.onPress(arg1_2)
			end
			if var5_upvw then
				var5_upvw.cancel()
				var5_upvw = nil
			end
			if var6_upvw then
				var6_upvw:Disconnect()
				var6_upvw = nil
			end
			var7_upvw = false
			if hold_upvr then
				local cancellableDelay_result1 = cancellableDelay_upvr(hold_upvr.durationSeconds, function() -- Line 72
					--[[ Upvalues[3]:
						[1]: hold_upvr (copied, readonly)
						[2]: var7_upvw (copied, read and write)
						[3]: var6_upvw (copied, read and write)
					]]
					if not hold_upvr.allowReleaseAfterHold then
						var7_upvw = false
					end
					hold_upvr.onComplete()
					if var6_upvw then
						var6_upvw:Disconnect()
						var6_upvw = nil
					end
				end)
				var5_upvw = cancellableDelay_result1
				if hold_upvr.onStep then
					cancellableDelay_result1 = Heartbeat_upvr:Connect(hold_upvr.onStep)
				else
					cancellableDelay_result1 = nil
				end
				var6_upvw = cancellableDelay_result1
			end
			var7_upvw = true
		end
		if var10 == Enum.UserInputState.End then
			if arg1.onRelease and var7_upvw then
				arg1.onRelease(arg1_2)
			end
			if var5_upvw then
				var5_upvw.cancel()
				var5_upvw = nil
			end
			if var6_upvw then
				var6_upvw:Disconnect()
				var6_upvw = nil
			end
			var7_upvw = false
		end
		if var10 == Enum.UserInputState.Cancel then
			if var5_upvw then
				var5_upvw.cancel()
				var5_upvw = nil
			end
			if var6_upvw then
				var6_upvw:Disconnect()
				var6_upvw = nil
			end
			var7_upvw = false
		end
	end
end