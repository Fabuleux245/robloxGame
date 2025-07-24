-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:46:55
-- Luau version 6, Types version 3
-- Time taken: 0.001274 seconds

return function(...) -- Line 5, Named "composeFocusBehaviors"
	local args_list_upvr = {...}
	return {
		onDescendantFocusChanged = function(arg1) -- Line 8, Named "onDescendantFocusChanged"
			--[[ Upvalues[1]:
				[1]: args_list_upvr (readonly)
			]]
			for _, v in args_list_upvr do
				if v.onDescendantFocusChanged then
					v.onDescendantFocusChanged(arg1)
				end
			end
		end;
		getTargets = function() -- Line 15, Named "getTargets"
			--[[ Upvalues[1]:
				[1]: args_list_upvr (readonly)
			]]
			local module = {}
			for _, v_2 in args_list_upvr do
				for _, v_3 in v_2.getTargets(), nil do
					table.insert(module, v_3)
				end
			end
			return module
		end;
	}
end