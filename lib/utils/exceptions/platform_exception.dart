class TPlatformException implements Exception {
  final String code;

  TPlatformException(this.code);

  String get message {
    switch (code) {
      case 'android-platform-error':
        return 'An error occurred specific to the Android platform. Please check your device settings or contact support.';
      case 'ios-platform-error':
        return 'An error occurred specific to the iOS platform. Please check your device settings or contact support.';
      case 'web-platform-error':
        return 'An error occurred specific to the web platform. Please check your browser settings or contact support.';
      case 'windows-platform-error':
        return 'An error occurred specific to the Windows platform. Please check your system settings or contact support.';
      case 'mac-platform-error':
        return 'An error occurred specific to the macOS platform. Please check your system settings or contact support.';
      case 'linux-platform-error':
        return 'An error occurred specific to the Linux platform. Please check your system settings or contact support.';
      case 'unsupported-platform':
        return 'The platform is not supported. Please use a supported platform and try again.';
      case 'platform-not-found':
        return 'The platform could not be identified. Please ensure your platform is correctly configured.';
      case 'platform-version-mismatch':
        return 'The platform version does not match the required version. Please update your platform to the latest version.';
      case 'platform-configuration-error':
        return 'There was a configuration error on the platform. Please check your settings and try again.';
      case 'platform-access-denied':
        return 'Access to the platform is denied. Please ensure you have the necessary permissions or contact support.';
      case 'platform-compatibility-error':
        return 'There is a compatibility issue with the platform. Please check for updates or contact support.';

      // Invalid Errors
      case 'invalid-email_format':
        return 'The email address format is invalid. Please enter a valid email.';
      case 'invalid-phone-number_format':
        return 'The phone number format is invalid. Please enter a valid phone number.';
      case 'invalid-url_format':
        return 'The URL format is invalid. Please enter a valid URL.';
      case 'invalid-date_format':
        return 'The date format is invalid. Please use the correct date format.';
      case 'invalid-time_format':
        return 'The time format is invalid. Please use the correct time format.';
      case 'invalid-username_format':
        return 'The username format is invalid. Usernames can only contain alphanumeric characters, underscores, and periods.';
      case 'invalid-password_format':
        return 'The password format is invalid. Please ensure your password meets the required criteria.';
      case 'invalid-uuid_format':
        return 'The UUID format is invalid. Please enter a valid UUID.';
      case 'invalid-hex_format':
        return 'The hexadecimal format is invalid. Please enter a valid hexadecimal value.';
      case 'invalid-json_format':
        return 'The JSON format is invalid. Please check the JSON structure and try again.';
      case 'invalid-currency_format':
        return 'The currency format is invalid. Please enter a valid currency value.';
      case 'invalid-number_format':
        return 'The number format is invalid. Please enter a valid number.';
      case 'invalid-boolean_format':
        return 'The boolean format is invalid. Please enter either true or false.';

      // Network Errors
      case 'network-error':
        return 'A network error occurred. Please check your internet connection and try again.';
      case 'network-timeout':
        return 'The network request timed out. Please check your connection and try again.';
      case 'network-unreachable':
        return 'The network is unreachable. Please ensure you have a stable internet connection.';
      case 'network-authentication-required':
        return 'Network authentication is required. Please check your network settings and try again.';

      // Sign-In Errors
      case 'sign-in-failed':
        return 'Sign-in failed. Please check your credentials and try again.';
      case 'sign-in-required':
        return 'Sign-in is required to access this resource. Please log in and try again.';
      case 'sign-in-credential-error':
        return 'There was an error with the sign-in credentials. Please check your details and try again.';
      case 'sign-in-network-error':
        return 'A network error occurred during sign-in. Please check your connection and try again.';
      case 'sign-in-provider-error':
        return 'There was an error with the sign-in provider. Please try again later or contact support.';

      default:
        return 'An unexpected platform error occurred. Please try again.';
    }
  }
}
