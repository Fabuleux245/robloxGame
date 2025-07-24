-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:36:36
-- Luau version 6, Types version 3
-- Time taken: 0.000941 seconds

local dependencies = require(script:FindFirstAncestor("VoiceChat").dependencies)
local Promise_upvr = dependencies.Promise
local default_upvr = dependencies.LinkingProtocol.LinkingProtocol.default
local SettingsRoute_upvr = dependencies.LinkingProtocol.Enums.SettingsRoute
return function() -- Line 9
	--[[ Upvalues[3]:
		[1]: Promise_upvr (readonly)
		[2]: default_upvr (readonly)
		[3]: SettingsRoute_upvr (readonly)
	]]
	return Promise_upvr.new(function(arg1, arg2) -- Line 10
		--[[ Upvalues[2]:
			[1]: default_upvr (copied, readonly)
			[2]: SettingsRoute_upvr (copied, readonly)
		]]
		default_upvr:switchToSettingsApp(SettingsRoute_upvr.Microphone):andThen(function() -- Line 12
			--[[ Upvalues[1]:
				[1]: arg1 (readonly)
			]]
			arg1()
		end):catch(function() -- Line 15
			--[[ Upvalues[1]:
				[1]: arg2 (readonly)
			]]
			arg2()
		end)
	end)
end