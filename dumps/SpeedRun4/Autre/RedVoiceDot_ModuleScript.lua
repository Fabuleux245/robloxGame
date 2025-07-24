-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:55:47
-- Luau version 6, Types version 3
-- Time taken: 0.002234 seconds

-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
local CorePackages = game:GetService("CorePackages")
local any_GetFFlagAdaptUnibarAndTiltSizing_result1 = require(CorePackages.Workspace.Packages.SharedFlags).GetFFlagAdaptUnibarAndTiltSizing()
local RobloxGui = game:GetService("CoreGui"):WaitForChild("RobloxGui")
local var4
if any_GetFFlagAdaptUnibarAndTiltSizing_result1 then
	var4 = require(script.Parent.Parent.ChromeShared.Utility.GetStyleTokens)
else
	var4 = nil
end
if any_GetFFlagAdaptUnibarAndTiltSizing_result1 then
	local var4_result1 = var4()
else
end
if require(RobloxGui.Modules.Flags.GetFFlagRemoveInGameChatBubbleChatReferences)() then
end
local var6_upvr = 0.918
if any_GetFFlagAdaptUnibarAndTiltSizing_result1 then
	var6_upvr = UDim2.new
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	var6_upvr = var6_upvr(0, nil.Size.Size_100, 0, nil.Size.Size_100)
else
	var6_upvr = UDim2.new(0, 4, 0, 4)
end
local useVoiceState_upvr = require(RobloxGui.Modules.VoiceChat.Hooks.useVoiceState)
local Players_upvr = game:GetService("Players")
local Constants_upvw = require(RobloxGui.Modules.VoiceChat.Constants)
local React_upvr = require(CorePackages.Packages.React)
local Color3_new_result1_upvr = Color3.new(var6_upvr, 0.2, 0.137)
return function(arg1) -- Line 30
	--[[ Upvalues[6]:
		[1]: useVoiceState_upvr (readonly)
		[2]: Players_upvr (readonly)
		[3]: Constants_upvw (read and write)
		[4]: React_upvr (readonly)
		[5]: var6_upvr (readonly)
		[6]: Color3_new_result1_upvr (readonly)
	]]
	local var13
	local function INLINED() -- Internal function, doesn't exist in bytecode
		var13 = Players_upvr.LocalPlayer.UserId
		return var13
	end
	if not Players_upvr.LocalPlayer or not INLINED() then
		var13 = 0
	end
	local useVoiceState_upvr_result1 = useVoiceState_upvr(var13)
	var13 = true
	if useVoiceState_upvr_result1 ~= Constants_upvw.VOICE_STATE.INACTIVE then
		if useVoiceState_upvr_result1 ~= Constants_upvw.VOICE_STATE.TALKING then
			var13 = false
		else
			var13 = true
		end
	end
	return React_upvr.createElement("Frame", {
		Name = "RedVoiceDot";
		AnchorPoint = Vector2.new(0.5, 0.5);
		Position = arg1.position;
		Size = var6_upvr;
		BackgroundColor3 = Color3_new_result1_upvr;
		Visible = var13;
	}, {
		UICorner = React_upvr.createElement("UICorner", {
			CornerRadius = UDim.new(1, 0);
		});
	})
end