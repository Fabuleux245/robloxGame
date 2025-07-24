-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:57:28
-- Luau version 6, Types version 3
-- Time taken: 0.001018 seconds

local function waitForChildOfClass(arg1, arg2) -- Line 10
	local var1
	while not (not var1 or var1.ClassName == arg2) do
		var1 = arg1.ChildAdded:Wait()
	end
	return var1
end
local waitForChildOfClass_result1_upvr_2 = waitForChildOfClass(game:GetService("Players").LocalPlayer, "PlayerScripts")
local waitForChildOfClass_result1_upvr = waitForChildOfClass(game:GetService("StarterPlayer"), "StarterPlayerScripts")
function VerifyScriptExistence() -- Line 22
	--[[ Upvalues[2]:
		[1]: waitForChildOfClass_result1_upvr_2 (readonly)
		[2]: waitForChildOfClass_result1_upvr (readonly)
	]]
	local Value_2 = script:WaitForChild("ScriptToVerify").Value
	if not waitForChildOfClass_result1_upvr_2:FindFirstChild(Value_2) then
		local SOME = waitForChildOfClass_result1_upvr:FindFirstChild(Value_2)
		if SOME then
			SOME.Archivable = true
			SOME:Clone().Parent = waitForChildOfClass_result1_upvr_2
			SOME.Archivable = SOME.Archivable
		end
	end
end
VerifyScriptExistence()
script:Destroy()