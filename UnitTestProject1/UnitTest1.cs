using System;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using simpleregistration;

namespace UnitTestProject1
{
    [TestClass]
    public class UnitTest1
    {
        [TestMethod]
        public void TestMethod1()
        {
            tutorial tp = new tutorial();
            Assert.AreEqual(tp.name, "hello dude");
        }
    }
}
