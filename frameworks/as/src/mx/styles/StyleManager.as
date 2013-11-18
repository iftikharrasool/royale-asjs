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

/**
 * @private
 * This class is used to satisfy old MXML codegen
 * for both Falcon and MXML, but in FlexJS with mxml.children-as-data output
 * it isn't needed so there is no JS equivalent
 */
package mx.styles
{
    import mx.core.IFlexModuleFactory;
    
	public class StyleManager
	{
        /**
         *  Returns the style manager for an object.
         *
         *  @param moduleFactory The module factory of an object you want the 
         *  style manager for. If null, the top-level style manager is returned.
         *
         *  @return the style manager for the given module factory.
         *  
         *  @langversion 3.0
         *  @playerversion Flash 10
         *  @playerversion AIR 1.5
         *  @productversion Flex 4
         */
        public static function getStyleManager(moduleFactory:IFlexModuleFactory):IStyleManager2
        {
            return null;
        }
 	}
}