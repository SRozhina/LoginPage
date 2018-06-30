# Uncomment the next line to define a global platform for your project
# platform :ios, '9.0'

target 'LoginPage' do
  use_frameworks!
  pod 'SnapKit'
  
  post_install do |installer|
      myTargets = ['SnapKit']
      installer.pods_project.targets.each do |target|
          if myTargets.include? target.name
              target.build_configurations.each do |config|
                  config.build_settings['SWIFT_VERSION'] = '4.0'
              end
          end
      end
  end

end
