Given /^the following select_categories:$/ do |select_categories|
  SelectCategories.create!(select_categories.hashes)
end

When /^I delete the (\d+)(?:st|nd|rd|th) select_categories$/ do |pos|
  visit select_categories_path
  within("table tr:nth-child(#{pos.to_i+1})") do
    click_link "Destroy"
  end
end

Then /^I should see the following select_categories:$/ do |expected_select_categories_table|
  expected_select_categories_table.diff!(tableish('table tr', 'td,th'))
end
