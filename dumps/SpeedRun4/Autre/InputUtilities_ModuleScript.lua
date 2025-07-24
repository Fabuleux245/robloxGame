-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:28:19
-- Luau version 6, Types version 3
-- Time taken: 0.001260 seconds

return {
	isActivationInput = function(arg1) -- Line 3, Named "isActivationInput"
		local var2 = true
		if arg1.UserInputType ~= Enum.UserInputType.MouseButton1 then
			if arg1.UserInputType ~= Enum.UserInputType.Touch then
				var2 = false
			else
				var2 = true
			end
		end
		return var2
	end;
	isPointerInput = function(arg1) -- Line 8, Named "isPointerInput"
		local var3 = true
		if arg1.UserInputType ~= Enum.UserInputType.MouseMovement then
			if arg1.UserInputType ~= Enum.UserInputType.Touch then
				var3 = false
			else
				var3 = true
			end
		end
		return var3
	end;
	isTouchInput = function(arg1) -- Line 13, Named "isTouchInput"
		local var4
		if arg1.UserInputType ~= Enum.UserInputType.Touch then
			var4 = false
		else
			var4 = true
		end
		return var4
	end;
}