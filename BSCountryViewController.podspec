Pod::Spec.new do |s|
  s.name             = 'BSCountryViewController'
  s.version          = '1.0.0'
  s.summary          = 'A standard view controller whose interface lets the user select a country or group of countries.'
  s.description      = <<-DESC
Present a list of continents and countries and when a user select one of them be notified via a delegate protocol. The list is embeded in a UIViewController as UITableView with a UINavigationBar and Done button.
                       DESC

  s.homepage         = 'https://github.com/Adobels/BSCountryViewController'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Blazej SLEBODA' => 'contact@blazejsleboda.fr' }
  s.source           = { :git => 'https://github.com/Adobels/BSCountryViewController.git', :tag => s.version.to_s }
  
  s.swift_version	 = '5.1'

  s.ios.deployment_target = '8.0'

  s.source_files = 'BSCountryViewController/Classes/**/*'
end
