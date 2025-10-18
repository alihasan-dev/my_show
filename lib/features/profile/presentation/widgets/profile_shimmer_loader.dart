import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class ProfileShimmerLoader extends StatelessWidget {
  final bool isDark;
  const ProfileShimmerLoader({
    super.key,
    this.isDark = true
  });
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Shimmer.fromColors(
        baseColor: isDark ? Color(0xFF2A2A2A) : Colors.grey.shade300,
        highlightColor: isDark ? Color(0xFF3A3A3A): Colors.grey.shade100,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Profile Image Placeholder
              Container(
                height: MediaQuery.of(context).size.height * 0.52,
                width: double.infinity,
                color: isDark ? Color(0xFF2C2C2C) : Colors.grey.shade800,
              ),
              const SizedBox(height: 16),
              // Name Placeholder
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Container(
                  height: 20,
                  width: 150,
                  color: isDark ? Color(0xFF2C2C2C) : Colors.grey.shade800,
                ),
              ),
              const SizedBox(height: 12),
              // Biography title placeholder
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Container(
                  height: 16,
                  width: 100,
                  color: isDark ? Color(0xFF2C2C2C) : Colors.grey.shade800,
                ),
              ),
              const SizedBox(height: 8),
              // Biography lines placeholder
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  children: List.generate(
                    3,
                    (index) => Padding(
                      padding: const EdgeInsets.only(bottom: 8),
                      child: Container(
                        height: 14,
                        width: double.infinity,
                        color: isDark ? Color(0xFF2C2C2C) : Colors.grey.shade800,
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              // Known For title placeholder
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Container(
                  height: 16,
                  width: 120,
                  color: isDark ? Color(0xFF2C2C2C) : Colors.grey.shade800,
                ),
              ),
              const SizedBox(height: 12),
              // Horizontal scroll for movies
              SizedBox(
                height: 150,
                child: ListView.separated(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  scrollDirection: Axis.horizontal,
                  itemCount: 4,
                  separatorBuilder: (_, __) => const SizedBox(width: 12),
                  itemBuilder: (_, __) => Container(
                    height: 150,
                    width: 100,
                    // color: isDark ? Color(0xFF2C2C2C) : Colors.grey.shade800,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: isDark ? Color(0xFF2C2C2C) : Colors.grey.shade800,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 15),
                child: Column(
                  children: List.generate(
                    2,
                    (index) => Padding(
                      padding: const EdgeInsets.only(bottom: 8),
                      child: Container(
                        height: 14,
                        width: double.infinity,
                        color: isDark ? Color(0xFF2C2C2C) : Colors.grey.shade800,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}