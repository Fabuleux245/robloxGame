-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:57:57
-- Luau version 6, Types version 3
-- Time taken: 0.002537 seconds

local Players_upvr = game:GetService("Players")
local tbl_upvr = {
	ChattingToSelf = 1;
	NoMatches = 2;
	MultipleMatches = 3;
}
local module_upvr = require(game:GetService("Chat"):WaitForChild("ClientChatModules"):WaitForChild("ChatSettings"))
return {
	CommandErrorCodes = tbl_upvr;
	getUserNameFromChattedName = function(arg1, arg2, arg3) -- Line 14, Named "getUserNameFromChattedName"
		--[[ Upvalues[3]:
			[1]: tbl_upvr (readonly)
			[2]: Players_upvr (readonly)
			[3]: module_upvr (readonly)
		]]
		if arg2 == arg1 then
			return arg2, tbl_upvr.ChattingToSelf
		end
		local players = Players_upvr:GetPlayers()
		for _, v in pairs(players) do
			if string.lower(v.Name) == string.lower(arg1) then
				return v.Name, nil
			end
		end
		if module_upvr.PlayerDisplayNamesEnabled then
			for _, v_2 in pairs(players) do
				if v_2.Name ~= arg2 and string.lower(v_2.DisplayName) == string.lower(arg1) then
					local var19 = 0 + 1
				end
			end
		end
		if var19 == 1 then
			return v_2.Name, nil
		end
		if var19 == 0 then
			if arg3 == arg1 then
				return arg3, tbl_upvr.ChattingToSelf
			end
			return arg1, tbl_upvr.NoMatches
		end
		if 2 <= var19 then
			return arg1, tbl_upvr.MultipleMatches
		end
	end;
	getUsersWithDisplayNameString = function(arg1, arg2) -- Line 56, Named "getUsersWithDisplayNameString"
		--[[ Upvalues[1]:
			[1]: Players_upvr (readonly)
		]]
		local tbl = {}
		local var32
		for _, v_3 in pairs(Players_upvr:GetPlayers()) do
			if v_3.Name ~= arg2 and string.lower(v_3.DisplayName) == string.lower(arg1) then
				table.insert(tbl, v_3.Name)
			end
		end
		for i_4, v_4 in pairs(tbl) do
			if i_4 ~= #tbl then
				var32 = var32..'@'..v_4..", "
			else
				var32 = var32..'@'..v_4
			end
		end
		return var32
	end;
}