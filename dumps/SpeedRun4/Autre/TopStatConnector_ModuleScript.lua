-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:47:57
-- Luau version 6, Types version 3
-- Time taken: 0.001042 seconds

local CorePackages = game:GetService("CorePackages")
local RoactRodux = require(CorePackages.Packages.RoactRodux)
local TenFootInterface = require(game:GetService("CoreGui"):WaitForChild("RobloxGui").Modules.TenFootInterface)
local var4_upvw
if TenFootInterface:IsEnabled() then
	var4_upvw = TenFootInterface:SetupTopStat()
end
local any_extend_result1 = require(CorePackages.Packages.Roact).PureComponent:extend("TopStatConnector")
function any_extend_result1.render(arg1) -- Line 24
	--[[ Upvalues[1]:
		[1]: var4_upvw (read and write)
	]]
	if var4_upvw then
		var4_upvw:SetTopStatEnabled(arg1.props.displayOptions.playerlistCoreGuiEnabled)
	end
	return nil
end
local function mapStateToProps(arg1) -- Line 31
	return {
		displayOptions = arg1.displayOptions;
	}
end
if require(script.Parent.Parent.Parent.Flags.FFlagPlayerListReduceRerenders) then
	return require(CorePackages.Packages.React).memo(RoactRodux.connect(mapStateToProps, nil)(any_extend_result1))
end
return RoactRodux.connect(mapStateToProps, nil)(any_extend_result1)