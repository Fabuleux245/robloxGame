-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:04:59
-- Luau version 6, Types version 3
-- Time taken: 0.001087 seconds

local CorePackages = game:GetService("CorePackages")
local Cryo_upvr = require(CorePackages.Packages.Cryo)
return require(CorePackages.Packages.Rodux).createReducer({
	bubbleChatEnabled = false;
	voiceEnabled = false;
}, {
	[require(script.Parent.Parent.Actions.BubbleChatEnabledChanged).name] = function(arg1, arg2) -- Line 16
		--[[ Upvalues[1]:
			[1]: Cryo_upvr (readonly)
		]]
		return Cryo_upvr.Dictionary.join(arg1, {
			bubbleChatEnabled = arg2.enabled;
		})
	end;
	[require(game:GetService("CoreGui"):WaitForChild("RobloxGui").Modules.VoiceChat.Actions.VoiceEnabledChanged).name] = function(arg1, arg2) -- Line 23
		--[[ Upvalues[1]:
			[1]: Cryo_upvr (readonly)
		]]
		return Cryo_upvr.Dictionary.join(arg1, {
			voiceEnabled = arg2.enabled;
		})
	end;
})