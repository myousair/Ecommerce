class TFormatException implements Exception {
  final String message;

  const TFormatException(
      [this.message =
          'An unexpected format error occurred. Please check your input']);

  factory TFormatException.fromMessage(String message) {
    return TFormatException(message);
  }

  String get formattedMessage => message;

  factory TFormatException.fromCode(String code) {
    switch (code) {
      case 'invalid-email_format':
        return const TFormatException(
            'The email address format is invalid. Please enter a valid email.');
      case 'invalid-phone-number_format':
        return const TFormatException(
            'The phone number format is invalid. Please enter a valid phone number.');
      case 'invalid-url_format':
        return const TFormatException(
            'The URL format is invalid. Please enter a valid URL.');
      case 'invalid-date_format':
        return const TFormatException(
            'The date format is invalid. Please use the correct date format.');
      case 'invalid-time_format':
        return const TFormatException(
            'The time format is invalid. Please use the correct time format.');
      case 'invalid-username_format':
        return const TFormatException(
            'The username format is invalid. Usernames can only contain alphanumeric characters, underscores, and periods.');
      case 'invalid-password_format':
        return const TFormatException(
            'The password format is invalid. Please ensure your password meets the required criteria.');
      case 'invalid-uuid_format':
        return const TFormatException(
            'The UUID format is invalid. Please enter a valid UUID.');
      case 'invalid-hex_format':
        return const TFormatException(
            'The hexadecimal format is invalid. Please enter a valid hexadecimal value.');
      case 'invalid-json_format':
        return const TFormatException(
            'The JSON format is invalid. Please check the JSON structure and try again.');
      case 'invalid-currency_format':
        return const TFormatException(
            'The currency format is invalid. Please enter a valid currency value.');
      case 'invalid-number_format':
        return const TFormatException(
            'The number format is invalid. Please enter a valid number.');
      case 'invalid-boolean_format':
        return const TFormatException(
            'The boolean format is invalid. Please enter either true or false.');
      default:
        return const TFormatException(
            'An unexpected format error occurred. Please check your input.');
    }
  }
}
