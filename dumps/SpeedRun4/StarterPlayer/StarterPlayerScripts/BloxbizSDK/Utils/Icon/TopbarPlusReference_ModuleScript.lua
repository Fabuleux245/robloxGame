-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:39:42
-- Luau version 6, Types version 3
-- Time taken: 0.000893 seconds

local ReplicatedStorage_upvr = game:GetService("ReplicatedStorage")
return {
	addToReplicatedStorage = function() -- Line 9, Named "addToReplicatedStorage"
		--[[ Upvalues[1]:
			[1]: ReplicatedStorage_upvr (readonly)
		]]
		if ReplicatedStorage_upvr:FindFirstChild(script.Name) then
			return false
		end
		local ObjectValue = Instance.new("ObjectValue")
		ObjectValue.Name = script.Name
		ObjectValue.Value = script.Parent
		ObjectValue.Parent = ReplicatedStorage_upvr
		return ObjectValue
	end;
	getObject = function() -- Line 21, Named "getObject"
		--[[ Upvalues[1]:
			[1]: ReplicatedStorage_upvr (readonly)
		]]
		local SOME = ReplicatedStorage_upvr:FindFirstChild(script.Name)
		if SOME then
			return SOME
		end
		return false
	end;
}