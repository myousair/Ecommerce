class TFirebaseException implements Exception {
  final String code;

  TFirebaseException(this.code);

  String get message {
    switch (code) {
      case 'unknown':
        return 'An unknown Firebase error occurred. Please try again.';
      case 'network-error':
        return 'A network error occurred. Please check your internet connection and try again.';
      case 'permission-denied':
        return 'You do not have permission to perform this action. Please contact support if you believe this is an error.';
      case 'resource-exhausted':
        return 'The operation was denied because the project has exhausted some resource quota. Please try again later.';
      case 'deadline-exceeded':
        return 'The operation timed out. Please try again.';
      case 'unavailable':
        return 'The service is currently unavailable. Please try again later.';
      case 'internal':
        return 'An internal error occurred. Please try again later.';
      case 'invalid-argument':
        return 'The argument provided is invalid. Please check your input and try again.';
      case 'already-exists':
        return 'The resource you are trying to create already exists.';
      case 'not-found':
        return 'The requested resource was not found.';
      case 'failed-precondition':
        return 'The operation was rejected because it was not in the correct state. Please try again.';
      case 'aborted':
        return 'The operation was aborted. Please try again.';
      case 'out-of-range':
        return 'The provided value is out of the allowed range. Please adjust your input and try again.';
      case 'data-loss':
        return 'Data loss has occurred. Please try again or contact support.';
      case 'unauthenticated':
        return 'You are not authenticated. Please log in and try again.';
      case 'cancelled':
        return 'The operation was cancelled. Please try again if this was unintentional.';
      case 'invalid-email':
        return 'The email address provided is invalid. Please enter a valid email.';
      case 'user-disabled':
        return 'The user account has been disabled. Please contact support for assistance.';
      case 'email-already-in-use':
        return 'The email address is already registered. Please use a different email.';
      case 'operation-not-allowed':
        return 'This operation is not allowed. Please enable the required service in the Firebase console.';
      case 'weak-password':
        return 'The password provided is too weak. Please choose a stronger password.';
      case 'quota-exceeded':
        return 'The quota for this Firebase project has been exceeded. Please try again later.';
      case 'user-not-found':
        return 'No user found with the provided credentials. Please check your details and try again.';
      case 'user-token-expired':
        return 'The user token has expired. Please log in again.';
      case 'user-mismatch':
        return 'The supplied credentials do not correspond to the previously signed-in user.';
      case 'user-not-verified':
        return 'The user account is not verified. Please verify your email to proceed.';
      case 'user-already-exists':
        return 'A user with these credentials already exists. Please log in instead.';
      case 'user-cancelled':
        return 'The user action was cancelled. Please try again if this was unintentional.';
      case 'requires-recent-login':
        return 'This operation is sensitive and requires recent authentication. Please log in again.';
      case 'invalid-password':
        return 'The password provided is invalid. Please enter a valid password.';
      case 'invalid-user-token':
        return 'The user token is invalid. Please log in again.';
      case 'invalid-api-key':
        return 'The API key provided is invalid. Please check your API key.';
      case 'invalid-credential':
        return 'The authentication credentials provided are invalid. Please try again.';
      case 'invalid-verification-code':
        return 'The verification code is invalid. Please request a new one.';
      case 'invalid-verification-id':
        return 'The verification ID is invalid. Please request a new one.';
      case 'invalid-phone-number':
        return 'The phone number provided is invalid. Please enter a valid phone number.';
      case 'invalid-provider-id':
        return 'The provider ID is invalid. Please check your configuration.';
      case 'invalid-recipient-email':
        return 'The recipient email address is invalid. Please check and try again.';
      case 'invalid-action-code':
        return 'The action code is invalid or has expired. Please request a new one.';
      case 'invalid-continue-uri':
        return 'The continue URL provided is invalid. Please check the URL and try again.';
      case 'invalid-dynamic-link-domain':
        return 'The dynamic link domain is invalid. Please check your Firebase console settings.';

      default:
        return 'An unexpected Firebase error occurred. Please try again.';
    }
  }
}
