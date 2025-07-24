-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:57:53
-- Luau version 6, Types version 3
-- Time taken: 0.006470 seconds

local tbl_upvr_2 = {
	Groups = {{
		GroupId = 1200769;
		ChatColor = Color3.new(1, 0.8431372549019608, 0);
	}};
	Players = {{}};
}
local function _(arg1, arg2) -- Line 23, Named "MakeIsInGroup"
	local var5 = true
	if type(arg2) ~= "nil" then
		if type(arg2) ~= "number" then
			var5 = false
		else
			var5 = true
		end
	end
	assert(var5, "requiredRank must be a number or nil")
	return function(arg1_2) -- Line 26
		--[[ Upvalues[2]:
			[1]: arg2 (readonly)
			[2]: arg1 (readonly)
		]]
		if arg1_2 and arg1_2.UserId then
			local var7_upvw = false
			local pcall_result1, pcall_result2 = pcall(function() -- Line 31
				--[[ Upvalues[4]:
					[1]: arg2 (copied, readonly)
					[2]: var7_upvw (read and write)
					[3]: arg1_2 (readonly)
					[4]: arg1 (copied, readonly)
				]]
				local var9 = arg2
				if var9 then
					if arg2 >= arg1_2:GetRankInGroup(arg1) then
						var9 = false
					else
						var9 = true
					end
					var7_upvw = var9
				else
					var7_upvw = arg1_2:IsInGroup(arg1)
				end
			end)
			if not pcall_result1 and pcall_result2 then
				print("Error checking in group: "..pcall_result2)
			end
			return var7_upvw
		end
		return false
	end
end
;(function() -- Line 49, Named "ConstructIsInGroups"
	--[[ Upvalues[1]:
		[1]: tbl_upvr_2 (readonly)
	]]
	if tbl_upvr_2.Groups then
		for _, v in pairs(tbl_upvr_2.Groups) do
			local Rank_upvr = v.Rank
			local var20 = true
			if type(Rank_upvr) ~= "nil" then
				if type(Rank_upvr) ~= "number" then
					var20 = false
				else
					var20 = true
				end
			end
			assert(var20, "requiredRank must be a number or nil")
			local GroupId_upvr = v.GroupId
			function v.IsInGroup(arg1) -- Line 26
				--[[ Upvalues[2]:
					[1]: Rank_upvr (readonly)
					[2]: GroupId_upvr (readonly)
				]]
				if arg1 and arg1.UserId then
					local var23_upvw = false
					local pcall_result1_2, pcall_result2_2 = pcall(function() -- Line 31
						--[[ Upvalues[4]:
							[1]: Rank_upvr (copied, readonly)
							[2]: var23_upvw (read and write)
							[3]: arg1 (readonly)
							[4]: GroupId_upvr (copied, readonly)
						]]
						local var25 = Rank_upvr
						if var25 then
							if Rank_upvr >= arg1:GetRankInGroup(GroupId_upvr) then
								var25 = false
							else
								var25 = true
							end
							var23_upvw = var25
						else
							var23_upvw = arg1:IsInGroup(GroupId_upvr)
						end
					end)
					if not pcall_result1_2 and pcall_result2_2 then
						print("Error checking in group: "..pcall_result2_2)
					end
					return var23_upvw
				end
				return false
			end
		end
	end
end)()
local Players_upvr = game:GetService("Players")
local function GetSpecialChatColor_upvr(arg1) -- Line 60, Named "GetSpecialChatColor"
	--[[ Upvalues[2]:
		[1]: tbl_upvr_2 (readonly)
		[2]: Players_upvr (readonly)
	]]
	if tbl_upvr_2.Players then
		local SOME = Players_upvr:FindFirstChild(arg1)
		if SOME then
			for _, v_2 in pairs(tbl_upvr_2.Players) do
				if SOME.UserId == v_2.UserId then
					return v_2.ChatColor
				end
			end
		end
	end
	if tbl_upvr_2.Groups then
		for _, v_3 in pairs(tbl_upvr_2.Groups) do
			if v_3.IsInGroup(Players_upvr:FindFirstChild(arg1)) then
				-- KONSTANTERROR: Expression was reused, decompilation is incorrect
				return v_3.ChatColor
			end
		end
	end
