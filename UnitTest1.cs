using NUnit.Framework;
using OpenQA.Selenium;
using OpenQA.Selenium.Chrome;

namespace SeleniumExample
{
    [TestFixture]
    public class UnitTest1
    {
        IWebDriver driver;

        [SetUp]
        public void SetUp()
        {
            driver = new ChromeDriver();
        }

        [Test]
        public void OpenBrowser ()
        {
            driver.Navigate().GoToUrl("https://www.google.com/");
        }

        [TearDown]
        public void TearDown()
        {
            driver.Quit();
        }

    }
}
