-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:06:06
-- Luau version 6, Types version 3
-- Time taken: 0.000961 seconds

local mockProviders_upvr = require(script.Parent.mockProviders)
local Roact_upvr = require(script.Parent.Parent.Parent.dependencies).Roact
return function(arg1, arg2) -- Line 7
	--[[ Upvalues[2]:
		[1]: mockProviders_upvr (readonly)
		[2]: Roact_upvr (readonly)
	]]
	if arg2 == nil then
		local Frame_upvw = Instance.new("Frame")
	end
	local any_mount_result1_upvr = Roact_upvr.mount(mockProviders_upvr(arg1), Frame_upvw)
	return Frame_upvw, function() -- Line 14
		--[[ Upvalues[3]:
			[1]: Roact_upvr (copied, readonly)
			[2]: any_mount_result1_upvr (readonly)
			[3]: Frame_upvw (read and write)
		]]
		Roact_upvr.unmount(any_mount_result1_upvr)
		Frame_upvw:Destroy()
	end
end