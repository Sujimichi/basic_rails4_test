Given /^(?:|I )am on (.+)$/ do |page_name|
  visit path_to(page_name)
  if page_name.include?("jvr_model")
    panel_is_visible?("entities_list").should be_true
  end
end


Then(/^I should be see "(.*?)"$/) do |arg1|
  page.should have_text(arg1)
end
