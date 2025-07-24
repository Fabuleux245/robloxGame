-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:02:10
-- Luau version 6, Types version 3
-- Time taken: 0.001240 seconds

local module = {}
local game_DefineFastInt_result1_upvr = game:DefineFastInt("WaitForChildOfClassTimeout", 0)
if 0 < game_DefineFastInt_result1_upvr then
	local function waitForChildOfClass(arg1, arg2) -- Line 5
		--[[ Upvalues[1]:
			[1]: game_DefineFastInt_result1_upvr (readonly)
		]]
		local var3
		while not var3 and tick() < tick() + game_DefineFastInt_result1_upvr do
			task.wait()
			var3 = arg1:FindFirstChildOfClass(arg2)
		end
		return var3
	end
	module.waitForChildOfClass = waitForChildOfClass
else
	module.waitForChildOfClass = function(arg1, arg2) -- Line 15, Named "waitForChildOfClass"
		local var4
		while not (not var4 or var4.ClassName == arg2) do
			var4 = arg1.ChildAdded:Wait()
		end
		return var4
	end
end
function module.waitForChildWhichIsA(arg1, arg2) -- Line 24
	local var5
	while not (not var5 or var5:IsA(arg2)) do
		var5 = arg1.ChildAdded:Wait()
	end
	return var5
end
return module