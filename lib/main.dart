
















import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

void main() {
  runApp(WeatherApp());
}

class WeatherApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Météo App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: 'Roboto',
      ),
      home: WeatherScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class WeatherScreen extends StatefulWidget {
  @override
  _WeatherScreenState createState() => _WeatherScreenState();
}

class _WeatherScreenState extends State<WeatherScreen> {
  // TODO: Déclarer les variables d'état
  // Variables nécessaires:
  // - cityName (String): nom de la ville
  // - temperature (String): température actuelle
  // - description (String): description météo
  // - humidity (String): humidité
  // - windSpeed (String): vitesse du vent
  // - pressure (String): pression atmosphérique
  // - iconCode (String): code de l'icône météo
  // - isLoading (bool): état de chargement
  // - cityController (TextEditingController): contrôleur pour le champ de saisie

  // TODO: Remplacer par votre clé API OpenWeatherMap
  final String apiKey = 'VOTRE_CLE_API_ICI';

  @override
  void initState() {
    super.initState();
    // TODO: Appeler fetchWeatherData() au démarrage
  }

  // TODO: Implémenter la fonction pour récupérer les données météo
  // Cette fonction doit:
  // 1. Mettre isLoading à true
  // 2. Construire l'URL de l'API OpenWeatherMap
  // 3. Faire la requête HTTP
  // 4. Traiter la réponse JSON
  // 5. Mettre à jour les variables d'état
  // 6. Gérer les erreurs
  Future<void> fetchWeatherData() async {
    // URL de l'API: https://api.openweathermap.org/data/2.5/weather?q=$cityName&appid=$apiKey&units=metric&lang=fr
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Colors.blue.shade400,
              Colors.blue.shade700,
            ],
          ),
        ),
        child: SafeArea(
          child: Column(
            children: [
              // TODO: Ajouter la barre de recherche
              _buildSearchBar(),
              
              // Contenu principal
              Expanded(
                child: isLoading
                    ? _buildLoadingWidget()
                    : _buildWeatherContent(),
              ),
            ],
          ),
        ),
      ),
    );
  }

  // TODO: Implémenter le widget barre de recherche
  // Ce widget doit contenir:
  // - Un Container avec un décor semi-transparent
  // - Un TextField pour saisir le nom de la ville
  // - Une action onSubmitted pour déclencher la recherche
  Widget _buildSearchBar() {
    return Container(
      child: Text('TODO: Barre de recherche'),
    );
  }

  // TODO: Implémenter le widget de chargement
  // Afficher un CircularProgressIndicator centré
  Widget _buildLoadingWidget() {
    return Container(
      child: Text('TODO: Widget de chargement'),
    );
  }

  // TODO: Implémenter le widget contenu météo
  // Ce widget doit contenir:
  // - Le nom de la ville
  // - La date actuelle
  // - L'affichage principal de la météo
  // - Les détails météo
  // - Le bouton d'actualisation
  Widget _buildWeatherContent() {
    return Container(
      child: Text('TODO: Contenu météo'),
    );
  }

  // TODO: Implémenter l'affichage principal de la météo
  // Ce widget doit afficher:
  // - L'icône météo (grande taille)
  // - La température (grand texte)
  // - La description météo
  Widget _buildMainWeatherDisplay() {
    return Container(
      child: Text('TODO: Affichage principal météo'),
    );
  }

  // TODO: Implémenter les détails météo
  // Ce widget doit afficher dans un container stylé:
  // - Humidité et Vent (première ligne)
  // - Pression et Visibilité (deuxième ligne)
  Widget _buildWeatherDetails() {
    return Container(
      child: Text('TODO: Détails météo'),
    );
  }

  // TODO: Implémenter un détail météo individuel
  // Ce widget doit afficher:
  // - Une icône
  // - Un label
  // - Une valeur
  Widget _buildWeatherDetail(String label, String value, IconData icon) {
    return Column(
      children: [
        Text('TODO: Détail météo'),
      ],
    );
  }

  // TODO: Implémenter le bouton d'actualisation
  // Un ElevatedButton avec icône et texte
  Widget _buildRefreshButton() {
    return Container(
      child: Text('TODO: Bouton actualiser'),
    );
  }

  // TODO: Implémenter la fonction pour obtenir l'icône météo
  // Mapper les codes d'icône OpenWeatherMap aux icônes Flutter
  // Codes principaux:
  // - 01d/01n: soleil
  // - 02d/02n: soleil avec nuages
  // - 03d/03n/04d/04n: nuages
  // - 09d/09n/10d/10n: pluie
  // - 11d/11n: orage
  // - 13d/13n: neige
  // - 50d/50n: brouillard
  IconData _getWeatherIcon(String code) {
    return Icons.wb_sunny; // TODO: Implémenter le switch
  }

  // TODO: Implémenter la fonction pour obtenir la date actuelle
  // Retourner la date au format: "Lundi, 15 Janvier"
  String _getCurrentDate() {
    return 'TODO: Date actuelle';
  }
}