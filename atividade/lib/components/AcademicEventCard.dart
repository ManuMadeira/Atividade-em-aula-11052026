import 'package:flutter/material.dart';

class AcademicEventCard extends StatelessWidget {
  final String title;
  final String description;
  final String additionalInfo;
  final IconData? icon;

  const AcademicEventCard({
    Key? key,
    required this.title,
    required this.description,
    required this.additionalInfo,
    this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Card(
      elevation: 2,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                if (icon != null)
                  Padding(
                    padding: const EdgeInsets.only(right: 12.0),
                    child: Icon(
                      icon,
                      color: theme.colorScheme.primary,
                      size: 28,
                    ),
                  ),
                Expanded(
                  child: Text(
                    title,
                    style: theme.textTheme.titleLarge?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 12),
            Text(
              description,
              style: theme.textTheme.bodyMedium,
              maxLines: 3,
              overflow: TextOverflow.ellipsis,
            ),
            const SizedBox(height: 12),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
              decoration: BoxDecoration(
                color: const Color(0xFFB8E0C8).withOpacity(0.7),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Text(
                additionalInfo,
                style: theme.textTheme.labelMedium?.copyWith(
                  color: const Color(0xFF2D6A4F),
                  fontWeight: FontWeight.w600,
                ),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ],
        ),
      ),
    );
  }
}