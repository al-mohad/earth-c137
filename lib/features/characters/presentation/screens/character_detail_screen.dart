import 'package:flutter/material.dart';

import '../../data/models/character_model.dart';

class CharacterDetailScreen extends StatelessWidget {
  final Character character;

  const CharacterDetailScreen({super.key, required this.character});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(character.name),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Hero(
              tag: 'character_${character.id}',
              child: Image.network(
                character.image,
                fit: BoxFit.cover,
                height: 350,
                errorBuilder: (context, error, stackTrace) =>
                    const SizedBox(height: 350, child: Icon(Icons.error, size: 50)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(24.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    character.name,
                    style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                          fontWeight: FontWeight.w900,
                        ),
                  ),
                  const SizedBox(height: 12),
                  Row(
                    children: [
                      Container(
                        width: 14,
                        height: 14,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: character.status == 'Alive'
                              ? Colors.green
                              : character.status == 'Dead'
                                  ? Colors.red
                                  : Colors.grey,
                        ),
                      ),
                      const SizedBox(width: 8),
                      Text(
                        '${character.status} - ${character.species}',
                        style: Theme.of(context).textTheme.titleMedium?.copyWith(
                              fontWeight: FontWeight.w600,
                            ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 32),
                  _buildInfoSection(context, 'Gender', character.gender, Icons.person),
                  _buildInfoSection(context, 'Origin', character.origin.name, Icons.public),
                  _buildInfoSection(
                      context, 'Type', character.type.isEmpty ? 'Unknown' : character.type, Icons.category),
                  _buildInfoSection(context, 'Last Location', character.location.name, Icons.location_on),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildInfoSection(BuildContext context, String label, String value, IconData icon) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 24.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(icon, color: Colors.grey[600], size: 28),
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  label,
                  style: Theme.of(context).textTheme.titleSmall?.copyWith(
                        color: Colors.grey[600],
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1.1,
                      ),
                ),
                const SizedBox(height: 4),
                Text(
                  value,
                  style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                        fontSize: 18,
                      ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
