-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:05:50
-- Luau version 6, Types version 3
-- Time taken: 0.001205 seconds

local module_upvr = {
	ModelRequestCooldown = math.huge;
	Remotes = {
		RequestModels = Instance.new("RemoteEvent");
	};
}
local var3_upvw = false
function module_upvr.InitializeRemotes(arg1) -- Line 21
	--[[ Upvalues[2]:
		[1]: var3_upvw (read and write)
		[2]: module_upvr (readonly)
	]]
	if var3_upvw then
	else
		var3_upvw = true
		local Remotes = module_upvr.Remotes
		if game:GetService("RunService"):IsServer() then
			for i, v in Remotes do
				v.Name = i
				v.Parent = script
				local var9 = arg1[v]
				if var9 then
					v.OnServerEvent:Connect(var9)
				end
			end
			return
		end
		for i_2, v_2 in Remotes do
			local var10 = arg1[v_2]
			v_2:Destroy()
			v_2 = script:WaitForChild(i_2)
			Remotes[i_2] = v_2
			if var10 then
				v_2.OnClientEvent:Connect(var10)
			end
		end
	end
end
return module_upvr