package;

import flixel.FlxG;
import flixel.FlxState;

class StateC extends FlxState
{
	override public function create()
	{
		super.create();
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
