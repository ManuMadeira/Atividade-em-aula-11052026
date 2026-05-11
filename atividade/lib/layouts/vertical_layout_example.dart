import 'package:flutter/material.dart';
import '../components/AcademicEventCard.dart';

class VerticalLayoutExample extends StatelessWidget {
  const VerticalLayoutExample({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(16),
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
              'Histórias inspiradoras de mulheres que ocupam posições de liderança em grandes empresas de tecnologia e como elas superaram desafios.',
          additionalInfo: '📅 16/05/2026 às 14:00',
        ),
        const SizedBox(height: 12),
        AcademicEventCard(
          icon: Icons.mic,
          title: 'Equidade de Gênero no Mercado Tech',
          description:
              'Discussão sobre disparidades salariais, oportunidades de promoção e políticas inclusivas nas empresas de tecnologia.',
          additionalInfo: '📅 19/05/2026 às 16:00',
        ),
        const SizedBox(height: 24),
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
              'Estratégias de negociação salarial, construção de portfólio e networking efetivo no setor de tecnologia.',
          additionalInfo: '🎯 25 vagas disponíveis',
        ),
        const SizedBox(height: 12),
        AcademicEventCard(
          icon: Icons.build,
          title: 'Codificando Futuros: Programação Prática',
          description:
              'Oficina imersiva de programação com foco em projetos reais, mentoradas por mulheres desenvolvedoras experientes.',
          additionalInfo: '🎯 20 vagas disponíveis',
        ),
        const SizedBox(height: 12),
        AcademicEventCard(
          icon: Icons.build,
          title: 'Empreendedorismo Feminino na Tecnologia',
          description:
              'Como identificar oportunidades de mercado, captar investimentos e construir startups com impacto social.',
          additionalInfo: '🎯 18 vagas disponíveis',
        ),
      ],
    );
  }
}