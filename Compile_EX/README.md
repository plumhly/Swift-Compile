#  swift  编译优化


1. 指明类型 ， 不要让编译器推断
2. 用if let 取代 ??
3. 显示编译时间 defaults write com.apple.dt.Xcode ShowBuildOperationDuration -bool YES
4. -Xfrontend -warn-long-function-bodies=100   ；  -Xfrontend -warn-long-expression-type-checking=100
## name
