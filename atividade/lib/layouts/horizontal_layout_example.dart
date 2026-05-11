import 'package:flutter/material.dart';
import '../components/AcademicEventCard.dart';

class HorizontalLayoutExample extends StatelessWidget {
  const HorizontalLayoutExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Painel de Palestras
          Expanded(
            child: ListView(
              children: [
                Text(
                  'Palestras Programadas',
                  style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                ),
                const SizedBox(height: 12),
                AcademicEventCard(
                  icon: Icons.mic,
                  title: 'Mulheres Líderes em Tech: Quebrando Barreiras',
                  description:
                      'Histórias inspiradoras de mulheres que ocupam posições de liderança em grandes empresas de tecnologia.',
                  additionalInfo: '📅 16/05/2026 às 14:00',
                ),
                const SizedBox(height: 12),
                AcademicEventCard(
                  icon: Icons.mic,
                  title: 'Equidade de Gênero no Mercado Tech',
                  description:
                      'Discussão sobre disparidades salariais e políticas inclusivas nas empresas de tecnologia.',
                  additionalInfo: '📅 19/05/2026 às 16:00',
                ),
              ],
            ),
          ),
          const SizedBox(width: 16),
          // Painel de Oficinas
          Expanded(
            child: ListView(
              children: [
                Text(
                  'Oficinas Práticas',
                  style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                ),
                const SizedBox(height: 12),
                AcademicEventCard(
                  icon: Icons.build,
                  title: 'Desenvolvimento de Carreira para Mulheres em Tech',
                  description:
                      'Estratégias de negociação salarial e construção de portfólio efetivo.',
                  additionalInfo: '🎯 25 vagas disponíveis',
                ),
                const SizedBox(height: 12),
                AcademicEventCard(
                  icon: Icons.build,
                  title: 'Codificando Futuros: Programação Prática',
                  description:
                      'Oficina imersiva mentorada por mulheres desenvolvedoras experientes.',
                  additionalInfo: '🎯 20 vagas disponíveis',
                ),
                const SizedBox(height: 12),
                AcademicEventCard(
                  icon: Icons.build,
                  title: 'Empreendedorismo Feminino na Tecnologia',
                  description:
                      'Como construir startups com impacto social e captar investimentos.',
                  additionalInfo: '🎯 18 vagas disponíveis',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}