# Uncomment the next line to define a global platform for your project
platform :ios, '12.0'

workspace 'CleanSwift'

xcodeproj 'SpaceX/SpaceX.xcodeproj'
xcodeproj 'CNetwork/CNetwork.xcodeproj'

def api_pods
   	pod 'Alamofire'
end

def client_pods
   	pod 'Alamofire'
   	pod 'Kingfisher'
	pod 'ReachabilitySwift'
end

target 'SpaceX' do
  	xcodeproj 'SpaceX/SpaceX.xcodeproj'
  	client_pods
end

target 'CNetwork' do
  	xcodeproj 'CNetwork/CNetwork.xcodeproj'
  	api_pods
end
