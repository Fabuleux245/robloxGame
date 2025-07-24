-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:52:24
-- Luau version 6, Types version 3
-- Time taken: 0.000968 seconds

local equalObjects_upvr = require(script.Parent.Parent.equalObjects)
return function(...) -- Line 4, Named "equals"
	--[[ Upvalues[1]:
		[1]: equalObjects_upvr (readonly)
	]]
	if equalObjects_upvr(...) then
		return true
	end
	local arg_count = select('#', ...)
	for i = 1, arg_count do
		local selected_arg = select(i, ...)
		for i_2 = 1, arg_count do
			if i_2 ~= i then
				for i_3 = 1, #selected_arg do
					if selected_arg[i_3] ~= select(i_2, ...)[i_3] then
						return false
					end
				end
			end
		end
	end
	return true
end