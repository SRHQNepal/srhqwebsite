import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

// Create a riverpod provider to store the theme mode with state provider
final themeModeProvider = StateProvider<ThemeMode>((ref) => ThemeMode.system);
