-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:36:35
-- Luau version 6, Types version 3
-- Time taken: 0.000815 seconds

function getIconSrc(arg1, arg2) -- Line 4
	if not arg2 or not arg2..'/' then
	end
	return "rbxasset://textures/ui/VoiceChat/"..""..arg1..".png"
end
return function(arg1, arg2, arg3) -- Line 9
	if arg1 == "Unmuted" then
		local var2 = arg3
		if not var2 then
			var2 = math.random()
		end
		if not arg3 or not getIconSrc("Unmuted"..tostring(math.floor(0.5 + 5 * var2) * 20), arg2) then
		end
		return getIconSrc("Blank", arg2)
	end
	return getIconSrc(arg1, arg2)
end