String formatBdt(double amount, {bool withSymbol = true}) {
  final isNegative = amount < 0;
  final fixed = amount.abs().toStringAsFixed(2);
  final parts = fixed.split('.');
  final wholeDigits = parts[0];
  final decimals = parts[1];

  final buffer = StringBuffer();
  for (int i = 0; i < wholeDigits.length; i++) {
    final posFromEnd = wholeDigits.length - i;
    buffer.write(wholeDigits[i]);
    if (posFromEnd > 1 && posFromEnd % 3 == 1) buffer.write(',');
  }

  final symbol = withSymbol ? '৳' : '';
  final sign = isNegative ? '-' : '';
  return '$sign$symbol$buffer.$decimals';
}
