//------------------------------------------------------------------------------
//  Copyright (c) 2011 the original author or authors. All Rights Reserved. 
// 
//  NOTICE: You are permitted to use, modify, and distribute this file 
//  in accordance with the terms of the license agreement accompanying it. 
//------------------------------------------------------------------------------

package org.robotlegs.v2.experimental
{
	import flash.events.Event;

	public class CommandFlowRequireOnlyRule extends CommandFlowRule
	{
		private var _requiredEvent:String;
	
		public function CommandFlowRequireOnlyRule(eventString:String)
		{
			_requiredEvent = eventString;
		}
		
		override public function applyEvent(event:Event):Boolean
		{
			if(_requiredEvent == event.type)
			{
				_receivedEvents.push(event);
				return true;
			}
			return false;
		}
	
	}

}