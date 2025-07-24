-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:59:46
-- Luau version 6, Types version 3
-- Time taken: 0.002296 seconds

local CorePackages = game:GetService("CorePackages")
local CoreGui_upvr = game:GetService("CoreGui")
local module_upvr = {}
module_upvr.__index = module_upvr
local RoactGlobalConfig_upvr = require(script.RoactGlobalConfig)
local Roact_upvr = require(CorePackages.Packages.Roact)
local Rodux_upvr = require(CorePackages.Packages.Rodux)
local Reducer_upvr = require(script.Reducer)
local GetGameName_upvr = require(script.Thunks.GetGameName)
local RoactRodux_upvr = require(CorePackages.Packages.RoactRodux)
local AvatarEditorPromptsPolicy_upvr = require(script.AvatarEditorPromptsPolicy)
local renderWithCoreScriptsStyleProvider_upvr = require(CoreGui_upvr:WaitForChild("RobloxGui").Modules.Common.renderWithCoreScriptsStyleProvider)
local AvatarEditorPromptsApp_upvr = require(script.Components.AvatarEditorPromptsApp)
local ConnectAvatarEditorServiceEvents_upvr = require(script.ConnectAvatarEditorServiceEvents)
function module_upvr.new() -- Line 25
	--[[ Upvalues[12]:
		[1]: module_upvr (readonly)
		[2]: RoactGlobalConfig_upvr (readonly)
		[3]: Roact_upvr (readonly)
		[4]: Rodux_upvr (readonly)
		[5]: Reducer_upvr (readonly)
		[6]: GetGameName_upvr (readonly)
		[7]: RoactRodux_upvr (readonly)
		[8]: AvatarEditorPromptsPolicy_upvr (readonly)
		[9]: renderWithCoreScriptsStyleProvider_upvr (readonly)
		[10]: AvatarEditorPromptsApp_upvr (readonly)
		[11]: CoreGui_upvr (readonly)
		[12]: ConnectAvatarEditorServiceEvents_upvr (readonly)
	]]
	local setmetatable_result1 = setmetatable({}, module_upvr)
	if RoactGlobalConfig_upvr.propValidation then
		Roact_upvr.setGlobalConfig({
			propValidation = true;
		})
	end
	if RoactGlobalConfig_upvr.elementTracing then
		Roact_upvr.setGlobalConfig({
			elementTracing = true;
		})
	end
	setmetatable_result1.store = Rodux_upvr.Store.new(Reducer_upvr, nil, {Rodux_upvr.thunkMiddleware})
	setmetatable_result1.store:dispatch(GetGameName_upvr)
	setmetatable_result1.root = Roact_upvr.createElement("Folder", {
		Name = "AvatarEditorPromptsApp";
	}, Roact_upvr.createElement(RoactRodux_upvr.StoreProvider, {
		store = setmetatable_result1.store;
	}, {
		PolicyProvider = Roact_upvr.createElement(AvatarEditorPromptsPolicy_upvr.Provider, {
			policy = {AvatarEditorPromptsPolicy_upvr.Mapper};
		}, {
			ThemeProvider = renderWithCoreScriptsStyleProvider_upvr({
				AvatarEditorPromptsApp = Roact_upvr.createElement(AvatarEditorPromptsApp_upvr);
			});
		});
	}))
	setmetatable_result1.element = Roact_upvr.mount(setmetatable_result1.root, CoreGui_upvr, "AvatarEditorPrompts")
	setmetatable_result1.serviceConnections = ConnectAvatarEditorServiceEvents_upvr(setmetatable_result1.store)
	return setmetatable_result1
end
return module_upvr.new()