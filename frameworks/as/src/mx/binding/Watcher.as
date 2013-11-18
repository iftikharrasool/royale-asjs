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

package mx.binding
{

[ExcludeClass]

/**
 * @private
 * This class is used to satisfy old MXML codegen
 * for both Falcon and MXML, but in FlexJS with mxml.children-as-data output
 * it isn't needed so there is no JS equivalent
 */
public class Watcher
{

	//--------------------------------------------------------------------------
	//
	//  Constructor
	//
	//--------------------------------------------------------------------------

	/**
	 *  Constructor.
	 *  
	 *  @langversion 3.0
	 *  @playerversion Flash 9
	 *  @playerversion AIR 1.1
	 *  @productversion Flex 3
	 */
    public function Watcher(listeners:Array = null)
    {
		super();

        this.listeners = listeners;
    }

	//--------------------------------------------------------------------------
	//
	//  Variables
	//
	//--------------------------------------------------------------------------

    /**
     *  @private
     *  The binding objects that are listening to this Watcher.
     *  The standard event mechanism isn't used because it's too heavyweight.
     */
    protected var listeners:Array;

    /**
     *  @private
     *  Children of this watcher are watching sub values.
     */
    protected var children:Array;

    /**
     *  @private
     *  The value itself.
     */
    public var value:Object;

    /**
     *  @private
     *  Keep track of cloning when used in Repeaters.
     */
    protected var cloneIndex:int;

}

}
