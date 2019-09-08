class Nfc {
  final String tag;

  Nfc.fromString(Map string) : tag = string['nfc_tag'];
}