-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:10:34
-- Luau version 6, Types version 3
-- Time taken: 0.005176 seconds

local Parent = script.Parent.Parent
local FailureReasonsAccumulator_upvr = require(Parent.util.FailureReasonsAccumulator)
local getEngineFeatureRemoveProxyWrap_upvr = require(Parent.flags.getEngineFeatureRemoveProxyWrap)
local checkForProxyWrap_upvr = require(Parent.util.checkForProxyWrap)
local Analytics_upvr = require(Parent.Analytics)
return function(arg1, arg2) -- Line 16, Named "validateSurfaceAppearances"
	--[[ Upvalues[4]:
		[1]: FailureReasonsAccumulator_upvr (readonly)
		[2]: getEngineFeatureRemoveProxyWrap_upvr (readonly)
		[3]: checkForProxyWrap_upvr (readonly)
		[4]: Analytics_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	local allowEditableInstances = arg2.allowEditableInstances
	local descendants_2 = arg1:GetDescendants()
	table.insert(descendants_2, arg1)
	local pairs_result1_2, pairs_result2_2, pairs_result3 = pairs(descendants_2)
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [128] 95. Error Block 28 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [128] 95. Error Block 28 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [21] 16. Error Block 47 start (CF ANALYSIS FAILED)
	-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [128.10]
	if nil then
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		if nil then
			-- KONSTANTWARNING: GOTO [40] #33
		end
	else
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect (x2)
		if nil and (not allowEditableInstances or not nil) then
			-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [128.11]
			if nil == "" then
			else
			end
			if allowEditableInstances then
				-- KONSTANTERROR: Expression was reused, decompilation is incorrect
				if not nil then
					-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [128.13]
					local function INLINED_2() -- Internal function, doesn't exist in bytecode
						-- KONSTANTERROR: Expression was reused, decompilation is incorrect
						return nil == ""
					end
					if nil == nil or INLINED_2() then
						-- KONSTANTERROR: Expression was reused, decompilation is incorrect
						if nil == nil then
						else
						end
					end
				end
			end
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect
			if nil then
				-- KONSTANTERROR: Expression was reused, decompilation is incorrect
				if nil then
					-- KONSTANTWARNING: GOTO [128] #95
				end
			else
				-- KONSTANTERROR: Expression was reused, decompilation is incorrect
				if not nil then
				end
			end
		end
	end
	-- KONSTANTERROR: [21] 16. Error Block 47 end (CF ANALYSIS FAILED)
end