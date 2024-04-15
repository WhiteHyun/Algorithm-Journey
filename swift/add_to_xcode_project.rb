#!/usr/bin/env ruby

require 'xcodeproj'

# Xcode 프로젝트 파일의 상대 경로
project_path = 'Algorithm.xcodeproj'

# 추가할 Swift 파일의 상대 경로
swift_file_path = ARGV[0]

# Xcode 프로젝트 열기
project = Xcodeproj::Project.open(project_path)

# 프로젝트의 첫 번째 타겟 가져오기
target = project.targets.first

# 새 파일을 타겟에 추가
file_ref = project.new_file(swift_file_path)
target.add_file_references([file_ref])

# 프로젝트 저장
project.save
