-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:00:50
-- Luau version 6, Types version 3
-- Time taken: 0.000735 seconds

return function(arg1) -- Line 3
	if not arg1 then
		return {}
	end
	if not arg1._childrenNavigation then
		arg1._childrenNavigation = {}
	end
	local _childrenNavigation = arg1._childrenNavigation
	local routes = arg1.state.routes
	if not routes then
		routes = {}
	end
	for _, v in routes do
		({})[v.key] = true
		local var12
	end
	if not arg1.state.isTransitioning then
		for i_2, _ in _childrenNavigation do
			if not var12[i_2] then
				_childrenNavigation[i_2] = nil
			end
		end
	end
	return arg1._childrenNavigation
end