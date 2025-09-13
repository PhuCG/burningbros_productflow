import 'package:burningbros_productflow/utils/api_error.dart';
import 'package:burningbros_productflow/utils/ftoast_extension.dart';

import 'package:flutter/material.dart';

extension ErrorExtension on Object {
  Widget toLargeErrorWidget(BuildContext context, {VoidCallback? onTap}) {
    late String title;
    late String description;

    switch (this as ApiError) {
      case ApiError.badRequest:
        title = 'Bad Request';
        description = 'An invalid request was made';
      case ApiError.unauthorized:
        title = 'Unauthorized';
        description = 'Authentication is required';

      default:
        title = 'Unknown Error';
        description = 'An unknown error occurred';
    }

    return ExceptionPage(title: title, description: description, onTap: onTap);
  }

  void toToast(BuildContext context, String errorMsg) {
    // Show toast
    context.showToast(
      Text(
        errorMsg,
        textAlign: TextAlign.center,
        style: const TextStyle(color: Colors.white),
      ),
    );
  }
}

class ExceptionPage extends StatelessWidget {
  const ExceptionPage({
    super.key,
    required this.title,
    required this.description,
    this.onTap,
  });

  final String title;
  final String description;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                title,
                style: Theme.of(context).textTheme.titleLarge,
                textAlign: TextAlign.center,
              ),

              Text(
                description,
                style: Theme.of(context).textTheme.bodyLarge,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 32),
              if (onTap != null)
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Theme.of(context).colorScheme.secondary,
                  ),
                  onPressed: onTap,
                  child: Text('Retry'),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
