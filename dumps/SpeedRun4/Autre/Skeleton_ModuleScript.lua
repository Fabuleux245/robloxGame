-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:48:20
-- Luau version 6, Types version 3
-- Time taken: 0.004347 seconds

local Foundation = script:FindFirstAncestor("Foundation")
local Parent = Foundation.Parent
local React_upvr = require(Parent.React)
local Radius_upvr = require(Foundation.Enums.Radius)
local tbl_upvr = {
	radius = Radius_upvr.None;
	Size = UDim2.fromScale(1, 1);
}
local withDefaults_upvr = require(Foundation.Utility.withDefaults)
local useClock_upvr = require(Parent.ReactUtils).useClock
local useTokens_upvr = require(Foundation.Providers.Style.useTokens)
local usePreferences_upvr = require(Foundation.Providers.Preferences.usePreferences)
local View_upvr = require(Foundation.Components.View)
local withCommonProps_upvr = require(Foundation.Utility.withCommonProps)
local lerp_upvr = require(Foundation.Utility.lerp)
return React_upvr.memo(React_upvr.forwardRef(function(arg1, arg2) -- Line 37, Named "Skeleton"
	--[[ Upvalues[10]:
		[1]: withDefaults_upvr (readonly)
		[2]: tbl_upvr (readonly)
		[3]: useClock_upvr (readonly)
		[4]: useTokens_upvr (readonly)
		[5]: usePreferences_upvr (readonly)
		[6]: Radius_upvr (readonly)
		[7]: React_upvr (readonly)
		[8]: View_upvr (readonly)
		[9]: withCommonProps_upvr (readonly)
		[10]: lerp_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	-- KONSTANTERROR: [0] 1. Error Block 20 start (CF ANALYSIS FAILED)
	local withDefaults_upvr_result1 = withDefaults_upvr(arg1, tbl_upvr)
	local var9_result1_upvr = useTokens_upvr()
	local usePreferences_upvr_result1 = usePreferences_upvr()
	local var18
	if withDefaults_upvr_result1.radius ~= Radius_upvr.None then
		var18 = UDim.new(0, var9_result1_upvr.Radius[withDefaults_upvr_result1.radius])
	else
		var18 = nil
	end
	local module_2 = {
		cornerRadius = var18;
	}
	if usePreferences_upvr_result1.reducedMotion then
		local function _(arg1_2) -- Line 50
			--[[ Upvalues[2]:
				[1]: var9_result1_upvr (readonly)
				[2]: lerp_upvr (copied, readonly)
			]]
			return {
				Color3 = var9_result1_upvr.Semantic.Color.Common.Placeholder.Color3;
				Transparency = lerp_upvr(var9_result1_upvr.Color.Extended.White.White_10.Transparency, var9_result1_upvr.Color.Extended.White.White_10.Transparency - 0.1, (math.sin(arg1_2 * 2) + 1) / 2);
			}
		end
		-- KONSTANTWARNING: GOTO [55] #42
	end
	-- KONSTANTERROR: [0] 1. Error Block 20 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [47] 38. Error Block 15 start (CF ANALYSIS FAILED)
	module_2.backgroundStyle = var9_result1_upvr.Color.Extended.White.White_100
	module_2.Size = withDefaults_upvr_result1.Size
	module_2.ref = arg2
	local module = {}
	if not usePreferences_upvr_result1.reducedMotion then
		local tbl = {
			Color = ColorSequence.new({ColorSequenceKeypoint.new(0, var9_result1_upvr.Semantic.Color.Common.Placeholder.Color3), ColorSequenceKeypoint.new(0.5, var9_result1_upvr.Color.Extended.White.White_30.Color3), ColorSequenceKeypoint.new(1, var9_result1_upvr.Semantic.Color.Common.Placeholder.Color3)});
			Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0, var9_result1_upvr.Semantic.Color.Common.Placeholder.Transparency), NumberSequenceKeypoint.new(0.5, var9_result1_upvr.Color.Extended.White.White_30.Transparency), NumberSequenceKeypoint.new(1, var9_result1_upvr.Semantic.Color.Common.Placeholder.Transparency)});
			Offset = useClock_upvr():map(function(arg1_3) -- Line 79
				return Vector2.new(arg1_3 * 2 % 3 - 1.5, 0)
			end);
			Rotation = 15;
		}
	else
	end
	module.Gradient = nil
	do
		return React_upvr.createElement(View_upvr, withCommonProps_upvr(withDefaults_upvr_result1, module_2), module)
	end
	-- KONSTANTERROR: [47] 38. Error Block 15 end (CF ANALYSIS FAILED)
end))