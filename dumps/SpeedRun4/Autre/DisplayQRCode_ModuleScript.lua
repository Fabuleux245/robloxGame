-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:40:23
-- Luau version 6, Types version 3
-- Time taken: 0.000734 seconds

local Parent = script:FindFirstAncestor("QRCodeDisplay").Parent
local useQRCode_upvr = require(script.Parent.useQRCode)
local React_upvr = require(Parent.React)
local DisplayQRCodeFromMatrix_upvr = require(script.Parent.Parent.DisplayQRCodeFromMatrix.DisplayQRCodeFromMatrix)
local Dash_upvr = require(Parent.Dash)
return function(arg1) -- Line 21
	--[[ Upvalues[4]:
		[1]: useQRCode_upvr (readonly)
		[2]: React_upvr (readonly)
		[3]: DisplayQRCodeFromMatrix_upvr (readonly)
		[4]: Dash_upvr (readonly)
	]]
	return React_upvr.createElement(DisplayQRCodeFromMatrix_upvr, Dash_upvr.join(arg1, {
		qrCodeMatrix = useQRCode_upvr(arg1);
	}))
end