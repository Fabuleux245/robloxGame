-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:04:27
-- Luau version 6, Types version 3
-- Time taken: 0.000761 seconds

local TextLabel_upvr = Instance.new("TextLabel")
TextLabel_upvr.RichText = true
local function _(arg1) -- Line 5, Named "getContentText"
	--[[ Upvalues[1]:
		[1]: TextLabel_upvr (readonly)
	]]
	TextLabel_upvr.Text = arg1
	return TextLabel_upvr.ContentText
end
return function(arg1) -- Line 10, Named "isWhitespaceOnly"
	--[[ Upvalues[1]:
		[1]: TextLabel_upvr (readonly)
	]]
	TextLabel_upvr.Text = arg1
	local var2 = TextLabel_upvr
	if string.find(var2.ContentText, "%S") ~= nil then
		var2 = false
	else
		var2 = true
	end
	return var2
end