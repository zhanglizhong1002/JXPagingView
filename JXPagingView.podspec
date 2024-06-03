
Pod::Spec.new do |s|
  s.name         = "JXPagingView"
  s.version = "2.1.4"
  s.summary      = "类似微博主页、简书主页等效果。多页面嵌套，既可以上下滑动，也可以左右滑动切换页面。支持HeaderView悬浮、支持下拉刷新、上拉加载更多。"
  s.homepage     = "https://github.com/pujiaxin33/JXPagingView"
  s.author       = { "pujiaxin33" => "317437084@qq.com" }
  s.platform     = :ios, "8.0"
  s.swift_versions = ["4.2", "5.0"]
  s.source       = { :git => "https://github.com/pujiaxin33/JXPagingView.git", :tag => "#{s.version}" }
  s.source_files  = "JXPagingView", "Sources/JXPagingView/**/*.swift"
  s.license      = "MIT"
  s.subspec 'Pager' do |pager|
    pager.source_files = 'JXPagerView', 'Sources/JXPagerView/**/*.{h,m}'
    pager.resource_bundles = {"JXPagerView" => ["Sources/PrivacyInfo.xcprivacy"]}
  end

  s.subspec 'Paging' do |paging|
    paging.source_files = "JXPagingView", "Sources/JXPagingView/**/*.swift"
    paging.resource_bundles = {"JXPagingView" => ["Sources/PrivacyInfo.xcprivacy"]}
  end

  s.requires_arc = true

end
