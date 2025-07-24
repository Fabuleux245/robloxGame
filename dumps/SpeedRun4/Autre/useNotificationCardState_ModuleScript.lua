-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:32:37
-- Luau version 6, Types version 3
-- Time taken: 0.000599 seconds

local Parent = script.Parent
local React_upvr = require(Parent.Parent.Parent.React)
local NotificationCardContext_upvr = require(Parent.NotificationCardContext)
return function(arg1) -- Line 8, Named "useNotificationCardState"
	--[[ Upvalues[2]:
		[1]: React_upvr (readonly)
		[2]: NotificationCardContext_upvr (readonly)
	]]
	local any_useContext_result1 = React_upvr.useContext(NotificationCardContext_upvr)
	local var6
	if arg1 then
		local function INLINED() -- Internal function, doesn't exist in bytecode
			var6 = any_useContext_result1.state.visualItems[arg1]
			return var6
		end
		if not any_useContext_result1.state or not any_useContext_result1.state.visualItems or not INLINED() then
			var6 = {}
		end
		return var6
	end
	return any_useContext_result1.state
end