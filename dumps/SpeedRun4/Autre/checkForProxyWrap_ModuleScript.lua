-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:09:18
-- Luau version 6, Types version 3
-- Time taken: 0.000705 seconds

local Constants_upvr = require(script.Parent.Parent.Constants)
return function(arg1) -- Line 5
	--[[ Upvalues[1]:
		[1]: Constants_upvr (readonly)
	]]
	if not arg1:GetAttribute(Constants_upvr.ProxyWrapAttributeName) then
		return false
	end
	if not arg1:IsA("MeshPart") then
		return false
	end
	if not arg1.Parent or not arg1.Parent:IsA("WrapTarget") and not arg1.Parent:IsA("WrapLayer") then
		return false
	end
	if #arg1:GetDescendants() ~= 0 then
		return false
	end
	local MeshContent = arg1.MeshContent
	if not MeshContent then
		return false
	end
	local Object = MeshContent.Object
	if not Object or not Object:IsA("EditableMesh") then
		return false
	end
	return true
end