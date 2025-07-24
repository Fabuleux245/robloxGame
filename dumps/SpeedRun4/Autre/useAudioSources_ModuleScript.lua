-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:59:41
-- Luau version 6, Types version 3
-- Time taken: 0.001495 seconds

local ReactSceneUnderstanding = script:FindFirstAncestor("ReactSceneUnderstanding")
local SoundService_upvr = game:GetService("SoundService")
local Cryo_upvr = require(ReactSceneUnderstanding.Parent.Cryo)
local function getAllAudioSources_upvr() -- Line 13, Named "getAllAudioSources"
	--[[ Upvalues[2]:
		[1]: SoundService_upvr (readonly)
		[2]: Cryo_upvr (readonly)
	]]
	local pcall_result1, pcall_result2 = pcall(function() -- Line 20
		--[[ Upvalues[1]:
			[1]: SoundService_upvr (copied, readonly)
		]]
		return SoundService_upvr:GetAudioInstances()
	end)
	if pcall_result1 then
		return Cryo_upvr.List.filter(pcall_result2, function(arg1) -- Line 25
			local children = arg1:IsA("Sound")
			if not children then
				children = arg1:IsA("AudioPlayer")
			end
			return children
		end)
	end
	return {}
end
local useState_upvr = require(ReactSceneUnderstanding.Parent.React).useState
local useTimedLoop_upvr = require(ReactSceneUnderstanding.useTimedLoop)
return function() -- Line 33, Named "useAudioSources"
	--[[ Upvalues[3]:
		[1]: useState_upvr (readonly)
		[2]: getAllAudioSources_upvr (readonly)
		[3]: useTimedLoop_upvr (readonly)
	]]
	local var9_result1, var9_result2_upvr = useState_upvr(getAllAudioSources_upvr)
	useTimedLoop_upvr(1, function() -- Line 36
		--[[ Upvalues[2]:
			[1]: var9_result2_upvr (readonly)
			[2]: getAllAudioSources_upvr (copied, readonly)
		]]
		var9_result2_upvr(getAllAudioSources_upvr())
	end)
	return var9_result1
end