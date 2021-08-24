Feature: Add outcomes to bet slip

    Scenario: Test that should pass
        Given the start button is displayed
        And the lap button is displayed
        And the stop button is not displayed
        And the reset button is not displayed
        When I select the start button
        Then the stop button is displayed
        And the lap button is displayed
        And the start button is not displayed
        And the reset button is not displayed
        When I select the stop button
        Then the start button is displayed
        And the reset button is displayed
        And the stop button is not displayed
        And the lap button is not displayed

    Scenario: Test that should fail
        Given the start button is displayed
        And the stop button is not displayed
        When I select the start button
        Then the stop button is not displayed
        And the start button is displayed
