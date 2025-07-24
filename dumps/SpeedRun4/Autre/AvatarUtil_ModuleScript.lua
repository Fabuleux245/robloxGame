-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:00:24
-- Luau version 6, Types version 3
-- Time taken: 0.002679 seconds

local tbl_upvr = {}
tbl_upvr.__index = tbl_upvr
local game_DefineFastFlag_result1_upvr = game:DefineFastFlag("FixAvatarUtilCharacter", false)
local function new(arg1) -- Line 19
	--[[ Upvalues[2]:
		[1]: tbl_upvr (readonly)
		[2]: game_DefineFastFlag_result1_upvr (readonly)
	]]
	local setmetatable_result1_upvr = setmetatable({}, tbl_upvr)
	setmetatable_result1_upvr.player = arg1
	setmetatable_result1_upvr.characterChangedEvent = Instance.new("BindableEvent")
	setmetatable_result1_upvr.eventQueued = false
	setmetatable_result1_upvr.connections = {}
	setmetatable_result1_upvr.connections.characterAddedConnection = arg1.CharacterAdded:Connect(function(arg1_2) -- Line 32
		--[[ Upvalues[1]:
			[1]: setmetatable_result1_upvr (readonly)
		]]
		setmetatable_result1_upvr:onCharacterChanged(arg1_2)
	end)
	setmetatable_result1_upvr.connections.characterAppearanceChangedConnection = arg1.CharacterAppearanceLoaded:Connect(function(arg1_3) -- Line 37
		--[[ Upvalues[1]:
			[1]: setmetatable_result1_upvr (readonly)
		]]
		setmetatable_result1_upvr:onCharacterChanged(arg1_3)
	end)
	if game_DefineFastFlag_result1_upvr and setmetatable_result1_upvr.player.Character then
		setmetatable_result1_upvr:onCharacterChanged(setmetatable_result1_upvr.player.Character)
	end
	return setmetatable_result1_upvr
end
tbl_upvr.new = new
function tbl_upvr.removeConnection(arg1, arg2) -- Line 51
	if arg1.connections[arg2] then
		arg1.connections[arg2]:Disconnect()
		arg1.connections[arg2] = nil
	end
end
function tbl_upvr.onCharacterChanged(arg1, arg2) -- Line 58
	arg1:removeConnection("descendantAddedConnection")
	arg1.connections.descendantAddedConnection = arg2.DescendantAdded:Connect(function(arg1_4) -- Line 61
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		arg1:onDescendantAdded(arg1_4)
	end)
	arg1:removeConnection("descendantRemovedConnection")
	arg1.connections.descendantRemovedConnection = arg2.DescendantRemoving:Connect(function(arg1_5) -- Line 66
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		arg1:onDescendantRemoving(arg1_5)
	end)
	for _, v in pairs(arg2:GetDescendants()) do
		arg1:onDescendantAdded(v)
	end
	arg1:fireCharacterChanged()
end
function tbl_upvr.onDescendantAdded(arg1, arg2) -- Line 79
	if arg2:IsA("NumberValue") then
		local var13 = arg2.Name.."Connection"
		arg1:removeConnection(var13)
		arg1.connections[var13] = arg2.Changed:Connect(function() -- Line 84
			--[[ Upvalues[1]:
				[1]: arg1 (readonly)
			]]
			arg1:fireCharacterChanged()
		end)
	end
	arg1:fireCharacterChanged()
end
function tbl_upvr.onDescendantRemoving(arg1, arg2) -- Line 93
	if arg2:IsA("NumberValue") then
		arg1:removeConnection(arg2.Name.."Connection")
	end
	arg1:fireCharacterChanged()
end
function tbl_upvr.fireCharacterChanged(arg1) -- Line 104
	if arg1.eventQueued then
	else
		arg1.eventQueued = true
		task.delay(0.1, function() -- Line 111
			--[[ Upvalues[1]:
				[1]: arg1 (readonly)
			]]
			arg1.eventQueued = false
			local Character = arg1.player.Character
			if Character then
				arg1.characterChangedEvent:Fire(Character)
			end
		end)
	end
end
local module_upvr = {}
module_upvr.__index = module_upvr
function module_upvr.new() -- Line 126
	--[[ Upvalues[1]:
		[1]: module_upvr (readonly)
	]]
	local setmetatable_result1 = setmetatable({}, module_upvr)
	setmetatable_result1.playerConnections = {}
	return setmetatable_result1
end
local Players_upvr = game:GetService("Players")
function module_upvr.connectLocalCharacterChanges(arg1, arg2) -- Line 137
	--[[ Upvalues[1]:
		[1]: Players_upvr (readonly)
	]]
	local var20
	while not var20 do
		Players_upvr.Changed:Wait()
		var20 = Players_upvr.LocalPlayer
	end
	arg1:connectPlayerCharacterChanges(var20, arg2)
end
function module_upvr.connectPlayerCharacterChanges(arg1, arg2, arg3) -- Line 152
	--[[ Upvalues[1]:
		[1]: tbl_upvr (readonly)
	]]
	if not arg1.playerConnections[arg2] then
		arg1.playerConnections[arg2] = tbl_upvr.new(arg2)
	end
	arg1.playerConnections[arg2].characterChangedEvent.Event:Connect(arg3)
	arg1.playerConnections[arg2]:fireCharacterChanged()
end
return module_upvr