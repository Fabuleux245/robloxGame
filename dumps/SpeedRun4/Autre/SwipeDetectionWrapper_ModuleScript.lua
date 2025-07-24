-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:32:34
-- Luau version 6, Types version 3
-- Time taken: 0.004071 seconds

local React_upvr = require(script.Parent.Parent.Parent.React)
local UserInputService_upvr = game:GetService("UserInputService")
return function(arg1) -- Line 19
	--[[ Upvalues[2]:
		[1]: React_upvr (readonly)
		[2]: UserInputService_upvr (readonly)
	]]
	local any_createRef_result1_upvr = React_upvr.createRef()
	local any_useState_result1_upvr, any_useState_result2_upvr = React_upvr.useState(false)
	React_upvr.useEffect(function() -- Line 23
		--[[ Upvalues[5]:
			[1]: arg1 (readonly)
			[2]: UserInputService_upvr (copied, readonly)
			[3]: any_createRef_result1_upvr (readonly)
			[4]: any_useState_result2_upvr (readonly)
			[5]: any_useState_result1_upvr (readonly)
		]]
		if arg1.swipeEnabled then
			local var18_upvr
			if arg1.swipeCallback then
				function var18_upvr(arg1_4) -- Line 29
					--[[ Upvalues[2]:
						[1]: any_createRef_result1_upvr (copied, readonly)
						[2]: any_useState_result2_upvr (copied, readonly)
					]]
					local var19 = any_createRef_result1_upvr
					if var19 then
						var19 = any_createRef_result1_upvr.current
					end
					if not var19 then
					else
						local var20 = Vector2.new(arg1_4.Position.X, arg1_4.Position.Y) - var19.AbsolutePosition
						if 0 <= var20.X and 0 <= var20.Y and var20.X <= var19.AbsoluteSize.X and var20.Y <= var19.AbsoluteSize.Y then
							any_useState_result2_upvr(true)
						end
					end
				end
				var18_upvr = UserInputService_upvr
				if any_useState_result1_upvr then
					var18_upvr = UserInputService_upvr.TouchSwipe
					var18_upvr = var18_upvr:Connect(function(arg1_5) -- Line 50
						--[[ Upvalues[2]:
							[1]: any_useState_result1_upvr (copied, readonly)
							[2]: arg1 (copied, readonly)
						]]
						if any_useState_result1_upvr then
							arg1.swipeCallback(arg1_5)
						end
					end)
				else
					var18_upvr = nil
				end
				local any_Connect_result1_upvr_3 = UserInputService_upvr.TouchStarted:Connect(var18_upvr)
				local any_Connect_result1_upvr_2 = var18_upvr.TouchEnded:Connect(function() -- Line 46
					--[[ Upvalues[1]:
						[1]: any_useState_result2_upvr (copied, readonly)
					]]
					any_useState_result2_upvr(false)
				end)
				return function() -- Line 57
					--[[ Upvalues[3]:
						[1]: any_Connect_result1_upvr_3 (readonly)
						[2]: any_Connect_result1_upvr_2 (readonly)
						[3]: var18_upvr (readonly)
					]]
					any_Connect_result1_upvr_3:Disconnect()
					any_Connect_result1_upvr_2:Disconnect()
					if var18_upvr then
						var18_upvr:Disconnect()
					end
				end
			end
		end
		any_Connect_result1_upvr_3 = any_useState_result2_upvr
		any_Connect_result1_upvr_2 = false
		any_Connect_result1_upvr_3(any_Connect_result1_upvr_2)
		any_Connect_result1_upvr_3 = nil
		return any_Connect_result1_upvr_3
	end, {arg1.swipeEnabled, arg1.swipeCallback, any_createRef_result1_upvr, any_useState_result1_upvr})
	return React_upvr.createElement("Frame", {
		Size = arg1.Size;
		AutomaticSize = arg1.AutomaticSize;
		BackgroundTransparency = 1;
		Active = true;
		ref = any_createRef_result1_upvr;
	}, arg1.children)
end