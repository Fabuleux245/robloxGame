-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:59:39
-- Luau version 6, Types version 3
-- Time taken: 0.003022 seconds

local HttpService_upvr = game:GetService("HttpService")
local function _(arg1, arg2, arg3) -- Line 22, Named "request"
	--[[ Upvalues[1]:
		[1]: HttpService_upvr (readonly)
	]]
	return HttpService_upvr:RequestInternal(arg1):Start(function(arg1_2, arg2_2) -- Line 23
		--[[ Upvalues[2]:
			[1]: arg2 (readonly)
			[2]: arg3 (readonly)
		]]
		if arg1_2 then
			arg2()
		else
			arg3(tostring(arg2_2.StatusMessage))
		end
	end)
end
local Players_upvr = game:GetService("Players")
local Url_upvr = require(script.Parent.Parent.Parent.InGameMenu.Network.Url)
local Promise_upvr = require(game:GetService("CorePackages").Packages.InGameMenuDependencies).Promise
return function(arg1, arg2, arg3, arg4, arg5, arg6) -- Line 32
	--[[ Upvalues[4]:
		[1]: Players_upvr (readonly)
		[2]: Url_upvr (readonly)
		[3]: HttpService_upvr (readonly)
		[4]: Promise_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local var7 = 1
	if arg3 == "" or arg3 == nil then
		var7 = 2
	end
	local tbl_3 = {}
	local tbl_7 = {}
	local tbl = {
		ServiceSource = {
			Type = var7;
			ExternalId = "UID_"..game.GameId;
		};
	}
	local tbl_6 = {
		ContentType = 1;
	}
	tbl_6.Value = arg1
	tbl.Source = tbl_6
	local tbl_2 = {
		ContentType = 1;
	}
	tbl_2.Value = arg2
	tbl.Translation = tbl_2
	tbl_7.FeedbackTarget = tbl
	if Players_upvr.LocalPlayer.LocaleId then
		tbl = Players_upvr.LocalPlayer.LocaleId:gsub('-', '_')
	else
		tbl = ""
	end
	tbl_7.Locale = tbl
	tbl_7.ReasonType = arg6
	local tbl_5 = {
		ContentType = 1;
	}
	tbl_5.Value = arg4
	tbl_7.Suggestion = tbl_5
	tbl_7.Comments = arg5
	tbl_3.LocalizationFeedback = tbl_7
	local tbl_4_upvr = {
		Url = string.format("%sfeedback-api/v1/feedback/create-localization", Url_upvr.APIS_URL);
		Method = "POST";
		Body = HttpService_upvr:JSONEncode(tbl_3);
		Headers = {
			["Content-Type"] = "application/json";
			Accept = "application/json";
		};
	}
	return Promise_upvr.new(function(arg1_3, arg2_3) -- Line 87
		--[[ Upvalues[2]:
			[1]: tbl_4_upvr (readonly)
			[2]: HttpService_upvr (copied, readonly)
		]]
		spawn(function() -- Line 88
			--[[ Upvalues[4]:
				[1]: tbl_4_upvr (copied, readonly)
				[2]: arg1_3 (readonly)
				[3]: arg2_3 (readonly)
				[4]: HttpService_upvr (copied, readonly)
			]]
			local function _(arg1_4, arg2_4) -- Line 23
				--[[ Upvalues[2]:
					[1]: arg1_3 (readonly)
					[2]: arg2_3 (readonly)
				]]
				if arg1_4 then
					arg1_3()
				else
					arg2_3(tostring(arg2_4.StatusMessage))
				end
			end
		end)
	end)
end