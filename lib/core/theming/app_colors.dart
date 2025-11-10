import 'package:flutter/material.dart';

class AppColors {
  // Primary Colors
  static const Color primary = Color(0xFFFF6B35);
  static const Color primaryLight = Color(0xFFFF8C5F);
  static const Color primaryDark = Color(0xFFE55A2B);

  // Background Colors
  static const Color background = Color(0xFFFFFFFF);
  static const Color backgroundLight = Color(0xFFF5F5F5);
  static const Color backgroundDark = Color(0xFFE0E0E0);

  // Text Colors
  static const Color textPrimary = Color(0xFF2C3E50);
  static const Color textSecondary = Color(0xFF7F8C8D);
  static const Color textLight = Color(0xFFBDC3C7);
  static const Color textWhite = Color(0xFFFFFFFF);

  // Status Colors
  static const Color success = Color(0xFF4CAF50);
  static const Color warning = Color(0xFFFFC107);
  static const Color error = Color(0xFFF44336);
  static const Color info = Color(0xFF2196F3);

  // Border Colors
  static const Color border = Color(0xFFE0E0E0);
  static const Color borderLight = Color(0xFFF5F5F5);
  static const Color borderDark = Color(0xFFBDBDBD);

  // Card & Surface Colors
  static const Color card = Color(0xFFFFFFFF);
  static const Color cardShadow = Color(0x1A000000);

  // Rating Colors
  static const Color ratingActive = Color(0xFFFFC107);
  static const Color ratingInactive = Color(0xFFE0E0E0);

  // Discount/Offer Colors
  static const Color discount = Color(0xFFE91E63);
  static const Color offer = Color(0xFF00BCD4);

  // Shimmer Colors (for loading states)
  static const Color shimmerBase = Color(0xFFE0E0E0);
  static const Color shimmerHighlight = Color(0xFFF5F5F5);

  static const LinearGradient primaryGradient = LinearGradient(
    colors: [primaryLight, primaryDark],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );

  static const LinearGradient cardGradient = LinearGradient(
    colors: [Color(0xFFFFFFFF), Color(0xFFF9F9F9)],
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
  );

  // Category Colors (for category badges)
  static const List<Color> categoryColors = [
    Color(0xFFFF6B6B),
    Color(0xFF4ECDC4),
    Color(0xFF45B7D1),
    Color(0xFFFFA07A),
    Color(0xFF98D8C8),
    Color(0xFFF7DC6F),
    Color(0xFFBB8FCE),
    Color(0xFF85C1E2),
  ];

  // Get category color by index
  static Color getCategoryColor(int index) {
    return categoryColors[index % categoryColors.length];
  }

  // Order Status Colors
  static const Color orderPlaced = Color(0xFF2196F3);
  static const Color preparing = Color(0xFFFFC107);
  static const Color onTheWay = Color(0xFFFF9800);
  static const Color delivered = Color(0xFF4CAF50);
  static const Color cancelled = Color(0xFFF44336);

  // Get color by order status
  static Color getOrderStatusColor(String status) {
    switch (status.toLowerCase()) {
      case 'placed':
        return orderPlaced;
      case 'preparing':
        return preparing;
      case 'on_the_way':
      case 'ontheway':
        return onTheWay;
      case 'delivered':
        return delivered;
      case 'cancelled':
        return cancelled;
      default:
        return textSecondary;
    }
  }

  // Social Login Colors
  static const Color google = Color(0xFFDB4437);
  static const Color apple = Color(0xFF000000);
  static const Color facebook = Color(0xFF4267B2);

  // Transparent Overlays
  static const Color overlay = Color(0x80000000);
  static const Color overlayLight = Color(0x40000000);
}
