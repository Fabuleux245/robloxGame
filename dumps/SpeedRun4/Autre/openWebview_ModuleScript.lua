-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:46:22
-- Luau version 6, Types version 3
-- Time taken: 0.000873 seconds

local HttpService_upvr = game:GetService("HttpService")
local GuiService_upvr = game:GetService("GuiService")
return function(arg1) -- Line 4, Named "openWebview"
	--[[ Upvalues[2]:
		[1]: HttpService_upvr (readonly)
		[2]: GuiService_upvr (readonly)
	]]
	local tbl = {}
	local var5
	if game:GetEngineFeature("SetWebViewTitle") then
		var5 = "Help Center"
	else
		var5 = nil
	end
	tbl.title = var5
	var5 = ({
		FullScreen = 0;
		FormSheet = 2;
	}).FormSheet
	tbl.presentationStyle = var5
	var5 = true
	tbl.visible = var5
	tbl.url = arg1
	var5 = HttpService_upvr:JSONEncode(tbl)
	GuiService_upvr:BroadcastNotification(var5, 20)
end