end
return function(arg1) -- Line 80, Named "Run"
	--[[ Upvalues[2]:
		[1]: GetSpecialChatColor_upvr (readonly)
		[2]: Players_upvr (readonly)
	]]
	local tbl_upvr_3 = {Color3.new(0.9921568627450981, 0.1607843137254902, 0.2627450980392157), Color3.new(0.00392156862745098, 0.6352941176470588, 1), Color3.new(0.00784313725490196, 0.7215686274509804, 0.3411764705882353), BrickColor.new("Bright violet").Color, BrickColor.new("Bright orange").Color, BrickColor.new("Bright yellow").Color, BrickColor.new("Light reddish violet").Color, BrickColor.new("Brick yellow").Color}
	local function GetNameValue_upvr(arg1_3) -- Line 93, Named "GetNameValue"
		local var58
		for i_4 = 1, #arg1_3 do
			local var59 = #arg1_3 - i_4 + 1
			local var60
			if #arg1_3 % 2 == 1 then
				var59 -= 1
			end
			if 2 <= var59 % 4 then
				var60 = -var60
			end
			var58 += var60
		end
		return var58
	end
	local function _(arg1_4) -- Line 110, Named "ComputeNameColor"
		--[[ Upvalues[2]:
			[1]: tbl_upvr_3 (readonly)
			[2]: GetNameValue_upvr (readonly)
		]]
		return tbl_upvr_3[(GetNameValue_upvr(arg1_4) + 0) % #tbl_upvr_3 + 1]
	end
	local function _(arg1_5) -- Line 114, Named "GetNameColor"
		--[[ Upvalues[2]:
			[1]: tbl_upvr_3 (readonly)
			[2]: GetNameValue_upvr (readonly)
		]]
		local any_GetPlayer_result1_3 = arg1_5:GetPlayer()
		if any_GetPlayer_result1_3 then
			if any_GetPlayer_result1_3.Team ~= nil then
				return any_GetPlayer_result1_3.TeamColor.Color
			end
		end
		return tbl_upvr_3[(GetNameValue_upvr(arg1_5.Name) + 0) % #tbl_upvr_3 + 1]
	end
	local function onNewSpeaker(arg1_6) -- Line 124
		--[[ Upvalues[4]:
			[1]: arg1 (readonly)
			[2]: tbl_upvr_3 (readonly)
			[3]: GetNameValue_upvr (readonly)
			[4]: GetSpecialChatColor_upvr (copied, readonly)
		]]
		local any_GetSpeaker_result1_3 = arg1:GetSpeaker(arg1_6)
		if not any_GetSpeaker_result1_3:GetExtraData("NameColor") then
			local any_GetPlayer_result1_2 = any_GetSpeaker_result1_3:GetPlayer()
			local var68
			if any_GetPlayer_result1_2 and any_GetPlayer_result1_2.Team ~= nil then
				var68 = any_GetPlayer_result1_2.TeamColor.Color
			else
				var68 = tbl_upvr_3[(GetNameValue_upvr(any_GetSpeaker_result1_3.Name) + 0) % #tbl_upvr_3 + 1]
			end
			any_GetSpeaker_result1_3:SetExtraData("NameColor", var68)
		end
		if not any_GetSpeaker_result1_3:GetExtraData("ChatColor") then
			local GetSpecialChatColor_upvr_result1 = GetSpecialChatColor_upvr(arg1_6)
			if GetSpecialChatColor_upvr_result1 then
				var68 = "ChatColor"
				any_GetSpeaker_result1_3:SetExtraData(var68, GetSpecialChatColor_upvr_result1)
			end
		end
		if not any_GetSpeaker_result1_3:GetExtraData("Tags") then
			any_GetSpeaker_result1_3:SetExtraData("Tags", {})
		end
	end
	arg1.SpeakerAdded:connect(onNewSpeaker)
	for _, v_4 in pairs(arg1:GetSpeakerList()) do
		onNewSpeaker(v_4)
	end
	local tbl_upvr = {}
	Players_upvr.PlayerAdded:connect(function(arg1_7) -- Line 161
		--[[ Upvalues[4]:
			[1]: arg1 (readonly)
			[2]: tbl_upvr_3 (readonly)
			[3]: GetNameValue_upvr (readonly)
			[4]: tbl_upvr (readonly)
		]]
		tbl_upvr[arg1_7] = arg1_7.Changed:connect(function(arg1_8) -- Line 162
			--[[ Upvalues[4]:
				[1]: arg1 (copied, readonly)
				[2]: arg1_7 (readonly)
				[3]: tbl_upvr_3 (copied, readonly)
				[4]: GetNameValue_upvr (copied, readonly)
			]]
			local any_GetSpeaker_result1_2 = arg1:GetSpeaker(arg1_7.Name)
			if any_GetSpeaker_result1_2 and (arg1_8 == "TeamColor" or arg1_8 == "Neutral" or arg1_8 == "Team") then
				local var77
				local any_GetPlayer_result1_4 = any_GetSpeaker_result1_2:GetPlayer()
				if any_GetPlayer_result1_4 and any_GetPlayer_result1_4.Team ~= nil then
					var77 = any_GetPlayer_result1_4.TeamColor.Color
				else
					var77 = tbl_upvr_3[(GetNameValue_upvr(any_GetSpeaker_result1_2.Name) + 0) % #tbl_upvr_3 + 1]
				end
				any_GetSpeaker_result1_2:SetExtraData("NameColor", var77)
			end
		end)
	end)
	Players_upvr.PlayerRemoving:connect(function(arg1_9) -- Line 173
		--[[ Upvalues[1]:
			[1]: tbl_upvr (readonly)
		]]
		local var80 = tbl_upvr[arg1_9]
		if var80 then
			var80:Disconnect()
		end
		tbl_upvr[arg1_9] = nil
	end)
end