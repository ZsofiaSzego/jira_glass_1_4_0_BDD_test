package pages;

import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.PageFactory;
import org.openqa.selenium.support.pagefactory.AjaxElementLocatorFactory;

public class WorkflowPage {
    WebDriver driver;
    @FindBy(xpath = "//span[@class='css-t5emrf']//div[contains(.,'Issue Types')]")
    WebElement issueTypeTab;
    @FindBy(xpath = "//p[contains(.,'Selected issue type')]/parent::*//span")
    WebElement selectedIssue;
    @FindBy(xpath = "//p[contains(.,'Workflow details')]/parent::*//span")
    WebElement workflowDetails;
    @FindBy(xpath = "//div[@class='transitions-table-holder']")
    WebElement transitionTable;
    WebElement issueType;

    public WorkflowPage(WebDriver driver) {
        this.driver = driver;
        PageFactory.initElements(new AjaxElementLocatorFactory(driver, 5), this);
    }

    //index: 1 Task, 2 Sub-task, 3 Story, 4 Bug, 5 Epic
    public void chooseIssueType(int index){
        issueType = driver.findElement(By.xpath("//div[@class='css-1b3xg7v']//button["+index+"]"));
    }

    public void chooseIssueType(String type){
        By by;
        switch (type){
            case "Task":
              by = By.xpath("//div[@class='css-1b3xg7v']//button[1]");
              break;
            case "Sub-task":
                by = By.xpath("//div[@class='css-1b3xg7v']//button[2]");
                break;
            case "Story":
                by = By.xpath("//div[@class='css-1b3xg7v']//button[3]");
                break;
            case "Bug":
                by = By.xpath("//div[@class='css-1b3xg7v']//button[4]");
                break;
            default:
                by = By.xpath("//div[@class='css-1b3xg7v']//button[5]");
                break;
        }
        issueType = driver.findElement(by);
    }
}
