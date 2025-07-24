-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:30:46
-- Luau version 6, Types version 3
-- Time taken: 0.000386 seconds

local module_upvr = {Color3.fromRGB(245, 190, 240), Color3.fromRGB(192, 206, 251), Color3.fromRGB(145, 223, 188), Color3.fromRGB(63, 64, 70), Color3.fromRGB(250, 212, 106)}
return function(arg1) -- Line 9
	--[[ Upvalues[1]:
		[1]: module_upvr (readonly)
	]]
	return module_upvr[arg1 % #module_upvr + 1]
end