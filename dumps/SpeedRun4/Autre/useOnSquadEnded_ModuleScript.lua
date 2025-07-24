-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:31:13
-- Luau version 6, Types version 3
-- Time taken: 0.000624 seconds

local SquadsCore = script:FindFirstAncestor("SquadsCore")
local Parent = SquadsCore.Parent
local useCurrentSquadId_upvr = require(SquadsCore.Hooks.useCurrentSquadId)
local usePrevious_upvr = require(Parent.RoactUtils).Hooks.usePrevious
local React_upvr = require(Parent.React)
return function(arg1) -- Line 9
	--[[ Upvalues[3]:
		[1]: useCurrentSquadId_upvr (readonly)
		[2]: usePrevious_upvr (readonly)
		[3]: React_upvr (readonly)
	]]
	local var7_upvr = useCurrentSquadId_upvr() or ""
	local var9_upvr = usePrevious_upvr(var7_upvr) or ""
	local tbl = {var7_upvr}
	tbl[2] = arg1
	React_upvr.useEffect(function() -- Line 12
		--[[ Upvalues[3]:
			[1]: var7_upvr (readonly)
			[2]: var9_upvr (readonly)
			[3]: arg1 (readonly)
		]]
		if var7_upvr ~= var9_upvr and var9_upvr ~= "" and arg1 then
			arg1()
		end
	end, tbl)
end