-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:06:06
-- Luau version 6, Types version 3
-- Time taken: 0.001171 seconds

local HttpService_upvr = game:GetService("HttpService")
local mockProviders_upvr = require(script.Parent.mockProviders)
local Roact_upvr = require(script.Parent.Parent.Parent.dependencies).Roact
return function(arg1, arg2) -- Line 17
	--[[ Upvalues[3]:
		[1]: HttpService_upvr (readonly)
		[2]: mockProviders_upvr (readonly)
		[3]: Roact_upvr (readonly)
	]]
	local var5 = arg2
	if not var5 then
		var5 = {}
	end
	local var6 = var5
	var5 = var6.parent
	local var7_upvw = var5
	if var7_upvw == nil then
		var7_upvw = Instance.new("Frame")
		var7_upvw.Name = HttpService_upvr:GenerateGUID(false)
	end
	local any_mount_result1_upvr = Roact_upvr.mount(mockProviders_upvr(arg1, var6), var7_upvw)
	return var7_upvw, function() -- Line 28
		--[[ Upvalues[3]:
			[1]: Roact_upvr (copied, readonly)
			[2]: any_mount_result1_upvr (readonly)
			[3]: var7_upvw (read and write)
		]]
		Roact_upvr.unmount(any_mount_result1_upvr)
		var7_upvw:Destroy()
	end
end