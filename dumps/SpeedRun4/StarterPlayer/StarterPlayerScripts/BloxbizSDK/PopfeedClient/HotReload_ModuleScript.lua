-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:42:03
-- Luau version 6, Types version 3
-- Time taken: 0.001462 seconds

local Gui = script.Parent.Gui
local module_upvr = {
	MakeGuiData = {};
}
if game:GetService("RunService"):IsStudio() then
	local function refresh_upvr() -- Line 14, Named "refresh"
		--[[ Upvalues[1]:
			[1]: module_upvr (readonly)
		]]
		for _, v in module_upvr.MakeGuiData do
			local any_Function_result1 = v.Function(v.Props)
			v.Gui:Destroy()
			v.Gui = any_Function_result1
			any_Function_result1.Parent = v.Parent
		end
	end
	local function connectModules(arg1) -- Line 25
		--[[ Upvalues[1]:
			[1]: refresh_upvr (readonly)
		]]
		for _, v_2_upvr in arg1:GetChildren() do
			if v_2_upvr:IsA("ModuleScript") then
				local Parent_upvr = v_2_upvr.Parent
				local clone_upvw = v_2_upvr:Clone()
				clone_upvw.Parent = Parent_upvr
				v_2_upvr.Parent = nil
				v_2_upvr.Changed:Connect(function() -- Line 37
					--[[ Upvalues[4]:
						[1]: clone_upvw (read and write)
						[2]: v_2_upvr (readonly)
						[3]: Parent_upvr (readonly)
						[4]: refresh_upvr (copied, readonly)
					]]
					clone_upvw:Destroy()
					clone_upvw = v_2_upvr:Clone()
					clone_upvw.Parent = Parent_upvr
					refresh_upvr()
				end)
			end
		end
	end
	connectModules(Gui.Windows)
	connectModules(Gui.Components)
end
return module_upvr