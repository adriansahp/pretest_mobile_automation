Feature: Bukalapak User Registration

@FalseUserRegistration
Scenario: Unmatch Password
Given user launch the app
Then user input unmatch password for registration


@UserRegistration
Scenario: User Registration Success
Given user launch the app
Then user do true registration