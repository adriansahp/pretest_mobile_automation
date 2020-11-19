Given ("user launch the app") do

end

Then ("user input unmatch password for registration") do
    @driver.find_element(:id, Login::SIGNUP_BUTTON).click
    wait(2)
    @driver.swipe(100, 100, 100, 900, 3000);
    @driver.find_element(:id, Register::NAME_FIELD).send_keys("Pretest QA")
    @driver.find_element(:id, Register::EMAIL_FIELD).send_keys("qatesting@bukalapak.com")
    @driver.find_element(:id, Register::PASSWORD_FIELD).send_keys("123456")
    @driver.find_element(:id, Register::PASSWORD_CONFIRM_FIELD).send_keys("wawawa")
    @driver.find_element(:id, Register::REGISTER_BUTTON).click
end

Then ("user do true registration") do
    @driver.find_element(:id, Login::SIGNUP_BUTTON).click
    wait(2)
    @driver.swipe(100, 100, 100, 900, 3000);
    @driver.find_element(:id, Register::NAME_FIELD).send_keys("Pretest QA")
    @driver.find_element(:id, Register::EMAIL_FIELD).send_keys("qatesting@bukalapak.com")
    @driver.find_element(:id, Register::PASSWORD_FIELD).send_keys("123456")
    @driver.find_element(:id, Register::PASSWORD_CONFIRM_FIELD).send_keys("123456")
    @driver.find_element(:id, Register::REGISTER_BUTTON).click
end