/**
---------------------------------------------------------------------------

Copyright (c) 2009 Dan Simpson

Auto-Generated @ Wed Aug 26 19:21:29 -0700 2009.  Do not edit this file, extend it you must.

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in
all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
THE SOFTWARE.

---------------------------------------------------------------------------
**/

/*
Documentation

    This method tests the peer's capability to correctly marshal integer
    data.
  
*/
package org.ds.amqp.protocol.test
{
	import flash.utils.ByteArray;
	import org.ds.amqp.datastructures.*;
	import org.ds.amqp.protocol.Method;
	import org.ds.amqp.transport.Buffer;
	
	public dynamic class TestInteger extends Method
	{
		public static var EVENT:String = "120/10";

		//
		public var integer1                :uint = 0;

		//
		public var integer2                :uint = 0;

		//
		public var integer3                :uint = 0;

		//
		public var integer4                :uint = 0;

		//
		public var operation               :uint = 0;

		
		public function TestInteger() {
			_classId  = 120;
			_methodId = 10;
			
			_synchronous = true;

			_responses = [TestIntegerOk];

		}


		public override function writeArguments(buf:Buffer):void {

			buf.writeOctet(this.integer1);
			buf.writeShortInt(this.integer2);
			buf.writeLongInt(this.integer3);
			buf.writeLongLong(this.integer4);
			buf.writeOctet(this.operation);
		}
		
		public override function readArguments(buf:Buffer):void {

			this.integer1         = buf.readOctet();
			this.integer2         = buf.readShortInt();
			this.integer3         = buf.readLongInt();
			this.integer4         = buf.readLongLong();
			this.operation        = buf.readOctet();
		}
		
		public override function print():void {
			var props:Array = [
				"integer1","integer2","integer3","integer4","operation"
			];
			printObj("TestInteger", props);
		}

	}
}