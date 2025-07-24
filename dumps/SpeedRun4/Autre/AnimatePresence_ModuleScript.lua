-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:55:50
-- Luau version 6, Types version 3
-- Time taken: 0.006511 seconds

local Parent = script.Parent.Parent
local function _(arg1, arg2) -- Line 55, Named "getCompositeKey"
	if typeof(arg2) == "table" and arg2.props and arg2.props.presenceId then
		return string.format("%s:%s", arg1, tostring(arg2.props.presenceId))
	end
	return arg1
end
local React_upvr = require(Parent.Parent.React)
local PresenceState_upvr = require(Parent.Enums.PresenceState)
local PresenceChild_upvr = require(script.Parent.PresenceChild)
return function(arg1) -- Line 63, Named "AnimatePresence"
	--[[ Upvalues[3]:
		[1]: React_upvr (readonly)
		[2]: PresenceState_upvr (readonly)
		[3]: PresenceChild_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local children_upvr = arg1.children
	local var14_upvr
	if var14_upvr ~= nil then
	else
	end
	if arg1.onExitComplete ~= nil then
		var14_upvr = arg1.onExitComplete
	else
		var14_upvr = nil
	end
	local any_useState_result1_upvr, any_useState_result2_upvr = React_upvr.useState({})
	local any_useRef_result1_upvr = React_upvr.useRef({})
	React_upvr.useEffect(function() -- Line 73
		--[[ Upvalues[5]:
			[1]: children_upvr (readonly)
			[2]: PresenceState_upvr (copied, readonly)
			[3]: any_useState_result1_upvr (readonly)
			[4]: any_useState_result2_upvr (readonly)
			[5]: any_useRef_result1_upvr (readonly)
		]]
		local tbl_3_upvr = {}
		if children_upvr ~= nil and typeof(children_upvr) == "table" then
			for i, v in pairs(children_upvr) do
				if typeof(v) == "table" then
					local type = v.type
					if type ~= nil then
						if typeof(v) == "table" and v.props and v.props.presenceId then
							type = string.format("%s:%s", i, tostring(v.props.presenceId))
						else
							type = i
						end
						tbl_3_upvr[type] = {
							type = PresenceState_upvr.Entering;
							component = v;
							dictionaryKey = i;
						}
					end
				end
			end
		end
		for i_2, v_2 in pairs(any_useState_result1_upvr) do
			local var76
			if children_upvr ~= nil and typeof(children_upvr) == "table" then
				for i_3, v_3 in pairs(children_upvr) do
					if typeof(v_3) == "table" then
						local type_4 = v_3.type
						if type_4 ~= nil then
							if typeof(v_3) == "table" and v_3.props and v_3.props.presenceId then
								type_4 = string.format("%s:%s", i_3, tostring(v_3.props.presenceId))
							else
								type_4 = i_3
							end
							if type_4 == i_2 then
								var76 = true
								break
							end
						end
					end
				end
			end
			if not var76 and v_2.isPresent then
				tbl_3_upvr[i_2] = {
					type = PresenceState_upvr.Exiting;
					component = v_2.component;
					dictionaryKey = v_2.dictionaryKey;
				}
			end
		end
		if next(tbl_3_upvr) ~= nil then
			any_useState_result2_upvr(function(arg1_3) -- Line 120
				--[[ Upvalues[3]:
					[1]: tbl_3_upvr (readonly)
					[2]: PresenceState_upvr (copied, readonly)
					[3]: any_useRef_result1_upvr (copied, readonly)
				]]
				local clone_3 = table.clone(arg1_3)
				for i_4, v_4 in pairs(tbl_3_upvr) do
					if v_4.type == PresenceState_upvr.Entering then
						clone_3[i_4] = {
							isPresent = true;
							component = v_4.component;
							safeToRemove = false;
							dictionaryKey = v_4.dictionaryKey;
						}
					elseif v_4.type == PresenceState_upvr.Exiting and clone_3[i_4] and clone_3[i_4].isPresent then
						clone_3[i_4] = {
							isPresent = false;
							component = v_4.component;
							safeToRemove = false;
							dictionaryKey = v_4.dictionaryKey;
						}
						any_useRef_result1_upvr.current[i_4] = true
					end
				end
				return clone_3
			end)
		end
	end, {children_upvr})
	React_upvr.useEffect(function() -- Line 170
		--[[ Upvalues[3]:
			[1]: any_useState_result1_upvr (readonly)
			[2]: any_useState_result2_upvr (readonly)
			[3]: var14_upvr (readonly)
		]]
		local var104
		for i_5, v_5 in pairs(any_useState_result1_upvr) do
			if v_5.safeToRemove then
				({})[i_5] = true
			end
		end
		if nil then
			local tbl_5_upvr = {}
			any_useState_result2_upvr(function(arg1_6) -- Line 182
				--[[ Upvalues[2]:
					[1]: tbl_5_upvr (readonly)
					[2]: var14_upvr (copied, readonly)
				]]
				for i_6, v_6 in pairs(arg1_6) do
					if not tbl_5_upvr[i_6] then
						({})[i_6] = v_6
					elseif var14_upvr then
						var14_upvr(i_6)
					end
				end
				-- KONSTANTERROR: Expression was reused, decompilation is incorrect
				return {}
			end)
		end
	end, {any_useState_result1_upvr})
	for i_7_upvr, v_7 in pairs(any_useState_result1_upvr) do
		if not v_7.safeToRemove then
			local tbl_6 = {
				key = i_7_upvr;
				presenceId = i_7_upvr;
				isPresent = v_7.isPresent;
			}
			local any_useCallback_result1_upvr = React_upvr.useCallback(function(arg1_4) -- Line 150
				--[[ Upvalues[2]:
					[1]: any_useRef_result1_upvr (readonly)
					[2]: any_useState_result2_upvr (readonly)
				]]
				if any_useRef_result1_upvr.current[arg1_4] then
					any_useRef_result1_upvr.current[arg1_4] = nil
					any_useState_result2_upvr(function(arg1_5) -- Line 154
						--[[ Upvalues[1]:
							[1]: arg1_4 (readonly)
						]]
						local clone_2 = table.clone(arg1_5)
						if clone_2[arg1_4] then
							clone_2[arg1_4] = {
								isPresent = false;
								component = clone_2[arg1_4].component;
								safeToRemove = true;
								dictionaryKey = clone_2[arg1_4].dictionaryKey;
							}
						end
						return clone_2
					end)
				end
			end, {})
			function tbl_6.onExitComplete() -- Line 208
				--[[ Upvalues[2]:
					[1]: any_useCallback_result1_upvr (readonly)
					[2]: i_7_upvr (readonly)
				]]
				any_useCallback_result1_upvr(i_7_upvr)
			end
			tbl_6.childData = nil
			tbl_6.children = v_7.component
			table.insert({}, React_upvr.createElement(PresenceChild_upvr, tbl_6, v_7.component))
		end
	end
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	return React_upvr.createElement(React_upvr.Fragment, {}, {})
end