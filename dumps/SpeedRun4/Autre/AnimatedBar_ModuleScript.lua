-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:29:53
-- Luau version 6, Types version 3
-- Time taken: 0.002717 seconds

local Songbird = script:FindFirstAncestor("Songbird")
local React_upvr = require(Songbird.Parent.React)
local tbl_upvr = {
	heightRange = NumberRange.new(0.3, 1);
	width = UDim.new(1, 0);
	isMoving = true;
	staticHeight = 0.5;
}
local Cryo_upvr = require(Songbird.Parent.Cryo)
local useStyle_upvr = require(Songbird.Parent.UIBlox).Core.Style.useStyle
local useCallback_upvr = React_upvr.useCallback
local random_state_upvr = Random.new()
local ReactOtter_upvr = require(Songbird.Parent.ReactOtter)
local useEffect_upvr = React_upvr.useEffect
return function(arg1) -- Line 34, Named "AnimatedBar"
	--[[ Upvalues[8]:
		[1]: Cryo_upvr (readonly)
		[2]: tbl_upvr (readonly)
		[3]: useStyle_upvr (readonly)
		[4]: useCallback_upvr (readonly)
		[5]: random_state_upvr (readonly)
		[6]: ReactOtter_upvr (readonly)
		[7]: useEffect_upvr (readonly)
		[8]: React_upvr (readonly)
	]]
	local any_join_result1_upvr = Cryo_upvr.Dictionary.join(tbl_upvr, arg1)
	local var6_result1_upvr = useCallback_upvr(function() -- Line 38
		--[[ Upvalues[2]:
			[1]: random_state_upvr (copied, readonly)
			[2]: any_join_result1_upvr (readonly)
		]]
		return random_state_upvr:NextNumber(any_join_result1_upvr.heightRange.Min, any_join_result1_upvr.heightRange.Max)
	end, {any_join_result1_upvr.heightRange})
	local any_useAnimatedBinding_result1, any_useAnimatedBinding_result2_upvr = ReactOtter_upvr.useAnimatedBinding(var6_result1_upvr())
	useEffect_upvr(function() -- Line 44
		--[[ Upvalues[4]:
			[1]: any_join_result1_upvr (readonly)
			[2]: var6_result1_upvr (readonly)
			[3]: any_useAnimatedBinding_result2_upvr (readonly)
			[4]: ReactOtter_upvr (copied, readonly)
		]]
		local var17_upvw = true
		task.spawn(function() -- Line 47
			--[[ Upvalues[5]:
				[1]: var17_upvw (read and write)
				[2]: any_join_result1_upvr (copied, readonly)
				[3]: var6_result1_upvr (copied, readonly)
				[4]: any_useAnimatedBinding_result2_upvr (copied, readonly)
				[5]: ReactOtter_upvr (copied, readonly)
			]]
			while true do
				local var19
				if not var19 then break end
				if any_join_result1_upvr.isMoving then
					var19 = var6_result1_upvr()
				else
					var19 = any_join_result1_upvr.staticHeight
				end
				any_useAnimatedBinding_result2_upvr(ReactOtter_upvr.ease(var19, {
					easingStyle = Enum.EasingStyle.Linear;
					duration = 0.25;
				}))
				task.wait(0.25)
			end
		end)
		return function() -- Line 60
			--[[ Upvalues[1]:
				[1]: var17_upvw (read and write)
			]]
			var17_upvw = false
		end
	end, {any_useAnimatedBinding_result2_upvr, any_join_result1_upvr.isMoving, any_join_result1_upvr.staticHeight})
	return React_upvr.createElement("Frame", {
		LayoutOrder = any_join_result1_upvr.layoutOrder;
		Size = any_useAnimatedBinding_result1:map(function(arg1_2) -- Line 67
			--[[ Upvalues[1]:
				[1]: any_join_result1_upvr (readonly)
			]]
			return UDim2.new(any_join_result1_upvr.width, UDim.new(arg1_2, 0))
		end);
		BorderSizePixel = 0;
		BackgroundColor3 = useStyle_upvr().Theme.TextEmphasis.Color;
	}, {
		Corner = React_upvr.createElement("UICorner", {
			CornerRadius = UDim.new(0.5, 0);
		});
	})
end