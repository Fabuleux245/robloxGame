-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:43:56
-- Luau version 6, Types version 3
-- Time taken: 0.001146 seconds

local var1_upvw
local Parent = script.Parent.Parent
if game:GetEngineFeature("ReportAnythingScreenshot") then
	var1_upvw = game:GetService("SafetyService")
end
local ScreenshotHookManager_upvr = require(Parent.Utility.ScreenshotHookManager)
local Hide_upvr = require(Parent.Actions.Hide)
local getVisibleAvatars_upvr = require(game:GetService("CorePackages").Workspace.Packages.TnSAvatarIdentification).AvatarIdentification.getVisibleAvatars
local RunService_upvr = game:GetService("RunService")
local Show_upvr = require(Parent.Actions.Show)
local SetIdentifiedAvatars_upvr = require(Parent.Actions.SetIdentifiedAvatars)
return function() -- Line 22
	--[[ Upvalues[7]:
		[1]: var1_upvw (read and write)
		[2]: ScreenshotHookManager_upvr (readonly)
		[3]: Hide_upvr (readonly)
		[4]: getVisibleAvatars_upvr (readonly)
		[5]: RunService_upvr (readonly)
		[6]: Show_upvr (readonly)
		[7]: SetIdentifiedAvatars_upvr (readonly)
	]]
	return function(arg1) -- Line 23
		--[[ Upvalues[7]:
			[1]: var1_upvw (copied, read and write)
			[2]: ScreenshotHookManager_upvr (copied, readonly)
			[3]: Hide_upvr (copied, readonly)
			[4]: getVisibleAvatars_upvr (copied, readonly)
			[5]: RunService_upvr (copied, readonly)
			[6]: Show_upvr (copied, readonly)
			[7]: SetIdentifiedAvatars_upvr (copied, readonly)
		]]
		if var1_upvw == nil then
		else
			coroutine.wrap(function() -- Line 29
				--[[ Upvalues[8]:
					[1]: ScreenshotHookManager_upvr (copied, readonly)
					[2]: arg1 (readonly)
					[3]: Hide_upvr (copied, readonly)
					[4]: var1_upvw (copied, read and write)
					[5]: getVisibleAvatars_upvr (copied, readonly)
					[6]: RunService_upvr (copied, readonly)
					[7]: Show_upvr (copied, readonly)
					[8]: SetIdentifiedAvatars_upvr (copied, readonly)
				]]
				ScreenshotHookManager_upvr.doPreScreenshot()
				arg1:dispatch(Hide_upvr())
				local tbl = {
					registerContent = 1;
				}
				local getVisibleAvatars_upvr_result1, _ = getVisibleAvatars_upvr()
				for _ = 1, 61 do
					RunService_upvr.RenderStepped:Wait()
				end
				arg1:dispatch(Show_upvr())
				ScreenshotHookManager_upvr.doPostScreenshot()
				arg1:dispatch(SetIdentifiedAvatars_upvr(getVisibleAvatars_upvr_result1))
			end)()
		end
	end
end