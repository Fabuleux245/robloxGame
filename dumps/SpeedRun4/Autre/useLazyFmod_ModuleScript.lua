-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:37:18
-- Luau version 6, Types version 3
-- Time taken: 0.000586 seconds

local useEffect_upvr = require(script:FindFirstAncestor("MediaPlayback").Parent.React).useEffect
local game_DefineFastInt_result1_upvr = game:DefineFastInt("InitializeFmodMsDelay", 0)
local SoundService_upvr = game:GetService("SoundService")
return function() -- Line 42, Named "useLazyFmod"
	--[[ Upvalues[3]:
		[1]: useEffect_upvr (readonly)
		[2]: game_DefineFastInt_result1_upvr (readonly)
		[3]: SoundService_upvr (readonly)
	]]
	useEffect_upvr(function() -- Line 43
		--[[ Upvalues[2]:
			[1]: game_DefineFastInt_result1_upvr (copied, readonly)
			[2]: SoundService_upvr (copied, readonly)
		]]
		if game:GetEngineFeature("SoundServiceSetSoundEnabled") then
			task.delay(game_DefineFastInt_result1_upvr / 1000, function() -- Line 45
				--[[ Upvalues[1]:
					[1]: SoundService_upvr (copied, readonly)
				]]
				SoundService_upvr:SetSoundEnabled(true)
			end)
		end
	end, {})
end