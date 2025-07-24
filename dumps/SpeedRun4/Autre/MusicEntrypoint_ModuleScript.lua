-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:55:43
-- Luau version 6, Types version 3
-- Time taken: 0.001516 seconds

local Chrome = script:FindFirstAncestor("Chrome")
local CorePackages = game:GetService("CorePackages")
local Service_upvr = require(Chrome.Service)
local MUSIC_WINDOW_MAX_SIZE = require(Chrome.Integrations.MusicUtility.Constants).MUSIC_WINDOW_MAX_SIZE
local any_new_result1_upvr = require(Chrome.ChromeShared.Service.WindowSizeSignal).new(MUSIC_WINDOW_MAX_SIZE.X, MUSIC_WINDOW_MAX_SIZE.Y)
local any_new_result1_upvr_2 = require(Chrome.ChromeShared.Service.ChromeUtils).MappedSignal.new(Service_upvr:onIntegrationStatusChanged(), function() -- Line 20
	--[[ Upvalues[1]:
		[1]: Service_upvr (readonly)
	]]
	return Service_upvr:isWindowOpen("music_entrypoint")
end)
local module = {
	initialAvailability = Service_upvr.AvailabilitySignal.Available;
	id = "music_entrypoint";
	draggable = true;
	cachePosition = true;
	windowSize = any_new_result1_upvr;
	label = "CoreScripts.TopBar.Music";
	activated = function() -- Line 31, Named "activated"
		--[[ Upvalues[1]:
			[1]: Service_upvr (readonly)
		]]
		Service_upvr:toggleWindow("music_entrypoint")
	end;
	isActivated = function() -- Line 34, Named "isActivated"
		--[[ Upvalues[1]:
			[1]: any_new_result1_upvr_2 (readonly)
		]]
		return any_new_result1_upvr_2:get()
	end;
}
local tbl = {}
local CommonIcon_upvr = require(Chrome.Integrations.CommonIcon)
function tbl.Icon(arg1) -- Line 38
	--[[ Upvalues[2]:
		[1]: CommonIcon_upvr (readonly)
		[2]: any_new_result1_upvr_2 (readonly)
	]]
	return CommonIcon_upvr("icons/common/music", "icons/common/musicFilled_medium", any_new_result1_upvr_2)
end
local React_upvr = require(CorePackages.Packages.React)
local Foundation_upvr = require(CorePackages.Packages.Foundation)
local Songbird_upvr = require(CorePackages.Workspace.Packages.Songbird)
function tbl.Window() -- Line 41
	--[[ Upvalues[5]:
		[1]: React_upvr (readonly)
		[2]: Foundation_upvr (readonly)
		[3]: any_new_result1_upvr (readonly)
		[4]: Songbird_upvr (readonly)
		[5]: Service_upvr (readonly)
	]]
	return React_upvr.createElement(Foundation_upvr.View, {
		tag = "auto-xy";
		onAbsoluteSizeChanged = function(arg1) -- Line 44, Named "onAbsoluteSizeChanged"
			--[[ Upvalues[1]:
				[1]: any_new_result1_upvr (copied, readonly)
			]]
			any_new_result1_upvr:requestSize(arg1.AbsoluteSize.X, arg1.AbsoluteSize.Y)
		end;
	}, {
		ChromeWindowWrapper = React_upvr.createElement(Songbird_upvr.ChromeWindowWrapper, {
			onClose = function() -- Line 49, Named "onClose"
				--[[ Upvalues[1]:
					[1]: Service_upvr (copied, readonly)
				]]
				Service_upvr:toggleWindow("music_entrypoint")
			end;
		});
	})
end
module.components = tbl
return Service_upvr:register(module)