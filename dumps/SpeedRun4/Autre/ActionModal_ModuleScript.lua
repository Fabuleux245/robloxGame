-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:44:17
-- Luau version 6, Types version 3
-- Time taken: 0.001159 seconds

-- KONSTANTERROR: [0] 1. Error Block 38 start (CF ANALYSIS FAILED)
local CorePackages = game:GetService("CorePackages")
local t = require(CorePackages.Packages.t)
local UIBlox = require(CorePackages.Packages.UIBlox)
local FFlagEnableNewBlockingModal = require(game:GetService("CoreGui"):WaitForChild("RobloxGui").Modules.Common.Flags.FFlagEnableNewBlockingModal)
local tbl = {}
local var6 = 1000
tbl.screenSize = Vector2.new(var6, 1000)
require(CorePackages.Packages.Roact).PureComponent:extend("ActionModal").defaultProps = tbl
local tbl_2 = {}
if FFlagEnableNewBlockingModal then
	var6 = nil
else
	var6 = t.callback
end
tbl_2.action = var6
if FFlagEnableNewBlockingModal then
	-- KONSTANTWARNING: GOTO [100] #63
end
-- KONSTANTERROR: [0] 1. Error Block 38 end (CF ANALYSIS FAILED)
-- KONSTANTERROR: [98] 62. Error Block 43 start (CF ANALYSIS FAILED)
tbl_2.actionText = t.string
if FFlagEnableNewBlockingModal then
	-- KONSTANTWARNING: GOTO [107] #68
end
-- KONSTANTERROR: [98] 62. Error Block 43 end (CF ANALYSIS FAILED)