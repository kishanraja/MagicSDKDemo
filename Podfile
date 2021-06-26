# Uncomment the next line to define a global platform for your project
# platform :ios, '9.0'

target 'MagicSDK-Demo' do
  # Comment the next line if you don't want to use dynamic frameworks
  use_frameworks!
  
  # Pods for MagicSDK-Demo
  pod 'MagicSDK'
  pod 'SwiftyJSON'
  #  pod 'web3swift'
#  pod 'Starscream', '~> 3.1.0'
#  pod 'CryptoSwift', '~> 1.0.0'
#  pod 'secp256k1.c', '~> 0.1'
  #    spec.dependency 'PromiseKit', '~> 6.8.4'
  
  # Required for XCFramework
  post_install do |installer|
    installer.pods_project.targets.each do |target|
      target.build_configurations.each do |config|
        config.build_settings['BUILD_LIBRARY_FOR_DISTRIBUTION'] = 'YES'
      end
    end
  end
end
