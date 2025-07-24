-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:09:33
-- Luau version 6, Types version 3
-- Time taken: 0.001018 seconds

local module_upvr = require(script.Parent.Parent.Parent.Parent:FindFirstChild("Utils"):WaitForChild("Fusion"))
return function(arg1, arg2, arg3, arg4) -- Line 22
	--[[ Upvalues[1]:
		[1]: module_upvr (readonly)
	]]
	return module_upvr.Spring(module_upvr.Computed(function() -- Line 24
		--[[ Upvalues[2]:
			[1]: arg1 (readonly)
			[2]: arg2 (readonly)
		]]
		if arg1.Enabled:get() then
			if arg1.Selected:get() then
				local Selected = arg2.Selected
				if not Selected then
					Selected = arg2.Default
				end
				return Selected
			end
			if arg1.HeldDown:get() then
				local MouseDown = arg2.MouseDown
				if not MouseDown then
					MouseDown = arg2.Default
				end
				return MouseDown
			end
			if arg1.Hovering:get() then
				local Hover = arg2.Hover
				if not Hover then
					Hover = arg2.Default
				end
				return Hover
			end
			return arg2.Default
		end
		local Disabled = arg2.Disabled
		if not Disabled then
			Disabled = arg2.Default
		end
		return Disabled
	end), arg3 or 20, arg4 or 1)
end