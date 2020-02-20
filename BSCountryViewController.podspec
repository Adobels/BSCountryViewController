Pod::Spec.new do |s|
  s.name             = 'BSCountryViewController'
  s.version          = '0.1.0'
  s.summary          = 'Select a country or continent & get a region codes.'

  s.description      = <<-DESC
Present a list of continents and countries and when a user select one of them be notified via a delegate protocol. The list is embeded in a UIViewController as UITableView with a UINavigationBar and Done button.
                       DESC

  s.homepage         = 'https://github.com/Adobels/BSCountryViewController'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Blazej SLEBODA' => 'contact@blazejsleboda.fr' }
  s.source           = { :git => 'https://github.com/Adobels/BSCountryViewController.git', :tag => s.version.to_s }

  s.ios.deployment_target = '8.0'

  s.source_files = 'BSCountryViewController/Classes/**/*'
end
