import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'U-POOL Login',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xFF1E4D7B)),
        useMaterial3: true,
        fontFamily: 'Roboto',
      ),
      home: const LoginScreen(),
    );
  }
}

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    // Colores principales basados en la imagen
    const Color primaryBlue = Color(0xFF1E4D7B);
    const Color textDark = Color(0xFF111111);
    const Color textGrey = Color(0xFF666666);
    const Color borderColor = Color(0xFFB0B0B0);

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.directions_car, color: primaryBlue, size: 28),
                  const SizedBox(width: 4),
                  const Text(
                    'U-POOL',
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.w900,
                      color: primaryBlue,
                      letterSpacing: -1.0,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              
              Container(
                height: 180,
                decoration: BoxDecoration(
                  color: Colors.blue.withOpacity(0.05),
                  borderRadius: BorderRadius.circular(16),
                ),
                child: const Center(
                  child: Text(
                    'imagen',
                    style: TextStyle(color: Colors.grey),
                  ),
                ),
              ),
              
              const SizedBox(height: 24),
 
              const Text(
                '¡Hola de nuevo!',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: textDark,
                ),
              ),
              const SizedBox(height: 8),
              const Text(
                'Inicia sesión para compartir tu ruta.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16,
                  color: textDark,
                ),
              ),
              
              const SizedBox(height: 30),
              
              // Campo: Correo Institucional
              const Text(
                'Correo institucional',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: textDark,
                ),
              ),
              const SizedBox(height: 8),
              TextFormField(
                decoration: InputDecoration(
                  hintText: 'estudiante@miuniversidad.edu',
                  hintStyle: const TextStyle(color: textGrey),
                  prefixIcon: const Icon(Icons.email_outlined, color: primaryBlue),
                  contentPadding: const EdgeInsets.symmetric(vertical: 16),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: const BorderSide(color: borderColor),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: const BorderSide(color: borderColor),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: const BorderSide(color: primaryBlue),
                  ),
                ),
              ),
              
              const SizedBox(height: 20),
              
              // Campo: Contraseña
              const Text(
                'Contraseña',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: textDark,
                ),
              ),
              const SizedBox(height: 8),
              TextFormField(
                obscureText: _obscureText,
                decoration: InputDecoration(
                  hintText: '••••••••',
                  hintStyle: const TextStyle(color: textDark, fontSize: 20),
                  prefixIcon: const Icon(Icons.lock_outline, color: primaryBlue),
                  suffixIcon: IconButton(
                    icon: Icon(
                      _obscureText ? Icons.visibility_off_outlined : Icons.visibility_outlined,
                      color: primaryBlue,
                    ),
                    onPressed: () {
                      setState(() {
                        _obscureText = !_obscureText;
                      });
                    },
                  ),
                  contentPadding: const EdgeInsets.symmetric(vertical: 16),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: const BorderSide(color: borderColor),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: const BorderSide(color: borderColor),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: const BorderSide(color: primaryBlue),
                  ),
                ),
              ),
              
              const SizedBox(height: 8),
              
              // ¿Olvidaste tu contraseña?
              Align(
                alignment: Alignment.centerRight,
                child: TextButton(
                  onPressed: () {},
                  style: TextButton.styleFrom(
                    padding: EdgeInsets.zero,
                    minimumSize: const Size(50, 30),
                    tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                  ),
                  child: const Text(
                    '¿Olvidaste tu contraseña?',
                    style: TextStyle(
                      color: primaryBlue,
                      fontSize: 13,
                    ),
                  ),
                ),
              ),
              
              const SizedBox(height: 20),
              
              // Botón Iniciar Sesión
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: primaryBlue,
                  foregroundColor: Colors.white,
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  elevation: 2,
                ),
                child: const Text(
                  'Iniciar Sesión',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              
              const SizedBox(height: 24),
              
              // Divisor "o continúa con"
              Row(
                children: [
                  const Expanded(child: Divider(color: borderColor, thickness: 0.5)),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Text(
                      'o continúa con',
                      style: TextStyle(color: Colors.grey.shade700, fontSize: 14),
                    ),
                  ),
                  const Expanded(child: Divider(color: borderColor, thickness: 0.5)),
                ],
              ),
              
              const SizedBox(height: 24),
              
              // Botones de Google y Outlook
              Row(
                children: [
                  Expanded(
                    child: OutlinedButton.icon(
                      onPressed: () {},
                      icon: Image.network(
                        'https://upload.wikimedia.org/wikipedia/commons/thumb/5/53/Google_%22G%22_Logo.svg/512px-Google_%22G%22_Logo.svg.png',
                        height: 20,
                      ), // Usa un asset local preferiblemente
                      label: const Text('Google', style: TextStyle(color: textDark)),
                      style: OutlinedButton.styleFrom(
                        padding: const EdgeInsets.symmetric(vertical: 12),
                        side: const BorderSide(color: borderColor),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 16),
                  Expanded(
                    child: OutlinedButton.icon(
                      onPressed: () {},
                      icon: Image.network(
                        'https://upload.wikimedia.org/wikipedia/commons/thumb/d/df/Microsoft_Office_Outlook_%282018%E2%80%93present%29.svg/512px-Microsoft_Office_Outlook_%282018%E2%80%93present%29.svg.png ',
                        height: 20,
                      ),
                      label: const Text('Outlook', style: TextStyle(color: textDark)),
                      style: OutlinedButton.styleFrom(
                        padding: const EdgeInsets.symmetric(vertical: 12),
                        side: const BorderSide(color: borderColor),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              
              const SizedBox(height: 30),
              
              // Texto de registro
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    '¿No tienes cuenta? ',
                    style: TextStyle(color: textDark, fontSize: 14),
                  ),
                  GestureDetector(
                    onTap: () {
                      // Acción para registrar
                    },
                    child: const Text(
                      'Regístrate',
                      style: TextStyle(
                        color: primaryBlue,
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}