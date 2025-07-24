-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:09:40
-- Luau version 6, Types version 3
-- Time taken: 0.000802 seconds

local Constants_upvr = require(script.Parent.Parent.Constants)
return function(arg1) -- Line 9
	--[[ Upvalues[1]:
		[1]: Constants_upvr (readonly)
	]]
	if not arg1 or not arg1:IsA("WrapTarget") then
		return false
	end
	for _, v in arg1:GetChildren() do
		if v:IsA("MeshPart") and v:GetAttribute(Constants_upvr.ProxyWrapAttributeName) then
			return true
		end
	end
	return false
end