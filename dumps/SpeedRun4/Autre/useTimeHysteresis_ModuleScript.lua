-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:54:52
-- Luau version 6, Types version 3
-- Time taken: 0.002413 seconds

local React_upvr = require(game:GetService("CorePackages").Packages.React)
return function(arg1, arg2, arg3, arg4, arg5) -- Line 32
	--[[ Upvalues[1]:
		[1]: React_upvr (readonly)
	]]
	if not arg3 then
		local var3_upvw = arg2
	end
	local any_useState_result1_upvr, any_useState_result2_upvr = React_upvr.useState(arg4 or false)
	local any_useState_result1_upvr_2, any_useState_result2_upvr_2 = React_upvr.useState(false)
	local any_useRef_result1_upvr = React_upvr.useRef(arg4 or 0)
	local any_useRef_result1_upvr_2 = React_upvr.useRef(false)
	local tbl = {any_useState_result1_upvr, any_useState_result1_upvr_2}
	tbl[3] = arg1
	tbl[4] = arg2
	tbl[5] = var3_upvw
	React_upvr.useEffect(function() -- Line 48
		--[[ Upvalues[8]:
			[1]: any_useRef_result1_upvr (readonly)
			[2]: any_useState_result2_upvr_2 (readonly)
			[3]: any_useState_result1_upvr_2 (readonly)
			[4]: any_useState_result1_upvr (readonly)
			[5]: arg2 (readonly)
			[6]: arg1 (readonly)
			[7]: any_useRef_result1_upvr_2 (readonly)
			[8]: var3_upvw (read and write)
		]]
		-- KONSTANTERROR: [0] 1. Error Block 21 start (CF ANALYSIS FAILED)
		local var11_upvw
		local var12_upvw = false
		local function _(arg1_2, arg2_2, arg3_2) -- Line 53
			--[[ Upvalues[5]:
				[1]: var11_upvw (read and write)
				[2]: var12_upvw (read and write)
				[3]: any_useRef_result1_upvr (copied, readonly)
				[4]: any_useState_result2_upvr_2 (copied, readonly)
				[5]: any_useState_result1_upvr_2 (copied, readonly)
			]]
			if 0 < arg1_2 then
				var11_upvw = task.delay(arg1_2, function() -- Line 55
					--[[ Upvalues[6]:
						[1]: var12_upvw (copied, read and write)
						[2]: var11_upvw (copied, read and write)
						[3]: any_useRef_result1_upvr (copied, readonly)
						[4]: arg3_2 (readonly)
						[5]: any_useState_result2_upvr_2 (copied, readonly)
						[6]: arg2_2 (readonly)
					]]
					var12_upvw = true
					var11_upvw = nil
					any_useRef_result1_upvr.current = arg3_2
					any_useState_result2_upvr_2(arg2_2)
				end)
			elseif any_useState_result1_upvr_2 ~= arg2_2 then
				var12_upvw = true
				any_useState_result2_upvr_2(arg2_2)
			end
		end
		if any_useState_result1_upvr then
			local var15 = arg2 - any_useRef_result1_upvr.current
			if 0 < var15 then
				local var17_upvr = true
				var11_upvw = task.delay(var15, function() -- Line 55
					--[[ Upvalues[6]:
						[1]: var12_upvw (read and write)
						[2]: var11_upvw (read and write)
						[3]: any_useRef_result1_upvr (copied, readonly)
						[4]: arg2 (readonly)
						[5]: any_useState_result2_upvr_2 (copied, readonly)
						[6]: var17_upvr (readonly)
					]]
					var12_upvw = true
					var11_upvw = nil
					any_useRef_result1_upvr.current = arg2
					any_useState_result2_upvr_2(var17_upvr)
				end)
			elseif any_useState_result1_upvr_2 ~= true then
				var12_upvw = true
				any_useState_result2_upvr_2(true)
				-- KONSTANTWARNING: GOTO [74] #66
			end
		else
			local var18 = any_useRef_result1_upvr.current - arg1
			if 0 < var18 then
				var17_upvr = false
				var11_upvw = task.delay(var18, function() -- Line 55
					--[[ Upvalues[6]:
						[1]: var12_upvw (read and write)
						[2]: var11_upvw (read and write)
						[3]: any_useRef_result1_upvr (copied, readonly)
						[4]: arg1 (readonly)
						[5]: any_useState_result2_upvr_2 (copied, readonly)
						[6]: var17_upvr (readonly)
					]]
					var12_upvw = true
					var11_upvw = nil
					any_useRef_result1_upvr.current = arg1
					any_useState_result2_upvr_2(var17_upvr)
				end)
			elseif any_useState_result1_upvr_2 ~= false then
				var12_upvw = true
				any_useState_result2_upvr_2(false)
			end
		end
		-- KONSTANTERROR: [0] 1. Error Block 21 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [74] 66. Error Block 13 start (CF ANALYSIS FAILED)
		local tick_result1_upvr = tick()
		do
			return function() -- Line 74
				--[[ Upvalues[7]:
					[1]: var12_upvw (read and write)
					[2]: var11_upvw (read and write)
					[3]: any_useRef_result1_upvr_2 (copied, readonly)
					[4]: tick_result1_upvr (readonly)
					[5]: any_useState_result1_upvr (readonly)
					[6]: any_useRef_result1_upvr (copied, readonly)
					[7]: var3_upvw (copied, read and write)
				]]
				if not var12_upvw then
					if var11_upvw then
						task.cancel(var11_upvw)
					end
					if not any_useRef_result1_upvr_2.current then
						local var22 = tick() - tick_result1_upvr
						if not any_useState_result1_upvr then
							var22 *= -1
						end
						any_useRef_result1_upvr.current = math.clamp(any_useRef_result1_upvr.current + var22, 0, var3_upvw)
					end
				end
				any_useRef_result1_upvr_2.current = false
			end
		end
		-- KONSTANTERROR: [74] 66. Error Block 13 end (CF ANALYSIS FAILED)
	end, tbl)
	return any_useState_result1_upvr_2, React_upvr.useCallback(function(arg1_3, arg2_3) -- Line 91
		--[[ Upvalues[4]:
			[1]: any_useRef_result1_upvr_2 (readonly)
			[2]: any_useRef_result1_upvr (readonly)
			[3]: var3_upvw (read and write)
			[4]: any_useState_result2_upvr (readonly)
		]]
		any_useRef_result1_upvr_2.current = arg2_3
		if arg2_3 then
			if arg1_3 then
				any_useRef_result1_upvr.current = var3_upvw
			else
				any_useRef_result1_upvr.current = 0
			end
		end
		any_useState_result2_upvr(arg1_3)
	end, {any_useState_result2_upvr})
end