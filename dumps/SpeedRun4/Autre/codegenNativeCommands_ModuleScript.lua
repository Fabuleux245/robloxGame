-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:16:06
-- Luau version 6, Types version 3
-- Time taken: 0.000894 seconds

local function var1_upvr(...) -- Line 18
	error("Not implemented. Dependencies used upstream aren't implemented")
end
return {
	default = function(arg1) -- Line 31
		--[[ Upvalues[1]:
			[1]: var1_upvr (readonly)
		]]
		local module = {}
		for _, v_upvr in ipairs(arg1.supportedCommands) do
			module[v_upvr] = function(arg1_2, ...) -- Line 35
				--[[ Upvalues[2]:
					[1]: var1_upvr (copied, readonly)
					[2]: v_upvr (readonly)
				]]
				var1_upvr(arg1_2, v_upvr, ...)
			end
		end
		return module
	end;
}