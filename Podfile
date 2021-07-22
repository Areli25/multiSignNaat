# Uncomment the next line to define a global platform for your project
# platform :ios, '9.0'
source 'https://github.com/CocoaPods/Specs.git'
source 'https://gitlab.com/na-at_technologies/fadsdk4/nshare/sm/specs.git'
target 'FADMultiSigner_Example' do
  # Comment the next line if you don't want to use dynamic frameworks
  use_frameworks!

  # Pods for FADMultiSigner_Example
	pod 'FADMultiSignerPod'

end

post_install do |installer|
 #FireBase , SQLCipher
 installer.pods_project.targets.each do |target|
    target.build_configurations.each do |config|
      xcconfig_path = config.base_configuration_reference.real_path
      xcconfig = File.read(xcconfig_path)
      new_xcconfig = xcconfig.gsub('-l"sqlite3"', '')
      File.open(xcconfig_path, "w") { |file| file << new_xcconfig }
    end
  end
end
