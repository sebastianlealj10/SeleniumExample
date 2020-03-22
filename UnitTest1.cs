using NUnit.Framework;
using OpenQA.Selenium;
using OpenQA.Selenium.Chrome;

namespace SeleniumExample
{
    [TestFixture]
    public class UnitTest1
    {
        IWebDriver driver;
        string title;

        [SetUp]
        public void SetUp()
        {
            driver = new ChromeDriver();
        }

        [Test]
        public void OpenBrowser ()
        {
            driver.Navigate().GoToUrl("https://www.google.com/");
            title = driver.Title;
            Assert.AreEqual(title, "Google","The title is ok");
        }

        [TearDown]
        public void TearDown()
        {
            driver.Quit();
        }

    }
}
