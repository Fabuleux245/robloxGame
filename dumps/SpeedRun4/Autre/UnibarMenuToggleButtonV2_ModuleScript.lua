-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:55:50
-- Luau version 6, Types version 3
-- Time taken: 0.001506 seconds

-- KONSTANTERROR: [0] 1. Error Block 47 start (CF ANALYSIS FAILED)
local CorePackages = game:GetService("CorePackages")
local any_GetFFlagAdaptUnibarAndTiltSizing_result1 = require(CorePackages.Workspace.Packages.SharedFlags).GetFFlagAdaptUnibarAndTiltSizing()
local UIBlox = require(CorePackages.Packages.UIBlox)
local var6
if any_GetFFlagAdaptUnibarAndTiltSizing_result1 then
	var6 = require(script.Parent.Parent.ChromeShared.Utility.GetStyleTokens)
else
	var6 = nil
end
if any_GetFFlagAdaptUnibarAndTiltSizing_result1 then
	-- KONSTANTWARNING: GOTO [121] #75
end
-- KONSTANTERROR: [0] 1. Error Block 47 end (CF ANALYSIS FAILED)
-- KONSTANTERROR: [120] 74. Error Block 50 start (CF ANALYSIS FAILED)
-- KONSTANTERROR: Expression was reused, decompilation is incorrect
if require(script:FindFirstAncestor("Chrome").Flags.GetFFlagUseNewUnibarIcon)() then
	-- KONSTANTWARNING: GOTO [153] #95
end
-- KONSTANTERROR: [120] 74. Error Block 50 end (CF ANALYSIS FAILED)