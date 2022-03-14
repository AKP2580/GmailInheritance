Feature: Gmail mail compose

  Scenario: 
    Given open "chrome" browser
    And launch site using "http://www.gmail.com"
    When do login using "prac.dot" and "Akash@123" credentials
    Then compose is displayed
    When click on compose and fill fields and send mail and check response
      | to                    | subject   | body      | attachment                                                |
      | akashchikun@gmail.com | wishes    | hi bro    | C:\\Users\\lenovo\\Pictures\\Index of MANUAL TESTING.docx |
      | prac.dot@gmail.com    | test mail | hi friend | C:\\Users\\lenovo\\Pictures\\Index of MANUAL TESTING.docx |
    When do logout
    Then login page should be redisplayed
    When close site
