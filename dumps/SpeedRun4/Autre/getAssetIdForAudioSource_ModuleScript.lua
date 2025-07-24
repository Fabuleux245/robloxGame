-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:29:52
-- Luau version 6, Types version 3
-- Time taken: 0.000724 seconds

return function(arg1) -- Line 1, Named "getAssetIdForAudioSource"
	local var1
	if arg1:IsA("Sound") then
		var1 = arg1.SoundId
	elseif arg1:IsA("AudioPlayer") then
		var1 = arg1.Asset
	else
		var1 = nil
	end
	return tonumber(var1:match("rbxassetid://(.+)"))
end