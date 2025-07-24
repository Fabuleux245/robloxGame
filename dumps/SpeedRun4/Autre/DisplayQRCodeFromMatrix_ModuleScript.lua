-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:40:25
-- Luau version 6, Types version 3
-- Time taken: 0.001295 seconds

local Parent = script:FindFirstAncestor("QRCodeDisplay").Parent
local tbl_upvr = {
	backgroundColor3 = Color3.fromRGB(255, 255, 255);
	backgroundTransparency = 0;
	pixelColor3 = Color3.fromRGB(0, 0, 0);
	pixelTransparency = 0;
	sideLength = 200;
}
local function _(arg1, arg2) -- Line 36, Named "getQrCodeImageSize"
	if not arg2 then
		return arg1
	end
	if type(arg2) ~= "number" then
	else
	end
	assert(true, "rotation must be a number")
	if arg2 % 90 == 0 then
		return arg1
	end
	local radians = math.rad(arg2)
	return math.round(arg1 / (math.sin(radians) + math.cos(radians)))
end
local Dash_upvr = require(Parent.Dash)
local React_upvr = require(Parent.React)
local AssetService_upvr = game:GetService("AssetService")
local drawImage_upvr = require(script.Parent.drawImage)
return function(arg1) -- Line 51
	--[[ Upvalues[5]:
		[1]: Dash_upvr (readonly)
		[2]: tbl_upvr (readonly)
		[3]: React_upvr (readonly)
		[4]: AssetService_upvr (readonly)
		[5]: drawImage_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 18 start (CF ANALYSIS FAILED)
	local any_useState_result1, _ = React_upvr.useState(nil)
	local qrCodeRotation = Dash_upvr.join(tbl_upvr, arg1).qrCodeRotation
	if not qrCodeRotation then
		-- KONSTANTWARNING: GOTO [65] #52
	end
	-- KONSTANTERROR: [0] 1. Error Block 18 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [22] 18. Error Block 16 start (CF ANALYSIS FAILED)
	if type(qrCodeRotation) ~= "number" then
		-- KONSTANTWARNING: GOTO [31] #25
	end
	-- KONSTANTERROR: [22] 18. Error Block 16 end (CF ANALYSIS FAILED)
end