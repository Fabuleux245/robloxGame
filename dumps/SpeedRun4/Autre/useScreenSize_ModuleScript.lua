-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:03:39
-- Luau version 6, Types version 3
-- Time taken: 0.001821 seconds

local React_upvr = require(game:GetService("CorePackages").Packages.React)
return function() -- Line 4
	--[[ Upvalues[1]:
		[1]: React_upvr (readonly)
	]]
	local var3_upvw
	local any_useState_result1, any_useState_result2_upvr = React_upvr.useState(Vector2.new(0, 0))
	local function var6_upvr() -- Line 9
		--[[ Upvalues[1]:
			[1]: any_useState_result2_upvr (readonly)
		]]
		local CurrentCamera = workspace.CurrentCamera
		if CurrentCamera then
			any_useState_result2_upvr(Vector2.new(CurrentCamera.ViewportSize.X, CurrentCamera.ViewportSize.Y))
		end
	end
	local function var8_upvr() -- Line 16
		--[[ Upvalues[2]:
			[1]: var3_upvw (read and write)
			[2]: var6_upvr (readonly)
		]]
		local CurrentCamera_3 = workspace.CurrentCamera
		if var3_upvw then
			pcall(function() -- Line 20
				--[[ Upvalues[1]:
					[1]: var3_upvw (copied, read and write)
				]]
				var3_upvw:Disconnect()
			end)
			var3_upvw = nil
		end
		if CurrentCamera_3 then
			var3_upvw = CurrentCamera_3:GetPropertyChangedSignal("ViewportSize"):Connect(var6_upvr)
		end
	end
	local var12_upvw
	React_upvr.useEffect(function() -- Line 31
		--[[ Upvalues[4]:
			[1]: var12_upvw (read and write)
			[2]: var8_upvr (readonly)
			[3]: any_useState_result2_upvr (readonly)
			[4]: var3_upvw (read and write)
		]]
		var12_upvw = workspace:GetPropertyChangedSignal("CurrentCamera"):Connect(var8_upvr)
		var8_upvr()
		local CurrentCamera_2 = workspace.CurrentCamera
		if CurrentCamera_2 then
			any_useState_result2_upvr(Vector2.new(CurrentCamera_2.ViewportSize.X, CurrentCamera_2.ViewportSize.Y))
		end
		return function() -- Line 36
			--[[ Upvalues[2]:
				[1]: var12_upvw (copied, read and write)
				[2]: var3_upvw (copied, read and write)
			]]
			if var12_upvw then
				var12_upvw:Disconnect()
			end
			if var3_upvw then
				var3_upvw:Disconnect()
			end
		end
	end, {})
	return any_useState_result1
end