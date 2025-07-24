-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:01:27
-- Luau version 6, Types version 3
-- Time taken: 0.001971 seconds

local dependencies = require(script:FindFirstAncestor("CrossExperienceVoice").dependencies)
local React_upvr = dependencies.React
local ReactOtter_upvr = dependencies.ReactOtter
return function(arg1) -- Line 11
	--[[ Upvalues[2]:
		[1]: React_upvr (readonly)
		[2]: ReactOtter_upvr (readonly)
	]]
	local any_useRef_result1_upvr = React_upvr.useRef(nil)
	local any_useAnimatedBinding_result1, any_useAnimatedBinding_result2_upvr = ReactOtter_upvr.useAnimatedBinding(arg1, function() -- Line 13
		--[[ Upvalues[1]:
			[1]: any_useRef_result1_upvr (readonly)
		]]
		if any_useRef_result1_upvr.current then
			any_useRef_result1_upvr.current()
			any_useRef_result1_upvr.current = nil
		end
	end)
	return any_useAnimatedBinding_result1, React_upvr.useCallback(function(arg1_2, arg2) -- Line 20
		--[[ Upvalues[3]:
			[1]: any_useRef_result1_upvr (readonly)
			[2]: any_useAnimatedBinding_result2_upvr (readonly)
			[3]: ReactOtter_upvr (copied, readonly)
		]]
		local function _(arg1_3, arg2_2) -- Line 21, Named "animateStep"
			--[[ Upvalues[3]:
				[1]: any_useRef_result1_upvr (copied, readonly)
				[2]: any_useAnimatedBinding_result2_upvr (copied, readonly)
				[3]: ReactOtter_upvr (copied, readonly)
			]]
			any_useRef_result1_upvr.current = arg2_2
			any_useAnimatedBinding_result2_upvr(ReactOtter_upvr.ease(arg1_3.value, {
				duration = arg1_3.durationInMs / 1000;
				easingStyle = arg1_3.easingStyle;
			}))
		end
		local function animateImpl_upvr(arg1_4, arg2_3, arg3) -- Line 29, Named "animateImpl"
			--[[ Upvalues[4]:
				[1]: animateImpl_upvr (readonly)
				[2]: any_useRef_result1_upvr (copied, readonly)
				[3]: any_useAnimatedBinding_result2_upvr (copied, readonly)
				[4]: ReactOtter_upvr (copied, readonly)
			]]
			local var12 = arg1_4[arg2_3]
			if var12 ~= nil then
				function any_useRef_result1_upvr.current() -- Line 32
					--[[ Upvalues[4]:
						[1]: arg3 (readonly)
						[2]: arg2_3 (readonly)
						[3]: animateImpl_upvr (copied, readonly)
						[4]: arg1_4 (readonly)
					]]
					if arg3 then
						arg3(arg2_3)
					end
					animateImpl_upvr(arg1_4, arg2_3 + 1, arg3)
				end
				any_useAnimatedBinding_result2_upvr(ReactOtter_upvr.ease(var12.value, {
					duration = var12.durationInMs / 1000;
					easingStyle = var12.easingStyle;
				}))
			end
		end
		return animateImpl_upvr(arg1_2, 1, arg2)
	end, {})
end