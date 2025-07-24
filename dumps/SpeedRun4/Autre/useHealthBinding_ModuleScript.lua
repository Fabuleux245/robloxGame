-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:54:49
-- Luau version 6, Types version 3
-- Time taken: 0.001954 seconds

local React_upvr = require(game:GetService("CorePackages").Packages.React)
local Players_upvr = game:GetService("Players")
function useHealthBinding() -- Line 5
	--[[ Upvalues[2]:
		[1]: React_upvr (readonly)
		[2]: Players_upvr (readonly)
	]]
	local any_useBinding_result1, any_useBinding_result2_upvr = React_upvr.useBinding(0)
	React_upvr.useEffect(function() -- Line 8
		--[[ Upvalues[2]:
			[1]: Players_upvr (copied, readonly)
			[2]: any_useBinding_result2_upvr (readonly)
		]]
		local var6_upvw
		local var7_upvw
		local var8_upvw
		local var9
		while not var9 do
			Players_upvr:GetPropertyChangedSignal("LocalPlayer"):Wait()
			var9 = Players_upvr.LocalPlayer
		end
		local var10_upvr = var9
		local function updateHealthValue_upvr() -- Line 20, Named "updateHealthValue"
			--[[ Upvalues[2]:
				[1]: var6_upvw (read and write)
				[2]: any_useBinding_result2_upvr (copied, readonly)
			]]
			local var11
			if var6_upvw and 0 < var6_upvw.MaxHealth then
				var11 = var6_upvw.Health / var6_upvw.MaxHealth
			end
			any_useBinding_result2_upvr(var11)
		end
		local function _() -- Line 28, Named "unobserveHumanoid"
			--[[ Upvalues[2]:
				[1]: var8_upvw (read and write)
				[2]: var7_upvw (read and write)
			]]
			if var8_upvw then
				var8_upvw:Disconnect()
				var8_upvw = nil
			end
			if var7_upvw then
				var7_upvw:Disconnect()
				var7_upvw = nil
			end
		end
		local function observeHumanoid_upvr() -- Line 39, Named "observeHumanoid"
			--[[ Upvalues[7]:
				[1]: var8_upvw (read and write)
				[2]: var7_upvw (read and write)
				[3]: var10_upvr (readonly)
				[4]: var6_upvw (read and write)
				[5]: updateHealthValue_upvr (readonly)
				[6]: observeHumanoid_upvr (readonly)
				[7]: any_useBinding_result2_upvr (copied, readonly)
			]]
			if var8_upvw then
				var8_upvw:Disconnect()
				var8_upvw = nil
			end
			if var7_upvw then
				var7_upvw:Disconnect()
				var7_upvw = nil
			end
			local Character = var10_upvr.Character
			if Character then
				var6_upvw = Character:FindFirstChildOfClass("Humanoid")
				if var6_upvw then
					var7_upvw = var6_upvw.HealthChanged:Connect(updateHealthValue_upvr)
				else
					var8_upvw = Character.ChildAdded:Connect(function(arg1) -- Line 47
						--[[ Upvalues[1]:
							[1]: observeHumanoid_upvr (copied, readonly)
						]]
						if arg1:IsA("Humanoid") then
							observeHumanoid_upvr()
						end
					end)
				end
			end
			local var14
			if var6_upvw and 0 < var6_upvw.MaxHealth then
				var14 = var6_upvw.Health / var6_upvw.MaxHealth
			end
			any_useBinding_result2_upvr(var14)
		end
		observeHumanoid_upvr()
		local any_Connect_result1_upvr = var10_upvr.CharacterAdded:Connect(observeHumanoid_upvr)
		local any_Connect_result1_upvr_2 = var10_upvr.CharacterRemoving:Connect(observeHumanoid_upvr)
		return function() -- Line 61
			--[[ Upvalues[4]:
				[1]: any_Connect_result1_upvr (readonly)
				[2]: any_Connect_result1_upvr_2 (readonly)
				[3]: var8_upvw (read and write)
				[4]: var7_upvw (read and write)
			]]
			any_Connect_result1_upvr:Disconnect()
			any_Connect_result1_upvr_2:Disconnect()
			if var8_upvw then
				var8_upvw:Disconnect()
				var8_upvw = nil
			end
			if var7_upvw then
				var7_upvw:Disconnect()
				var7_upvw = nil
			end
		end
	end, {})
	return any_useBinding_result1
end
return useHealthBinding