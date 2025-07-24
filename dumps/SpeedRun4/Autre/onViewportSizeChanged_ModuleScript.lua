-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:22:51
-- Luau version 6, Types version 3
-- Time taken: 0.003083 seconds

return function(arg1) -- Line 1
	local var19_upvw
	local function _(arg1_3) -- Line 6, Named "fireCallback"
		--[[ Upvalues[2]:
			[1]: var19_upvw (read and write)
			[2]: arg1 (readonly)
		]]
		if arg1_3 ~= var19_upvw then
			var19_upvw = arg1_3
			arg1(arg1_3)
		end
	end
	local function onViewportSizeChanged_upvr() -- Line 13, Named "onViewportSizeChanged"
		--[[ Upvalues[2]:
			[1]: var19_upvw (read and write)
			[2]: arg1 (readonly)
		]]
		local CurrentCamera_11 = workspace.CurrentCamera
		if CurrentCamera_11 then
			local ViewportSize_4 = CurrentCamera_11.ViewportSize
			if ViewportSize_4 ~= var19_upvw then
				var19_upvw = ViewportSize_4
				arg1(ViewportSize_4)
			end
		end
	end
	local var22_upvw
	local var26_upvw
	if var26_upvw then
		var26_upvw:Disconnect()
		var26_upvw = nil
	end
	local CurrentCamera_5 = workspace.CurrentCamera
	if CurrentCamera_5 then
		var26_upvw = CurrentCamera_5:GetPropertyChangedSignal("ViewportSize"):Connect(onViewportSizeChanged_upvr)
		local CurrentCamera_12 = workspace.CurrentCamera
		if CurrentCamera_12 then
			local ViewportSize = CurrentCamera_12.ViewportSize
			if ViewportSize ~= var19_upvw then
				var19_upvw = ViewportSize
				arg1(ViewportSize)
			end
		end
	end
	local any_Connect_result1_upvw = workspace:GetPropertyChangedSignal("CurrentCamera"):Connect(function() -- Line 20, Named "onCurrentCameraChanged"
		--[[ Upvalues[4]:
			[1]: var22_upvw (read and write)
			[2]: onViewportSizeChanged_upvr (readonly)
			[3]: var19_upvw (read and write)
			[4]: arg1 (readonly)
		]]
		if var22_upvw then
			var22_upvw:Disconnect()
			var22_upvw = nil
		end
		local CurrentCamera_8 = workspace.CurrentCamera
		if CurrentCamera_8 then
			var22_upvw = CurrentCamera_8:GetPropertyChangedSignal("ViewportSize"):Connect(onViewportSizeChanged_upvr)
			local CurrentCamera_9 = workspace.CurrentCamera
			if CurrentCamera_9 then
				local ViewportSize_6 = CurrentCamera_9.ViewportSize
				if ViewportSize_6 ~= var19_upvw then
					var19_upvw = ViewportSize_6
					arg1(ViewportSize_6)
				end
			end
		end
	end)
	return function() -- Line 37
		--[[ Upvalues[2]:
			[1]: any_Connect_result1_upvw (read and write)
			[2]: var26_upvw (read and write)
		]]
		if any_Connect_result1_upvw then
			any_Connect_result1_upvw:Disconnect()
			any_Connect_result1_upvw = nil
		end
		if var26_upvw then
			var26_upvw:Disconnect()
			var26_upvw = nil
		end
	end
end