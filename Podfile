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
 
 
 #OpenCV 4.1.0
 exposure = installer.config.project_pods_root + 'OpenCV/opencv2.framework/Versions/A/Headers/stitching/detail/exposure_compensate.hpp'
  print exposure
  if File.exist?(exposure)
    print 'Enter exposure'
    text = File.read(exposure)
    new_contents = text.gsub('enum { NO, GAIN, GAIN_BLOCKS, CHANNELS, CHANNELS_BLOCKS };', '//enum { NO, GAIN, GAIN_BLOCKS, CHANNELS, CHANNELS_BLOCKS };')
    current_mask = File.stat(exposure).mode
    new_mask = current_mask | '0000000011111111'.to_i(2)
    File.chmod(new_mask, exposure)
    File.open(exposure, "w") {|file| file.puts new_contents }
    print 'Ok exposure'
  end
  
  seamFinders = installer.config.project_pods_root + 'OpenCV/opencv2.framework/Versions/A/Headers/stitching/detail/seam_finders.hpp'
  print seamFinders
  if File.exist?(seamFinders)
    print 'Enter seam finders'
    text = File.read(seamFinders)
    new_contents = text.gsub('enum { NO, VORONOI_SEAM, DP_SEAM };', '//enum { NO, VORONOI_SEAM, DP_SEAM };')
    current_mask = File.stat(seamFinders).mode
    new_mask = current_mask | '0000000011111111'.to_i(2)
    File.chmod(new_mask, seamFinders)
    File.open(seamFinders, "w") {|file| file.puts new_contents }
    print 'Ok seam finders'
  end
  
  blenders = installer.config.project_pods_root + 'OpenCV/opencv2.framework/Versions/A/Headers/stitching/detail/blenders.hpp'
  print blenders
  if File.exist?(blenders)
    print 'Enter blenders'
    text = File.read(blenders)
    new_contents = text.gsub('enum { NO, FEATHER, MULTI_BAND };', '//enum { NO, FEATHER, MULTI_BAND };')
    current_mask = File.stat(blenders).mode
    new_mask = current_mask | '0000000011111111'.to_i(2)
    File.chmod(new_mask, blenders)
    File.open(blenders, "w") {|file| file.puts new_contents }
    print 'Ok blenders'
  end
 
end
