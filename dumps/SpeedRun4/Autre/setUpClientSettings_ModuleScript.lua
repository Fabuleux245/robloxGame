-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:04:33
-- Luau version 6, Types version 3
-- Time taken: 0.000869 seconds

local Actions = script:FindFirstAncestor("ExpChat").Actions
local ClientSettingsLoaded_upvr = require(Actions.ClientSettingsLoaded)
local UserGameSettings_upvr = UserSettings():GetService("UserGameSettings")
local ClientSettingsChanged_upvr = require(Actions.ClientSettingsChanged)
return function(arg1) -- Line 9
	--[[ Upvalues[3]:
		[1]: ClientSettingsLoaded_upvr (readonly)
		[2]: UserGameSettings_upvr (readonly)
		[3]: ClientSettingsChanged_upvr (readonly)
	]]
	arg1:dispatch(ClientSettingsLoaded_upvr({
		preferredTransparency = UserGameSettings_upvr.PreferredTransparency;
	}))
	UserGameSettings_upvr:GetPropertyChangedSignal("PreferredTransparency"):Connect(function() -- Line 14
		--[[ Upvalues[3]:
			[1]: arg1 (readonly)
			[2]: ClientSettingsChanged_upvr (copied, readonly)
			[3]: UserGameSettings_upvr (copied, readonly)
		]]
		arg1:dispatch(ClientSettingsChanged_upvr("preferredTransparency", UserGameSettings_upvr.PreferredTransparency))
	end)
end