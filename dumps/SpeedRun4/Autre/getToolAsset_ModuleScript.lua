-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:50:29
-- Luau version 6, Types version 3
-- Time taken: 0.000883 seconds

return function(arg1, arg2) -- Line 2, Named "getToolAsset"
	return arg1.loadAssetForEquip(arg2):andThen(function(arg1_2) -- Line 4
		if arg1_2:IsA("Tool") then
			return arg1_2
		end
		for _, v in ipairs(arg1_2:GetChildren()) do
			if v:IsA("Tool") then
				return v
			end
		end
	end):catch(function(arg1_3) -- Line 16
		return nil
	end)
end