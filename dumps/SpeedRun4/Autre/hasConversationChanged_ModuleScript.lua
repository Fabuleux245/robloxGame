-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:52:01
-- Luau version 6, Types version 3
-- Time taken: 0.001085 seconds

local hasSameParticipants_upvr = require(script.Parent.hasSameParticipants)
return function(arg1) -- Line 3
	--[[ Upvalues[1]:
		[1]: hasSameParticipants_upvr (readonly)
	]]
	if not arg1.existing then
		return true
	end
	if arg1.new.lastUpdated and arg1.existing.lastUpdated and math.floor(arg1.existing.lastUpdated:GetUnixTimestamp()) ~= math.floor(arg1.new.lastUpdated:GetUnixTimestamp()) then
		return true
	end
	if arg1.existing.title ~= arg1.new.title then
		return true
	end
	if not hasSameParticipants_upvr({
		existing = arg1.existing.participants;
		new = arg1.new.participants;
	}) then
		return true
	end
	if arg1.new.hasUnreadMessages and not arg1.existing.hasUnreadMessages then
		return true
	end
	return false
end