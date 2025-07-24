-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:30:07
-- Luau version 6, Types version 3
-- Time taken: 0.002089 seconds

local dependencies = require(script:FindFirstAncestor("FriendsLanding").dependencies)
local Roact_upvr = dependencies.Roact
local Parent_upvr = require(script.Parent)
local llama_upvr = dependencies.llama
local friendsWithPresence_upvr = require(script.Parent.friendsWithPresence)
return function(arg1) -- Line 10
	--[[ Upvalues[4]:
		[1]: Roact_upvr (readonly)
		[2]: Parent_upvr (readonly)
		[3]: llama_upvr (readonly)
		[4]: friendsWithPresence_upvr (readonly)
	]]
	return Roact_upvr.createElement("Frame", {
		Size = UDim2.new(1, 0, 1, 0);
		BackgroundTransparency = 1;
	}, {
		frame = Roact_upvr.createElement("Frame", {
			Size = UDim2.new(0, 150, 0, 0);
			BackgroundTransparency = 1;
		}, {
			layout = Roact_upvr.createElement("UIListLayout", {
				SortOrder = Enum.SortOrder.LayoutOrder;
				FillDirection = Enum.FillDirection.Horizontal;
				Padding = UDim.new(0, 6);
			});
			OnlineFriend = Roact_upvr.createElement(Parent_upvr, llama_upvr.Dictionary.join(arg1, {
				user = friendsWithPresence_upvr.OnlineFriend;
			}));
			DeletedFriend = Roact_upvr.createElement(Parent_upvr, llama_upvr.Dictionary.join(arg1, {
				user = friendsWithPresence_upvr.DeletedFriend;
			}));
			OfflineFriend = Roact_upvr.createElement(Parent_upvr, llama_upvr.Dictionary.join(arg1, {
				user = friendsWithPresence_upvr.OfflineFriend;
			}));
			InGameFriend = Roact_upvr.createElement(Parent_upvr, llama_upvr.Dictionary.join(arg1, {
				user = friendsWithPresence_upvr.InGameFriend;
			}));
			InGameWithoutLastLocationFriend = Roact_upvr.createElement(Parent_upvr, llama_upvr.Dictionary.join(arg1, {
				user = friendsWithPresence_upvr.InGameWithoutLastLocationFriend;
			}));
			InStudioFriend = Roact_upvr.createElement(Parent_upvr, llama_upvr.Dictionary.join(arg1, {
				user = friendsWithPresence_upvr.InStudioFriend;
			}));
			InStudioWithoutLastLocationFriend = Roact_upvr.createElement(Parent_upvr, llama_upvr.Dictionary.join(arg1, {
				user = friendsWithPresence_upvr.InStudioWithoutLastLocationFriend;
			}));
		});
	})
end