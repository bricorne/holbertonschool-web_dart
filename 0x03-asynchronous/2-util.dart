Future<String> fetchUser() =>
    // Imagine that this function is
    // more complex and slow.
    Future.delayed(
      const Duration(seconds: 2),
      () => throw 'Cannot locate user',
    ); 