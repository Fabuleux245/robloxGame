-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:55:59
-- Luau version 6, Types version 3
-- Time taken: 0.005551 seconds

local Parent_2 = script.Parent
local Parent = Parent_2.Parent
local React_upvr = require(Parent.Parent.React)
local useAnimatedValue_upvr = require(Parent_2.useAnimatedValue)
local TransitionPreset_upvr = require(Parent.Enums.TransitionPreset)
local TimingConfigs_upvr = require(Parent_2.TimingConfigs)
return function(arg1) -- Line 20, Named "useMotion"
	--[[ Upvalues[4]:
		[1]: React_upvr (readonly)
		[2]: useAnimatedValue_upvr (readonly)
		[3]: TransitionPreset_upvr (readonly)
		[4]: TimingConfigs_upvr (readonly)
	]]
	for i, v in arg1 do
		if type(v) ~= "table" or i ~= "transition" then
			local useAnimatedValue_upvr_result1, useAnimatedValue_upvr_result2 = useAnimatedValue_upvr(v)
			;({})[i] = useAnimatedValue_upvr_result1
			;({})[i] = useAnimatedValue_upvr_result2
		end
	end
	local tbl_upvr = {}
	local any_useRef_result1_upvr = React_upvr.useRef({})
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	return {}, function(arg1_2, arg2) -- Line 40, Named "animate"
		--[[ Upvalues[4]:
			[1]: tbl_upvr (readonly)
			[2]: any_useRef_result1_upvr (readonly)
			[3]: TransitionPreset_upvr (copied, readonly)
			[4]: TimingConfigs_upvr (copied, readonly)
		]]
		if not arg1_2 then
		else
			local tbl_upvr_2 = {}
			for i_2 in tbl_upvr do
				if i_2 ~= "transition" and arg1_2[i_2] ~= nil then
					local var36_upvw = 0 + 1
				end
			end
			local var37_upvw = 0
			local function _(arg1_4) -- Line 57, Named "propertyOnComplete"
				--[[ Upvalues[5]:
					[1]: tbl_upvr_2 (readonly)
					[2]: arg1_2 (readonly)
					[3]: var37_upvw (read and write)
					[4]: arg2 (readonly)
					[5]: var36_upvw (read and write)
				]]
				tbl_upvr_2[arg1_4] = arg1_2[arg1_4]
				var37_upvw += 1
				if arg2 and arg2.onAnimationComplete then
					arg2.onAnimationComplete(arg1_4)
				end
				if var37_upvw == var36_upvw and arg2 and arg2.onAnimationComplete then
					arg2.onAnimationComplete(true)
				end
			end
			for i_3_upvr, v_2_upvr in tbl_upvr do
				if i_3_upvr ~= "transition" then
					local var38
					if var38 ~= nil then
						var38 = any_useRef_result1_upvr.current[i_3_upvr]
						if var38 then
							var38 = any_useRef_result1_upvr.current[i_3_upvr]
							if var38 then
								task.cancel(var38)
							end
							any_useRef_result1_upvr.current[i_3_upvr] = nil
						end
						var38 = arg1_2.transition
						if not var38 then
							var38 = {}
							var38[TransitionPreset_upvr.Default] = TimingConfigs_upvr.getDefaultTransition()
						end
						local var39 = var38[i_3_upvr]
						if not var39 then
							var39 = var38[TransitionPreset_upvr.Default]
							if not var39 then
								var39 = TimingConfigs_upvr.getDefaultTransition()
							end
						end
						local clone_upvr = table.clone(var39)
						function clone_upvr.onComplete() -- Line 94
							--[[ Upvalues[6]:
								[1]: i_3_upvr (readonly)
								[2]: tbl_upvr_2 (readonly)
								[3]: arg1_2 (readonly)
								[4]: var37_upvw (read and write)
								[5]: arg2 (readonly)
								[6]: var36_upvw (read and write)
							]]
							local var42 = i_3_upvr
							tbl_upvr_2[var42] = arg1_2[var42]
							var37_upvw += 1
							if arg2 and arg2.onAnimationComplete then
								arg2.onAnimationComplete(var42)
							end
							if var37_upvw == var36_upvw and arg2 and arg2.onAnimationComplete then
								arg2.onAnimationComplete(true)
							end
						end
						local var43 = clone_upvr.delay or 0
						if 0 < var43 then
							any_useRef_result1_upvr.current[i_3_upvr] = task.delay(var43, function() -- Line 103
								--[[ Upvalues[5]:
									[1]: any_useRef_result1_upvr (copied, readonly)
									[2]: i_3_upvr (readonly)
									[3]: v_2_upvr (readonly)
									[4]: arg1_2 (readonly)
									[5]: clone_upvr (readonly)
								]]
								any_useRef_result1_upvr.current[i_3_upvr] = nil
								v_2_upvr(arg1_2[i_3_upvr], clone_upvr)
							end)
						else
							v_2_upvr(arg1_2[i_3_upvr], clone_upvr)
						end
					end
				end
			end
		end
	end
end