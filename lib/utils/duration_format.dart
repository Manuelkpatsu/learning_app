class DurationFormat {
  static String formatDuration(Duration duration) {
    String hours = duration.inHours.toString().padLeft(0, '2');
    String minutes = duration.inMinutes.remainder(60).toString().padLeft(2, '0');

    return "${hours}hr ${minutes}min";
  }

  static String formatTranslationDuration(Duration duration) {
    String hours = duration.inHours.toString().padLeft(0, '2');
    String minutes = duration.inMinutes.remainder(60).toString().padLeft(2, '0');

    return "$hours:$minutes";
  }
}
