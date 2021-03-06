Pod::Spec.new do |s|

  s.name         = "YXRichText"
  s.version      = "1.0"
  s.summary      = "YXRichText 对富文本封装，可以配置部分字体或全部字体的 颜色、背景色、描边、阴影、下划线、中划线、字体间距等；."

  s.homepage     = "https://github.com/xnxy/YXRichText"
  s.license      = { :type => 'MIT', :file => 'LICENSE' }
  #作者
  s.author             = { "zhouwei" => "2303400083@qq.com" }
  
  #系统版本要求
  s.ios.deployment_target = "8.0"

  #库文件的位置，和对应的版本号（对应的版本号下的代码）
  s.source       = { :git => "https://github.com/xnxy/YXRichText.git", :tag => s.version }

  s.requires_arc = true
  #需要的代码文件(A/**/*.{h.m} 表示A文件夹及其子文件夹下的所有.h.m文件)
  s.source_files = 'YXRichText/*.{h,m}'
  s.public_header_files = 'YXRichText/*.{h}'
  
  s.frameworks = 'Foundation', 'CoreFoundation'

end
