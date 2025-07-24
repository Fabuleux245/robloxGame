-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:55:37
-- Luau version 6, Types version 3
-- Time taken: 0.000392 seconds

local MemStorageService_upvr = game:GetService("MemStorageService")
return function(arg1, arg2) -- Line 6
	--[[ Upvalues[1]:
		[1]: MemStorageService_upvr (readonly)
	]]
	if arg2 == nil then
	else
		if MemStorageService_upvr:HasItem(arg1) then return end
		MemStorageService_upvr:SetItem(arg1, "true")
		arg2()
	end
end