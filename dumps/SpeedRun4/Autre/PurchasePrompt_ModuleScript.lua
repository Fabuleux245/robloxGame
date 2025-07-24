-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:48:46
-- Luau version 6, Types version 3
-- Time taken: 0.002133 seconds

local script = script
local PurchasePromptDeps = require(game:GetService("CorePackages").Workspace.Packages.PurchasePromptDeps)
local CoreGui_upvr = game:GetService("CoreGui")
local var4_upvw
local BindableEvent_upvr = Instance.new("BindableEvent")
local BindableEvent_upvr_2 = Instance.new("BindableEvent")
local ABTest_upvr = require(script.Services.ABTest)
local Network_upvr = require(script.Services.Network)
local Analytics_upvr = require(script.Services.Analytics)
local PlatformInterface_upvr = require(script.Services.PlatformInterface)
local ExternalSettings_upvr = require(script.Services.ExternalSettings)
local PublicBindables_upvr = require(script.Services.PublicBindables)
local Rodux_upvr = PurchasePromptDeps.Rodux
local Reducer_upvr = require(script.Reducers.Reducer)
local Thunk_upvr = require(script.Thunk)
local WindowState_upvr = require(script.Enums.WindowState)
local PromptState_upvr = require(script.Enums.PromptState)
local function createStore_upvr() -- Line 37, Named "createStore"
	--[[ Upvalues[14]:
		[1]: ABTest_upvr (readonly)
		[2]: Network_upvr (readonly)
		[3]: Analytics_upvr (readonly)
		[4]: PlatformInterface_upvr (readonly)
		[5]: ExternalSettings_upvr (readonly)
		[6]: PublicBindables_upvr (readonly)
		[7]: BindableEvent_upvr (readonly)
		[8]: var4_upvw (read and write)
		[9]: Rodux_upvr (readonly)
		[10]: Reducer_upvr (readonly)
		[11]: Thunk_upvr (readonly)
		[12]: WindowState_upvr (readonly)
		[13]: PromptState_upvr (readonly)
		[14]: BindableEvent_upvr_2 (readonly)
	]]
	var4_upvw = Rodux_upvr.Store.new(Reducer_upvr, {}, {Thunk_upvr.middleware({
		[ABTest_upvr] = ABTest_upvr.new();
		[Network_upvr] = Network_upvr.new();
		[Analytics_upvr] = Analytics_upvr.new();
		[PlatformInterface_upvr] = PlatformInterface_upvr.new();
		[ExternalSettings_upvr] = ExternalSettings_upvr.new();
		[PublicBindables_upvr] = PublicBindables_upvr.new({
			windowStateChangedBindable = BindableEvent_upvr;
		});
	})})
	var4_upvw.changed:connect(function(arg1, arg2) -- Line 59
		--[[ Upvalues[4]:
			[1]: BindableEvent_upvr (copied, readonly)
			[2]: WindowState_upvr (copied, readonly)
			[3]: PromptState_upvr (copied, readonly)
			[4]: BindableEvent_upvr_2 (copied, readonly)
		]]
		local var22
		if arg2.windowState ~= arg1.windowState then
			local tbl = {}
			if arg1.windowState ~= WindowState_upvr.Shown then
				var22 = false
			else
				var22 = true
			end
			tbl.isShown = var22
			var22 = arg1.hasCompletedPurchase
			tbl.hasCompletedPurchase = var22
			BindableEvent_upvr:Fire(tbl)
		end
		if arg2.promptState ~= arg1.promptState and arg1.promptState == PromptState_upvr.None then
			BindableEvent_upvr_2:Fire()
		end
	end)
end
local RunService_upvr = game:GetService("RunService")
local var26_upvw
local Roact_upvr = PurchasePromptDeps.Roact
local PurchasePromptApp_upvr = require(script.Components.PurchasePromptApp)
local initiateAvatarCreationFeePurchase_upvr = require(script.Thunks.initiateAvatarCreationFeePurchase)
return {
	mountPurchasePrompt = function() -- Line 75
		--[[ Upvalues[7]:
			[1]: RunService_upvr (readonly)
			[2]: var26_upvw (read and write)
			[3]: createStore_upvr (readonly)
			[4]: Roact_upvr (readonly)
			[5]: PurchasePromptApp_upvr (readonly)
			[6]: var4_upvw (read and write)
			[7]: CoreGui_upvr (readonly)
		]]
		if RunService_upvr:IsStudio() and RunService_upvr:IsEdit() or var26_upvw then
			return nil
		end
		createStore_upvr()
		var26_upvw = Roact_upvr.mount(Roact_upvr.createElement(PurchasePromptApp_upvr, {
			store = var4_upvw;
		}), CoreGui_upvr, "PurchasePromptApp")
		return var26_upvw
	end;
	initiateAvatarCreationFeePurchase = function(arg1, arg2, arg3, arg4) -- Line 93, Named "initiateAvatarCreationFeePurchase"
		--[[ Upvalues[2]:
			[1]: var4_upvw (read and write)
			[2]: initiateAvatarCreationFeePurchase_upvr (readonly)
		]]
		if not var4_upvw then
			error("initiateAvatarCreationFeePurchase cannot be called when the PurchasePrompt has not been mounted")
		end
		var4_upvw:dispatch(initiateAvatarCreationFeePurchase_upvr(arg1, arg2, arg3, arg4))
	end;
	windowStateChangedEvent = BindableEvent_upvr.Event;
	promptStateSetToNoneEvent = BindableEvent_upvr_2.Event;
	PublishAssetAnalytics = require(script.Utils.PublishAssetAnalytics);
}