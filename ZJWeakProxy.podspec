#
# Be sure to run `pod lib lint ZJWeakProxy.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  # 库名称
  s.name             = 'ZJWeakProxy'
  # 版本号
  s.version          = '0.2.0'
  # 库简短介绍
  s.summary          = 'A short description of ZJWeakProxy.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  # 开源库描述
  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC
  # 开源库地址，或者是博客、社交地址等
  s.homepage         = 'https://github.com/BboyZJ/ZJWeakProxy'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  # 开源协议
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  # 开源库作者
  s.author           = { 'BboyZJ' => '13718004742@163.com' }
  # 开源库资源文件
  s.source           = { :git => 'https://github.com/BboyZJ/ZJWeakProxy.git', :tag => s.version.to_s }
  # 社交网址
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'
  # 开源库最低支持
  s.ios.deployment_target = '10.0'
  # 开源库源文件
  s.source_files = 'ZJWeakProxy/Classes/**/*'
  # 添加资源文件
  # s.resource_bundles = {
  #   'ZJWeakProxy' => ['ZJWeakProxy/Assets/*.png']
  # }
  
  # s.public_header_files = 'Pod/Classes/**/*.h'
  # 依赖系统库 多个用逗号隔开
  # s.frameworks = 'UIKit', 'MapKit'
  # 引入第三方依赖库
  # s.dependency 'AFNetworking', '~> 2.3'
end
