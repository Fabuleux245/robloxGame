-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:05:29
-- Luau version 6, Types version 3
-- Time taken: 0.002508 seconds

local RobloxGui = game:GetService("CoreGui"):WaitForChild("RobloxGui")
local CurrentCamera_upvr = workspace.CurrentCamera
local var3_upvw
local GenerateDummy_upvr = require(script.Parent.Parent.Utility.GenerateDummy)
local Workspace_upvr = game:GetService("Workspace")
function initDummy() -- Line 23
	--[[ Upvalues[3]:
		[1]: var3_upvw (read and write)
		[2]: GenerateDummy_upvr (readonly)
		[3]: Workspace_upvr (readonly)
	]]
	var3_upvw = GenerateDummy_upvr(Vector3.new(0, 8.80000, -50.5), Vector3.new(0, 180, 0))
	var3_upvw.Parent = Workspace_upvr
end
local VRService_upvr = game:GetService("VRService")
local maximum_upvr = math.max(require(RobloxGui.Modules.Flags.FIntSafetyBubbleRadius) * CurrentCamera_upvr.HeadScale, 0.1)
local var8_upvr = require(RobloxGui.Modules.Flags.FIntSafetyBubbleTransparencyPercent) * 0.01
local function calculateTransparency_upvr(arg1, arg2) -- Line 28, Named "calculateTransparency"
	--[[ Upvalues[5]:
		[1]: VRService_upvr (readonly)
		[2]: CurrentCamera_upvr (readonly)
		[3]: var3_upvw (read and write)
		[4]: maximum_upvr (readonly)
		[5]: var8_upvr (readonly)
	]]
	if not arg2 then
		return 0
	end
	local Magnitude = ((CurrentCamera_upvr.CFrame * VRService_upvr:GetUserCFrame(Enum.UserCFrame.Head)).Position - var3_upvw.HumanoidRootPart.Position).Magnitude
	local var10 = 0
	local var11 = maximum_upvr * 0.75
	if Magnitude < var11 then
		var10 = var8_upvr
	else
		var10 = (1 - (Magnitude - var11) / (maximum_upvr - var11)) * var8_upvr
	end
	return math.clamp(var10, 0, 1)
end
local UserGameSettings_upvr = UserSettings():GetService("UserGameSettings")
local var13_upvw = true
local RunService_upvr = game:GetService("RunService")
function EnableSafetyBubbleDummy() -- Line 51
	--[[ Upvalues[5]:
		[1]: var3_upvw (read and write)
		[2]: UserGameSettings_upvr (readonly)
		[3]: var13_upvw (read and write)
		[4]: calculateTransparency_upvr (readonly)
		[5]: RunService_upvr (readonly)
	]]
	initDummy()
	RunService_upvr.Stepped:Connect(function() -- Line 54, Named "onStep"
		--[[ Upvalues[4]:
			[1]: var3_upvw (copied, read and write)
			[2]: UserGameSettings_upvr (copied, readonly)
			[3]: var13_upvw (copied, read and write)
			[4]: calculateTransparency_upvr (copied, readonly)
		]]
		local children = var3_upvw:GetChildren()
		if UserGameSettings_upvr.VRSafetyBubbleMode == Enum.VRSafetyBubbleMode.Anyone then
			var13_upvw = false
		else
			var13_upvw = true
		end
		for _, v in ipairs(game.Players:GetPlayers()) do
			if v.Character then
				local calculateTransparency_result1 = calculateTransparency_upvr(v, var13_upvw)
				var3_upvw.Head.Face.Transparency = calculateTransparency_result1
				for i_2 = 1, #children do
					if children[i_2]:IsA("Part") then
						children[i_2].Transparency = calculateTransparency_result1
					end
				end
			end
		end
	end)
end
return EnableSafetyBubbleDummy