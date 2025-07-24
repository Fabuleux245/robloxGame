-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:41:43
-- Luau version 6, Types version 3
-- Time taken: 0.001338 seconds

local module_upvr = {}
local tbl_upvw = {}
local BindableEvent_2_upvr = Instance.new("BindableEvent")
BindableEvent_2_upvr.Name = "OnDataChanged"
module_upvr.DataChanged = BindableEvent_2_upvr
local BindableEvent = Instance.new("BindableEvent")
BindableEvent.Name = "OnDataLoaded"
module_upvr.DataLoaded = BindableEvent
function module_upvr.GetData(arg1) -- Line 17
	--[[ Upvalues[2]:
		[1]: module_upvr (readonly)
		[2]: tbl_upvw (read and write)
	]]
	if module_upvr.DataLoaded ~= true then
		module_upvr.DataLoaded.Event:Wait()
	end
	return tbl_upvw[arg1]
end
game:GetService("ReplicatedStorage"):WaitForChild("BloxbizRemotes"):WaitForChild("OnReplicateData").OnClientEvent:Connect(function(arg1, arg2) -- Line 25
	--[[ Upvalues[3]:
		[1]: tbl_upvw (read and write)
		[2]: BindableEvent_2_upvr (readonly)
		[3]: module_upvr (readonly)
	]]
	if arg1 then
		if type(arg2) == "table" and arg2.InnerKey then
			tbl_upvw[arg1][arg2.InnerKey] = arg2.InnerValue
		else
			tbl_upvw[arg1] = arg2
		end
		BindableEvent_2_upvr:Fire(arg1, arg2)
	else
		tbl_upvw = arg2
		module_upvr.DataLoaded:Fire()
		module_upvr.DataLoaded:Destroy()
		module_upvr.DataLoaded = true
	end
end)
return module_upvr