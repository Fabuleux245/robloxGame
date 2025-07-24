-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:50:09
-- Luau version 6, Types version 3
-- Time taken: 0.001873 seconds

local AppChat = script:FindFirstAncestor("AppChat")
local Parent = AppChat.Parent
local var8 = "(?:"
for _, v in {"roblox\\.com", "sitetest\\d\\.robloxlabs\\.com", "gametest\\d\\.robloxlabs\\.com", "roblox\\.cn", "roblox\\.qq\\.com", "roblox-cn\\.com"} do
	var8 = var8..v..'|'
end
var8 = var8:sub(1, -2)..')'
local getFFlagAppChatEnableShareLinkGameCards_upvr = require(AppChat.Flags.getFFlagAppChatEnableShareLinkGameCards)
local separateRobloxUrlsFromText_upvr = require(script.Parent.RobloxUrlUtils.separateRobloxUrlsFromText)
local matchAllRegex_upvr = require(script.Parent.matchAllRegex)
local var13_upvr = require(Parent.RegExp)("\\S*"..var8.."(?:\\/[A-Za-z]{2}(?:-[A-Za-z0-9]{2,3})?)?".."\\/games\\/(\\d+)\\/?".."\\S*")
local addMessage_upvr = require(script.Parent.addMessage)
local Text_upvr = require(Parent.AppCommonLib).Text
return function(arg1) -- Line 31
	--[[ Upvalues[6]:
		[1]: getFFlagAppChatEnableShareLinkGameCards_upvr (readonly)
		[2]: separateRobloxUrlsFromText_upvr (readonly)
		[3]: matchAllRegex_upvr (readonly)
		[4]: var13_upvr (readonly)
		[5]: addMessage_upvr (readonly)
		[6]: Text_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local var24
	if var24 then
		var24 = separateRobloxUrlsFromText_upvr(arg1)
		return var24
	end
	var24 = {}
	local var25_upvw = arg1
	local pcall_result1, pcall_result2 = pcall(function() -- Line 37
		--[[ Upvalues[3]:
			[1]: matchAllRegex_upvr (copied, readonly)
			[2]: var25_upvw (read and write)
			[3]: var13_upvr (copied, readonly)
		]]
		return matchAllRegex_upvr(var25_upvw:lower(), var13_upvr)
	end)
	if not pcall_result1 or not pcall_result2 or #pcall_result2 == 0 then
		return addMessage_upvr(var24, var25_upvw)
	end
	for _, v_2 in pcall_result2 do
		local _1 = v_2.capturedGroups[1]
		if _1 then
			var24 = addMessage_upvr(var24, Text_upvr.Trim(var25_upvw:sub(1, v_2.index - 1)))
			var24 = addMessage_upvr(var24, _1, true)
		end
	end
	return addMessage_upvr(var24, Text_upvr.Trim(var25_upvw:sub(v_2.index + #v_2.matchedText)))
end