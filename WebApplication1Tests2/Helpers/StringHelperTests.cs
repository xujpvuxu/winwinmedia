using Microsoft.VisualStudio.TestTools.UnitTesting;
using WebApplication1.Helpers;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace WebApplication1.Helpers.Tests
{
    [TestClass()]
    public class StringHelperTests
    {
        [TestMethod()]
        [DataRow("ABC", "A*C")]
        [DataRow("ABCDE", "A*CDE")]
        public void MosaicNameTest_OverTwoLength_MiddleMosica(string name, string except)
        {
            string result = new StringHelper().MosaicName(name);
            Assert.AreEqual(result, except);
        }

        [TestMethod()]
        [DataRow("AB", "A*")]
        public void MosaicNameTest_OverTwoLength_LastMosica(string name, string except)
        {
            string result = new StringHelper().MosaicName(name);
            Assert.AreEqual(result, except);
        }

        [TestMethod()]
        [DataRow("A", "A")]
        public void MosaicNameTest_OverTwoLength_NoMosica(string name, string except)
        {
            string result = new StringHelper().MosaicName(name);
            Assert.AreEqual(result, except);
        }
    }
}