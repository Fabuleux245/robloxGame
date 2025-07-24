-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:40:26
-- Luau version 6, Types version 3
-- Time taken: 0.001989 seconds

local longstring1 = "https://ro.blox.com/Ebh5?pid=share&is_retargeting=true&af_dp=roblox%3A%2F%2Fnavigation%2Fshare_links%3Fcode%3D6e5de960f12ec44797d1d974c76605ff%26type%3DFriendInvite&af_web_dp=https%3A%2F%2Fwww.roblox.com%2Fshare-links%3Fcode%3D6e5de960f12ec44797d1d974c76605ff%26type%3DFriendInvite"
local Parent = script:FindFirstAncestor("QRCodeDisplay").Parent
local DisplayQRCodeFromMatrix_upvr = require(script.Parent.DisplayQRCodeFromMatrix)
local React_upvr = require(Parent.React)
local QRCode_upvr = require(Parent.QRCode)
return {
	SimpleMatrix = function() -- Line 9, Named "SimpleMatrix"
		--[[ Upvalues[2]:
			[1]: React_upvr (readonly)
			[2]: DisplayQRCodeFromMatrix_upvr (readonly)
		]]
		return React_upvr.createElement(DisplayQRCodeFromMatrix_upvr, {
			qrCodeMatrix = {{1, 0}, {1, 0}};
			sideLength = 100;
		})
	end;
	ComplexMatrix = function() -- Line 16, Named "ComplexMatrix"
		--[[ Upvalues[3]:
			[1]: QRCode_upvr (readonly)
			[2]: React_upvr (readonly)
			[3]: DisplayQRCodeFromMatrix_upvr (readonly)
		]]
		local _, any_qrcode_result2 = QRCode_upvr.qrcode("https://www.bbc.com/news", 4)
		return React_upvr.createElement(DisplayQRCodeFromMatrix_upvr, {
			qrCodeMatrix = any_qrcode_result2;
			sideLength = 200;
		})
	end;
	SuperComplexMatrix = function() -- Line 24, Named "SuperComplexMatrix"
		--[[ Upvalues[3]:
			[1]: QRCode_upvr (readonly)
			[2]: React_upvr (readonly)
			[3]: DisplayQRCodeFromMatrix_upvr (readonly)
		]]
		local _, any_qrcode_result2_3 = QRCode_upvr.qrcode(longstring1, 2)
		return React_upvr.createElement(DisplayQRCodeFromMatrix_upvr, {
			qrCodeMatrix = any_qrcode_result2_3;
			sideLength = 400;
		})
	end;
	CustomisedMatrix = function() -- Line 35, Named "CustomisedMatrix"
		--[[ Upvalues[3]:
			[1]: QRCode_upvr (readonly)
			[2]: React_upvr (readonly)
			[3]: DisplayQRCodeFromMatrix_upvr (readonly)
		]]
		local any_qrcode_result1, any_qrcode_result2_4 = QRCode_upvr.qrcode(longstring1, 4)
		return React_upvr.createElement(DisplayQRCodeFromMatrix_upvr, {
			qrCodeMatrix = any_qrcode_result2_4;
			sideLength = 200;
			pixelColor3 = Color3.new(1, 0, 1);
			backgroundColor3 = Color3.new(0, 1, 0);
		})
	end;
	ReallySmallSideLength = function() -- Line 48, Named "ReallySmallSideLength"
		--[[ Upvalues[3]:
			[1]: QRCode_upvr (readonly)
			[2]: React_upvr (readonly)
			[3]: DisplayQRCodeFromMatrix_upvr (readonly)
		]]
		local _, any_qrcode_result2_2 = QRCode_upvr.qrcode(longstring1, 4)
		return React_upvr.createElement(DisplayQRCodeFromMatrix_upvr, {
			qrCodeMatrix = any_qrcode_result2_2;
			sideLength = 1;
		})
	end;
}