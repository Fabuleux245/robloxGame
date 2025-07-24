-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:13:05
-- Luau version 6, Types version 3
-- Time taken: 0.004023 seconds

local dependencies = require(script.dependencies)
local Parent = script.Parent
local t = require(Parent.Parent.Parent.Parent.t)
local Validators = dependencies.SchemaPackage.Validators
local GetFoundationTokens_upvr = dependencies.GetFoundationTokens
local Constants_upvr = require(script.Parent.Constants)
local UIBloxConfig_upvr = require(Parent.Parent.Parent.UIBloxConfig)
local function _(arg1, arg2) -- Line 20, Named "getPlatformScale"
	--[[ Upvalues[2]:
		[1]: UIBloxConfig_upvr (readonly)
		[2]: Constants_upvr (readonly)
	]]
	if arg2 ~= nil then
	else
	end
	local var8
	if not UIBloxConfig_upvr.disableTokenScalingForConsole and arg1 == Constants_upvr.DeviceType.Console then
		var8 = 1.5
	end
	return var8 * math.clamp(1, 0, math.huge)
end
local module = {}
local GetTokenGenerators_upvr = dependencies.GetTokenGenerators
function module.getTokens(arg1, arg2, arg3) -- Line 36
	--[[ Upvalues[3]:
		[1]: GetTokenGenerators_upvr (readonly)
		[2]: Constants_upvr (readonly)
		[3]: UIBloxConfig_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local var11
	if not GetTokenGenerators_upvr(arg2) then
		var11 = Constants_upvr
		local GetTokenGenerators_upvr_result1 = GetTokenGenerators_upvr(var11.DefaultThemeName)
	end
	var11 = arg3
	if var11 ~= nil then
	else
		var11 = 1
	end
	var11 = math.clamp(var11, 0, math.huge)
	local var13
	if not UIBloxConfig_upvr.disableTokenScalingForConsole and arg1 == Constants_upvr.DeviceType.Console then
		var13 = 1.5
	end
	local var14 = var13 * var11
	var11 = {}
	var13 = require(GetTokenGenerators_upvr_result1.Global)(var14)
	var11.Global = var13
	var13 = require(GetTokenGenerators_upvr_result1.Semantic)(var14)
	var11.Semantic = var13
	var13 = require(GetTokenGenerators_upvr_result1.Component)(var14)
	var11.Component = var13
	return var11
end
module.validateTokens = t.strictInterface({
	Global = t.strictInterface(Validators.Global);
	Semantic = t.strictInterface(Validators.Semantic);
	Component = t.strictInterface(Validators.Component);
})
module.Types = require(script.Types)
function module.getFoundationTokens(arg1, arg2) -- Line 52
	--[[ Upvalues[3]:
		[1]: GetFoundationTokens_upvr (readonly)
		[2]: Constants_upvr (readonly)
		[3]: UIBloxConfig_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local var16
	if not GetFoundationTokens_upvr(arg2) then
		var16 = Constants_upvr
	end
	var16 = nil
	if var16 ~= nil then
	else
		var16 = 1
	end
	var16 = math.clamp(var16, 0, math.huge)
	local var17
	if not UIBloxConfig_upvr.disableTokenScalingForConsole and arg1 == Constants_upvr.DeviceType.Console then
		var17 = 1.5
	end
	var16 = GetFoundationTokens_upvr(var16.DefaultThemeName)
	var17 *= var16
	var16 = var16(var17)
	return var16
end
function module.getFoundationTokensDefaultScale(arg1) -- Line 58
	--[[ Upvalues[2]:
		[1]: GetFoundationTokens_upvr (readonly)
		[2]: Constants_upvr (readonly)
	]]
	local var5_result1 = GetFoundationTokens_upvr(arg1)
	if not var5_result1 then
		var5_result1 = GetFoundationTokens_upvr(Constants_upvr.DefaultThemeName)
	end
	return var5_result1(1)
end
module.Mappers = require(script.mappers)
return module