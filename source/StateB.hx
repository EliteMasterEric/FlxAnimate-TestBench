package;

import flixel.FlxG;
import flixel.FlxState;
import flxanimate.FlxAnimate;

class StateB extends FlxState
{
	var char:FlxAnimate;

	override public function create()
	{
		super.create();

		char = new FlxAnimate(0, 0, 'assets/images/ninja-girl');
		char.antialiasing = true;
		add(char);
	}

	override public function update(elapsed:Float)
	{
		super.update(elapsed);
		if (FlxG.keys.justPressed.ONE)
			FlxG.switchState(new StateA());
		if (FlxG.keys.justPressed.TWO)
			FlxG.switchState(new StateB());
		if (FlxG.keys.justPressed.THREE)
			FlxG.switchState(new StateC());
	}
}
