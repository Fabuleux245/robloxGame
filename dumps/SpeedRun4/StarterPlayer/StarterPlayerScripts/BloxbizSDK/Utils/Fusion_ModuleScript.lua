-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:39:45
-- Luau version 6, Types version 3
-- Time taken: 0.001240 seconds

return require(script.Utility.restrictRead)("Fusion", {
	version = {
		major = 0;
		minor = 2;
		isRelease = true;
	};
	New = require(script.Instances.New);
	Hydrate = require(script.Instances.Hydrate);
	Ref = require(script.Instances.Ref);
	Out = require(script.Instances.Out);
	Cleanup = require(script.Instances.Cleanup);
	Children = require(script.Instances.Children);
	OnEvent = require(script.Instances.OnEvent);
	OnChange = require(script.Instances.OnChange);
	Value = require(script.State.Value);
	Computed = require(script.State.Computed);
	ForPairs = require(script.State.ForPairs);
	ForKeys = require(script.State.ForKeys);
	ForValues = require(script.State.ForValues);
	Observer = require(script.State.Observer);
	Tween = require(script.Animation.Tween);
	Spring = require(script.Animation.Spring);
	cleanup = require(script.Utility.cleanup);
	doNothing = require(script.Utility.doNothing);
})