require 'cucumber'
require 'selenium/webdriver'

# Store command line arguments
$browser_type = ENV['BROWSER'] || 'chrome'
$platform = ENV['PLATFORM'] || 'desktop'
$os_version = ENV['OS_VERSION']
$device_name = ENV['DEVICE_NAME']
$udid = ENV['UDID']
$app_path = ENV['APP_PATH']

Before do |scenario|
  $driver = Selenium::WebDriver.for(:"#{$browser_type}")
  $driver.manage().window().maximize()
end

After do |scenario|
  $driver.quit()
end
