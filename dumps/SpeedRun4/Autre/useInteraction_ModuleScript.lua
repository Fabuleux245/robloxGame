-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:55:59
-- Luau version 6, Types version 3
-- Time taken: 0.000910 seconds

local React_upvr = require(script.Parent.Parent.Parent.React)
return function(arg1) -- Line 11, Named "useInteraction"
	--[[ Upvalues[1]:
		[1]: React_upvr (readonly)
	]]
	local any_useState_result1_upvr_2, any_useState_result2_upvr = React_upvr.useState(false)
	local any_useState_result1_upvr, any_useState_result2_upvr_2 = React_upvr.useState(false)
	return {
		onInputBegan = function(arg1_2, arg2) -- Line 16, Named "onInputBegan"
			--[[ Upvalues[1]:
				[1]: any_useState_result2_upvr (readonly)
			]]
			if arg2.UserInputType == Enum.UserInputType.MouseButton1 then
				any_useState_result2_upvr(true)
			end
		end;
		onInputEnded = function(arg1_3, arg2) -- Line 22, Named "onInputEnded"
			--[[ Upvalues[4]:
				[1]: any_useState_result1_upvr_2 (readonly)
				[2]: any_useState_result1_upvr (readonly)
				[3]: arg1 (readonly)
				[4]: any_useState_result2_upvr (readonly)
			]]
			if arg2.UserInputType == Enum.UserInputType.MouseButton1 then
				if any_useState_result1_upvr_2 and any_useState_result1_upvr then
					arg1()
				end
				any_useState_result2_upvr(false)
			end
		end;
		onMouseEnter = function() -- Line 31, Named "onMouseEnter"
			--[[ Upvalues[1]:
				[1]: any_useState_result2_upvr_2 (readonly)
			]]
			any_useState_result2_upvr_2(true)
		end;
		onMouseLeave = function() -- Line 35, Named "onMouseLeave"
			--[[ Upvalues[2]:
				[1]: any_useState_result2_upvr_2 (readonly)
				[2]: any_useState_result2_upvr (readonly)
			]]
			any_useState_result2_upvr_2(false)
			any_useState_result2_upvr(false)
		end;
	}, any_useState_result1_upvr_2, any_useState_result1_upvr
end