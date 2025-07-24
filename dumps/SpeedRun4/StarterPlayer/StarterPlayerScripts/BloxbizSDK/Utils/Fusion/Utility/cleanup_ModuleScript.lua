-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:40:08
-- Luau version 6, Types version 3
-- Time taken: 0.001268 seconds

local function cleanupOne_upvr(arg1) -- Line 14, Named "cleanupOne"
	--[[ Upvalues[1]:
		[1]: cleanupOne_upvr (readonly)
	]]
	local typeof_result1 = typeof(arg1)
	if typeof_result1 == "Instance" then
		arg1:Destroy()
	else
		if typeof_result1 == "RBXScriptConnection" then
			arg1:Disconnect()
			return
		end
		if typeof_result1 == "function" then
			arg1()
			return
		end
		if typeof_result1 == "table" then
			if typeof(arg1.destroy) == "function" then
				arg1:destroy()
				return
			end
			if typeof(arg1.Destroy) == "function" then
				arg1:Destroy()
				return
			end
			if arg1[1] ~= nil then
				for _, v in ipairs(arg1) do
					cleanupOne_upvr(v)
				end
			end
		end
	end
end
return function(...) -- Line 47, Named "cleanup"
	--[[ Upvalues[1]:
		[1]: cleanupOne_upvr (readonly)
	]]
	for i = 1, select('#', ...) do
		cleanupOne_upvr(select(i, ...))
	end
end