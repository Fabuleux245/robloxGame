-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:58:00
-- Luau version 6, Types version 3
-- Time taken: 0.002195 seconds

local ReplicatedStorage = game:GetService("ReplicatedStorage")
local tbl_upvr = {}
if not ReplicatedStorage:FindFirstChild("DefaultSoundEvents") then
	local Folder_upvw = Instance.new("Folder")
	Folder_upvw.Name = "DefaultSoundEvents"
	Folder_upvw.Archivable = false
	Folder_upvw.Parent = ReplicatedStorage
end
local function _(arg1, arg2) -- Line 27, Named "createEvent"
	--[[ Upvalues[1]:
		[1]: Folder_upvw (read and write)
	]]
	if not Folder_upvw:FindFirstChild(arg1) then
		local any = Instance.new(arg2)
		any.Name = arg1
		any.Parent = Folder_upvw
	end
	return any
end
if not Folder_upvw:FindFirstChild("DefaultServerSoundEvent") then
	local RemoteEvent_2 = Instance.new("RemoteEvent")
	RemoteEvent_2.Name = "DefaultServerSoundEvent"
	RemoteEvent_2.Parent = Folder_upvw
end
local var6_upvr = RemoteEvent_2
if not Folder_upvw:FindFirstChild("AddCharacterLoadedEvent") then
	local RemoteEvent_3 = Instance.new("RemoteEvent")
	RemoteEvent_3.Name = "AddCharacterLoadedEvent"
	RemoteEvent_3.Parent = Folder_upvw
end
if not Folder_upvw:FindFirstChild("RemoveCharacterEvent") then
	local RemoteEvent = Instance.new("RemoteEvent")
	RemoteEvent.Name = "RemoveCharacterEvent"
	RemoteEvent.Parent = Folder_upvw
end
local function removeCharacter(arg1) -- Line 55
	--[[ Upvalues[1]:
		[1]: tbl_upvr (readonly)
	]]
	tbl_upvr[arg1] = nil
end
if not Folder_upvw:FindFirstChild("SoundDispatcher") then
	local BindableEvent = Instance.new("BindableEvent")
	BindableEvent.Name = "SoundDispatcher"
	BindableEvent.Parent = Folder_upvw
end
BindableEvent.Event:Connect(function(arg1, arg2, arg3, arg4) -- Line 43, Named "fireDefaultServerSoundEventToClient"
	--[[ Upvalues[2]:
		[1]: tbl_upvr (readonly)
		[2]: var6_upvr (readonly)
	]]
	if tbl_upvr[arg1] then
		var6_upvr:FireClient(arg1, arg2, arg3, arg4)
	end
end)
var6_upvr.OnServerEvent:Connect(function() -- Line 63
end)
RemoteEvent_3.OnServerEvent:Connect(function(arg1) -- Line 50, Named "addCharacterLoaded"
	--[[ Upvalues[1]:
		[1]: tbl_upvr (readonly)
	]]
	tbl_upvr[arg1] = true
end)
RemoteEvent.OnServerEvent:Connect(removeCharacter)
game:GetService("Players").PlayerRemoving:Connect(removeCharacter)