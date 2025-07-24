-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:09:05
-- Luau version 6, Types version 3
-- Time taken: 0.001643 seconds

local Parent = script:FindFirstAncestor("GraphQLServer").Parent
local Promise_upvr = require(Parent.Promise)
local GraphQLError_upvr = require(Parent.GraphQL).GraphQLError
local module = {}
local fetch_upvr = require(Parent.Fetch).fetch
local any_new_result1_upvr = require(Parent.UrlBuilder).UrlBuilder.new({
	base = require(Parent.UrlBuilder).UrlBase.new("users", 1);
	path = "users/{id}";
})
local Response_upvr = require(Parent.Fetch).Response
local function findUserById_upvr(arg1, arg2) -- Line 23, Named "findUserById"
	--[[ Upvalues[5]:
		[1]: fetch_upvr (readonly)
		[2]: Promise_upvr (readonly)
		[3]: any_new_result1_upvr (readonly)
		[4]: Response_upvr (readonly)
		[5]: GraphQLError_upvr (readonly)
	]]
	if arg2 then
	else
	end
	return Promise_upvr.new(function(arg1_2, arg2_2) -- Line 25
		--[[ Upvalues[5]:
			[1]: any_new_result1_upvr (copied, readonly)
			[2]: arg1 (readonly)
			[3]: fetch_upvr (readonly)
			[4]: Response_upvr (copied, readonly)
			[5]: GraphQLError_upvr (copied, readonly)
		]]
		local tbl = {}
		tbl.id = arg1
		local any_expect_result1 = fetch_upvr(any_new_result1_upvr(tbl), {
			method = "GET";
		}):catch(function() -- Line 33
			--[[ Upvalues[1]:
				[1]: Response_upvr (copied, readonly)
			]]
			return Response_upvr.error()
		end):expect()
		if not any_expect_result1.ok then
			arg2_2(GraphQLError_upvr.new(string.format("Failed to find user matching id: %s.", arg1)))
		else
			local any_expect_result1_2 = any_expect_result1:json():catch(function() -- Line 45
				return nil
			end):expect()
			if not any_expect_result1_2 then
				arg2_2(GraphQLError_upvr.new(string.format("Failed to decode HTTP response as JSON for user matching id: %s.", arg1)))
				return
			end
			arg1_2({
				id = tostring(any_expect_result1_2.id);
				displayName = any_expect_result1_2.displayName;
			})
		end
	end)
end
module.findUserById = findUserById_upvr
local Players_upvr = game:GetService("Players")
function module.findMe(arg1, arg2) -- Line 66
	--[[ Upvalues[4]:
		[1]: Players_upvr (readonly)
		[2]: Promise_upvr (readonly)
		[3]: GraphQLError_upvr (readonly)
		[4]: findUserById_upvr (readonly)
	]]
	if arg2 then
		local _ = arg2
	else
	end
	if not Players_upvr.LocalPlayer then
		return Promise_upvr.reject(GraphQLError_upvr.new("LocalPlayer not found"))
	end
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	return findUserById_upvr(tostring(Players_upvr.LocalPlayer.UserId), arg1)
end
return module