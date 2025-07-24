-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:47:18
-- Luau version 6, Types version 3
-- Time taken: 0.001551 seconds

local Cryo_upvr = require(script:FindFirstAncestor("AppBlox").Parent.Cryo)
return function(arg1) -- Line 6, Named "getShowItems"
	--[[ Upvalues[1]:
		[1]: Cryo_upvr (readonly)
	]]
	local module = {}
	local module_2 = {}
	for i, v in ipairs(arg1.items) do
		if v.isYouTubeVideo then
			table.insert(module, Cryo_upvr.Dictionary.join(v, {
				originalIndex = i;
			}))
		else
			table.insert(module_2, Cryo_upvr.Dictionary.join(v, {
				originalIndex = i;
			}))
		end
	end
	local any_join_result1 = Cryo_upvr.List.join(module, module_2)
	local numberOfThumbnails = arg1.numberOfThumbnails
	if numberOfThumbnails then
		v = #any_join_result1 + 1
		i = 1
		for i_2 = v, numberOfThumbnails, i do
			any_join_result1[i_2] = {}
			local var17
		end
	end
	return var17, #module, #module_2
end