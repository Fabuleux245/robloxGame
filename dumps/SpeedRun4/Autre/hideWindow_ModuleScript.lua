-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:50:55
-- Luau version 6, Types version 3
-- Time taken: 0.000787 seconds

local Parent = script.Parent.Parent
local Thunk_upvr = require(Parent.Thunk)
local SetWindowState_upvr = require(Parent.Actions.SetWindowState)
local WindowState_upvr = require(Parent.Enums.WindowState)
return function() -- Line 7, Named "hideWindow"
	--[[ Upvalues[3]:
		[1]: Thunk_upvr (readonly)
		[2]: SetWindowState_upvr (readonly)
		[3]: WindowState_upvr (readonly)
	]]
	return Thunk_upvr.new(script.Name, {}, function(arg1, arg2) -- Line 8
		--[[ Upvalues[2]:
			[1]: SetWindowState_upvr (copied, readonly)
			[2]: WindowState_upvr (copied, readonly)
		]]
		return arg1:dispatch(SetWindowState_upvr(WindowState_upvr.Hidden))
	end)
end