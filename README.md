# iOSKickstart

An iOS app boilerplate generator built with SwiftUI. This tool is designed for creating new iOS apps by taking configuration on command line, with a basic screen flows: Splash > Authorization/Login-SignUp > User Details > Terms & Conditions > Onboarding (Carousel) > Main Tab Screens. These screens use dummy content. Adding new screens or deleting existing ones can be easily managed, and the app code follows the idiomatic swift & iOS guidelines.

## Get Started

- .env에 필수 내용들 입력하고 AuthKey\_{api_key_id}.p8 파일을 root 경로에 위치

```
$ cp .env-example .env
```

- fastlane 설치 및 실행

```
$ bundle install
$ bundle exec fastlane ios build_ipa --verbose
```
