class TFirebaseAuthException implements Exception {
  final String code;

  TFirebaseAuthException(this.code);

  String get message {
    switch (code) {
      case 'email-already-in-use':
        return 'The email address is already registered. Please use a different email.';
      case 'invalid-email':
        return 'The email address provided is invalid. Please enter a valid email.';
      case 'weak-password':
        return 'The password is to weak. Please choose a strong password';
      case 'user-disabled':
        return 'The user account has been disabled  . Please contact support for assistance';
      case 'user-not-found':
        return 'Invalid login details, User not found';
      case 'wrong-password':
        return 'Incorrect password. Please check your password and try again';
      case 'invalid-verification-code':
        return 'Invalid verification ID. please request a new verification code.';
      case 'quota-exceeded':
        return 'Quota exceeded. Please try again later.';
      case 'email-already-exists':
        return 'The email address already exists. Please use a different email';
      case 'provider-already-linked':
        return 'The account is already linked with another provider';
      case 'requires-recent-login':
        return 'This operation is sensitive and requires recent authentication. Please log in again';
      case 'credential-already-in-use':
        return 'The creadential is already assoicated with a different user account.';
      case 'user-mismatch':
        return 'The supplied credential do not correspond to the previously signed in user.';
      case 'account-exists-with-different-crendential':
        return 'An account already exists with the same email but different sign-in credential ';
      case 'operation-not-allowed':
        return 'This operation is not allowed. Please enable this service in the Firebase console.';
      case 'too-many-requests':
        return 'Too many requests. Please wait a moment and try again.';
      case 'invalid-credential':
        return 'The provided authentication credential is invalid. Please try again.';
      case 'session-expired':
        return 'Your session has expired. Please log in again.';
      case 'missing-email':
        return 'No email address was provided. Please enter your email.';
      case 'missing-password':
        return 'No password was provided. Please enter your password.';
      case 'invalid-verification-id':
        return 'The verification ID is invalid. Please request a new verification code.';
      case 'missing-verification-code':
        return 'No verification code was provided. Please enter the code sent to your device.';
      case 'token-expired':
        return 'The token has expired. Please log in again to continue.';
      case 'invalid-sender':
        return 'The request sender is invalid. Please try again or contact support.';
      case 'invalid-api-key':
        return 'The API key provided is invalid. Please check your API key.';
      case 'app-not-authorized':
        return 'This app is not authorized to use Firebase Authentication. Please check your configuration.';
      case 'expired-action-code':
        return 'The action code has expired. Please request a new one.';
      case 'invalid-action-code':
        return 'The action code is invalid. This may happen if the code is malformed or has already been used.';
      case 'network-request-failed':
        return 'A network error has occurred. Please check your internet connection and try again.';
      case 'unverified-email':
        return 'The email address is not verified. Please verify your email to proceed.';
      case 'second-factor-required':
        return 'Two-factor authentication is required. Please complete the second factor to proceed.';
      case 'invalid-recipient-email':
        return 'The recipient email address is invalid. Please check the email address and try again.';
      case 'missing-android-pkg-name':
        return 'An Android package name must be provided if the Android app is required to be installed.';
      case 'missing-continue-uri':
        return 'A continue URL must be provided in the request.';
      case 'missing-ios-bundle-id':
        return 'An iOS bundle ID must be provided if the app is required to be installed.';
      case 'unauthorized-domain':
        return 'The domain of the continue URL is not authorized. Please check your Firebase console settings.';
      case 'invalid-continue-uri':
        return 'The continue URL provided is invalid. Please check the URL and try again.';
      case 'invalid-dynamic-link-domain':
        return 'The dynamic link domain provided is not authorized or configured. Please check your Firebase console settings.';
      case 'invalid-phone-number':
        return 'The phone number provided is invalid. Please enter a valid phone number.';
      case 'missing-phone-number':
        return 'No phone number was provided. Please enter your phone number.';
      case 'invalid-password':
        return 'The password provided is invalid. Please enter a valid password.';
      case 'email-change-needs-verification':
        return 'Please verify your new email address to complete the change.';
      default:
        return 'An unexpected Firebase error occurred. Please try again';
    }
  }
}
