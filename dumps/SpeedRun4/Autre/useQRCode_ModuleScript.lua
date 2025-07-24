-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:40:24
-- Luau version 6, Types version 3
-- Time taken: 0.000553 seconds

local Parent = script:FindFirstAncestor("QRCodeDisplay").Parent
local React_upvr = require(Parent.React)
local QRCode_upvr = require(Parent.QRCode)
local ecToNumber_upvr = require(script.Parent.ecToNumber)
return function(arg1) -- Line 8
	--[[ Upvalues[3]:
		[1]: React_upvr (readonly)
		[2]: QRCode_upvr (readonly)
		[3]: ecToNumber_upvr (readonly)
	]]
	return React_upvr.useMemo(function() -- Line 9
		--[[ Upvalues[3]:
			[1]: QRCode_upvr (copied, readonly)
			[2]: arg1 (readonly)
			[3]: ecToNumber_upvr (copied, readonly)
		]]
		local any_qrcode_result1, any_qrcode_result2 = QRCode_upvr.qrcode(arg1.toEncode, ecToNumber_upvr(arg1.ecLevel))
		return any_qrcode_result2
	end, {arg1.toEncode, arg1.ecLevel})
end