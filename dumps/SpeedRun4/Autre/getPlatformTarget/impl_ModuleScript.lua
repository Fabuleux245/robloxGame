-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:46:58
-- Luau version 6, Types version 3
-- Time taken: 0.003496 seconds

return function(arg1) -- Line 1
	return function() -- Line 2, Named "getPlatformTarget"
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
		local None_upvw = Enum.Platform.None
		pcall(function() -- Line 8
			--[[ Upvalues[2]:
				[1]: None_upvw (read and write)
				[2]: arg1 (copied, readonly)
			]]
			None_upvw = arg1:GetPlatform()
		end)
		local var9 = true
		local var10
		if None_upvw ~= Enum.Platform.Windows then
			if None_upvw ~= Enum.Platform.OSX then
				var9 = false
			else
				var9 = true
			end
		end
		local var11 = true
		var10 = Enum.Platform.IOS
		if None_upvw ~= var10 then
			var10 = Enum.Platform.Android
			if None_upvw ~= var10 then
				var11 = false
			else
				var11 = true
			end
		end
		var10 = var11
		if not var10 then
			if None_upvw ~= Enum.Platform.UWP then
			else
			end
		end
		if None_upvw ~= Enum.Platform.XBox360 then
			if None_upvw ~= Enum.Platform.XBoxOne then
			else
			end
		end
		if not true then
			if None_upvw ~= Enum.Platform.PS3 then
				if None_upvw ~= Enum.Platform.PS4 then
					if game:GetEngineFeature("PlatformEnumPS5") then
						if None_upvw ~= Enum.Platform.PS5 then
						else
						end
					end
				end
			end
		end
		if not true then
			if None_upvw ~= Enum.Platform.WiiU then
			else
			end
		end
		if var9 then
		elseif true then
		elseif true then
		else
		end
		return "console"..tostring(None_upvw)
	end
end