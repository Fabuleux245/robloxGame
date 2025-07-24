-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:18:08
-- Luau version 6, Types version 3
-- Time taken: 0.004125 seconds

function id(arg1) -- Line 9
	return arg1
end
local React_upvr = require(script:FindFirstAncestor("Responsive").Parent.React)
local ContainerRef_upvr = require(script.Parent.Parent.Context.ContainerRef)
local Responsive_upvr = require(script.Parent.Parent.Responsive)
local game_DefineFastFlag_result1_upvr = game:DefineFastFlag("LuaAppResponsiveFixHookDeps", false)
function useResponsiveImpl(arg1, arg2, arg3) -- Line 17
	--[[ Upvalues[4]:
		[1]: React_upvr (readonly)
		[2]: ContainerRef_upvr (readonly)
		[3]: Responsive_upvr (readonly)
		[4]: game_DefineFastFlag_result1_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	-- KONSTANTERROR: [0] 1. Error Block 37 start (CF ANALYSIS FAILED)
	local var13_upvr
	if typeof(arg1) == "function" then
		var13_upvr = arg1
	else
		var13_upvr = id
	end
	local any_useContext_result1_upvr = React_upvr.useContext(ContainerRef_upvr)
	local any_useState_result1, any_useState_result2_upvr = React_upvr.useState(var13_upvr(Responsive_upvr.DefaultKey))
	local any_useRef_result1_upvr_2 = React_upvr.useRef({
		Key = Responsive_upvr.DefaultKey;
	})
	if typeof(arg1) == "table" then
		for _, v in arg1 do
			({})[v] = true
		end
	end
	local tbl_2_upvw = {}
	local any_useRef_result1_upvr = React_upvr.useRef("")
	local tbl = {}
	if not any_useContext_result1_upvr or not any_useContext_result1_upvr.current then
	end
	if game_DefineFastFlag_result1_upvr then
		-- KONSTANTWARNING: GOTO [84] #68
	end
	-- KONSTANTERROR: [0] 1. Error Block 37 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [83] 67. Error Block 35 start (CF ANALYSIS FAILED)
	if game_DefineFastFlag_result1_upvr then
	else
	end
	tbl[1] = any_useContext_result1_upvr
	tbl[2] = false
	tbl[3] = nil
	tbl[4] = nil
	React_upvr.useEffect(function() -- Line 34
		--[[ Upvalues[9]:
			[1]: any_useContext_result1_upvr (readonly)
			[2]: Responsive_upvr (copied, readonly)
			[3]: arg2 (readonly)
			[4]: arg3 (readonly)
			[5]: tbl_2_upvw (read and write)
			[6]: any_useRef_result1_upvr (readonly)
			[7]: any_useRef_result1_upvr_2 (readonly)
			[8]: any_useState_result2_upvr (readonly)
			[9]: var13_upvr (readonly)
		]]
		if any_useContext_result1_upvr and any_useContext_result1_upvr.current then
			local any_bindContainer_result1_upvr = Responsive_upvr.bindContainer(any_useContext_result1_upvr.current, arg2)
			any_useRef_result1_upvr_2.current = any_bindContainer_result1_upvr:currentRule(arg3)
			local any_currentKey_result1_2 = any_bindContainer_result1_upvr:currentKey(arg3)
			any_useState_result2_upvr(var13_upvr(any_currentKey_result1_2))
			any_useRef_result1_upvr.current = any_currentKey_result1_2
			local any_connect_result1_upvr = any_bindContainer_result1_upvr:connect(function() -- Line 37
				--[[ Upvalues[7]:
					[1]: any_bindContainer_result1_upvr (readonly)
					[2]: arg3 (copied, readonly)
					[3]: tbl_2_upvw (copied, read and write)
					[4]: any_useRef_result1_upvr (copied, readonly)
					[5]: any_useRef_result1_upvr_2 (copied, readonly)
					[6]: any_useState_result2_upvr (copied, readonly)
					[7]: var13_upvr (copied, readonly)
				]]
				-- KONSTANTERROR: [0] 1. Error Block 13 start (CF ANALYSIS FAILED)
				local any_currentKey_result1 = any_bindContainer_result1_upvr:currentKey(arg3)
				if tbl_2_upvw then
					if tbl_2_upvw[any_currentKey_result1] or any_useRef_result1_upvr.current and tbl_2_upvw[any_useRef_result1_upvr.current] then
						any_useRef_result1_upvr_2.current = any_bindContainer_result1_upvr:currentRule(arg3)
						any_useState_result2_upvr(any_currentKey_result1)
						-- KONSTANTWARNING: GOTO [45] #39
					end
				else
					any_useRef_result1_upvr_2.current = any_bindContainer_result1_upvr:currentRule(arg3)
					any_useState_result2_upvr(var13_upvr(any_currentKey_result1))
				end
				-- KONSTANTERROR: [0] 1. Error Block 13 end (CF ANALYSIS FAILED)
				-- KONSTANTERROR: [45] 39. Error Block 9 start (CF ANALYSIS FAILED)
				any_useRef_result1_upvr.current = any_currentKey_result1
				-- KONSTANTERROR: [45] 39. Error Block 9 end (CF ANALYSIS FAILED)
			end)
			return function() -- Line 56
				--[[ Upvalues[2]:
					[1]: any_connect_result1_upvr (readonly)
					[2]: any_bindContainer_result1_upvr (readonly)
				]]
				any_connect_result1_upvr:disconnect()
				any_bindContainer_result1_upvr:destroy()
			end
		end
		function any_bindContainer_result1_upvr() -- Line 61
		end
		return any_bindContainer_result1_upvr
	end, tbl)
	do
		return any_useState_result1, any_useRef_result1_upvr_2.current
	end
	-- KONSTANTERROR: [83] 67. Error Block 35 end (CF ANALYSIS FAILED)
end
return useResponsiveImpl