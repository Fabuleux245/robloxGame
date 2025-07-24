-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:09:26
-- Luau version 6, Types version 3
-- Time taken: 0.000528 seconds

local function destroyHelper_upvr(arg1) -- Line 6, Named "destroyHelper"
	for _, v in arg1 do
		for _, v_2 in v do
			if v_2.created and v_2.instance then
				v_2.instance:Destroy()
			end
		end
	end
end
return function(arg1, arg2) -- Line 18
	--[[ Upvalues[1]:
		[1]: destroyHelper_upvr (readonly)
	]]
	destroyHelper_upvr(arg1)
	destroyHelper_upvr(arg2)
end