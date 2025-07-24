-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:07:04
-- Luau version 6, Types version 3
-- Time taken: 0.000870 seconds

return function(arg1, arg2, arg3) -- Line 1
	local storyRoots_upvr = arg1.storyRoots
	local mapStory_upvr = arg1.mapStory
	arg2("SHOULD run all stories with no issue", function() -- Line 5
		--[[ Upvalues[3]:
			[1]: storyRoots_upvr (readonly)
			[2]: arg3 (readonly)
			[3]: mapStory_upvr (readonly)
		]]
		for _, v in ipairs(storyRoots_upvr) do
			for _, v_2_upvr in ipairs(v:GetDescendants()) do
				if v_2_upvr:IsA("ModuleScript") and v_2_upvr.Name:find(".story$") then
					arg3("SHOULD mount: "..v_2_upvr:GetFullName(), function(arg1_2) -- Line 10
						--[[ Upvalues[2]:
							[1]: v_2_upvr (readonly)
							[2]: mapStory_upvr (copied, readonly)
						]]
						local v_2_upvr_2_upvr = require(v_2_upvr)
						local _, any_mountFrame_result2 = arg1_2.UnitTestHelpers.mountFrame(mapStory_upvr(function() -- Line 12
							--[[ Upvalues[1]:
								[1]: v_2_upvr_2_upvr (readonly)
							]]
							return v_2_upvr_2_upvr
						end)())
						any_mountFrame_result2()
					end)
				end
			end
		end
	end)
end