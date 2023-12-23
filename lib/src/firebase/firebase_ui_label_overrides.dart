part of firebase_x_kit;

final localizationsDelegates = <LocalizationsDelegate>[
  FirebaseUILocalizations.withDefaultOverrides(
    const FirebaseUILabelOverrides(),
  ),
  FirebaseUILocalizations.delegate,
  GlobalMaterialLocalizations.delegate,
  GlobalWidgetsLocalizations.delegate,
  GlobalCupertinoLocalizations.delegate,
];

const supportedLocales = [
  Locale.fromSubtags(languageCode: 'en', countryCode: '374'),
  Locale.fromSubtags(languageCode: 'ja', countryCode: '81'),
];

class FirebaseUILabelOverrides extends DefaultLocalizations {
  const FirebaseUILabelOverrides();

  @override
  String get emailInputLabel => 'メールアドレス';

  @override
  String get passwordInputLabel => 'パスワード';

  @override
  String get signInActionText => 'Sign in';

  @override
  String get registerActionText => 'アカウント登録';

  @override
  String get linkEmailButtonText => '次へ';

  String get signInButtonText => 'Sign in';

  String get registerButtonText => 'アカウント登録';

  @override
  String get signInWithPhoneButtonText => '電話番号でサインイン';

  @override
  String get signInWithGoogleButtonText => 'Sign in with Google';

  @override
  String get signInWithAppleButtonText => 'Sign in with Apple';

  @override
  String get signInWithFacebookButtonText => 'Facebookでサインイン';

  @override
  String get signInWithTwitterButtonText => 'Twitterでサインイン';

  @override
  String get phoneVerificationViewTitleText => '電話番号を入力';

  @override
  String get verifyPhoneNumberButtonText => '次へ';

  @override
  String get verifyCodeButtonText => '確認';

  String get verifyingPhoneNumberViewTitle => 'SMSに記載されたコードを入力';

  @override
  String get unknownError => '不明なエラーが発生しました';

  @override
  String get smsAutoresolutionFailedError =>
      'SMSコードの自動解決に失敗しました。コードを手動で入力してください。';

  String get smsCodeSentText => 'SMSコード送信';

  String get sendingSMSCodeText => 'SMSコード送信中...';

  @override
  String get verifyingSMSCodeText => 'SMSコードの確認中...';

  @override
  String get enterSMSCodeText => 'SMSコードを入力';

  @override
  String get emailIsRequiredErrorText => 'メールアドレスは必須です';

  @override
  String get isNotAValidEmailErrorText => '有効なメールアドレスを入力してください';

  @override
  String get userNotFoundErrorText => '入力されたメールアドレスのアカウントはすでに存在しません';

  @override
  String get emailTakenErrorText => '入力されたメールアドレスのアカウントはすでに存在しています';

  @override
  String get accessDisabledErrorText => 'このアカウントへのアクセスは一時的に無効化されました';

  @override
  String get wrongOrNoPasswordErrorText => 'パスワードが無効です';

  @override
  String get signInText => 'Welcome back 👋';

  @override
  String get registerText => 'Hello there 👋';

  @override
  String get registerHintText => 'アカウントをお持ちでない方はこちら';

  @override
  String get signInHintText => 'すでにアカウントをお持ちの方はこちら';

  @override
  String get signOutButtonText => 'サインアウト';

  @override
  String get phoneInputLabel => '電話番号';

  @override
  String get phoneNumberIsRequiredErrorText => '電話番号は必須です';

  @override
  String get phoneNumberInvalidErrorText => '電話番号が無効です';

  @override
  String get profile => 'プロフィール';

  @override
  String get name => '名前';

  @override
  String get deleteAccount => 'アカウント削除';

  @override
  String get passwordIsRequiredErrorText => 'パスワードは必須です';

  @override
  String get confirmPasswordIsRequiredErrorText => 'パスワード（確認用）は必須です';

  @override
  String get confirmPasswordDoesNotMatchErrorText => 'パスワードが一致しません';

  @override
  String get confirmPasswordInputLabel => 'パスワード（確認用）';

  @override
  String get forgotPasswordButtonLabel => 'パスワードを忘れた方はこちら';

  @override
  String get forgotPasswordViewTitle => 'パスワードを忘れた方';

  @override
  String get resetPasswordButtonLabel => 'パスワードリセット';

  @override
  String get verifyItsYouText => 'あなたであることを確認する';

  @override
  String get differentMethodsSignInTitleText => '次のいずれかの方法でログインしてください';

  @override
  String get findProviderForEmailTitleText => '続行するには、メールアドレスを入力してください';

  @override
  String get continueText => '続ける';

  @override
  String get countryCode => 'コード';

  String get codeRequiredErrorText => '国コードは必須です';

  @override
  String get invalidCountryCode => '無効なコード';

  @override
  String get chooseACountry => '国を選択してください';

  @override
  String get enableMoreSignInMethods => 'より多くのログイン方法を有効にする';

  @override
  String get signInMethods => 'サインイン方法';

  @override
  String get provideEmail => 'メールアドレスとパスワードを入力してください';

  @override
  String get goBackButtonLabel => '戻る';

  @override
  String get passwordResetEmailSentText =>
      'パスワードをリセットするためのリンクを記載したメールを送信しました。メールをご確認ください。';

  @override
  String get forgotPasswordHintText => 'パスワードをリセットするためのリンクを送信します';

  @override
  String get emailLinkSignInButtonLabel => 'マジックリンクでサインイン';

  @override
  String get signInWithEmailLinkViewTitleText => 'マジックリンクでサインイン';

  @override
  String get signInWithEmailLinkSentText =>
      'マジックリンクが記載された電子メールを送信しました。メールをご確認の上、リンクからサインインしてください。';

  @override
  String get sendLinkButtonLabel => 'マジックリンクの送信';

  @override
  String get arrayLabel => 'array';

  @override
  String get booleanLabel => 'boolean';

  @override
  String get mapLabel => 'map';

  @override
  String get nullLabel => 'null';

  @override
  String get numberLabel => 'number';

  @override
  String get stringLabel => 'string';

  @override
  String get typeLabel => 'type';

  @override
  String get valueLabel => 'value';

  @override
  String get cancelLabel => 'キャンセル';

  @override
  String get updateLabel => '更新';

  @override
  String get northInitialLabel => 'N';

  @override
  String get southInitialLabel => 'S';

  @override
  String get westInitialLabel => 'W';

  @override
  String get eastInitialLabel => 'E';

  @override
  String get timestampLabel => 'timestamp';

  @override
  String get latitudeLabel => 'longitude';

  @override
  String get longitudeLabel => 'latitude';

  @override
  String get geopointLabel => 'geopoint';

  @override
  String get referenceLabel => 'reference';
}
