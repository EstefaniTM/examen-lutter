import 'package:go_router/go_router.dart';
import 'pages/acuario_home_page.dart';
import 'pages/boletos_descuento.dart';
import 'pages/gasto_comida.dart';


final GoRouter appRouter = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (_, __) => const AcuarioHomePage(),
      ),
    
    GoRoute(
      path: '/boletos',
      builder: (_, __) => const AverageGradePage(),
      ),

    GoRoute(
      path: '/gasto',
      builder: (_, __) => const GastocomidaPage(),
      ),
    
  ],
);