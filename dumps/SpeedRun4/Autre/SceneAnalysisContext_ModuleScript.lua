-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:59:42
-- Luau version 6, Types version 3
-- Time taken: 0.001361 seconds

local React_upvr = require(script:FindFirstAncestor("ReactSceneUnderstanding").Parent.React)
local any_createContext_result1_upvr = React_upvr.createContext(nil)
local useState_upvr = React_upvr.useState
return {
	Provider = function(arg1) -- Line 102, Named "SceneAnalysisProvider"
		--[[ Upvalues[3]:
			[1]: useState_upvr (readonly)
			[2]: React_upvr (readonly)
			[3]: any_createContext_result1_upvr (readonly)
		]]
		local useState_upvr_result1, useState_upvr_result2_2 = useState_upvr({})
		local useState_upvr_result1_2, useState_upvr_result2 = useState_upvr({})
		local useState_upvr_result1_3, useState_upvr_result2_4 = useState_upvr({})
		local var4_result1, useState_upvr_result2_3 = useState_upvr({})
		return React_upvr.createElement(any_createContext_result1_upvr.Provider, {
			value = {
				rangeQueryOptions = arg1.rangeQueryOptions;
				viewportQueryOptions = arg1.viewportQueryOptions;
				dataModelTraversalOptions = arg1.dataModelTraversalOptions;
				sourceAssets = useState_upvr_result1;
				setSourceAssets = useState_upvr_result2_2;
				assetsInView = useState_upvr_result1_2;
				setAssetsInView = useState_upvr_result2;
				assetsInRange = useState_upvr_result1_3;
				setAssetsInRange = useState_upvr_result2_4;
				audibleSounds = var4_result1;
				setAudibleSounds = useState_upvr_result2_3;
			};
		}, arg1.children)
	end;
	use = function() -- Line 129, Named "use"
		--[[ Upvalues[2]:
			[1]: React_upvr (readonly)
			[2]: any_createContext_result1_upvr (readonly)
		]]
		local any_useContext_result1 = React_upvr.useContext(any_createContext_result1_upvr)
		if any_useContext_result1 then
			return any_useContext_result1
		end
		error("attempt to use SceneAnalysisContext with no provider. Add `ReactSceneUnderstanding.SceneAnalysisProvider` to the React tree and try again")
	end;
}