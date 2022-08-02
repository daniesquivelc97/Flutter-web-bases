import 'package:fluro/fluro.dart';

import '../ui/views/counter_provider_view.dart';
import '../ui/views/counter_view.dart';
import '../ui/views/view_404.dart';

final counterHandler = Handler(
  handlerFunc: (context, parameters) {
    return CounterView(
      base: parameters['base']?.first ?? '5',
    );
  },
);

final counterProviderHandler = Handler(
  handlerFunc: (context, parameters) {
    return CounterProviderView(
      base: parameters['q']?.first ?? '10',
    );
  },
);

final dashboardUserHandler = Handler(
  handlerFunc: (context, parameters) {
    return const View404();
  },
);

final pageNotFoundHandler = Handler(
  handlerFunc: (_, __) => const View404(),
);
