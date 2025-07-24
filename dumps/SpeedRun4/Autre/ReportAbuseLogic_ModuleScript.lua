-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:43:04
-- Luau version 6, Types version 3
-- Time taken: 0.000808 seconds

local tbl_upvr = {
	voice = "voice";
	text = "text";
	other = "other";
}
function GetDefaultMethodOfAbuse(arg1, arg2) -- Line 14
	--[[ Upvalues[1]:
		[1]: tbl_upvr (readonly)
	]]
	if arg1 then
		if arg2:getRecentUsersInteractionData()[tostring(arg1.UserId)] then
			return tbl_upvr.voice
		end
		return tbl_upvr.text
	end
	if arg2:GetMutedAnyone() then
		return tbl_upvr.voice
	end
	return tbl_upvr.text
end
return {
	MethodsOfAbuse = tbl_upvr;
	GetDefaultMethodOfAbuse = GetDefaultMethodOfAbuse;
}