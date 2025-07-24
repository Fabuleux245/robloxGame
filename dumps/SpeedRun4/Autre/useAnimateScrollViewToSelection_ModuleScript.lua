-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:47:25
-- Luau version 6, Types version 3
-- Time taken: 0.002372 seconds

local React_upvr = require(script:FindFirstAncestor("AppBlox").Parent.React)
local UserGameSettings_upvr = UserSettings():GetService("UserGameSettings")
local TweenService_upvr = game:GetService("TweenService")
return function(arg1, arg2) -- Line 10, Named "useAnimateScrollViewToSelection"
	--[[ Upvalues[3]:
		[1]: React_upvr (readonly)
		[2]: UserGameSettings_upvr (readonly)
		[3]: TweenService_upvr (readonly)
	]]
	local tbl = {}
	tbl[1] = arg1
	tbl[2] = arg2
	React_upvr.useEffect(function() -- Line 14
		--[[ Upvalues[4]:
			[1]: arg1 (readonly)
			[2]: UserGameSettings_upvr (copied, readonly)
			[3]: TweenService_upvr (copied, readonly)
			[4]: arg2 (readonly)
		]]
		local tbl_upvr = {}
		local var6_upvw
		if arg1 and arg1.current ~= nil then
			local current_upvr = arg1.current
			local Y_upvw = current_upvr.AbsolutePosition.Y
			local Y_upvw_2 = current_upvr.AbsoluteWindowSize.Y
			table.insert(tbl_upvr, current_upvr:GetPropertyChangedSignal("AbsolutePosition"):Connect(function() -- Line 26
				--[[ Upvalues[2]:
					[1]: Y_upvw (read and write)
					[2]: current_upvr (readonly)
				]]
				Y_upvw = current_upvr.AbsolutePosition.Y
			end))
			table.insert(tbl_upvr, current_upvr:GetPropertyChangedSignal("AbsoluteWindowSize"):Connect(function() -- Line 32
				--[[ Upvalues[2]:
					[1]: Y_upvw_2 (read and write)
					[2]: current_upvr (readonly)
				]]
				Y_upvw_2 = current_upvr.AbsoluteWindowSize.Y
			end))
			table.insert(tbl_upvr, current_upvr.SelectionChanged:Connect(function(arg1_2, arg2_2, arg3) -- Line 38
				--[[ Upvalues[7]:
					[1]: current_upvr (readonly)
					[2]: var6_upvw (read and write)
					[3]: Y_upvw_2 (read and write)
					[4]: Y_upvw (read and write)
					[5]: UserGameSettings_upvr (copied, readonly)
					[6]: TweenService_upvr (copied, readonly)
					[7]: arg2 (copied, readonly)
				]]
				if arg3 == nil or not arg3:IsDescendantOf(current_upvr) then
				else
					if var6_upvw then
						var6_upvw:Cancel()
						var6_upvw = nil
					end
					local CanvasPosition = current_upvr.CanvasPosition
					local vector2 = Vector2.new(CanvasPosition.X, (CanvasPosition.Y) + ((arg3.AbsolutePosition.Y) - (Y_upvw_2 * 0.5 - arg3.AbsoluteSize.Y * 0.5 + Y_upvw)))
					if UserGameSettings_upvr.ReducedMotion then
						current_upvr.CanvasPosition = vector2
						return
					end
					var6_upvw = TweenService_upvr:Create(current_upvr, TweenInfo.new(arg2, Enum.EasingStyle.Cubic, Enum.EasingDirection.Out), {
						CanvasPosition = vector2;
					})
					if var6_upvw then
						var6_upvw:Play()
					end
				end
			end))
		end
		function current_upvr() -- Line 74
			--[[ Upvalues[2]:
				[1]: tbl_upvr (readonly)
				[2]: var6_upvw (read and write)
			]]
			for _, v in tbl_upvr do
				v:Disconnect()
			end
			if var6_upvw then
				var6_upvw:Cancel()
			end
		end
		return current_upvr
	end, tbl)
end