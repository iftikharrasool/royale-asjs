////////////////////////////////////////////////////////////////////////////////
//
//  Licensed to the Apache Software Foundation (ASF) under one or more
//  contributor license agreements.  See the NOTICE file distributed with
//  this work for additional information regarding copyright ownership.
//  The ASF licenses this file to You under the Apache License, Version 2.0
//  (the "License"); you may not use this file except in compliance with
//  the License.  You may obtain a copy of the License at
//
//      http://www.apache.org/licenses/LICENSE-2.0
//
//  Unless required by applicable law or agreed to in writing, software
//  distributed under the License is distributed on an "AS IS" BASIS,
//  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
//  See the License for the specific language governing permissions and
//  limitations under the License.
//
////////////////////////////////////////////////////////////////////////////////
package org.apache.flex.html.beads.controllers
{
	import org.apache.flex.core.IBeadController;
	import org.apache.flex.core.IStrand;
	import org.apache.flex.events.ItemClickedEvent;
	import org.apache.flex.events.MouseEvent;
	import org.apache.flex.html.supportClasses.AccordionItemRenderer;
	
	public class AccordionItemRendererMouseController implements IBeadController
	{
		private var _strand:IStrand;
		
		public function AccordionItemRendererMouseController()
		{
		}
		
		private function get accordionItemRenderer():AccordionItemRenderer
		{
			return _strand as AccordionItemRenderer;		
		}
		
		public function get strand():IStrand
		{
			return _strand;
		}

		public function set strand(value:IStrand):void
		{
			_strand = value;
			accordionItemRenderer.titleBar.addEventListener(MouseEvent.CLICK, titleBarClickHandler);
		}
		
		protected function titleBarClickHandler(event:MouseEvent):void
		{
			var newEvent:ItemClickedEvent = new ItemClickedEvent("itemClicked");
			newEvent.data = accordionItemRenderer.data;
			newEvent.multipleSelection = event.shiftKey;
			newEvent.index = accordionItemRenderer.index;
			
			accordionItemRenderer.dispatchEvent(newEvent);
		}
	}
}