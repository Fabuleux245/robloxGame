-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:44:00
-- Luau version 6, Types version 3
-- Time taken: 0.000793 seconds

local var1_upvw
if game:GetEngineFeature("ReportAnythingScreenshot") then
	game:GetService("SafetyService").ScreenshotContentReady:Connect(function(arg1, arg2) -- Line 7
		--[[ Upvalues[1]:
			[1]: var1_upvw (read and write)
		]]
		var1_upvw = arg2
	end)
end
local module = {}
module.__index = module
function module.GetScreenshotContentId(arg1) -- Line 17
	--[[ Upvalues[1]:
		[1]: var1_upvw (read and write)
	]]
	return var1_upvw
end
function module.SetScreenshotContentId(arg1, arg2) -- Line 22
	--[[ Upvalues[1]:
		[1]: var1_upvw (read and write)
	]]
	var1_upvw = arg2
end
return module