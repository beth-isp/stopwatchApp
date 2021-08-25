import Foundation
import XCTest
import XCTest_Gherkin
import Nimble

class NavigationSteps: StepDefiner {
    override func defineSteps() {

        step("the (?<button>Start|Stop|Reset|Lap) button (.*) displayed") { (match: StepMatches<String>) in
            switch match[1] {
            case "is": expect(checkButton(button: match["button"]!).exists).to(beTrue(), description: "The \(match["button"]!) button does not exist")
            case "is not": expect(checkButton(button: match["button"]!).exists).to(beFalse(), description: "The \(match["button"]!) button does exist")
            default: XCTFail("Incorrect word entered in step, should be 'is' or 'is not'")
            }
        }

        step("I select the (?<button>Start|Stop) button") { (match: StepMatches<String>) in
            checkButton(button: match["button"]!).tap()
        }
    }
}
