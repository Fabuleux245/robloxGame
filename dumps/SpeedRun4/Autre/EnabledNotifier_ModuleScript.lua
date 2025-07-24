-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:46:15
-- Luau version 6, Types version 3
-- Time taken: 0.001161 seconds

local CorePackages = game:GetService("CorePackages")
local t = require(CorePackages.Packages.t)
local RobloxGui = game:GetService("CoreGui"):WaitForChild("RobloxGui")
local any_extend_result1 = require(CorePackages.Packages.Roact).PureComponent:extend("CoreGuiCEnabledNotifieronnector")
any_extend_result1.validateProps = t.strictInterface({
	topBarEnabled = t.boolean;
})
local PlayerListManager_upvr = require(RobloxGui.Modules.PlayerList.PlayerListManager)
local ChatSelector_upvr = require(RobloxGui.Modules.ChatSelector)
local BackpackScript_upvr = require(RobloxGui.Modules.BackpackScript)
local EmotesMenuMaster_upvr = require(RobloxGui.Modules.EmotesMenu.EmotesMenuMaster)
function any_extend_result1.notifyEnabled(arg1) -- Line 20
	--[[ Upvalues[4]:
		[1]: PlayerListManager_upvr (readonly)
		[2]: ChatSelector_upvr (readonly)
		[3]: BackpackScript_upvr (readonly)
		[4]: EmotesMenuMaster_upvr (readonly)
	]]
	PlayerListManager_upvr:SetTopBarEnabled(arg1.props.topBarEnabled)
	ChatSelector_upvr:TopbarEnabledChanged(arg1.props.topBarEnabled)
	BackpackScript_upvr:TopbarEnabledChanged(arg1.props.topBarEnabled)
	EmotesMenuMaster_upvr:setTopBarEnabled(arg1.props.topBarEnabled)
end
function any_extend_result1.didMount(arg1) -- Line 27
	arg1:notifyEnabled()
end
function any_extend_result1.render(arg1) -- Line 31
	return nil
end
function any_extend_result1.didUpdate(arg1, arg2, arg3) -- Line 35
	if arg1.props.topBarEnabled ~= arg2.topBarEnabled then
		arg1:notifyEnabled()
	end
end
return require(CorePackages.Packages.RoactRodux).UNSTABLE_connect2(function(arg1) -- Line 41, Named "mapStateToProps"
	return {
		topBarEnabled = arg1.displayOptions.topbarEnabled;
	}
end, nil)(any_extend_result1)