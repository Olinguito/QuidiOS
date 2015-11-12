platform :ios, '8.0'
use_frameworks!

#target 'Quid' do
    pod 'Mapbox-iOS-SDK'
    pod 'SwiftyJSON', :git => 'https://github.com/SwiftyJSON/SwiftyJSON.git'
    pod 'DGActivityIndicatorView'
    pod 'Spring', :git => 'https://github.com/MengTo/Spring.git', :branch => 'swift2'
    pod 'SnapKit', '~> 0.15.0'
    pod 'GPUImage', '~> 0.1.4'
    pod 'RealmSwift'
    pod 'Alamofire', '~> 2.0.1'
    pod 'YLMoment'
#end

# disable bitcode in every sub-target
post_install do |installer|
  installer.pods_project.targets.each do |target|
    target.build_configurations.each do |config|
      config.build_settings['ENABLE_BITCODE'] = 'NO'
    end
  end
end
